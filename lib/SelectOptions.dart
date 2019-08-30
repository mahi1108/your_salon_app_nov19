import 'package:flutter/material.dart';
import 'SalonRegistration.dart';

class SelectOptions extends StatefulWidget
{
  static int selected_option = 0;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SelectOptionsState();
  }
}

class SelectOptionsState extends State<SelectOptions>
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
                width: 120,
                height: 120,
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
                        new InkWell(
                          onTap: (){},
                          child: SizedBox(
                            width: 300,
                            child: new RaisedButton(
                              onPressed: (){

                                SelectOptions.selected_option = 1;

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>SalonRegistration()));

                              },
                              color: Colors.green,
                              child: new Text(
                                "Salon",
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
                            child: new RaisedButton(
                              onPressed: (){
                                SelectOptions.selected_option = 2;

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>SalonRegistration()));

                              },
                              color: Colors.green,
                              child: new Text(
                                "Business Women",
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
                            child: new RaisedButton(
                              onPressed: (){
                                SelectOptions.selected_option = 3;

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>SalonRegistration()));

                              },
                              color: Colors.green,
                              child: new Text(
                                "Business Guest",
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
                            child: new RaisedButton(
                              onPressed: (){
                                SelectOptions.selected_option = 4;

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>SalonRegistration()));

                              },
                              color: Colors.green,
                              child: new Text(
                                "Customer",
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