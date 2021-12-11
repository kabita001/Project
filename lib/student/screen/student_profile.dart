import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:ug_project/Admin/login/usermode.dart';

class UserProvider with ChangeNotifier {
  void addUserData({
    required User currentUser,
    required String firstName,
    required String lastName,
    required String email,
    required String userType,
  }) async {
    await FirebaseFirestore.instance
        .collection("usersData")
        .doc(currentUser.uid)
        .set(
      {
        "firstname": firstName,
        "lastname": lastName,
        "Email": email,
        "userType": userType,
        "userUid": currentUser.uid,
      },
    );
  }
  late UserModel currentData;
  void getUserData() async {
    UserModel userModel;
    var value = await FirebaseFirestore.instance
        .collection("usersData")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    if (value.exists) {
      userModel = UserModel(
        email: value.get("email"),
        firstName: value.get("firstName"),
        lastName: value.get("lastName"),
        uid: value.get("userUid"),
      );
      currentData = userModel;
      notifyListeners();
    }
  }

  UserModel get currentUserData {
    return currentData;
  }
}