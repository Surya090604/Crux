import 'package:ecell/auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

class Welcome extends StatelessWidget {
  String email;
  Welcome({Key? key,required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),

      ),
      body: Column(
        children: [
          Text("The Entrepreneurship Cell is one of the largest and active, student-run organizations of BITS Pilani Hyderabad Campus that aims at igniting the entrepreneurial spirit in young minds by providing innovators with a platform to jump from ‘Idea’ to ‘Product’.",
          style: TextStyle(
            fontSize: 20.0
          ),),
          Text(email),
          SizedBox(height: 200),
          Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              height: (70.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.blueAccent,
                elevation: 4.0,
                child: GestureDetector(
                    onTap: () {
                      AuthController.instance.logout();
                    },
                    child: Center(
                      child: Text(
                        'LOG OUT',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            fontFamily: 'Montserrat'
                        ),
                      )
                      ,
                    )
                ),
              ),
            )
        ],
      ),
    );
  }
}
