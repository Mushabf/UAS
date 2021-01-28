import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Daftar Alat"),
        ),
        drawer: new Drawer(
            child: new ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Text("Silahkan Pilih Rumus Dibawah ini :",
                  style: new TextStyle(fontSize: 20.0)),
            ),
            ListTile(
              leading: Icon(Icons.music_video),
              title: new Text("Audio Vidio"),
              onTap: () {
                Navigator.pushNamed(context, "/audioplayers1");
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.movie),
            //   title: new Text("BMI"),
            //   onTap: () {
            //     Navigator.pushNamed(context, "/vidio");
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.crop_din),
              title: new Text("Bangun Datar"),
              onTap: () {
                Navigator.pushNamed(context, "/bangunDatar");
              },
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: new Text("Bangun Ruang"),
              onTap: () {
                Navigator.pushNamed(context, "/bangunRuang");
              },
            )
          ],
        )),
        body: new ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(30.0),
              child: new Image.asset(
                "img/mushab.jpg",
                width: 150.0,
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 5.0, bottom: 15.0),
              child: new Text("Rumusku",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.bold)),
            ),
            new Text(
                "Silahkan Pilih Icon Daftar Alat untuk memilih Rumus Rumus yang tersedia",
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 20.0)),
          ],
        )
    );
  }
}
