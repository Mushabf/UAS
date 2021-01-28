import 'package:aritmatika/home.dart';
import 'package:flutter/material.dart';



class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String nUsername, nPassword;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      // backgroundColor: Colors.grey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(50),
                    child: Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            image: new ExactAssetImage("img/mat.jpg"),
                            fit: BoxFit.cover,
                          ),
                        )))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Input Username';
                    }
                    return null;
                  },
                  controller: myUsernameController,
                  maxLength: 7,
                  maxLengthEnforced: true,
                  decoration: InputDecoration(
                      labelText: 'Email',
                   
                      hintText: 'Email/noTelp',
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(
                          fontFamily: 'Text',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Input Username';
                    }
                    return null;
                  },
                  maxLength: 5,
                  maxLengthEnforced: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(
                          fontFamily: 'Text',
                          fontSize: 15,
                          

                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  obscureText: true,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment(1, 0),
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: InkWell(
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(40),
                    shadowColor: Colors.blue,
                    color: Colors.blue,
                    elevation: 8,
                    child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text("Menuju Ke Home"),
                                    content: Text("Home"),
                                    actions: <Widget>[
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return HomeScreen();
                                            }));
                                          },
                                          child: Text("ok")),
                                    ],
                                  ));
                        },
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ),  
              ],
            ),
          )
        ],
      ),
    );
  }
}
