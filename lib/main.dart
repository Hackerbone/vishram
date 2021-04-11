import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vishram/DataHandler/appData.dart';
import 'package:vishram/screens/guidelines.dart';

import 'package:vishram/screens/stops_list.dart';

import 'package:vishram/screens/find_rest_stops.dart';
import 'package:vishram/screens/quality_assurance.dart';
import 'package:vishram/screens/vishram_spot.dart';

import 'package:vishram/screens/welcome_screen.dart';
import 'package:vishram/screens/login_screen.dart';
import 'package:vishram/screens/registration_screen.dart';
import 'package:vishram/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Vishram());
}

class Vishram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        // theme: ThemeData.dark().copyWith(
        //   textTheme: TextTheme(
        //     body1: TextStyle(color: Colors.black54),
        //   ),
        // ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          MainScreen.id: (context) => MainScreen(),
          StopsList.id: (context) => StopsList(),
          FindRestStops.id: (context) => FindRestStops(),
          QualityAssurance.id: (context) => QualityAssurance(),
          VishramSpot.id: (context) => VishramSpot(),
          Guildline.id: (context) => Guildline(),
        },
      ),
    );
  }
}
