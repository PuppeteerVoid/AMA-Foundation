import 'package:amaeyeclinic/login.dart';
import 'package:flutter/material.dart';
import './formsvnuv.dart';
// void main() {
//   runApp(
//      clinic2()
//   );
// }
class Hpatient extends StatefulWidget {
  const Hpatient({super.key});
  @override
  State<Hpatient> createState() => _HpatientState();
}
class _HpatientState extends State<Hpatient> {
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
                                            "Common Health Worker",
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,0,40,0),
                  child: SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width*(70/100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.width*(3.66/100)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => new HformVandUV())
                                  );
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "images/back.png",
                                        width: MediaQuery.of(context).size.width*(2.27/100),
                                        height: MediaQuery.of(context).size.width*(2.27/100),
                                      ),
                                      Text(
                                        "Back",
                                        style: TextStyle(
                                            fontFamily: "Outfit",
                                            fontSize: MediaQuery.of(context).size.width*(1.46/100),
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
                          SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                          Container(
                            width: MediaQuery.of(context).size.width*(70/100),
                            padding: EdgeInsets.all(30),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorelai Murray",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: MediaQuery.of(context).size.width*(1.83/100),
                                    fontFamily: "Inter"
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width*(2.27/100),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Age: 19",
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Text(
                                      "Sex: Female",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Text(
                                      "State of Origin: Kogi",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width*(1.64/100),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Address: No. 17 Lousy Street",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      "Date: 17 March 2023",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width*(1.24/100),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width*(2.93/100),),
                                Container(
                                  height: MediaQuery.of(context).size.width*(0.11/100),
                                  width: double.maxFinite,
                                  color: Colors.black,
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width*(2.93/100),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Visual Acuity",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.width*(1.54/100),
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                            width: MediaQuery.of(context).size.width*(19.77/100),
                                            height: MediaQuery.of(context).size.width*(3.88/100),
                                            color: Colors.white,
                                            child: ListView(
                                              children: [
                                                TextFormField(
                                                  decoration: InputDecoration(
                                                    hintText: "Edit",
                                                    border: InputBorder.none,
                                                  ),
                                                  style: TextStyle(
                                                    fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                )
                                              ],
                                            )
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                                        Text(
                                          "Complaint",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.width*(1.54/100),
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(132,132,130,1),                                        ),
                                          ),
                                        SizedBox(height:MediaQuery.of(context).size.width*(0.73/100)),
                                        Text(
                                          "-",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(132,132,130,1),                                        ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                                        Text(
                                          "Findings",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.width*(1.54/100),
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(132,132,130,1),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.width*(0.73/100)),
                                        Text(
                                          "-",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(132,132,130,1),                                        ),
                                          ),
                                        SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                                        Text(
                                          "Diagnosis",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.width*(1.54/100),
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(132,132,130,1),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.width*(0.73/100)),
                                        Text(
                                          "-",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(132,132,130,1),                                        ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                                        Text(
                                          "Treatment",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*(1.54/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(132,132,130,1),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.width*(0.73/100)),
                                        Text(
                                          "-",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(132,132,130,1),                                        ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                                        Text(
                                          "Drugs",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*(1.54/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(132,132,130,1),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width*(0.44/100),
                                              height: MediaQuery.of(context).size.width*(0.44/100),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Color.fromRGBO(132,132,130,1),
                                              ),
                                            ),
                                            SizedBox(width: MediaQuery.of(context).size.width*(0.73/100)),
                                            Text(
                                              "-",
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(132,132,130,1),                                        ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                                        Text(
                                          "Recommended Glasses",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*(1.54/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(132,132,130,1),

                                          ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.width*(0.73/100),),
                                        Text(
                                          "-",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width*(1.10/100),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(132,132,130,1),                                        ),
                                        ),
                                      ]
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width*(3.66/100),),
                          Container(
                            width: MediaQuery.of(context).size.width*(70/100),
                            child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*(7.69/100),
                                  height: MediaQuery.of(context).size.width*(2.93/100),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(99, 161, 112, 1),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: TextButton(
                                      onPressed: ()=>{

                                      },
                                      child: Text(
                                        "Submit",
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
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

