import 'package:flutter/material.dart';
import './main.dart';
import './home.dart';
import './user.dart';
import './team.dart';
import './formsvnuv.dart';
import "package:amaeyeclinic/login.dart";
import "package:firebase_auth/firebase_auth.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

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
  _newUserState() {
    _selectedRoleVal = _roleList[0];
  }
  //authenticating the user
  final _roleList = [
    "Intern",
    "Common Health Worker",
    "Nurse",
    "Doctor",
  ];

  String? _selectedRoleVal = "";
  final _emailController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _roleController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _phoneNumberController.dispose();
    _roleController.dispose();
    super.dispose();
  }

  //sign user up method
  void signUserUp() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.green,
          ),
        );
      },
    );
  //
    //try sign up
    try {
      if (_passwordController.text.length <= 5) {
        Navigator.pop(context);
        //show error message for password being too short
        showErrorMessage('Password must be 6 digits and above');
      }
      //check if the confirm password and password are the same
      if (_passwordController.text == _confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          id: _passwordController.text,
        );

        //add user details
        addUserDetails(
          _usernameController.text.trim(),
          _emailController.text.trim(),
          _selectedRoleVal!.trim(),
          int.parse(
            _passwordController.text.trim(),
          ),
        );
      } else {
        //pop circular progress
        Navigator.pop(context);
        //show error message for passwords that dont match
        showErrorMessage('Passwords dont match');
      }
    } on FirebaseAuthException catch (e) {
      //pop circular progress
      Navigator.pop(context);
      //WRONG EMAIL
      if (e.code == 'user-not-found') {
        //show error to user
        showErrorMessage('Wrong Email');
      }

      //WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        //show error to user
        showErrorMessage('Wrong Password');
      }
    }
  }

  Future addUserDetails(
      String username,
      String email,
      String role,
      int id,
      ) async {
    await FirebaseFirestore.instance.collection('users').add({
      'Username': username,
      'Email': email,
      'Role': role,
      'ID': id,
    });
  }

  //error message popup
  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
      return AlertDialog(
          contentPadding: const EdgeInsets.all(10.0),
          shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    backgroundColor: Colors.green,
    title: Align(
    alignment: Alignment.center,
    child: Text(
    message,
    style: const TextStyle(
    color: Colors.white,
    fontSize: 27.0,
    fontWeight: FontWeight.w700),
    ),
    ),
      );},);}



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
                                        "Username",
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
                                            controller: _usernameController,
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
                                                controller: _phoneNumberController,
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
                                                controller: _emailController,
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

                                          child: DropdownButtonFormField(
                                            padding: EdgeInsets.only(left: 20),
                                            value: _selectedRoleVal,
                                            items: _roleList.map(
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
                                                    _selectedRoleVal = anotherVal as String;
                                                  });
                                              }
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
                                        "ID",
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
                                                controller: _passwordController,
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
                                        "Confirm ID",
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
                                                controller: _confirmPasswordController,
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
                                        onPressed: (){signUserUp();
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

