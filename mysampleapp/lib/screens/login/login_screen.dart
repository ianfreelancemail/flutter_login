import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget{
 LoginForm({Key key, this.title}) : super(key: key);
 final String title;

  @override
  LoginFormState createState() => new LoginFormState();
}


class LoginFormState extends State<LoginForm>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: new Center (
        child: new Container(
          alignment:  Alignment.center,
          width: 300.0,
          height: 320.0,
          color: Colors.white,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
                child: new Text(
                  "Login to the app",
                  style: new TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
                child: new TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  style: new TextStyle(fontSize: 15.0, color: Colors.black),
                  decoration: new InputDecoration(
                    hintText: 'Username',
                    contentPadding: new EdgeInsets.symmetric(vertical: 10.0),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: new TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: new TextStyle(fontSize: 15.0, color:  Colors.black),
                  decoration: new InputDecoration(
                    fillColor: Colors.black,
                    hintText: 'Password',
                    contentPadding: new EdgeInsets.symmetric(vertical: 10.0),
                  ),
                ),
              ),
              new Padding (
                 padding: new EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
                child:  new InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/home');
                  },
                  child: new Container(
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color: Colors.blueAccent,
                      border: new Border.all(color: Colors.white, width: 2.0),
                      borderRadius: new BorderRadius.circular(25.0),
                    ),
                    child: new Center(child: new Text('Login', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
                  ),
                )
              ),
              new Row(
                children: <Widget>[
                  new FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/home');
                      },
                      padding: new EdgeInsets.only(left:20.0, top:10.0),
                      child: new Text(
                        "Forgot password",
                        style: new TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  new FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/home');
                    },
                    padding: new EdgeInsets.only(right:20.0, top:10.0),
                    child: new Text(
                      "Signup",
                      style: new TextStyle(
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}