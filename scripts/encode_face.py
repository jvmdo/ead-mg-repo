# import the necessary packages
from imutils import paths
import face_recognition
import argparse
import pickle
import cv2
import os

encodings = '/home/pi/.node-red/projects/ead-embedded/encodings/test.pickle'

# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--dataset", required=True,help="path to input directory of face images")
ap.add_argument("-e", "--encodings", default=encodings,help="path to serialized db of facial encodings")
ap.add_argument("-n", "--name", required=True,help="the person name")
ap.add_argument("-d", "--detection-method", type=str, default="hog",help="face detection model to use: either `hog` or `cnn`")
args = vars(ap.parse_args())

# grab the paths to the input images in our dataset
print("[START] Feature extraction process")
imagePaths = list(paths.list_images(args["dataset"]))

# initialize the list of known encodings and known names
knownEncodings = []
knownNames = []

# loop over the image paths
for (i, imagePath) in enumerate(imagePaths):
  print("Processing picture {}/{}".format(i + 1, len(imagePaths)))
  
  # get the encoding face person name from the arguments
  name = args['name']

  # load the input image and convert it from
  # BGR (OpenCV) to dlib ordering (RGB)
  image = cv2.imread(imagePath)
  rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

  # detect the (x, y)-coordinates of the bounding boxes
  # corresponding to each face in the input image
  boxes = face_recognition.face_locations(rgb, model=args["detection_method"])

  # compute the facial embedding for the face
  encodings = face_recognition.face_encodings(rgb, boxes)

  # loop over the encodings
  for encoding in encodings:
    # add each encoding + name to our set of known names and encodings
    knownEncodings.append(encoding)
    knownNames.append(name)

# create the dictionary to be pickled
data = {"encodings": knownEncodings, "names": knownNames}

# f = open(args["encodings"], "ab")
# f.write(pickle.dumps(data))
# f.close()

print("Writing results to pickle file")

# write the dictionary to disk
with open(args["encodings"], 'ab') as fp:
    pickle.dump(data,fp)
    
print("[END] Feature extraction process")
