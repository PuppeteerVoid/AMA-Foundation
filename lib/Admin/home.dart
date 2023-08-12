import './formsvnuv.dart';
import 'package:flutter/material.dart';
import './user.dart';
import 'package:amaeyeclinic/login.dart';
// void main() {
//   runApp(
//      clinic2()
//   );
// }
class home extends StatefulWidget {
  const home({Key? key}) : super(key : key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Map<String, double> days = {
    "Day 1": 46,
    "Day 2": 92,
    "Day 3": 62,
    "Day 4": 14,
    "Day 5": 50,
    "Day 6": 41,
    "Day 7": 73,
  };
  @override
  Widget build(BuildContext context) {
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
                            Container(
                              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*(1.46/100), top: MediaQuery.of(context).size.width*(1.98/100)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ibrahim Yakubu",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                  Text(
                                    "Admin",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width*(1.02/100),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                ],
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(255, 255, 255, 0.3)
                          ),
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
                          color: Color.fromRGBO(99,161,112,1),
                          height: MediaQuery.of(context).size.width*(5.12/100),
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
                  padding: const EdgeInsets.fromLTRB(50,0,40,40),
                  child: SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width*(70/100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                          Text(
                            "Dashboard / Home",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(150,150,150,1)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

