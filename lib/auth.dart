

import 'package:ecell/login_page.dart';
import 'package:ecell/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?>_user;
  FirebaseAuth auth =FirebaseAuth.instance;

  get name => auth;
  @override
  void onReady(){
    super.onReady();
    _user=Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user,initialScreen);

  }
  initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(()=>LoginPage());
    }else{
      Get.offAll(()=>Welcome(email:'',));
    }
  }

  void register(String email,password)async{
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About Login", "Login Message",
          backgroundColor: Colors.blueAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Account creation failed",
              style: TextStyle(
                  color: Colors.white)

          ),
          messageText: Text(e.toString(),style: TextStyle(
              color: Colors.white
          ),)
      );
    }
  }
  void login(String email,password)async{
    try {
     await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About Login", "Login Message",
    backgroundColor: Colors.blueAccent,
    snackPosition: SnackPosition.BOTTOM,
    titleText: Text("login failed",
    style: TextStyle(
    color: Colors.white)

    ),
        messageText: Text(e.toString(),style: TextStyle(
          color: Colors.white
        ),)
    );
    }
  }
  void logout()async{
    await auth.signOut();
  }
}