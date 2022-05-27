import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ead_app/domain/auth/auth_interface.dart';
import 'package:ead_app/domain/core/errors.dart';
import 'package:ead_app/domain/users/value_objects.dart';
import 'package:ead_app/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentSnapshot<Map<String, dynamic>>> userDocument() async {
    final userOption = await getIt<AuthInterface>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash())
        .get();
  }

  Future<String> userSyscode() async {
    final userDoc = await userDocument();
    final docData = userDoc.data()!;
    final syscode = Code(docData['syscode'] as String);
    return syscode.getOrCrash();
  }

  Future<DocumentReference> userHardware() async {
    final syscode = await userSyscode();
    final userHwDoc = await FirebaseFirestore.instance
        .collection('hardwares')
        .where('syscode', isEqualTo: syscode)
        .get();
    return userHwDoc.docs.first.reference;
  }

  Future<DocumentReference> userDoor() async {
    //! Fix: When the name of a field in the document does not exist
    // in the entity (of the door), no error is shown in the log

    final syscode = await userSyscode();
    final doorRef = await FirebaseFirestore.instance
        .collection('doors')
        .where('syscode', isEqualTo: syscode)
        .get();
    return doorRef.docs.first.reference;
  }

  Future<DocumentReference> userAction() async {
    final syscode = await userSyscode();
    final actionRef = await FirebaseFirestore.instance
        .collection('actions')
        .where('syscode', isEqualTo: syscode)
        .get();
    return actionRef.docs.first.reference;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> usersList() async {
    final syscode = await userSyscode();
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('syscode', isEqualTo: syscode)
        .get();
    return querySnapshot;
  }

  Future<Query<Map<String, dynamic>>> notificationsList() async {
    final syscode = await userSyscode();
    final querySnapshot = FirebaseFirestore.instance
        .collection('notifications')
        .orderBy('datetime', descending: true)
        .where('syscode', isEqualTo: syscode);

    return querySnapshot;
  }
}
