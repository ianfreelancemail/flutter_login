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
          constraints: BoxConstraints(
          maxHeight: 350.0,
          maxWidth: 350.0,
          minWidth: 250.0,
          minHeight: 250.0
      ),
          alignment:  Alignment.center,
          color: Colors.white24,
          padding: new EdgeInsets.symmetric(horizontal: 30.0),
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child:  new Image.network(
                  'https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg',
                  height: 50.0,
                ),
              ),
              new Padding(
                padding: new EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
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
              new Padding (
                 padding: new EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
                child:  new InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/home');
                  },
                  child: new Container(
                    //width: 100.0,
               margin: new  EdgeInsets.only(
                 left: 30.0,
                 top: 30.0,
                 right: 30.0,
                 bottom: 5.0
               ),
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
              new Padding(
                padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: new Container(
                  color: Colors.black,
                  height: 50.0,
                  // decoration:new  BoxDecoration(
                  //     color: Colors.blueAccent,
                  //     border: new Border.all(color: Colors.white, width: 2.0),
                  //     borderRadius: new BorderRadius.circular(25.0),
                  // ),
                  child: new TextField(
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}