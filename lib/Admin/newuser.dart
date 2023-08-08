import 'package:flutter/material.dart';
import 'main.dart';
import 'user.dart';
import 'team.dart';
// void main() {
//   runApp(
//      clinic2()
//   );
// }
class newUser extends StatefulWidget {
  const newUser({super.key});
  @override
  State<newUser> createState() => _newUserState();
}
class _newUserState extends State<newUser> {
  var roleStart = "Intern";
  var role = ["Intern", "HealthWorker", "Nurse", "Doctor", "Pharmacist", "Admin"];
  @override
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (ctxt) => new clinic1())
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(99,161,112,1),
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
                  padding: const EdgeInsets.fromLTRB(50,0,40,0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50,),
                        Row(
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => new user())
                                );
                              },
                              child: Container(
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
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 988,
                          padding: EdgeInsets.all(30),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "Create User",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color.fromRGBO(45, 55, 66, 1),
                                    ),
                                  ),
                                  Text(
                                      "This information can be edited in the profile page",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(102, 120, 138, 1)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: double.maxFinite,
                                height: 0.4,
                                color: Color.fromRGBO(132, 153, 178, 1),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 230,
                                height: 230,
                                padding: EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(170),
                                  color: Color.fromRGBO(238, 255, 242, 1)
                                ),
                                child: Column(
                                  children: [
                                    Image.asset("images/newuser.png", width: 110, height: 110,),
                                    SizedBox(height: 20,),
                                    Text(
                                      "Upload Passport",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(99,161,112,1)
                                      ),
                                    )
                                  ],
                                )
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Full Name",
                                        style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 320,
                                        height: 53,
                                        color: Color.fromRGBO (250, 251, 252, 1),
                                        child: ListView(
                                          children: [
                                        TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder()
                                            ),
                                           ),
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Phone Number",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 320,
                                        height: 53,
                                        color: Color.fromRGBO (250, 251, 252, 1),
                                        child: ListView(
                                            children: [
                                              TextFormField(
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 80,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 320,
                                        height: 53,
                                        color: Color.fromRGBO (250, 251, 252, 1),
                                        child: ListView(
                                            children: [
                                              TextFormField(
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder()
                                                ),
                                              ),
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Role",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 320,
                                        height: 53,                                        // child: ListView(
                                        //     children: [
                                        //       TextFormField(
                                        //         decoration: InputDecoration(
                                        //           border: OutlineInputBorder(),
                                        //         ),
                                        //       ),
                                        //     ]
                                        // ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Color.fromRGBO (250, 251, 252, 1),
                                          border: Border(top: BorderSide.none)
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            padding: EdgeInsets.only(left: 20),
                                            value: roleStart,
                                            items: role.map(
                                                (val) => DropdownMenuItem(child: Text(
                                                  val,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w500
                                                  ),
                                                ),value: val,)
                                            ).toList(),
                                                onChanged: (anotherVal){
                                                  setState((){
                                                    roleStart = anotherVal as String;
                                                  });
                                              }
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 80,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nationality",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 320,
                                        height: 53,
                                        color: Color.fromRGBO (250, 251, 252, 1),
                                        child: ListView(
                                            children: [
                                              TextFormField(
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder()
                                                ),
                                              ),
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "State of Origin",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 320,
                                        height: 53,
                                        color: Color.fromRGBO (250, 251, 252, 1),
                                        child: ListView(
                                            children: [
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 80,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Highest Qualification",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 320,
                                        height: 53,
                                        color: Color.fromRGBO (250, 251, 252, 1),
                                        child: ListView(
                                            children: [
                                              TextFormField(
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder()
                                                ),
                                              ),
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Address",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 320,
                                        height: 53,
                                        color: Color.fromRGBO (250, 251, 252, 1),
                                        child: ListView(
                                            children: [
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 60,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 140,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 161, 112, 1),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: TextButton(
                                        onPressed: ()=>{
                                        },
                                        child: Text(
                                          "Add New User",
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
                        )
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

