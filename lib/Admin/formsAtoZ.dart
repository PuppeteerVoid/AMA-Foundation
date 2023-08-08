import 'formsvnuv.dart';
import 'package:flutter/material.dart';
import 'formsDate.dart';
import 'patientprofile.dart';
import 'user.dart';
import 'team.dart';
class formsAtoZ extends StatefulWidget {
  const formsAtoZ({super.key});
  @override
  State<formsAtoZ> createState() => _formsAtoZState();
}
class _formsAtoZState extends State<formsAtoZ> {

  String formVariant = "AtoZ";
  final _formVariation = [
     "AtoZ","Viewed and Unviewed","Date Created"
  ];
  String linkName = "";

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
                          height: 70,
                          width: 300,
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                            borderRadius: BorderRadius.circular(5)
                          ),
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
                  padding: const EdgeInsets.fromLTRB(55,0,40,0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 1000,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top:50),
                                child: Text(
                                  "Dashboard / Forms",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(150,150,150,1)
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height:60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => new formVandUV())
                                      );
                                    },
                                    child: Text(
                                      "Unviewed and Viewed",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => new formsAtoZ())
                                      );
                                    },
                                    child: Text(
                                      "Alpahabetical order",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1),
                                        decoration: TextDecoration.underline
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => new formsDate())
                                      );
                                    },
                                    child: Text(
                                      "Date Created",
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
                          ],
                        ),
                        SizedBox(height:50),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Submitted Forms",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 55,),
                        Container(
                          padding: EdgeInsets.all(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dalton Devito",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                ),
                              ),
                              SizedBox(height:25),
                              Text(
                                "Age: 21",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                ),
                              ),
                              SizedBox(height:17),
                              Text(
                                "Sex: Male",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(86, 109, 136, 1)
                                ),
                              ),
                              SizedBox(height:5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Submitted On: 14/12/22",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(86, 109, 136, 1)
                                    ),
                                  ),
                                  SizedBox(width: 530,),
                                  Container(
                                    width: 105,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 161, 112, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: TextButton(
                                        onPressed: ()=>{
                                        },
                                        child: Text(
                                          "Delete",
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
                                  Container(
                                    width: 95,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 161, 112, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: TextButton(
                                        onPressed: ()=>{
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
                        SizedBox(height: 35,),
                        Container(
                          padding: EdgeInsets.all(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jeniffer Kate",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                ),
                              ),
                              SizedBox(height:25),
                              Text(
                                "Age: 25",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                ),
                              ),
                              SizedBox(height:17),
                              Text(
                                "Sex: Female",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(86, 109, 136, 1)
                                ),
                              ),
                              SizedBox(height:5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Submitted On: 01/03/23",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(86, 109, 136, 1)
                                    ),
                                  ),
                                  SizedBox(width: 530,),
                                  Container(
                                    width: 105,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 161, 112, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: TextButton(
                                        onPressed: ()=>{
                                        },
                                        child: Text(
                                          "Delete",
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
                                  Container(
                                    width: 95,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 161, 112, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: TextButton(
                                        onPressed: ()=>{
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
                        SizedBox(height: 35,),
                        Container(
                          padding: EdgeInsets.all(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorelai Murray",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                ),
                              ),
                              SizedBox(height:25),
                              Text(
                                "Age: 19",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                ),
                              ),
                              SizedBox(height:17),
                              Text(
                                "Sex: Female",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(86, 109, 136, 1)
                                ),
                              ),
                              SizedBox(height:5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Submitted On: 08/06/23",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(86, 109, 136, 1)
                                    ),
                                  ),
                                  SizedBox(width: 530,),
                                  Container(
                                    width: 105,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 161, 112, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: TextButton(
                                        onPressed: ()=>{
                                        },
                                        child: Text(
                                          "Delete",
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
                                              MaterialPageRoute(builder: (context) => new patient())
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
                        SizedBox(height: 35,),
                        Container(
                          padding: EdgeInsets.all(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sam Peters",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                ),
                              ),
                              SizedBox(height:25),
                              Text(
                                "Age: 31",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(86, 109, 136, 1),
                                ),
                              ),
                              SizedBox(height:17),
                              Text(
                                "Sex: Male",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(86, 109, 136, 1)
                                ),
                              ),
                              SizedBox(height:5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Submitted On: 28/04/23",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(86, 109, 136, 1)
                                    ),
                                  ),
                                  SizedBox(width: 530,),
                                  Container(
                                    width: 105,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 161, 112, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: TextButton(
                                        onPressed: ()=>{
                                        },
                                        child: Text(
                                          "Delete",
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
                                  Container(
                                    width: 95,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 161, 112, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: TextButton(
                                        onPressed: ()=>{
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
                        // ListView(
                        //   children: [
                        //     TextFormField()
                        //   ],
                        // )
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
