import 'package:ecell/auth.dart';
import 'package:ecell/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var emailController =TextEditingController();
    var passwordController=TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0,100.0,0.0, 0.0),
                  child:Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 70.0,fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                    ),
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'NAME',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)
                    ),

                  ),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)
                    ),
                  ),
                ),
                TextField(
                  controller:passwordController ,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          GestureDetector(
            onTap: (){
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
    },
           child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: Material(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.blueAccent,
                elevation: 4.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child:Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        fontFamily: 'Montserrat'
                    ),
                    )
                  )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already a member?  ',
                style: TextStyle(fontFamily:'Moneserrat')
    ),
                  SizedBox(height:20.0),
                  InkWell(onTap: ()=>Get.to(()=>LoginPage()) ,
    child: Text(
    'Login',
                  style: TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline
    ),



    )
                ),

            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('follow us on '),
              Icon(Icons.facebook_rounded),
              Icon(Icons.whatsapp_rounded),
              Icon(Icons.snapchat_rounded)
            ],
          )

              ]

     )
    );

  }
}



