import 'package:flutter/material.dart';
import 'formsvnuv.dart';
import 'main.dart';
import 'user.dart';
import 'newTeam.dart';
// void main() {
//   runApp(
//      clinic2()
//   );
// }
class newteam extends StatefulWidget {
  const newteam({super.key});
  @override
  State<newteam> createState() => _newteamState();
}
class _newteamState extends State<newteam> {
  String formVariant = "Date Created";
  final _formVariation = [
    "A-Z", "Date Created", "Interns", "Health Workers", "Nurses", "Doctors", "Pharmacists"
  ];
  Widget build(BuildContext uSer) {
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => new clinic1()),
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
                                  MaterialPageRoute(builder: (context) => new user())
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => new formVandUV())
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
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50,0,40,0),
                    child: SingleChildScrollView(
                      child: Container(
                        width: 1000,
                        height: 640,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top:50),
                                  child: Text(
                                    "Dashboard / Teams",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(150,150,150,1)
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top:50),
                                  color: Color.fromRGBO(201, 255, 212, 1),
                                  height: 40,
                                  width: 145,
                                  child: TextButton(
                                    onPressed: ()=>{
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => new newTeam())
                                      )
                                    },
                                    child: Text(
                                      "Create New Team",
                                      style: TextStyle(
                                        color: Color.fromRGBO(99, 161, 112, 1),
                                        fontSize: 14,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 60,),
                            Column(
                              children: [
                                Image.asset(
                                  "images/noteam.png",
                                  width: 300,
                                  height: 300,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  "You do not have any teams on this dashboard",
                                  style: TextStyle(
                                    fontFamily: "inter",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }
}
