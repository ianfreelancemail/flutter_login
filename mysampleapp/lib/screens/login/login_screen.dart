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
          height: 300.0,
          alignment:  Alignment.center,
          color: Colors.lightBlue,
          padding: new EdgeInsets.all(30.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.network(
                'https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg',
                height: 50.0,
              ),
              new Padding(
                padding: new EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
                child: new TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                      fillColor: Colors.black,
                      hintText: 'Username'
                    ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
                child: new TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                    fillColor: Colors.black,
                    hintText: 'Password'
                  ),
                ),
              ),
              new InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/home');
                },
                child: new Container(
                  //width: 100.0,
                  padding: new EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 5.0),
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: Colors.blueAccent,
                    border: new Border.all(color: Colors.white, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Center(child: new Text('Click Me', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}