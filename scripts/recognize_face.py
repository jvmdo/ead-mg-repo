# import the necessary packages
import face_recognition
import argparse
import pickle
import cv2

encodings = '/home/pi/.node-red/projects/ead-embedded/encodings/test.pickle'

# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-e", "--encodings", default=encodings,help="path to serialized db of facial encodings")
ap.add_argument("-i", "--image", required=True,help="path to input image")
ap.add_argument("-d", "--detection-method", type=str, default="hog",help="face detection model to use: either `hog` or `cnn`")
args = vars(ap.parse_args())


pickle_dicts = []
data = { 'encodings': [], 'names': [] }

#https://stackoverflow.com/a/12762056/7631147
with open(args['encodings'], 'rb') as fr:
    try:
        while True:
            pickle_dicts.append(pickle.load(fr))
    except EOFError:
        pass

# merge all dicts into one
for i in range(len(pickle_dicts)):
    data['names'].extend(pickle_dicts[i]['names'])
    for j in range(len(pickle_dicts[i]['encodings'])):
      data['encodings'].append(pickle_dicts[i]['encodings'][j])


# load the input image and convert it from BGR to RGB
image = cv2.imread(args["image"])
rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

# detect the (x, y)-coordinates of the bounding boxes corresponding
# to each face in the input image, then compute the facial embeddings
boxes = face_recognition.face_locations(rgb, model=args["detection_method"])
encodings = face_recognition.face_encodings(rgb, boxes)

# initialize the list of names for each face detected
names = []
matches_samples = []

# loop over the facial embeddings
for encoding in encodings:
  # attempt to match each face in the input image to our known encodings
  matches = face_recognition.compare_faces(data["encodings"], encoding)
  name = "Unknown person"

  # check to see if we have found a match
  if True in matches:
    # find the indexes of all matched faces then initialize a dictionary
    # to count the total number of times each face was matched
    matchedIdxs = [i for (i, b) in enumerate(matches) if b]
    counts = {}

    # loop over the matched indexes and maintain a count for
    # each recognized face face
    for i in matchedIdxs:
      name = data["names"][i]
      counts[name] = counts.get(name, 0) + 1

    # determine the recognized face with the largest number of
    # votes (note: in the event of an unlikely tie Python will
    # select first entry in the dictionary)
    name = max(counts, key=counts.get)

    personSamples = float(data['names'].count(name))
    personMatches = float(counts[name])

    if (personMatches / personSamples >= 0.9):
        #print('{"person":"%s"}' %name)
        names.append(name)
    else:
        names.append("Unknown person")
        matches_samples.append(personMatches)
        matches_samples.append(personSamples)

  # update the list of names
  names.append(name)
  
if (matches_samples != []):
    print('{"person":"%s", "matches": "%.2f", "samples": "%.2f"}' %(names, matches_samples[0], matches_samples[1]))
else:
    print('{"person":"%s"}' %names)
