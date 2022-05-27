// The Cloud Functions for Firebase SDK to create
// Cloud Functions and set up triggers.
const functions = require("firebase-functions");

// The Firebase Admin SDK to access Firestore.
const admin = require("firebase-admin");
admin.initializeApp();


/// Make the [syscode] and [sucode] checking process,
/// i.e, checks if these codes exists in the server
exports.codeCheck = functions.https.onCall(async (data, _) => {
  const hws = admin.firestore().collection("hardwares");
  try {
    const sysSnap = await hws.where('syscode', '==', data.syscode).get();
    if (sysSnap.empty) {
      console.log("No system code found.")
      return false;
    }
    if (data.sucode != null) {
      let suCode = false;
      sysSnap.forEach(doc => {
        suCode = doc.data().sucode == data.sucode;
        console.log(`suCode ? ${suCode}`);
      });
      return suCode;
    }
    return true;
  } catch (e) {
    throw e;
  }
});


/// Update the door state based on the action the user does upon it
exports.updateDoorState = functions.firestore
  .document('actions/{docId}')
  .onUpdate(async (change, _) => {
    let data = change.after.data();
    let action = data.action;
    let syscode = data.syscode;
    let doorsRef = await admin.firestore()
      .collection('doors')
      .where('syscode', '==', syscode)
      .get();

    var doorDocId = '123';
    doorsRef.docs.forEach((doc) => {
        doorDocId = doc.id;
      });

    let doorRef = admin.firestore().doc(`doors/${doorDocId}`);
    switch (action) {
      case 'open':
        doorRef.update({isOpened: true}).then(res => {
          console.log(`OPEN updated at ${res.writeTime.toDate()}`);
        });
        break;
      case 'close':
        doorRef.update({isOpened: false}).then(res => {
          console.log(`CLOSE updated at ${res.writeTime.toDate()}`);
        });
        break;
      case 'alarm':
        doorRef.update({isSirenOn: true}).then(res => {
          console.log(`ALARM updated at ${res.writeTime.toDate()}`);
        });
        break;
      default:
        console.log("Found no action, maybe it is a non-action answer: ", action);
    } 
  });


exports.sendFcmNotification = functions.firestore
  .document('notifications/{docId}')
  .onCreate((snap, context) => {
    // Get the document id
    const id = context.params.docId;

    // Get an object representing the document
    const { 
      syscode, name, datetime, recognized, answeredBy, answer, picture 
    } = snap.data();

    // The topic name can be optionally prefixed with "/topics/".
    const topic = `/topics/${syscode}`;
    const title = "Door notification";
    const body = recognized 
      ? `${name} stepped in your home` 
      : "An unknwon person is standing in front of your door";
    const click_action =  "FLUTTER_NOTIFICATION_CLICK";

    const message = {
      topic: topic,
      data: {
        "id": id,
        "syscode": syscode,
        "name": name,
        "datetime": datetime.toString(),
        "recognized": recognized.toString(),
        "answeredBy": "",
        "answer": "",
        "title": title,
        "body" : body,
        "click_action" : click_action,
        "picture": picture
      }
    };

    // Send a message to devices subscribed to the provided topic.
    admin.messaging().send(message)
      .then((response) => {
        // Response is a message ID string.
        console.log('Successfully sent message:', response);
      })
      .catch((error) => {
        console.log('Error sending message:', error);
      });
  });


/// Background function to generate and update 
/// the new user's profile picture URL
exports.updateProfilePictureUrl = functions.firestore
  .document('users/{docId}')
  .onCreate((snap, _) => {
    // Get the path to the picture filename
    const filename = snap.data().profilePicture;
    // Get the reference to the storage bucket
    const bucket = admin.storage().bucket('ead-backend.appspot.com');
    // Get the picture file itself
    const picture = bucket.file(filename);
    // Bucket method config options
    const config = { action: 'read', expires: '07-12-2022' };
    // Generate a URL that allows temporary access to download your file.
    picture.getSignedUrl(config).then((url) => {
      console.log(`Signed URL successfully generated => ${url[0]}`);
      // Update the profilePicture user's document field
      snap.ref.update({profilePicture: url[0]}).then((res) => {
        console.log(`Profile picture URL updated at ${res.writeTime.toDate()}`);
      }).catch((e) => {
        console.log(`Could not update document field => ${e}`);
      });
    }).catch((err) => {
      console.log(`Could not get signed URL => ${err}`);
      let field = { profilePicture: 'http://placeimg.com/320/240/dummy' };
      snap.ref.update(field).then((_) => {
        console.log(`Using dummy URL due to issues`);
      });
    });
  });

// Manual way
// You have copy the Storage's desired image path and paste it on Firestore's profilePicture user document
// Then you have to copy this functions output and paste it on Firestore's profilePicture user document
exports.updateProfilePictureUrlv2 = functions.firestore
  .document('users/{docId}')
  .onUpdate(async (change, _) => {
    let data = change.after.data();
    // Get the path to the picture filename
    const filename = data.profilePicture;
    // Get the reference to the storage bucket
    const bucket = admin.storage().bucket('ead-backend.appspot.com');
    // Get the picture file itself
    const picture = bucket.file(filename);
    // Bucket method config options
    const config = { action: 'read', expires: '07-12-2022' };
    // Generate a URL that allows temporary access to download your file.
    picture.getSignedUrl(config).then((url) => {
      console.log(`Signed URL successfully generated => ${url[0]}`);
    }).catch((err) => {
      console.log(`Could not get signed URL => ${err}`);
    });
  });