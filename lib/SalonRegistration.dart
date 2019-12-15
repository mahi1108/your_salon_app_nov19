import 'package:flutter/material.dart';
import 'Login.dart';
import 'SelectOptions.dart';
import 'SalonRegistration1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'AppConstants.dart';
import 'User.dart';


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

  TextEditingController name_cont = new TextEditingController();
  TextEditingController mno_cont = new TextEditingController();
  TextEditingController email_cont = new TextEditingController();
  TextEditingController password_cont = new TextEditingController();
  TextEditingController location_cont = new TextEditingController();
  TextEditingController city_cont = new TextEditingController();


  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signUp() async {

    try {
      AppConstants.getpDialog(context, "", "Please wait...");

      String email = email_cont.text.toString();
      String pass = password_cont.text.toString();
      String mno = mno_cont.text.toString();
      String city = city_cont.text.toString();
      String location = location_cont.text.toString();


      FirebaseUser user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: pass);

      print("User is :" + user.email);

      if (user.uid != null) {
        User.email = email;
        User.pass = pass;
        User.mno = mno;
        User.city = city;
        User.location = location;
        User.uid = user.uid.toString();
        saveDataInDb();

        return User.uid;

        AppConstants.dismisspDialog();

      } else {
        print("User Creation is Failed..");
        AppConstants.sDialog(context, AppConstants.getValue("40"),
            AppConstants.getValue("41"));

        AppConstants.dismisspDialog();


        return null;
      }
    }catch(e){

     print(e.toString());

     AppConstants.sDialog(context, AppConstants.getValue("40"),
         AppConstants.getValue("41"));

     AppConstants.dismisspDialog();


     return null;
    }


    return null;
  }

  void saveDataInDb()
  {
    if(SelectOptions.selected_option != 4) {
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  SalonRegistration1()));
    }else {
      AppConstants.getpDialog(context, "", "Please wait...");

    DatabaseReference dBase = FirebaseDatabase.instance.reference();
      DatabaseReference users_ref = dBase.reference().child("users");
      DatabaseReference users_child_ref =  users_ref.child(User.uid);
      users_child_ref.set({
        "mno":User.mno,
        "email":User.email,
        "password":User.pass,
        "location":User.location,
        "city":User.city,
        "selected_type":SelectOptions.selected_option
      }).then((_value){
             // print("Data Inserted Successfully...");
        AppConstants.dismisspDialog();
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    Login()));

      });
    }
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
          title: new Text(AppConstants.getValue("1"),
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
                                                  hintText: AppConstants.getValue("2"),
                                                  labelText: AppConstants.getValue("2"),
                                                  helperText: AppConstants.getValue("3"),
                                                  prefixStyle: const TextStyle(color: Colors.green)
                                              ),
                                              controller: email_cont,
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
                                                  hintText: AppConstants.getValue("4"),
                                                  labelText: AppConstants.getValue("4"),
                                                  helperText: AppConstants.getValue("5"),
                                                  prefixStyle: const TextStyle(color: Colors.green)
                                              ),
                                              controller: password_cont,
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
                                                  hintText: AppConstants.getValue("25"),
                                                  labelText: AppConstants.getValue("25"),
                                                  helperText: AppConstants.getValue("26"),
                                                  prefixStyle: const TextStyle(color: Colors.green)
                                              ),
                                              controller: mno_cont,
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
                                                  hintText: AppConstants.getValue("27"),
                                                  labelText: AppConstants.getValue("27"),
                                                  helperText: AppConstants.getValue("28"),
                                                  prefixStyle: const TextStyle(color: Colors.green)
                                              ),
                                              controller:  city_cont,
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
                                                  hintText: AppConstants.getValue("29"),
                                                  labelText: AppConstants.getValue("29"),
                                                  helperText: AppConstants.getValue("30"),
                                                  prefixStyle: const TextStyle(color: Colors.green)
                                              ),
                                              controller: location_cont,
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
                                                var uid = signUp();

                                                print("Uid is :"+uid.toString());

    /*   if(SelectOptions.selected_option != 4) {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              SalonRegistration1()));
                                                }else{

                                                } */
                                                },
                                              color: Colors.green,
                                              child: new Text(
                                                AppConstants.getValue("31"),
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