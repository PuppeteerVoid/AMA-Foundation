import 'package:flutter/material.dart';
void main(){
  runApp(login());
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                          fontSize: 65,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "To keep connected with us, input your personal info",
                        style: TextStyle(
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                            color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40),
                      Image.asset(
                        "images/glasses.png",
                        width: 300,
                        height: 300,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Your eyes are the lamp of your body.",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Get good eye care today.",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
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
                            fontSize: 45,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 2, 0, 2),
                                color: Color.fromRGBO(239, 239, 239, 1),
                                width: 350,
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
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User ID",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 2, 0, 2),
                                color: Color.fromRGBO(239, 239, 239, 1),
                                width: 350,
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
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(Icons.error, color: Colors.red,),
                          SizedBox(width: 7,),
                          Text(
                            "Email or password is incorrect",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.red
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot ID?",
                            style: TextStyle(
                              fontFamily: "Outfit",
                              color: Color.fromRGBO(86, 109, 136, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                            ),
                          )
                        ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Color.fromRGBO(99, 161, 112, 1),
                            width: 140,
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: ()=>{
                              },
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  fontFamily: "Outfit",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "or",
                            style: TextStyle(
                              color: Color.fromRGBO(132, 153, 178, 1),
                              fontFamily: "Roboto",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 25,),
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
                              width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "Log in with Google",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
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
      ),
    );
  }
}

