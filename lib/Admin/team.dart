import 'package:flutter/material.dart';
import 'formsvnuv.dart';
import 'main.dart';
import 'user.dart';
import './home.dart';
import 'newTeam.dart';
import 'package:amaeyeclinic/login.dart';

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
                    width: MediaQuery.of(context).size.width*(20/100),
                    height: double.infinity,
                    padding: EdgeInsets.zero,
                    child: NavigationDrawer(
                      backgroundColor: Color.fromRGBO(99, 161, 112, 1),
                      children: [
                        TextButton(
                          onPressed: ()=>{
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => new login())
                            )
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                                child: Image(
                                  image: AssetImage("images/arjun.png"),
                                  height: MediaQuery.of(context).size.width*(4.39/100),
                                  width: MediaQuery.of(context).size.width*(4.39/100),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width*(0.73/100)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*(13.42/100),
                                child: Container(
                                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*(1.46/100), top: MediaQuery.of(context).size.width*(1.98/100)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Ibrahim Yakubu",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Inter",
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(0.4/100)),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Admin",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: MediaQuery.of(context).size.width*(1.02/100),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Inter",
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width*(1.46/100),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              new MaterialPageRoute(builder: (ctxt) => new home()),
                            );
                          },
                          child: Container(
                            color: Color.fromRGBO(99,161,112,1),
                            height: MediaQuery.of(context).size.width*(5.12/100),
                            width: MediaQuery.of(context).size.width*(21.96/100),
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*(1.46/100)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "images/home.png",
                                  width: MediaQuery.of(context).size.width*(2.64/100),
                                  height: MediaQuery.of(context).size.width*(2.64/100),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*(2.27/100)),
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Inter",
                                      fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                    ),
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
                              MaterialPageRoute(builder: (uSer) => new user()),
                            );
                          },
                          child: Container(
                            color: Color.fromRGBO(99, 161, 112, 1),
                            height: MediaQuery.of(context).size.width*(5.12/100),
                            width: MediaQuery.of(context).size.width*(21.96/100),
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*(1.46/100)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "images/user.png",
                                  width: MediaQuery.of(context).size.width*(2.64/100),
                                  height: MediaQuery.of(context).size.width*(2.64/100),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*(1.46/100)),
                                  child: Text(
                                    'Users',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Inter",
                                      fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                    ),
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
                                color: Color.fromRGBO(255, 255, 255, 0.3)
                            ),                          height: MediaQuery.of(context).size.width*(5.12/100),
                            width: MediaQuery.of(context).size.width*(21.96/100),
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*(1.46/100)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "images/forms.png",
                                  width: MediaQuery.of(context).size.width*(2.64/100),
                                  height: MediaQuery.of(context).size.width*(2.64/100),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*(1.46/100)),
                                  child: Text(
                                    'Forms',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Inter",
                                      fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                    ),
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
