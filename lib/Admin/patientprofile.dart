import 'package:flutter/material.dart';
import 'formsvnuv.dart';
import 'user.dart';
import 'team.dart';
// void main() {
//   runApp(
//      clinic2()
//   );
// }
class patient extends StatefulWidget {
  const patient({super.key});
  @override
  State<patient> createState() => _patientState();
}
class _patientState extends State<patient> {
  @override
  Widget build(BuildContext ctxt) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(238, 255, 241, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("AMA Foundation",style: TextStyle(color: Colors.black),),
        ),
        body: SafeArea(
            child: Row(
              children: [
                Container(
                  width: 270,
                  height: double.infinity,
                  padding: EdgeInsets.zero,
                  child: NavigationDrawer(
                    backgroundColor: Color.fromRGBO(99, 161, 112, 1),
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                            child: Image(
                              image: AssetImage("images/arjun.png"),
                              height: 60,
                              width: 60,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 27),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ibrahim Yakubu",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Inter",
                                  ),
                                ),
                                Text(
                                  "Admin",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Inter",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: (){
                        },
                        child: Container(

                          height: 70,
                          width: 300,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/home.png",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inter",
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => new user()),
                          );
                        },
                        child: Container(
                          color: Color.fromRGBO(99, 161, 112, 1),
                          height: 70,
                          width: 300,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/user.png",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Users',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inter",
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                          ),
                          height: 70,
                          width: 300,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/forms.png",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Forms',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inter",
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => new newteam())
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(99, 161, 112, 1),
                          ),
                          height: 70,
                          width: 300,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/team.png",
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Teams',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inter",
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,0,40,0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Row(
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => new formVandUV())
                                );
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "images/back.png",
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text(
                                      "Back",
                                      style: TextStyle(
                                          fontFamily: "Outfit",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50,),
                        Container(
                          width: 1000,
                          padding: EdgeInsets.all(30),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorelai Murray",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  fontFamily: "Inter"
                                ),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Age: 19",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text(
                                    "Sex: Female",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text(
                                    "State of Origin: Kogi",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Address: No. 17 Lousy Street",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    "Date: 17 March 2023",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40,),
                              Container(
                                height: 1.5,
                                width: double.maxFinite,
                                color: Colors.black,
                              ),
                              SizedBox(height: 40,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Visual Acuity",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Right Eye",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 50,),
                                      Text(
                                        "Complaint",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Sharp pain at the corner of the right eye and excess visibility of ateries in the right eye",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 50,),
                                      Text(
                                        "Findings",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Excess exposure to blue light from the screen of electronic devices",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 50,),
                                      Text(
                                        "Diagnosis",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 930,
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Although Antony Richardson had yet to discover the horrors of Paradis that awaited him, his experince in that cave made him all the more confident that h would come out of there alive, no matter what it took",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      ),
                                      SizedBox(height: 50,),
                                      Text(
                                        "Treatment",
                                        style: TextStyle(
                                          fontSize: 21,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 930,
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(height: 50,),
                                      Text(
                                        "Treatment",
                                        style: TextStyle(
                                          fontSize: 21,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Gtt-CPC",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 50,),
                                      Text(
                                        "Drugs",
                                        style: TextStyle(
                                          fontSize: 21,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "Gtt-CPC",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "Tab - PCM",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 50,),
                                      Text(
                                        "Recommended Glasses",
                                        style: TextStyle(
                                          fontSize: 21,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "+2.50",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ]
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
              ],
            )
        ),
      ),
    );
  }
}

