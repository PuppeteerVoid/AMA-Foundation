import './home.dart';
import 'package:amaeyeclinic/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import './view.dart';
import './formsvnuv.dart';
import "./newuser.dart";
// void main() {
//   runApp(
//      clinic2()
//   );
// }
class user extends StatefulWidget {
  const user({super.key});
  @override
  State<user> createState() => _userState();
}
class _userState extends State<user> {
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(255, 255, 255, 0.3)
                          ),                            height: MediaQuery.of(context).size.width*(5.12/100),
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
                  padding: const EdgeInsets.fromLTRB(50,0,40,0),
                  child: SingleChildScrollView(
                    child: Container(
                      width: 1000,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top:50),
                                child: Text(
                                  "Dashboard / User",
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
                                child: Row(
                                  children: [
                                    Container(
                                              width: 270,
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
                                    Container(
                                      width: 140,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(99, 161, 112, 1),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: TextButton(
                                          onPressed: ()=>{
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>  new newUser())
                                            )
                                          },
                                          child: Text(
                                            "Create New User",
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
                                    )
                                  ],
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
                            ],
                          ),
                          SizedBox(height:20),



                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(30),
                                margin: EdgeInsets.only(top: 40),
                                width: 450,
                                height: 210,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
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
                                              "Aisha Khadijat Yusuf",
                                              style: TextStyle(
                                                fontFamily: "Inter",
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text(
                                              "Role: Admin",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(150,150,150,1)
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text(
                                              "Joined on: 19/09/22",
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
                                margin: EdgeInsets.only(left: 40, top: 40),
                                width: 450,
                                height: 210,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
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
                                              "Katrina Olivia Paul",
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
                                              "Joined on: 23/11/22",
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(30),
                                margin: EdgeInsets.only(top: 40),
                                width: 450,
                                height: 210,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
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
                                height: 210,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
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
                              Container(
                                padding: EdgeInsets.all(30),
                                margin: EdgeInsets.only(top: 40),
                                width: 450,
                                height: 210,
                                color: Colors.white,
                                child: Column(
                                  children: [
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
                            ],
                          ),
                        ]
                      ),
                    ),
                  ),
                          ),
                  ],
                ),
                ),
                      ),
                  );
  }
}

