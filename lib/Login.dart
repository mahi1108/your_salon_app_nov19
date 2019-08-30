import 'package:flutter/material.dart';
import 'SelectOptions.dart';
import 'package:your_salon_app/CustomerDashboard.dart';

class Login extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context, false);
              }),
          backgroundColor: Colors.green,
          title: new Text("Your Salon",
            style: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 25
            ),),
        ),
        body: new Container(
          color: Colors.white,
          child: new Stack(
            alignment: Alignment(0, -1),
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image:new AssetImage("assets/splash_logo.png"),
                      fit: BoxFit.cover),
                ),
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 70.0),
                alignment: Alignment.center,
              ),
              new Container(
                width: 300,
                margin: EdgeInsets.only(top: 200),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Theme(
                          data:new ThemeData(
                            primaryColor: Colors.green,
                            primaryColorDark: Colors.lightGreen,
                          ),
                         child: new SizedBox(
                          width: 300,
                          child: new TextField(
                            decoration: new InputDecoration(
                                border:new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.green
                                    )
                                ),
                                prefixIcon: const Icon(Icons.account_circle),
                                hintText: 'Username',
                                labelText: 'Username',
                                helperText: '* Username should be Email ID',
                                prefixStyle: const TextStyle(color: Colors.green)
                            ),
                          ),
                        ))
                      ],
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(
                            padding: EdgeInsets.only(top: 15.0))
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Theme(
                            data:new ThemeData(
                              primaryColor: Colors.green,
                              primaryColorDark: Colors.lightGreen,
                            ),
                            child: new SizedBox(
                              width: 300,
                              child: new TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.green
                                        )
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    hintText: 'Password',
                                    labelText: 'Password',
                                    helperText: '* Password should be >= 6 characters',
                                    prefixStyle: const TextStyle(color: Colors.green)
                                ),
                              ),
                            ))

                      ],
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(
                            padding: EdgeInsets.only(top: 15.0))
                      ],
                    ),

                    new Row(
                      children: <Widget>[
                        new InkWell(
                          onTap: (){},
                          child: SizedBox(
                            width: 300,
                            height: 40,
                            child: new RaisedButton(
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>CustomerDashboard()));
                              },
                              color: Colors.green,
                              child: new Text(
                                "Login",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 25,
                                ),),
                            ),
                          )
                        ),

                      ],
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(
                            padding: EdgeInsets.only(top: 15.0))
                      ],
                    ),

                    new Row(
                      children: <Widget>[
                        new InkWell(
                          onTap: (){},
                          child: SizedBox(
                            width: 300,
                            height: 40,
                            child: new RaisedButton(
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>SelectOptions()));
                              },
                              color: Colors.green,
                              child: new Text(
                                "New User?",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 25,
                                ),),
                            ),
                          )
                        ),

                      ],
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(
                            padding: EdgeInsets.only(top: 15.0))
                      ],
                    ),

                    new Row(
                      children: <Widget>[
                        new InkWell(
                            onTap: (){},
                            child: SizedBox(
                              width: 300,
                              height: 40,
                              child: new RaisedButton(
                                onPressed: (){

                                },
                                color: Colors.green,
                                child: new Text(
                                  "Forgot Credentials?",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 25,
                                  ),),
                              ),
                            )
                        ),

                      ],
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),

                  ],
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
              alignment: Alignment.center,
        ),
      ),
    );
  }

}