//30. Read and Display Current Online user info from Database

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class AssistantMethods{
  static void readCurrentOnlineUserInfo(){
   FirebaseAuth.instance.currentUser;
  }
}