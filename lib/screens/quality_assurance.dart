import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vishram/screens/registration_screen.dart';
import 'package:vishram/screens/find_rest_stops.dart';

class QualityAssurance extends StatefulWidget {
  static String id = 'quality_assurance';

  @override
  _QualityAssuranceState createState() => _QualityAssuranceState();
}

class _QualityAssuranceState extends State<QualityAssurance>
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
              image: AssetImage('images/qabg.png'),
              fit: BoxFit.fill),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('images/qa.png'),
                  ),
                ],
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: Container(
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
                              'Quality Assurance',
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
                                  'Our aim is to make the process of finding a safe, hygienic and comfortable stop simple for every user',
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
                                        context, RegistrationScreen.id);
                                  },
                                  minWidth: 200.0,
                                  height: 42.0,
                                  child: Text(
                                    'Register Now',
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
                                          context, FindRestStops.id);
                                    },
                                    minWidth: 200.0,
                                    height: 42.0,
                                    child: Text(
                                      'Back',
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
