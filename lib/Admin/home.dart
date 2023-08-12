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
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(left:50),
                    width: MediaQuery.of(context).size.width*(80/100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                        SizedBox(height: MediaQuery.of(context).size.width*(2.93/100),),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*(35.15/100),
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*(2.27/100),),
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Forms Submitted',
                                            style: TextStyle(
                                              color: Color.fromRGBO(86, 109, 136, 1),
                                              fontFamily: "Inter",
                                              fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                              fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(2.27/100)),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/formsubmitted.png",
                                            width: MediaQuery.of(context).size.width*(8.05/100),
                                            height: MediaQuery.of(context).size.width*(8.05/100),
                                          ),
                                          SizedBox(width: MediaQuery.of(context).size.width*(1.83/100)),
                                          Text(
                                            "10 Total Forms Submitted",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context).size.width*(1.69/100),
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.bold,
                                            )
                                          )
                                        ]
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(0.73/100),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(MediaQuery.of(context).size.width*(0.51/100)),
                                            width: MediaQuery.of(context).size.width*(6.95/100),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Color.fromRGBO(99,161,112,1),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new formVandUV()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width*(1.46/100)),
                                Container(
                                  width: MediaQuery.of(context).size.width*(35.15/100),
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*(2.27/100),),
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Daily Traffic',
                                            style: TextStyle(
                                                color: Color.fromRGBO(86, 109, 136, 1),
                                                fontFamily: "Inter",
                                                fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.98/100)),
                                      Text(
                                        'Daily Traffic',
                                        style: TextStyle(
                                            color: Color.fromRGBO(45, 55, 66, 1),
                                            fontFamily: "Roboto",
                                            fontSize: MediaQuery.of(context).size.width*(2.27/100),
                                            fontWeight: FontWeight.w900
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.83/100)),
                                      Image.asset(
                                        "images/Traffic icon.png",
                                        width: MediaQuery.of(context).size.width*(8.05/100),
                                        height: MediaQuery.of(context).size.width*(8.05/100),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.83/100)),
                                      Text(
                                          "The average number of forms submitted this week is:",
                                          style: TextStyle(
                                            color: Color.fromRGBO(59, 80, 104, 1),
                                            fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.83/100),),
                                      Text(
                                        '5.6 Forms/hour',
                                        style: TextStyle(
                                          color: Color.fromRGBO(154, 96, 200, 1),
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w900,
                                          fontSize: MediaQuery.of(context).size.width*(2.64/100)
                                        )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*(1.46/100)),
                            Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*(35.15/100),
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*(2.27/100),),
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Notifications',
                                            style: TextStyle(
                                                color: Color.fromRGBO(86, 109, 136, 1),
                                                fontFamily: "Inter",
                                                fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(2.27/100)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.notifications_active, size: 40,),
                                          SizedBox(width: MediaQuery.of(context).size.width*(0.73/100)),
                                          Text(
                                            'Notifications',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context).size.width*(1.83/100),
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.bold,
                                            )
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.8/100)),
                                      Container(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width*(1.10/100)),
                                        width: double.maxFinite,
                                        color: Color.fromRGBO(231, 248, 235, 1),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "New Nurse Added",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontFamily: "Inter",
                                                fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                                color: Color.fromRGBO(59, 80, 104, 1)
                                              ),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.width*(0.3/100)),
                                            Text(
                                              "Click to View",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Inter",
                                                  fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                  color: Color.fromRGBO(132,132,130, 1)
                                              ),
                                            )
                                          ]
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.4/100)),
                                      Container(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width*(1.10/100)),
                                        width: double.maxFinite,
                                        color: Color.fromRGBO(231, 248, 235, 1),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "New Form Submitted by Angela Paul",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                                    color: Color.fromRGBO(59, 80, 104, 1)
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.width*(0.3/100)),
                                              Text(
                                                "Click to View",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                    color: Color.fromRGBO(132,132,130, 1)
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.4/100)),
                                      Container(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width*(1.10/100)),
                                        width: double.maxFinite,
                                        color: Color.fromRGBO(231, 248, 235, 1),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "New Form Submitted by Alexander Ola",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                                    color: Color.fromRGBO(59, 80, 104, 1)
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.width*(0.3/100)),
                                              Text(
                                                "Click to View",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                    color: Color.fromRGBO(132,132,130, 1)
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.4/100)),
                                      Container(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width*(1.10/100)),
                                        width: double.maxFinite,
                                        color: Color.fromRGBO(231, 248, 235, 1),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "New Doctor Added",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                                    color: Color.fromRGBO(59, 80, 104, 1)
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.width*(0.3/100)),
                                              Text(
                                                "Click to View",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                    color: Color.fromRGBO(132,132,130, 1)
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.4/100)),
                                      Container(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width*(1.10/100)),
                                        width: double.maxFinite,
                                        color: Color.fromRGBO(231, 248, 235, 1),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "New Intern Added",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                                    color: Color.fromRGBO(59, 80, 104, 1)
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.width*(0.3/100)),
                                              Text(
                                                "Click to View",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                    color: Color.fromRGBO(132,132,130, 1)
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width*(1.4/100)),
                                      Container(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width*(1.10/100)),
                                        width: double.maxFinite,
                                        color: Color.fromRGBO(231, 248, 235, 1),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "New Form Added by Shirley Bulus",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                                    color: Color.fromRGBO(59, 80, 104, 1)
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.width*(0.3/100)),
                                              Text(
                                                "Click to View",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Inter",
                                                    fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                    color: Color.fromRGBO(132,132,130, 1)
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
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

