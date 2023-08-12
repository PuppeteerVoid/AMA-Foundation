import './formsvnuv.dart';
import 'package:amaeyeclinic/login.dart';
import 'package:flutter/material.dart';
import './patientprofile.dart';
import './formsAtoZ.dart';
import './user.dart';
import './home.dart';

void main(){
  runApp(formsDate());
}

class formsDate extends StatefulWidget {
  const formsDate({super.key});
  @override
  State<formsDate> createState() => _formsDateState();
}
class _formsDateState extends State<formsDate> {

  String formVariant = "Date Created";
  final _formVariation = [
    "Viewed and Unviewed","AtoZ", "Date Created"
  ];

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
                  padding: const EdgeInsets.fromLTRB(55,0,40,0),
                  child: SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width*(70/100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*(70/100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.width*(3.66/100)),
                                  child: Row(
                                    children: [
                                      Container(
                                          width: MediaQuery.of(context).size.width*(16.11/100),
                                          height: MediaQuery.of(context).size.width*(3.88/100),
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
                                      SizedBox(width: MediaQuery.of(context).size.width*(1.46/100),),
                                      Container(
                                        width: MediaQuery.of(context).size.width*(8.05/100),
                                        height: MediaQuery.of(context).size.width*(3.66/100),
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
                                                fontSize: MediaQuery.of(context).size.width*(1.10/100),
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
                          SizedBox(height:MediaQuery.of(context).size.width*(4.39/100)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*(50/100),
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
                                          fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(86, 109, 136, 1)
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
                                        "A - Z",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(86, 109, 136, 1),
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
                                            fontSize: MediaQuery.of(context).size.width*(1.32/100),
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(86, 109, 136, 1),
                                          decoration: TextDecoration.underline
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width*(3.66/100)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Submitted Forms",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: MediaQuery.of(context).size.width*(1.76/100),
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ]
                          ),
                          SizedBox(height: 1.10),
                          Container(
                            width: MediaQuery.of(context).size.width*(70/100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: MediaQuery.of(context).size.width*(1.46/100)),
                                Text(
                                  "Today",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: MediaQuery.of(context).size.width*(1.39/100),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Container(
                            width: MediaQuery.of(context).size.width*(70/100),
                            height: MediaQuery.of(context).size.width*(0.07/100),
                            color: Colors.black,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Container(
                            padding: EdgeInsets.all(30),
                            width: MediaQuery.of(context).size.width*(70/100),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jeniffer Kate",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: MediaQuery.of(context).size.width*(1.76/100),
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(86, 109, 136, 1),
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.width*(1.83/100)),
                                Text(
                                  "Age: 25",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(86, 109, 136, 1),
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.width*(1.24/100)),
                                Text(
                                  "Sex: Female",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.width*(0.37/100)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Submitted On: 01/03/23",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*(30/100),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width*(6.95/100),
                                      height: MediaQuery.of(context).size.width*(2.93/100),
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
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Row(
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.width*(1.46/100),),
                              Text(
                                "Yesterday",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: MediaQuery.of(context).size.width*(1.39/100),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Container(
                            width: MediaQuery.of(context).size.width*(70/100),
                            height: MediaQuery.of(context).size.width*(((1/1366)*100)/100),
                            color: Colors.black,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Container(
                            padding: EdgeInsets.all(30),
                            width: MediaQuery.of(context).size.width*(70/100),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sam Peters",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: MediaQuery.of(context).size.width*(1.76/100),
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(86, 109, 136, 1),
                                  ),
                                ),
                                SizedBox(height:25),
                                Text(
                                  "Age: 31",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(86, 109, 136, 1),
                                  ),
                                ),
                                SizedBox(height:17),
                                Text(
                                  "Sex: Male",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width*(((5/1366)*100)/100)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Submitted On: 01/03/23",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*(30/100),
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
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Container(
                            padding: EdgeInsets.all(30),
                            width: MediaQuery.of(context).size.width*(70/100),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorelai Murray",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: MediaQuery.of(context).size.width*(1.76/100),
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(86, 109, 136, 1),
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.width*(1.83/100)),
                                Text(
                                  "Age: 19",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(86, 109, 136, 1),
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.width*(1.24/100)),
                                Text(
                                  "Sex: Female",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width*(0.37/100)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Submitted On: 01/03/23",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*(30/100),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width*(6.95/100),
                                      height: MediaQuery.of(context).size.width*(2.93/100),
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
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Row(
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.width*(1.46/100),),
                              Text(
                                "14th December, 2022",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: MediaQuery.of(context).size.width*(1.39/100),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Container(
                            width: MediaQuery.of(context).size.width*(70/100),
                            height: MediaQuery.of(context).size.width*(0.07/100),
                            color: Colors.black,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width*(2.64/100),),
                          Container(
                            padding: EdgeInsets.all(30),
                            width: MediaQuery.of(context).size.width*(70/100),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dalton Devito",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: MediaQuery.of(context).size.width*(1.76/100),
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(86, 109, 136, 1),
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.width*(1.83/100)),
                                Text(
                                  "Age: 21",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(86, 109, 136, 1),
                                  ),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.width*(1.24/100)),
                                Text(
                                  "Sex: Male",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(86, 109, 136, 1)
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width*(0.37/100)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Submitted On: 01/03/23",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: MediaQuery.of(context).size.width*(1.17/100),
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(86, 109, 136, 1)
                                      ),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*(30/100),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width*(6.95/100),
                                      height: MediaQuery.of(context).size.width*(2.93/100),
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

