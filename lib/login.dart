import 'package:amaeyeclinic/Doctors/formsvnuv.dart';
import 'package:amaeyeclinic/Nurses/formsvnuv.dart';
import 'package:amaeyeclinic/Health Worker/formsvnuv.dart';
import 'package:amaeyeclinic/Pharmacist/formsvnuv.dart';
import 'package:amaeyeclinic/Admin/main.dart';


import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(home: login(), debugShowCheckedModeBanner: false,)
  );
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(238, 255, 241, 1),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Text("AMA Foundation",style: TextStyle(color: Colors.black),),
        // ),
        body: SafeArea(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(90, 60, 90, 60),
                  width: MediaQuery.of(context).size.width / 2,
                  height: double.maxFinite,
                  color: Color.fromRGBO(146, 197, 156, 1),
                  child: Column(
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w900,
                            fontSize: MediaQuery.of(context).size.width*(4.76/100),
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(0.73/100)),
                      Text(
                        "To keep connected with us, input your personal info",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width*(1.83/100),
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(2.93/100)),
                      Image.asset(
                        "images/glasses.png",
                        width: MediaQuery.of(context).size.width*(21.96/100),
                        height: MediaQuery.of(context).size.width*(21.96/100),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.width*(0.73/100)),
                      Text(
                        "Your eyes are the lamp of your body.",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width*(1.83/100),
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Get good eye care today.",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width*(1.83/100),
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(70, 50, 70, 10),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Log In",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w900,
                            fontSize: MediaQuery.of(context).size.width*(3.29/100),
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(2.27/100)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*(1.61/100),
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width*(0.73/100)),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 2, 0, 2),
                                color: Color.fromRGBO(239, 239, 239, 1),
                                width: MediaQuery.of(context).size.width*(25.62/100),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "example@gmail.com",
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(3.66/100)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User ID",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*(1.61/100),
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width*(0.73/100)),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 2, 0, 2),
                                color: Color.fromRGBO(239, 239, 239, 1),
                                width: MediaQuery.of(context).size.width*(25.62/100),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      suffixIcon: TextButton(
                                          onPressed: ()=>{

                                          }
                                          ,child: Icon(Icons.remove_red_eye_outlined)
                                      ),
                                      hintText: "93472947293",
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(1.46/100)),
                      Row(
                        children: [
                          Icon(Icons.error, color: Colors.red,),
                          SizedBox(width: MediaQuery.of(context).size.width*(0.51/100)),
                          Text(
                            "Email or password is incorrect",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                color: Colors.red
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(1.83/100)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot ID?",
                              style: TextStyle(
                                  fontFamily: "Outfit",
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                  fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                  fontWeight: FontWeight.w900
                              ),
                            )
                          ]
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(1.46/100),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Color.fromRGBO(99, 161, 112, 1),
                            width: MediaQuery.of(context).size.width*(10.24/100),
                            child: TextButton(
                              onPressed: ()=>{
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => new clinic1())
                                )
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(MediaQuery.of(context).size.width*(0.73/100)),
                                    child: Text(
                                      "Log in",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: MediaQuery.of(context).size.width*(1.46/100),
                                        fontFamily: "Outfit",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(1.83/100),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "or",
                            style: TextStyle(
                              color: Color.fromRGBO(132, 153, 178, 1),
                              fontFamily: "Roboto",
                              fontSize: MediaQuery.of(context).size.width*(1.46/100),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*(1.83/100),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Color.fromRGBO(244, 244, 244, 1),
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: ()=>{
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/google.png",
                                    width: MediaQuery.of(context).size.width*(2.27/100),
                                    height: MediaQuery.of(context).size.width*(2.27/100),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width*(1.46/100),),
                                  Text(
                                    "Log in with Google",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: MediaQuery.of(context).size.width*(1.46/100),
                                      fontFamily: "Roboto",
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),
      );
  }
}

