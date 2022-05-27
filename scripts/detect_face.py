import cv2
import dlib
import argparse
from imutils import paths
from datetime import datetime

def createFilename(radix=''):
    suffix = datetime.now()
    filename = args['stored'] + radix + args['prefix'] + suffix.strftime('%d%m%Y-%H%M%S') + '.jpg'
    return filename

path = '/home/pi/.node-red/projects/ead-embedded/captures/'
stored = '/home/pi/.node-red/projects/ead-embedded/processed-captures/'

ap = argparse.ArgumentParser()
ap.add_argument("-p", "--path", default=path, help="path to the folder of images to be processed")
ap.add_argument("-s", "--stored", default=stored, help="path to the folder where processed images will be stored")
ap.add_argument("-n", "--prefix", required=True, help="the file name prefix, usually a persons name")
ap.add_argument("-f", "--from", required=True, help="where the script was invoked from")
args = vars(ap.parse_args())

# get all paths within the pictures folder
imagePaths = list(paths.list_images(args["path"]))

# if the script invoker is pre-process routine
if (args["from"] == 'pp'):
    # take only the first picture within the folder
    imagePaths.sort(reverse=True)
    imagePaths = [imagePaths[0]]

for (i, imagePath) in enumerate(imagePaths):
  # read the input image
  img = cv2.imread(imagePath)

  # extract the image's dimensions
  (h, w, d) = img.shape

  # calculate the image's aspect ratio
  r = 300 / w;
  dim = (300, int(h * r))
  
  # resize image
  resized = cv2.resize(img, dim)

  # convert into grayscale
  gray = cv2.cvtColor(resized, cv2.COLOR_BGR2GRAY)

  # detect faces
  detector = dlib.get_frontal_face_detector()
  face = detector(gray,1)

  # get the current datetime to create an unique file name
#   suffix = datetime.now()
#   filename = args['stored'] + args['prefix'] + suffix.strftime('%d%m%Y_%H%M%S') + '.jpg'

  # crop picture and save file 
  for result in face:
    x = result.left()
    y = result.top()
    x1 = result.right()
    y1 = result.bottom()

    roi = resized[y:y1, x:x1]
    
    try:
      filename = createFilename()
      cv2.imwrite(filename, roi)
    except:
      # could not write roi picture to disk
      filename = createFilename('no-crop-')
      cv2.imwrite(filename, resized)
      
    if (args["from"] == 'pp'):
      print(filename)
      
    # stop on the first face result
    break
  
  # there is no face at all
  if(len(face) == 0):
      cv2.imwrite(createFilename('no-face-'), resized)
      print("no-face",end='')

# print the directory from new user's pictures
if (args["from"] == 'new-user'):
    print(args['stored'])