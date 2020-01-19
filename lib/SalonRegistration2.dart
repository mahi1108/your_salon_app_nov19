import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'SelectOptions.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'AppConstants.dart';
import 'User.dart';

class SalonRegistration2 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SalonRegistrationState2();
  }
}

class SalonRegistrationState2 extends State<SalonRegistration2>
{

  File selected_path; // this is for profile picture.
  File selected_commercial_path; // this is for commercial picture.
  String upload_requester = "";
  String salon_reg_uploaded_url = "";
  String commercial_reg_uploaded_url = "";


  void getProfilePicDownloadUrl(StorageUploadTask task) async{

  //  AppConstants.getpDialog(context, "", "Please wait...");

    var down_url = await (await task.onComplete).ref.getDownloadURL();

  //  AppConstants.dismisspDialog();

    String uploaded_url = down_url.toString();
    print("Uploaded File URL is : $uploaded_url");

      if(upload_requester == "salon_reg"){
        User.profile_pic1= uploaded_url;
        print("profile_pic1 :"+ User.profile_pic1);
      }else{
        User.profile_pic2 = uploaded_url;
        print("profile_pic2 :"+ User.profile_pic2);
      }
  }


  Future  uploadStatus(StorageUploadTask task)
  async {

  //  AppConstants.getpDialog(context, "", "Please wait...");

    final StreamSubscription<StorageTaskEvent> streamSubscription = task.events.listen((event) {
      print('EVENT ${event.type}');

  //    AppConstants.dismisspDialog();

      if(event.type == StorageTaskEventType.success)
        {
            getProfilePicDownloadUrl(task);
        }

    });

    await task.onComplete;
    streamSubscription.cancel();
  }

  DecorationImage getSelectedImage()
  {
    if(selected_path==null) {
      return new DecorationImage(
          image: new AssetImage("assets/splash_logo.png"),
          fit: BoxFit.cover);
    }else{

      upload_requester = "salon_reg";

      StorageReference sRef = FirebaseStorage().ref().child("photos/"+User.uid+"/");
      StorageReference sReg_photo = sRef.child("salon_reg");
      StorageUploadTask task =  sReg_photo.putFile(selected_path);
      //AppConstants.getpDialog(context, "", "Please wait...");
      uploadStatus(task);
     // AppConstants.dismisspDialog();

      return new DecorationImage(
          image: new FileImage(selected_path),
          fit: BoxFit.cover);
    }
  }

  DecorationImage getCommercialImage()
  {
    if(selected_commercial_path==null) {
      return new DecorationImage(
          image: new AssetImage("assets/splash_logo.png"),
          fit: BoxFit.cover);
    }else{

      upload_requester = "commercial_reg";

      StorageReference sRef = FirebaseStorage().ref().child("photos/"+User.uid+"/");
      StorageReference sReg_photo = sRef.child("commercial_reg");
      StorageUploadTask task =  sReg_photo.putFile(selected_commercial_path);
     // AppConstants.getpDialog(context, "", "Please wait...");
      uploadStatus(task);
     // AppConstants.dismisspDialog();

      return new DecorationImage(
          image: new FileImage(selected_commercial_path),
          fit: BoxFit.cover);
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
                                            child: new Text(AppConstants.getValue("33"),
                                            style: new TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 25
                                            ),
                                          ),),)
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
                                       new Card(
                                         elevation: 5.0,
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                              image: getCommercialImage(),
                                            ),
                                            width: 150,
                                            height: 150,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.all(10.0),
                                          ),
                                        ),
                                    ],
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

                                                Future getImage() async {
                                                  var image = await ImagePicker
                                                      .pickImage(
                                                      source: ImageSource
                                                          .gallery);

                                                  selected_commercial_path = image.absolute;

                                                  print(
                                                      "Selected File from Gallery is : " +
                                                          image.path);

                                                  setState(() {

                                                  });
                                                };
                                                getImage();

                                              },
                                              color: Colors.green,
                                              child: new Text(
                                                AppConstants.getValue("35"),
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
                                          child: new Text(AppConstants.getValue("34"),
                                            style: new TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 25
                                            ),
                                          ),),)
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
                                      new Card(
                                        elevation: 5.0,
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                            image: getSelectedImage(),
                                          ),
                                          width: 150,
                                          height: 150,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.all(10.0),
                                        ),
                                      ),
                                    ],
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

                                                print("Salon >> Upload Picture >> Selected...");
                                                Future getImage() async {
                                                  var image = await ImagePicker
                                                      .pickImage(
                                                      source: ImageSource
                                                          .gallery);

                                                  selected_path = image.absolute;

                                                  print(
                                                      "Selected File from Gallery is : " +
                                                          image.path);

                                                  setState(() {

                                                  });
                                                };
                                                getImage();
                                              },
                                              color: Colors.green,
                                              child: new Text(
                                                AppConstants.getValue("35"),
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
                                               // Navigator.pop(context);

                                                saveDataInDb();
                                              },
                                              color: Colors.green,
                                              child: new Text(
                                                AppConstants.getValue("36"),
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

  void saveDataInDb()
  {
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
      "makeup":User.makeup,
      "hairstyles":User.hairstyles,
      "bodycare":User.bodycare,
      "hairtreatment":User.hairtreatment,
      "hennadesign":User.hennadesign,
      "westernbath":User.westernbath,
      "haircut":User.haircut,
      "wax":User.wax,
      "eyebrows":User.eyebrows,
      "massage":User.massage,
      "hairprotein":User.hairprotein,
      "photography":User.photography,
      "profile_pic1": User.profile_pic1,
      "profile_pic2":User.profile_pic2,
      "selected_type":SelectOptions.selected_option,
      "registration_status": false,
      "fcm_token" : User.fcm_token
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