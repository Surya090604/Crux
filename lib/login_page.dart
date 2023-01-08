
import 'package:flutter/material.dart';
import 'package:ecell/signup_page.dart';
import 'package:get/get.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Colors.black,
      resizeToAvoidBottomInset:false,
      appBar: AppBar(

        leading: Icon(Icons.account_circle_rounded),
        actions: [
          Icon(Icons.info_outline_rounded)
        ],
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: ( Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Stack(
                      children:[
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 40.0,0.0 ,0.0),
                          child: Text(
                            "Ecell",
                            style: TextStyle(
                              fontSize: 80.0,fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 105.0,0.0 ,0.0),
                          child: Text(
                            "Tech",
                            style: TextStyle(
                              fontSize: 80.0,fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                                )
                              )
                            ),
                           ]
                          ),
                         ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0,25.0 ,20.0, 0.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent)
                            ),
                            labelText:'EMAIL',
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                     padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0,0.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent)
                            ),
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent)
                          ),
                        )
                          ),
                          ]
                    ),
                  ),
                  SizedBox(height:40.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: (50.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blueAccent,
                      elevation: 4.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'LOGIN',
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
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New Member? ',
                      style: TextStyle(fontFamily: 'Montserrat',
                      color: Colors.blueAccent),
                      ),
                      SizedBox(height: 20.0),
                      InkWell(
                        onTap: ()=>Get.to(()=>Signup()),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Colors.blueAccent
                          ),
                        )
                      ),

                    ],
                  ),



                       ],
                  )

            ),
        ),
      );
      

  }
}
