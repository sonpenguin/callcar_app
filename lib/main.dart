import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Container(
                  width: 70,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                    child: FlutterLogo()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Text(
                  "Hello\nWelcome To My App",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 45),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.green),
                  decoration: InputDecoration(
                  labelText: "Username",labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 45),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      style: TextStyle(fontSize: 18, color: Colors.green),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      ),),
                    Text("Show",
                      style: TextStyle(color: Colors.blue,
                          fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    onPressed: onSignInClicked,
                    child: Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
              ),
        Container(
            height: 130,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("New User? Sign Up",
                style: TextStyle(color: Colors.grey,
                fontSize: 15),),
                Text("Forgot password?",
                  style: TextStyle(color: Colors.blue,
                      fontSize: 15),)
              ],
            ),
          )
            ],
          ),
        ),
      ),
    );
  }

  void onSignInClicked(){

  }
}
