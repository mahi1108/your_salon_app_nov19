import 'package:flutter/material.dart';
import 'SelectOptions.dart';
import 'SalonRegistration1.dart';
import 'package:firebase_auth/firebase_auth.dart';



class SalonRegistration extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SalonRegistrationState();
  }
}

class SalonRegistrationState extends State<SalonRegistration>
{

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signUp(String email, String password) async {
    FirebaseUser user = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

    print("User is :"+user.email);

    return user.uid;
  }

  void saveDataInDb(String uid)
  {
   /*   DatabaseReference dBase = FirebaseDatabase.instance.reference();
      DatabaseReference users_ref = dBase.reference().child("users");
      DatabaseReference users_child_ref =  users_ref.child(uid);
      users_child_ref.set({
        "name":"Mahesh",
        "mno":"9985614637",
        "email":"mahesh.thippala11@gmail.com",
        "password":"Mahi1108",
        "Country":"Saudi Arabia",
        "City":"Riyadh"}).then((_value){
              print("Data Inserted Successfully...");
      }); */
  }

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
                width: 300,
                margin: EdgeInsets.only(top: 20),
                child: new Column(
                  children: <Widget>[
                    Expanded(
                        child: new SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: new Stack(
                            children: <Widget>[
                              new Column(
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
                                          padding: EdgeInsets.only(top: 12.0))
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
                                              decoration: new InputDecoration(
                                                  border:new OutlineInputBorder(
                                                      borderSide: new BorderSide(
                                                          color: Colors.green
                                                      )
                                                  ),
                                                  prefixIcon: const Icon(Icons.lock),
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
                                          padding: EdgeInsets.only(top: 12.0))
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
                                              decoration: new InputDecoration(
                                                  border:new OutlineInputBorder(
                                                      borderSide: new BorderSide(
                                                          color: Colors.green
                                                      )
                                                  ),
                                                  prefixIcon: const Icon(Icons.phone_iphone),
                                                  hintText: 'Mobile Number',
                                                  labelText: 'Mobile Number',
                                                  helperText: '* Mobile Number should be only number',
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
                                          padding: EdgeInsets.only(top: 12.0))
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
                                              decoration: new InputDecoration(
                                                  border:new OutlineInputBorder(
                                                      borderSide: new BorderSide(
                                                          color: Colors.green
                                                      )
                                                  ),
                                                  prefixIcon: const Icon(Icons.location_city),
                                                  hintText: 'Select City',
                                                  labelText: 'Select City',
                                                  helperText: '* City should be a part of Saudi Arabia',
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
                                          padding: EdgeInsets.only(top: 12.0))
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
                                              decoration: new InputDecoration(
                                                  border:new OutlineInputBorder(
                                                      borderSide: new BorderSide(
                                                          color: Colors.green
                                                      )
                                                  ),
                                                  prefixIcon: const Icon(Icons.add_location),
                                                  hintText: 'Select Location',
                                                  labelText: 'Select Location',
                                                  helperText: '* Location should be a part of Saudi Arabia',
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
                                          padding: EdgeInsets.only(top: 12.0))
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
                                                if(SelectOptions.selected_option != 4) {

                                              /*    Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              SalonRegistration1())); */

                                              /*  var uid = signUp("mahesh.thippala11@gmail.com",
                                                    "Test@123"); */

                                                  saveDataInDb("xyz123456");


                                                }else{

                                                }
                                                },
                                              color: Colors.green,
                                              child: new Text(
                                                "Continue",
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
                              )
                            ],
                          ),
                        ))
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