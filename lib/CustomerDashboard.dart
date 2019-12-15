import 'package:flutter/material.dart';
import 'SelectOptions.dart';
import 'SalonRegistration2.dart';
import 'BusinessWomenRegistration2.dart';
import 'BusinessGuestRegistration2.dart';
import 'Maps.dart';
import 'AppConstants.dart';


class CustomerDashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CustomerDashboardState1();
  }
}

class CustomerDashboardState1 extends State<CustomerDashboard> {

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
                                  new Padding(
                                      padding: EdgeInsets.only(top: 12.0))
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                    builder: (context)=> Maps()));

                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/makeup.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                          child: new Container(
                                                            child: new Text(AppConstants.getValue("13"),
                                                                style: new TextStyle(
                                                                    color:
                                                                    Colors.green,
                                                                    fontSize: 15),
                                                                textAlign:
                                                                TextAlign.center,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                maxLines: 2),
                                                            width: 90.0,
                                                            alignment: Alignment.bottomCenter,
                                                            margin: EdgeInsets.only(
                                                                top: 5,bottom: 5),
                                                          )),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));
                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/hairstyle.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                        child: new Container(
                                                          child: new Text(
                                                              AppConstants.getValue("14"),
                                                              style: new TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: 15),
                                                              textAlign:
                                                              TextAlign.center,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 4),
                                                          width: 90.0,
                                                          alignment: Alignment.bottomCenter,
                                                          margin: EdgeInsets.only(
                                                              top: 5,bottom: 5),
                                                        ),
                                                      ),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));

                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/bodycare.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                        child: new Container(
                                                          child: new Text(
                                                              AppConstants.getValue("15"),
                                                              style: new TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: 15),
                                                              textAlign:
                                                              TextAlign.center,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 4),
                                                          width: 90.0,
                                                          alignment: Alignment.bottomCenter,
                                                          margin: EdgeInsets.only(
                                                              top: 5,bottom: 5),
                                                        ),
                                                      ),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
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
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));


                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/hairtreatment.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                          child: new Container(
                                                            child: new Text(
                                                                AppConstants.getValue("16"),
                                                                style: new TextStyle(
                                                                    color:
                                                                    Colors.green,
                                                                    fontSize: 15),
                                                                textAlign:
                                                                TextAlign.center,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                maxLines: 2),
                                                            width: 90.0,
                                                            alignment: Alignment.bottomCenter,
                                                            margin: EdgeInsets.only(
                                                                top: 5,bottom: 5),
                                                          )),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));


                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/henna.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                        child: new Container(
                                                          child: new Text(
                                                              AppConstants.getValue("17"),
                                                              style: new TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: 15),
                                                              textAlign:
                                                              TextAlign.center,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 4),
                                                          width: 90.0,
                                                          alignment: Alignment.bottomCenter,
                                                          margin: EdgeInsets.only(
                                                              top: 5,bottom: 5),
                                                        ),
                                                      ),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));


                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/bath.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                        child: new Container(
                                                          child: new Text(
                                                              AppConstants.getValue("18"),
                                                              style: new TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: 15),
                                                              textAlign:
                                                              TextAlign.center,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 4),
                                                          width: 90.0,
                                                          alignment: Alignment.bottomCenter,
                                                          margin: EdgeInsets.only(
                                                              top: 5,bottom: 5),
                                                        ),
                                                      ),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
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
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));


                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/haircut.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                          child: new Container(
                                                            child: new Text(
                                                                AppConstants.getValue("19"),
                                                                style: new TextStyle(
                                                                    color:
                                                                    Colors.green,
                                                                    fontSize: 15),
                                                                textAlign:
                                                                TextAlign.center,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                maxLines: 2),
                                                            width: 90.0,
                                                            alignment: Alignment.bottomCenter,
                                                            margin: EdgeInsets.only(
                                                                top: 5,bottom: 5),
                                                          )),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));


                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/wax.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                        child: new Container(
                                                          child: new Text(
                                                              AppConstants.getValue("20"),
                                                              style: new TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: 15),
                                                              textAlign:
                                                              TextAlign.center,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 4),
                                                          width: 90.0,
                                                          alignment: Alignment.bottomCenter,
                                                          margin: EdgeInsets.only(
                                                              top: 5,bottom: 5),
                                                        ),
                                                      ),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));


                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/eyebrows.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                        child: new Container(
                                                          child: new Text(
                                                              AppConstants.getValue("21"),
                                                              style: new TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: 15),
                                                              textAlign:
                                                              TextAlign.center,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 4),
                                                          width: 90.0,
                                                          alignment: Alignment.bottomCenter,
                                                          margin: EdgeInsets.only(
                                                              top: 5,bottom: 5),
                                                        ),
                                                      ),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
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
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));

                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/massage.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                          child: new Container(
                                                            child: new Text(AppConstants.getValue("22"),
                                                                style: new TextStyle(
                                                                    color:
                                                                    Colors.green,
                                                                    fontSize: 15),
                                                                textAlign:
                                                                TextAlign.center,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                maxLines: 2),
                                                            width: 90.0,
                                                            alignment: Alignment.bottomCenter,
                                                            margin: EdgeInsets.only(
                                                                top: 5,bottom: 5),
                                                          )),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));

                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/hairprotein.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                        child: new Container(
                                                          child: new Text(AppConstants.getValue("23"),
                                                              style: new TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: 15),
                                                              textAlign:
                                                              TextAlign.center,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 4),
                                                          width: 90.0,
                                                          alignment: Alignment.bottomCenter,
                                                          margin: EdgeInsets.only(
                                                              top: 5,bottom: 5),
                                                        ),
                                                      ),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new SizedBox(
                                        width: 100,
                                        height: 120,
                                        child: new Card(
                                            elevation: 5.0,
                                            child: new InkWell(
                                              onTap: (){

                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context)=> Maps()));


                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  new Column(
                                                    children: <Widget>[
                                                      new Container(
                                                        child: new Container(
                                                            decoration: new BoxDecoration(
                                                              image: new DecorationImage(
                                                                  image:new AssetImage("assets/photography.png"),
                                                                  fit: BoxFit.cover),
                                                            )
                                                        ),
                                                        width: 60.0,
                                                        height: 60.0,
                                                        alignment: Alignment.topCenter,
                                                        margin: EdgeInsets.only(
                                                            top: 5),
                                                      ),
                                                      new Flexible(
                                                        child: new Container(
                                                          child: new Text(AppConstants.getValue("24"),
                                                              style: new TextStyle(
                                                                  color: Colors
                                                                      .green,
                                                                  fontSize: 15),
                                                              textAlign:
                                                              TextAlign.center,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 4),
                                                          width: 90.0,
                                                          alignment: Alignment.bottomCenter,
                                                          margin: EdgeInsets.only(
                                                              top: 5,bottom: 5),
                                                        ),
                                                      ),
                                                    ],
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                  ),
                                                ],
                                              ),
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
