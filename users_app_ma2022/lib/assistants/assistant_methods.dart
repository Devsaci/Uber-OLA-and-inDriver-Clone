//30. Read and Display Current Online user info from Database
import 'package:firebase_database/firebase_database.dart';
import 'package:users_app/global/global.dart';

class AssistantMethods {
  static void readCurrentOnlineUserInfo() {
    currentFirebaseUser = fAuth.currentUser;
    DatabaseReference userRef = FirebaseDatabase.instance
        .ref()
        .child("users")
        .child(currentFirebaseUser!.uid);

    userRef.once().then((value) {
      return null;
    });
  }
}
