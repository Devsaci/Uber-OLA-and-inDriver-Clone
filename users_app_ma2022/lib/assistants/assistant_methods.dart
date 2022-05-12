//30. Read and Display Current Online user info from Database

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:users_app/global/global.dart';

class AssistantMethods {
  static void readCurrentOnlineUserInfo() {
    currentFirebaseUser = fAuth.currentUser;
    FirebaseDatabase.instance.ref().child("users");
  }
}
