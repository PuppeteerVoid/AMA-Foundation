import 'package:flutter/material.dart';
import './formsvnuv.dart';
import './main.dart';
import './user.dart';
import './view.dart';
import './home.dart';
import "package:amaeyeclinic/login.dart";
class newTeam extends StatefulWidget {
  const newTeam({super.key});
  @override
  State<newTeam> createState() => _newTeamState();
}

class _newTeamState extends State<newTeam> {

  var Doctors = [
    "Doc1","Doc2","Doc3","Doc4","Doc5","Doc6",
  ];
  var Interns = [
    "Int1","Int2","Int3","Int4","Int5","Int6",
  ];
  var Nurses = [
    "Nrs1","Nrs2","Nrs3","Nrs4","Nrs5","Nrs6",
  ];
  var Pharmacists = [
    "Ph1","Ph2","Ph3","Ph4","Ph5","Ph6",
  ];
  var HealthWorkers = [
    "HW1","HW2","HW3","HW4","HW5","HW6",
  ];
  bool ? isChecked = false;

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
                    child: Container(
                      width: 1000,
                      height: 640,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  margin: EdgeInsets.only(top: 50, left: 280),
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 220,
                                          height: 53,
                                          color: Colors.white,
                                          child: ListView(
                                            children: [
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(Icons.search),
                                                  hintText: "Search",
                                                  border: OutlineInputBorder(),
                                                ),
                                              )
                                            ],
                                          )
                                      ),
                                      SizedBox(width: 20,),
                                      Container(
                                        width: 110,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(99, 161, 112, 1),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: TextButton(
                                            onPressed: ()=>{

                                            },
                                            child: Text(
                                              "Search",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15,
                                              ),
                                            )
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 50,),
                            Text(
                              "Create Your Team",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(86, 109, 136, 1)
                              ),
                            ),
                            SizedBox(height: 25,),
                            Text(
                              "Select the desired members for your team",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(86, 109, 136, 1)
                              ),
                            ),
                            SizedBox(height: 60,),
                            Container(
                              width: 720,
                              padding: EdgeInsets.fromLTRB(10,13,10,13),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                  onPressed: (){

                                  },
                                    child: Text(
                                      "Interns",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){

                                    },
                                    child: Text(
                                      "Health Workers",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){

                                    },
                                    child: Text(
                                      "Nurses",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){

                                    },
                                    child: Text(
                                      "Doctors",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){

                                    },
                                    child: Text(
                                      "Pharmacists",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 60,),
                            Text(
                              "Team Members",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(86, 109, 136, 1)
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                                onPressed: (){},
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(
                                                  Icons.close,
                                            ),
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/bill.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Mamud Johnson",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Doctor",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 6/10/22",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 60),
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(left: 40,top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                                onPressed: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(
                                                    Icons.close,
                                                  ),
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/Ethan.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Alexander Pierre Ola",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Intern",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 18/2/23",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.all(30),
                              margin: EdgeInsets.only(top: 40),
                              width: 450,
                              height: 235,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                            onPressed: (){},
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              child: Icon(
                                                Icons.close,
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/helena.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                      SizedBox(width: 30),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Veronica Aledeji",
                                            style: TextStyle(
                                              fontFamily: "Inter",
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Text(
                                            "Role: Opthamologist",
                                            style: TextStyle(
                                                fontFamily: "Inter",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(150,150,150,1)
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Text(
                                            "Joined on: 1/2/23",
                                            style: TextStyle(
                                                fontFamily: "Inter",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(150,150,150,1)
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 95,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(99, 161, 112, 1),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: TextButton(
                                            onPressed: ()=>{
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => new view()),
                                              )
                                            },
                                            child: Text(
                                              "View",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15,
                                              ),
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 30,),
                            Container(
                              width: 1000,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    color: Color.fromRGBO(99,161,112,1),
                                    child: TextButton(
                                      onPressed: (){
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Text(
                                              "What is the name of your team?",
                                              style: TextStyle(
                                                color: Color.fromRGBO(86, 109, 136, 1),
                                                fontFamily: "Inter",
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            content: Container(
                                              height: 230,
                                              child: Column(
                                                  children: [
                                                    SizedBox(height: 30,),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          "Team Name",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily: "Inter",
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                            height: 49,
                                                            width: 320,
                                                            padding: EdgeInsets.only(left: 10),
                                                            color: Color.fromRGBO(193, 193, 193, 1),
                                                            child: ListView(
                                                              children: [
                                                                TextFormField(
                                                                  decoration: InputDecoration(
                                                                      hintText: "Team Name",
                                                                      border: InputBorder.none
                                                                  ),
                                                                )
                                                              ],
                                                            )
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(height: 70,),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 105,
                                                          height: 45,
                                                          decoration: BoxDecoration(
                                                            color: Color.fromRGBO(99, 161, 112, 1),
                                                            borderRadius: BorderRadius.circular(3),
                                                          ),
                                                          child: TextButton(
                                                              onPressed: ()=>{
                                                              showDialog(
                                                              context: context,
                                                              builder: (context) => AlertDialog(
                                                              title: Text(
                                                              "Where is your team's outreach?",
                                                              style: TextStyle(
                                                              color: Color.fromRGBO(86, 109, 136, 1),
                                                              fontFamily: "Inter",
                                                              fontSize: 18,
                                                              fontWeight: FontWeight.w600,
                                                              ),
                                                              ),
                                                              content: Container(
                                                              height: 230,
                                                              child: Column(
                                                              children: [
                                                              SizedBox(height: 30,),
                                                              Row(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                              Text(
                                                              "Location",
                                                              style: TextStyle(
                                                              color: Colors.black,
                                                              fontFamily: "Inter",
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                              ),
                                                              ),
                                                              ],
                                                              ),
                                                              SizedBox(height: 10,),
                                                              Row(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                              Container(
                                                              height: 49,
                                                              width: 320,
                                                              padding: EdgeInsets.only(left: 10),
                                                              color: Color.fromRGBO(193, 193, 193, 1),
                                                              child: ListView(
                                                              children: [
                                                              TextFormField(
                                                              decoration: InputDecoration(
                                                              hintText: "Location",
                                                              border: InputBorder.none
                                                              ),
                                                              )
                                                              ],
                                                              )
                                                              )
                                                              ],
                                                              ),
                                                              SizedBox(height: 70,),
                                                              Row(
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              children: [
                                                              Container(
                                                              width: 105,
                                                              height: 45,
                                                              decoration: BoxDecoration(
                                                              color: Color.fromRGBO(99, 161, 112, 1),
                                                              borderRadius: BorderRadius.circular(3),
                                                              ),
                                                              child: TextButton(
                                                                  onPressed: (){
                                                                    showDialog(
                                                                      context: context,
                                                                      builder: (context) => AlertDialog(
                                                                        title: Text(
                                                                          "How long is your team's outreach?",
                                                                          style: TextStyle(
                                                                            color: Color.fromRGBO(86, 109, 136, 1),
                                                                            fontFamily: "Inter",
                                                                            fontSize: 18,
                                                                            fontWeight: FontWeight.w600,
                                                                          ),
                                                                        ),
                                                                        content: Container(
                                                                          height: 230,
                                                                          child: Column(
                                                                              children: [
                                                                                SizedBox(height: 30,),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      "Outreach Duration",
                                                                                      style: TextStyle(
                                                                                        color: Colors.black,
                                                                                        fontFamily: "Inter",
                                                                                        fontSize: 16,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 10,),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                        height: 49,
                                                                                        width: 320,
                                                                                        padding: EdgeInsets.only(left: 10),
                                                                                        color: Color.fromRGBO(193, 193, 193, 1),
                                                                                        child: ListView(
                                                                                          children: [
                                                                                            TextFormField(
                                                                                              decoration: InputDecoration(
                                                                                                  hintText: "Outreach Duration in Days",
                                                                                                  border: InputBorder.none
                                                                                              ),
                                                                                            )
                                                                                          ],
                                                                                        )
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 70,),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 105,
                                                                                      height: 45,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color.fromRGBO(99, 161, 112, 1),
                                                                                        borderRadius: BorderRadius.circular(3),
                                                                                      ),
                                                                                      child: TextButton(
                                                                                          onPressed: ()=>{
                                                                                            showDialog(
                                                                                              context: context,
                                                                                              builder: (context) => AlertDialog(
                                                                                                title: Text(
                                                                                                  "When does your team's outreach take place?",
                                                                                                  style: TextStyle(
                                                                                                    color: Color.fromRGBO(86, 109, 136, 1),
                                                                                                    fontFamily: "Inter",
                                                                                                    fontSize: 18,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                  ),
                                                                                                ),
                                                                                                content: Container(
                                                                                                  height: 230,
                                                                                                  child: Column(
                                                                                                      children: [
                                                                                                        SizedBox(height: 30,),
                                                                                                        Row(
                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              "Outreach Date",
                                                                                                              style: TextStyle(
                                                                                                                color: Colors.black,
                                                                                                                fontFamily: "Inter",
                                                                                                                fontSize: 16,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        SizedBox(height: 10,),
                                                                                                        Row(
                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Container(
                                                                                                                  height: 49,
                                                                                                                  padding: EdgeInsets.only(left: 10),
                                                                                                                  color: Color.fromRGBO(193, 193, 193, 1),
                                                                                                                  child: ListView(
                                                                                                                    children: [
                                                                                                                      TextFormField(
                                                                                                                        decoration: InputDecoration(
                                                                                                                            hintText: "DD/MM/YY",
                                                                                                                            border: InputBorder.none
                                                                                                                        ),
                                                                                                                      )
                                                                                                                    ],
                                                                                                                  )
                                                                                                              ),
                                                                                                            )
                                                                                                          ],
                                                                                                        ),
                                                                                                        SizedBox(height: 70,),
                                                                                                        Row(
                                                                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                                                                          children: [
                                                                                                            Container(
                                                                                                              width: 105,
                                                                                                              height: 45,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: Color.fromRGBO(99, 161, 112, 1),
                                                                                                                borderRadius: BorderRadius.circular(3),
                                                                                                              ),
                                                                                                              child: TextButton(
                                                                                                                  onPressed: ()=>{
                                                                                                                  },
                                                                                                                  child: Text(
                                                                                                                    "Next",
                                                                                                                    style: TextStyle(
                                                                                                                      color: Colors.white,
                                                                                                                      fontFamily: "Inter",
                                                                                                                      fontWeight: FontWeight.w300,
                                                                                                                      fontSize: 15,
                                                                                                                    ),
                                                                                                                  )
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ]
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            )
                                                                                          },
                                                                                          child: Text(
                                                                                            "Next",
                                                                                            style: TextStyle(
                                                                                              color: Colors.white,
                                                                                              fontFamily: "Inter",
                                                                                              fontWeight: FontWeight.w300,
                                                                                              fontSize: 15,
                                                                                            ),
                                                                                          )
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ]
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                              child: Text(
                                                              "Next",
                                                              style: TextStyle(
                                                              color: Colors.white,
                                                              fontFamily: "Inter",
                                                              fontWeight: FontWeight.w300,
                                                              fontSize: 15,
                                                              ),
                                                              )
                                                              ),
                                                              ),
                                                              ],
                                                              ),
                                                              ]
                                                              ),
                                                              ),
                                                              ),
                                                              )
                                                              },
                                                              child: Text(
                                                                "Next",
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontFamily: "Inter",
                                                                  fontWeight: FontWeight.w300,
                                                                  fontSize: 15,
                                                                ),
                                                              )
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ]
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Create Team",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  "Interns",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Container(
                              width: 1000,
                              height: 1.5,
                              color: Color.fromRGBO(86, 109, 136, 1),
                            ),
                            SizedBox(height: 35,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                            setState(() {
                                              isChecked = newBool;
                                            });
                                          }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/bill.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Mamud Johnson",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Intern",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 6/10/22",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 60),
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(left: 40,top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Checkbox(
                                            value: isChecked,
                                            onChanged: (newBool){
                                              setState(() {
                                                isChecked = newBool;
                                              });
                                            }
                                        ),
                                      ],
                                    ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/Ethan.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Alexander Pierre Ola",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Intern",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 18/2/23",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  "Health Workers",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Container(
                              width: 1000,
                              height: 1.5,
                              color: Color.fromRGBO(86, 109, 136, 1),
                            ),
                            SizedBox(height: 35,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                                setState(() {
                                                  isChecked = newBool;
                                                });
                                              }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/helena.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Michelle Bulus",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Health Worker",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 6/10/22",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 60),
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(left: 40,top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                                setState(() {
                                                  isChecked = newBool;
                                                });
                                              }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/Mary.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Shirley Bulus",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Health Worker",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 18/2/23",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  "Nurses",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Container(
                              width: 1000,
                              height: 1.5,
                              color: Color.fromRGBO(86, 109, 136, 1),
                            ),
                            SizedBox(height: 35,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                                setState(() {
                                                  isChecked = newBool;
                                                });
                                              }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/Ethan.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Nifemi Adetiba",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Nurse",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 6/10/22",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 60),
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(left: 40,top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                                setState(() {
                                                  isChecked = newBool;
                                                });
                                              }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/myra.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Katie Ross",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Nurse",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 18/2/23",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  "Doctors",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Container(
                              width: 1000,
                              height: 1.5,
                              color: Color.fromRGBO(86, 109, 136, 1),
                            ),
                            SizedBox(height: 35,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                                setState(() {
                                                  isChecked = newBool;
                                                });
                                              }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/bill.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Samuel Olsen",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Doctor",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 6/10/22",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 60),
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(left: 40,top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                                setState(() {
                                                  isChecked = newBool;
                                                });
                                              }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/helena.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Karen Underwood",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Doctor",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 18/2/23",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  "Pharmacists",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Container(
                              width: 1000,
                              height: 1.5,
                              color: Color.fromRGBO(86, 109, 136, 1),
                            ),
                            SizedBox(height: 35,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                                setState(() {
                                                  isChecked = newBool;
                                                });
                                              }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/helena.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Jemimah Dalo",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Pharmacist",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 6/10/22",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 60),
                                Container(
                                  padding: EdgeInsets.all(30),
                                  margin: EdgeInsets.only(left: 40,top: 40),
                                  width: 450,
                                  height: 235,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              value: isChecked,
                                              onChanged: (newBool){
                                                setState(() {
                                                  isChecked = newBool;
                                                });
                                              }
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/Mary.jpg",
                                            width: 100,
                                            height: 100,
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Stephanie Okoye",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Role: Pharmacist",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Text(
                                                "Joined on: 18/2/23",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(150,150,150,1)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 95,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(99, 161, 112, 1),
                                              borderRadius: BorderRadius.circular(3),
                                            ),
                                            child: TextButton(
                                                onPressed: ()=>{
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new view()),
                                                  )
                                                },
                                                child: Text(
                                                  "View",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                        ],
                        ),
                      ),
                    ),
                      ),
            ]
                        ),
                      ),
                    ),
    );
  }
}
