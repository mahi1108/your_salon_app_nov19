import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'SelectOptions.dart';
import 'package:your_salon_app/CustomerDashboard.dart';
import 'AppConstants.dart';
import 'SalonRegistrationStatus.dart';
import 'User.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

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

  TextEditingController uname_cont = new TextEditingController();
  TextEditingController pass_cont = new TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


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
                                hintText: AppConstants.getValue("2"),
                                labelText: AppConstants.getValue("2"),
                                helperText: AppConstants.getValue("3"),
                                prefixStyle: const TextStyle(color: Colors.green)
                            ),
                            controller: uname_cont,
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
                                    hintText: AppConstants.getValue("4"),
                                    labelText: AppConstants.getValue("4"),
                                    helperText:AppConstants.getValue("5"),
                                    prefixStyle: const TextStyle(color: Colors.green)
                                ),
                                controller: pass_cont,
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

                                String uname = uname_cont.text.trim().toString();
                                String pass = pass_cont.text.trim().toString();

                                print("uname : "+ uname +"\t pass :"+ pass);

                                if(uname != null && uname != "" &&
                                        pass != null && pass != "")
                                {
                                    login(uname,pass);
                                }else{
                                  AppConstants.sDialog(context, AppConstants.getValue("40"),
                                      AppConstants.getValue("42"));
                                 // login(uname,pass);
                                }

                              /*  Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>CustomerDashboard())); */
                              },
                              color: Colors.green,
                              child: new Text(
                                AppConstants.getValue("6"),
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
                                AppConstants.getValue("7"),
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
                                  AppConstants.getValue("8"),
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

  Future<String> login(email,pass) async {

    AppConstants.getpDialog(context, "", "Please wait...");

    try {
      FirebaseUser user = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: pass);



      print("User Id : " + user.uid);
      AppConstants.dismisspDialog();

      if(user.uid != null){
        User.uid = user.uid;
        readDataFromDB(user.uid);
        /*
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=>CustomerDashboard())); */
      }

    }catch(e){
      AppConstants.dismisspDialog();

      AppConstants.sDialog(context, AppConstants.getValue("40"),
          AppConstants.getValue("43"));

        print(e);
    }

    return "";
  }

  void readDataFromDB(uid)
  {
    try {
      AppConstants.getpDialog(context, "", "Please wait...");
      print("Inside readDataFromDB function..." + uid);
      DatabaseReference dBase = FirebaseDatabase.instance.reference();
      DatabaseReference uRef = dBase.child("users/" + uid + "/selected_type");
      Future<DataSnapshot> _ds = uRef.once().then((DataSnapshot ds) {
        print(ds.key + ": \t " + ds.value.toString());
        AppConstants.dismisspDialog();
        if (ds.value != null && ds.value != "" ) {
          if(ds.value == 4) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CustomerDashboard()));
          }else{
            readOtherUsersData(uid);
          }
        } else {
          AppConstants.sDialog(context, AppConstants.getValue("40"),
              AppConstants.getValue("43"));
        }
      });
    }catch(e){
      AppConstants.dismisspDialog();
      AppConstants.sDialog(context, AppConstants.getValue("40"),
          AppConstants.getValue("43"));
      print(e);
    }

  }

  void readOtherUsersData(String uid)
  {

    AppConstants.getpDialog(context, "", "Please wait...");

    try {
      DatabaseReference dBase = FirebaseDatabase.instance.reference();
      DatabaseReference uRef = dBase.child("users/" + uid + "/registration_status");
      Future<DataSnapshot> _ds = uRef.once().then((DataSnapshot ds) {
        AppConstants.dismisspDialog();

        AppConstants.registration_status = ds.value;

        if(AppConstants.registration_status){
            AppConstants.sDialog(context,
                AppConstants.getValue("40"), AppConstants.getValue("44"));
        }else{
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SalonRegistrationStatus()));
        }

      });
    }catch(e){
      AppConstants.dismisspDialog();
    }
  }

}