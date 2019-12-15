import 'package:flutter/material.dart';
import 'SelectOptions.dart';
import 'SalonRegistration2.dart';
import 'BusinessWomenRegistration2.dart';
import 'BusinessGuestRegistration2.dart';
import 'AppConstants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'AppConstants.dart';
import 'User.dart';


class SalonRegistration1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SalonRegistrationState1();
  }
}

class SalonRegistrationState1 extends State<SalonRegistration1> {
  bool _makeup = false;
  bool _hairstyles = false;
  bool _bodycare = false;
  bool _hairtreatment = false;
  bool _hennadesign = false;
  bool _westernbath = false;
  bool _haircut = false;
  bool _wax = false;
  bool _eyebrows = false;
  bool _massage = false;
  bool _hairprotein = false;
  bool _photography = false;

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
                                    data: new ThemeData(
                                      primaryColor: Colors.green,
                                      primaryColorDark: Colors.lightGreen,
                                    ),
                                    child: new SizedBox(
                                      width: 300,
                                      child: new Text(
                                        AppConstants.getValue("32"),
                                        style: new TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 25),
                                      ),
                                    ),
                                  )
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
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _makeup,
                                                        onChanged:
                                                            (bool value) {
                                                          _makeup = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                        child: new Container(
                                                      child: new Text(AppConstants.getValue("13"),
                                                          style: new TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontSize: 15),
                                                          textAlign:
                                                              TextAlign.left,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2),
                                                      width: 90.0,
                                                    )),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _hairstyles,
                                                        onChanged:
                                                            (bool value) {
                                                          _hairstyles = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                      child: new Container(
                                                        child: new Text(
                                                            AppConstants.getValue("14"),
                                                            style: new TextStyle(
                                                                color: Colors
                                                                    .green,
                                                                fontSize: 15),
                                                            textAlign:
                                                                TextAlign.left,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 4),
                                                        width: 90.0,
                                                      ),
                                                    ),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  )
                                ],
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                              ), // items1
                              new Row(
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(top: 12.0))
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _bodycare,
                                                        onChanged:
                                                            (bool value) {
                                                          _bodycare = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                        child: new Container(
                                                      child: new Text(
                                                          AppConstants.getValue("15"),
                                                          style: new TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontSize: 15),
                                                          textAlign:
                                                              TextAlign.left,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2),
                                                      width: 90.0,
                                                    )),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _hairtreatment,
                                                        onChanged:
                                                            (bool value) {
                                                          _hairtreatment =
                                                              value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                      child: new Container(
                                                        child: new Text(
                                                            AppConstants.getValue("16"),
                                                            style: new TextStyle(
                                                                color: Colors
                                                                    .green,
                                                                fontSize: 15),
                                                            textAlign:
                                                                TextAlign.left,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 4),
                                                        width: 90.0,
                                                      ),
                                                    ),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  )
                                ],
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                              ), // items2
                              new Row(
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(top: 12.0))
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _hennadesign,
                                                        onChanged:
                                                            (bool value) {
                                                          _hennadesign = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                        child: new Container(
                                                      child: new Text(
                                                          AppConstants.getValue("17"),
                                                          style: new TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontSize: 15),
                                                          textAlign:
                                                              TextAlign.left,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2),
                                                      width: 90.0,
                                                    )),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _westernbath,
                                                        onChanged:
                                                            (bool value) {
                                                          _westernbath = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                      child: new Container(
                                                        child: new Text(
                                                            AppConstants.getValue("18"),
                                                            style: new TextStyle(
                                                                color: Colors
                                                                    .green,
                                                                fontSize: 15),
                                                            textAlign:
                                                                TextAlign.left,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 4),
                                                        width: 90.0,
                                                      ),
                                                    ),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  )
                                ],
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                              ), // items3
                              new Row(
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(top: 12.0))
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _haircut,
                                                        onChanged:
                                                            (bool value) {
                                                          _haircut = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                        child: new Container(
                                                      child: new Text(AppConstants.getValue("19"),
                                                          style: new TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontSize: 15),
                                                          textAlign:
                                                              TextAlign.left,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2),
                                                      width: 90.0,
                                                    )),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _wax,
                                                        onChanged:
                                                            (bool value) {
                                                          _wax = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                      child: new Container(
                                                        child: new Text(AppConstants.getValue("20"),
                                                            style: new TextStyle(
                                                                color: Colors
                                                                    .green,
                                                                fontSize: 15),
                                                            textAlign:
                                                                TextAlign.left,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 4),
                                                        width: 90.0,
                                                      ),
                                                    ),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  )
                                ],
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                              ), // items4
                              new Row(
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(top: 12.0))
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _eyebrows,
                                                        onChanged:
                                                            (bool value) {
                                                          _eyebrows = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                        child: new Container(
                                                      child: new Text(
                                                          AppConstants.getValue("21"),
                                                          style: new TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontSize: 15),
                                                          textAlign:
                                                              TextAlign.left,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2),
                                                      width: 90.0,
                                                    )),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _massage,
                                                        onChanged:
                                                            (bool value) {
                                                          _massage = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                      child: new Container(
                                                        child: new Text(
                                                            AppConstants.getValue("22"),
                                                            style: new TextStyle(
                                                                color: Colors
                                                                    .green,
                                                                fontSize: 15),
                                                            textAlign:
                                                                TextAlign.left,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 4),
                                                        width: 90.0,
                                                      ),
                                                    ),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  )
                                ],
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                              ), // items5
                              new Row(
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(top: 12.0))
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _hairprotein,
                                                        onChanged:
                                                            (bool value) {
                                                          _hairprotein = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                        child: new Container(
                                                      child: new Text(
                                                          AppConstants.getValue("23"),
                                                          style: new TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontSize: 15),
                                                          textAlign:
                                                              TextAlign.left,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 2),
                                                      width: 90.0,
                                                    )),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 150,
                                        height: 60,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new Row(
                                              children: <Widget>[
                                                new Column(
                                                  children: <Widget>[
                                                    new Checkbox(
                                                        value: _photography,
                                                        onChanged:
                                                            (bool value) {
                                                          _photography = value;
                                                          setState(() {});
                                                        },
                                                        activeColor:
                                                            Colors.green),
                                                  ],
                                                ),
                                                new Column(
                                                  children: <Widget>[
                                                    new Flexible(
                                                      child: new Container(
                                                        child: new Text(
                                                            AppConstants.getValue("24"),
                                                            style: new TextStyle(
                                                                color: Colors
                                                                    .green,
                                                                fontSize: 15),
                                                            textAlign:
                                                                TextAlign.left,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 4),
                                                        width: 90.0,
                                                      ),
                                                    ),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                ),
                                              ],
                                            )),
                                      )
                                    ],
                                  )
                                ],
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                              ), // items6
                              new Row(
                                children: <Widget>[
                                  new Padding(
                                      padding: EdgeInsets.only(top: 12.0))
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new InkWell(
                                      onTap: () {},
                                      child: SizedBox(
                                        width: 300,
                                        height: 40,
                                        child: new RaisedButton(
                                          onPressed: () {

                                            User.makeup = _makeup;
                                            User.hairstyles = _hairstyles;
                                            User.bodycare = _bodycare;
                                            User.hairtreatment = _hairtreatment;
                                            User.hennadesign = _hennadesign;
                                            User.westernbath = _westernbath;
                                            User.haircut = _haircut;
                                            User.wax = _wax;
                                            User.eyebrows = _eyebrows;
                                            User.massage = _massage;
                                            User.hairprotein = _hairprotein;
                                            User.photography = _photography;

                                           // saveDataInDb();

                                            if (SelectOptions.selected_option ==
                                                1) {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SalonRegistration2()));
                                            } else if (SelectOptions
                                                    .selected_option ==
                                                2) {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BusinessWomenRegistration2()));

                                            } else if (SelectOptions
                                                    .selected_option ==
                                                3) {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BusinessGuestRegistration2()));

                                            }


                                          },
                                          color: Colors.green,
                                          child: new Text(
                                            AppConstants.getValue("31"),
                                            style: new TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      )),
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
    }).then((_value){
      // print("Data Inserted Successfully...");

     /* Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  SalonRegistration1())); */

      if (SelectOptions.selected_option ==
          1) {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    SalonRegistration2()));
      } else if (SelectOptions
          .selected_option ==
          2) {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    BusinessWomenRegistration2()));

      } else if (SelectOptions
          .selected_option ==
          3) {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    BusinessGuestRegistration2()));

      }

    });
  }


}
