import 'package:flutter/material.dart';
import '../firebase_options.dart';
import './formsvnuv.dart';
import './user.dart';
import 'package:amaeyeclinic/login.dart';
import './home.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
       home: clinic1(),
     )
  );
}
// import 'package:url_launcher/url_launcher.dart';
//
// final Uri home = Uri.parse('https://flutter.dev');
class clinic1 extends StatefulWidget {
  const clinic1({super.key});

  @override
  State<clinic1> createState() => _clinic1State();
}

class _clinic1State extends State<clinic1> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(238, 255, 242, 1),
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: Text('AMA Foundation',style: TextStyle(
              color: Colors.black
          ),
          ),
        ),
        body:SafeArea(
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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(255, 255, 255, 0.3)
                    ),                                              height: MediaQuery.of(context).size.width*(5.12/100),
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
            padding: const EdgeInsets.fromLTRB(55,0,40,0),
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(340, 0, 0, 0),
                child: Column(
                  mainAxisSize:MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                          "images/noactivity.png",
                          width: 300,
                          height: 300,
                      ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                        "You don't have any activity on your dashboard",
                      style: TextStyle(
                        fontFamily: "inter",
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () => {

                      },
                      child: Text(
                        "Create User",
                        style: TextStyle(
                          fontFamily: "inter",
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(99, 161, 112, 1)
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
        ],
      ),
    ),
    );
  }
}
