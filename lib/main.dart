import 'package:flutter/material.dart';
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
    return MaterialApp(
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
      },
    );
  }
}
