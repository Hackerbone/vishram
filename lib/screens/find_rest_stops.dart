import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vishram/screens/registration_screen.dart';
import 'package:vishram/screens/quality_assurance.dart';
import 'package:vishram/screens/welcome_screen.dart';

class FindRestStops extends StatefulWidget {
  static String id = 'find_rest_stops';

  @override
  _FindRestStopsState createState() => _FindRestStopsState();
}

class _FindRestStopsState extends State<FindRestStops>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(1.0), BlendMode.dstATop),
              image: AssetImage('images/findRestStops.png'),
              fit: BoxFit.fill),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, WelcomeScreen.id);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                  padding: EdgeInsets.all(20.0),
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18.0),
                        topRight: Radius.circular(18.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 16.0,
                        spreadRadius: 0.5,
                        offset: Offset(0.7, 0.7),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10),
                            child: Hero(
                              tag: 'mobilelogo',
                              child: Image.asset(
                                'images/VI.png',
                                width: 80.0,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: Text(
                              'Find Rest Stops',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontFamily: "Brand-Bold",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  'Vishram provides high quality services at reststops. Just book a rest timing and check-in seamlessly without any paper work. With digitisation our services are paperless and it\'s effortless for the user to check-in and book a reststop',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 10.0),
                              child: Material(
                                color: HexColor("#4cd964"),
                                borderRadius: BorderRadius.circular(60.0),
                                elevation: 5.0,
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, QualityAssurance.id);
                                  },
                                  minWidth: 200.0,
                                  height: 42.0,
                                  child: Text(
                                    'Next',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 10.0),
                                child: Material(
                                  color: HexColor("#ffffff"),
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(60.0),
                                  child: MaterialButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, RegistrationScreen.id);
                                    },
                                    minWidth: 200.0,
                                    height: 42.0,
                                    child: Text(
                                      'Skip',
                                      style:
                                          TextStyle(color: HexColor("#4cd964")),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
