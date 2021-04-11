import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vishram/AllWidgets/Divider.dart';
import 'package:vishram/screens/main_screen.dart';
import 'package:vishram/screens/vishram_spot.dart';

class StopsList extends StatefulWidget {
  static String id = 'stops_list';

  @override
  _StopsListState createState() => _StopsListState();
}

class _StopsListState extends State<StopsList> {
  // bool library = true;
  // bool services = false;
  // bool lottery = false;
  // late Widget tab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back),
                        Text(
                          "Back",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                padding:
                    EdgeInsets.only(left: 20, bottom: 20, right: 20, top: 40),
                margin: EdgeInsets.only(top: 219),
                constraints: BoxConstraints.expand(
                    height: MediaQuery.of(context).size.height - 219),
                decoration: BoxDecoration(
                    color: Colors.green,
                    gradient: LinearGradient(
                      colors: [Colors.white, HexColor('#ADF593')],
                      stops: [0.8, 1],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // begin: const FractionalOffset(0.5, 0.2),
                      // end: const FractionalOffset(1, 1),
                      // center: Alignment(0.0, 1),
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20.0,
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   "Crypto Library",
                        //   style: TextStyle(
                        //       fontFamily: 'Helvetica',
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 30,
                        //       color: Colors.white),
                        // ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: ListView(
                            padding: EdgeInsets.only(top: 5),
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 0),
                                height: 200,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Vishram Spot 1",
                                        style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 20,
                                            color: Colors.black)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Konoha ,Japan",
                                            style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.5))),
                                        // RaisedButton(
                                        //     color: Colors.white,
                                        //     child: Icon(Icons.info),
                                        //     onPressed: () {},
                                        //     shape: RoundedRectangleBorder(
                                        //         borderRadius:
                                        //             new BorderRadius.circular(
                                        //                 30.0))),
                                        FlatButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, VishramSpot.id);
                                          },
                                          child: Icon(
                                            Icons.info_outline,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.lightGreen,
                                      thickness: 1,
                                    ),
                                    Text("Vishram Spot 2",
                                        style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 20,
                                            color: Colors.black)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Area 51 ,India",
                                            style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.5))),
                                        // RaisedButton(
                                        //     color: Colors.white,
                                        //     child: Text(
                                        //       "Know More",
                                        //       style: TextStyle(
                                        //         fontFamily: 'Avenir',
                                        //         fontWeight: FontWeight.bold,
                                        //         fontSize: 12,
                                        //         color: Colors.green,
                                        //       ),
                                        //     ),
                                        //     onPressed: () {},
                                        //     shape: RoundedRectangleBorder(
                                        //         borderRadius:
                                        //             new BorderRadius.circular(
                                        //                 30.0))),
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[],
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.08,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 130),
                height: 219,
                width: MediaQuery.of(context).size.width,
                child: Text("OUR STOPS",
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.green,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
