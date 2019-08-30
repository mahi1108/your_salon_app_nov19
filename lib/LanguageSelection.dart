import 'package:flutter/material.dart';
import 'SelectOptions.dart';
import 'Login.dart';

class LanguageSelection extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LanguageSelectionState();
  }
}

class LanguageSelectionState extends State<LanguageSelection>
{

  bool eng_rbn_value = true;
  bool arab_rbn_value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
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
                alignment: Alignment(0, 0),
              ),
              new Container(
                width: 300,
                margin: EdgeInsets.only(top: 200),
                child: new Column(
                  children: <Widget>[

                    new Row(
                      children: <Widget>[

                        new Flexible(child: new Text(
                          "Please select the language \n يرجى اختيار اللغة",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.green,
                              fontSize: 30.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          textAlign: TextAlign.center,)),
                      ],
                    ),

                    new Row(
              children: <Widget>[
                new Padding(
                    padding: EdgeInsets.only(top: 10.0))
              ],
            ),

                    new Row(
                      children: <Widget>[
                        new Column(
                          children: <Widget>[
                              new Checkbox(
                                  onChanged: (bool value){
                                        this.eng_rbn_value = value;
                                        if(value == true){
                                          this.arab_rbn_value = false;
                                        }
                                        setState(() {

                                        });
                                  },
                                  value: eng_rbn_value,
                                  activeColor: Colors.green,
                                  )
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new Text("English",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 25.0,

                              ),)
                          ],
                        )
                      ],
                    ),

                    new Row(
                      children: <Widget>[
                        new Padding(
                            padding: EdgeInsets.only(top: 10.0))
                      ],
                    ),

                    new Row(
                      children: <Widget>[
                        new Column(
                          children: <Widget>[
                            new Checkbox(
                              onChanged: (bool value){
                                this.arab_rbn_value = value;
                                if(value == true){
                                  this.eng_rbn_value = false;
                                }
                                setState(() {

                                });
                              },
                              value: arab_rbn_value,
                              activeColor: Colors.green,
                            )
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new Text("عربى",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 25.0,

                              ),)
                          ],
                        )
                      ],
                    ),

                    new Row(
                      children: <Widget>[
                        new Padding(
                            padding: EdgeInsets.only(top: 10.0))
                      ],
                    ),

                    new Row(
                      children: <Widget>[
                        new InkWell(
                            onTap: (){},
                            child: SizedBox(
                              width: 250,
                              child: new RaisedButton(
                                onPressed: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>Login()));
                                },
                                color: Colors.green,
                                child: new Text(
                                  "Next",
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