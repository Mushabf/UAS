// import 'package:flutter/material.dart';
// import 'package:toast/Login/login2.dart';
// import 'package:toast/Login/profile_page.dart';

// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   int selectRadio;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     selectRadio = 0;
//   }

//   setSelectRadio(int val) {
//     setState(() {
//       selectRadio = val;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomPadding: false,
//       backgroundColor: Colors.grey[800],
//       body: ListView(
//         children: <Widget>[
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 child: Stack(
//                   children: <Widget>[
//                     Container(
//                         padding: EdgeInsets.all(50),
//                         child: Container(
//                             width: 140.0,
//                             height: 140.0,
//                             decoration: new BoxDecoration(
//                               shape: BoxShape.circle,
//                               image: new DecorationImage(
//                                 image: new ExactAssetImage('assets/film.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             )))
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.only(top: 35, left: 20, right: 20),
//                 child: Column(
//                   children: <Widget>[
//                     TextField(
//                       decoration: InputDecoration(
//                           labelText: 'First Name',
//                           hintText: 'First Name',
//                           hintStyle: TextStyle(color: Colors.white),
//                           labelStyle: TextStyle(
//                               fontFamily: 'Text',
//                               fontSize: 15,

//                               // fontWeight: FontWeight.bold,

//                               color: Colors.white),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white))),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           labelText: 'Last Name',
//                           hintText: 'Last Name',
//                           hintStyle: TextStyle(color: Colors.white),
//                           labelStyle: TextStyle(
//                               fontFamily: 'Text',
//                               fontSize: 15,

//                               // fontWeight: FontWeight.bold,

//                               color: Colors.white),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white))),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           labelText: 'Email2',
//                           hintText: 'Email/noTelp',
//                           hintStyle: TextStyle(color: Colors.white),
//                           labelStyle: TextStyle(
//                               fontFamily: 'Text',
//                               fontSize: 15,

//                               // fontWeight: FontWeight.bold,

//                               color: Colors.white),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white))),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           labelText: 'Password2',
//                           hintText: 'Password',
//                           hintStyle: TextStyle(color: Colors.white),
//                           labelStyle: TextStyle(
//                               fontFamily: 'Text',
//                               fontSize: 15,

//                               // fontWeight: FontWeight.bol,

//                               color: Colors.white),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white))),
//                       obscureText: true,
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           labelText: 'Retype Password',
//                           hintText: 'Retype Password',
//                           hintStyle: TextStyle(color: Colors.white),
//                           labelStyle: TextStyle(
//                               fontFamily: 'Text',
//                               fontSize: 15,

//                               // fontWeight: FontWeight.bol,

//                               color: Colors.white),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white))),
//                       obscureText: true,
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     ButtonBar(
//                       alignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Radio(
//                             value: 1,
//                             groupValue: selectRadio,
//                             activeColor: Colors.yellow,
//                             onChanged: (val) {
//                               print("Radio $val");
//                               setSelectRadio(val);
//                             }),
//                         Text(
//                           "Wanita",
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           width: 45,
//                         ),
//                         Radio(
//                             value: 2,
//                             groupValue: selectRadio,
//                             activeColor: Colors.yellow,
//                             onChanged: (val) {
//                               print("Radio $val");
//                               setSelectRadio(val);
//                             }),
//                         Text(
//                           "Pria",
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       height: 50,
//                       child: Material(
//                         borderRadius: BorderRadius.circular(40),
//                         shadowColor: Colors.blue,
//                         color: Colors.blue,
//                         elevation: 8,
//                         child: GestureDetector(
//                             onTap: () {
//                               Navigator.pushReplacement(context,
//                                   MaterialPageRoute(builder: (context) {
//                                 return Profile();
//                               }));
//                             },
//                             child: Center(
//                               child: Text(
//                                 "Login",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             )),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Text(
//                           "Already have an Account?",
//                           style: TextStyle(
//                               color: Colors.white, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         InkWell(
//                           onTap: () {
//                             Navigator.pop(context,
//                                 MaterialPageRoute(builder: (context) {
//                               return Login2();
//                             }));
//                           },
//                           child: Text(
//                             "Login Now",
//                             style: TextStyle(
//                                 color: Colors.blue,
//                                 fontWeight: FontWeight.bold,
//                                 decoration: TextDecoration.underline),
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
