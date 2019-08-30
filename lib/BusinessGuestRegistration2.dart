import 'package:flutter/material.dart';
import 'SelectOptions.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class BusinessGuestRegistration2 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BusinessGuestRegistrationState2();
  }
}

class BusinessGuestRegistrationState2 extends State<BusinessGuestRegistration2>
{

  File selected_path; // this is for profile picture.
  File selected_commercial_path; // this is for commercial picture.

  DecorationImage getSelectedImage()
  {
    if(selected_path==null) {
      return new DecorationImage(
          image: new AssetImage("assets/splash_logo.png"),
          fit: BoxFit.cover);
    }else{
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
                                            child: new Text('Select the picture of identity card',
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
                                                "Upload Picture",
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
                                          child: new Text('Select the profile picture',
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
                                                "Upload Picture",
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
                                              //  Navigator.pop(context);
                                              },
                                              color: Colors.green,
                                              child: new Text(
                                                "Submit",
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