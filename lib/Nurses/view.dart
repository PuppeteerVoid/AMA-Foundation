import './home.dart';
import './login.dart';
import 'package:flutter/material.dart';
import './formsvnuv.dart';
import './main.dart';
import './user.dart';
// void main() {
//   runApp(
//      clinic2()
//   );
// }
class view extends StatefulWidget {
  const view({super.key});
  @override
  State<view> createState() => _viewState();
}
class _viewState extends State<view> {
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
                  width: 270,
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
                      ),
                      SizedBox(
                        height: 20,
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
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Text(
                                  'Home',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Inter",
                                    fontSize: 18,
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
                            color: Color.fromRGBO(255, 255, 255, 0.3),
                          ),                          height: 70,
                          width: 300,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/user.png",
                                width: 35,
                                height: 35,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Users',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Inter",
                                    fontSize: 18,
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
                          color: Color.fromRGBO(99, 161, 112, 1),
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
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Forms',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Inter",
                                    fontSize: 18,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 50,),
                        Container(
                          width: 1000,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => new user())
                                    );
                                  },
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
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 988,
                          padding: EdgeInsets.all(30),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "images/Mary.jpg",
                                    width: 150,
                                    height: 150,
                                  ),
                                  SizedBox(width: 70,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Katrina Olivia Paul",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Opthamologist",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 60,),
                              Container(
                                width: 910,
                                height: 1,
                                color: Colors.black,
                              ),
                              SizedBox(height: 75,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Inter",
                                          fontSize: 19,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "olipaul@gmail.com",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                        ),
                                      ),],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Phone Number",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Inter",
                                          fontSize: 19,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "+234 709 5673 9901",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 60,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nationality",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Inter",
                                          fontSize: 19,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Brazilian",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                        ),
                                      ),],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "State of Origin",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Inter",
                                          fontSize: 19,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Bahia",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 60,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Highest Qualification",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Inter",
                                          fontSize: 19,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "MS(Matery of Surgery)",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                        ),
                                      ),],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Address",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Inter",
                                          fontSize: 19,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "No. 12 Helix Lane",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 60,),
                              Container(
                                width: 910,
                                height: 0.5,
                                color: Colors.black,
                              ),
                              SizedBox(height: 60,),
                              Column(
                                children: [
                                  Text(
                                      "Last Seen Online",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Text(
                                    "01/07/12, 23:44",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 60,),
                              Container(
                                width: 910,
                                height: 0.5,
                                color: Colors.black,
                              ),
                              SizedBox(height: 60,),
                              Text(
                                "Patients Reviewed (2)",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black
                                ),
                              ),
                              SizedBox(height: 60,),
                              Container(
                                padding: EdgeInsets.all(20),
                                color: Color.fromRGBO(225, 255, 231, 1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jeniffer Kate",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1)                                      ),
                                    ),
                                    SizedBox(height:25),
                                    Text(
                                      "Age: 25",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(86, 109, 136, 1)                                      ),
                                    ),
                                    SizedBox(height:17),
                                    Text(
                                      "Sex: Female",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(86, 109, 136, 1)                                      ),
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
                                              color: Color.fromRGBO(86, 109, 136, 1)                                          ),
                                        ),
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
                              SizedBox(height: 60,),
                              Container(
                                padding: EdgeInsets.all(20),
                                color: Color.fromRGBO(225, 255, 231, 1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Alexander Arnold",
                                      style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(86, 109, 136, 1),
                                      ),
                                    ),
                                    SizedBox(height:25),
                                    Text(
                                      "Age: 29",
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
                                          "Submitted On: 27/02/23",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(86, 109, 136, 1)
                                          ),
                                        ),
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
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),],
            )
        ),
      ),
    );
  }
}

