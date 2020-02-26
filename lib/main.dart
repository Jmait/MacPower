import 'package:flutter/material.dart';
import'package:mac_app/Cart_description.dart';
import 'package:flutter/services.dart';
import 'package:mac_app/navigation.dart';
import 'package:mac_app/update_profile.dart';
import 'package:mac_app/login.dart';
import 'package:mac_app/registration.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,]);

    return MaterialApp(
      title: 'MacPower',
        color: Colors.red,
        initialRoute: '/',
            routes: {
            '/': (context)=>LoginScreen(),
              Homepage.id: (context)=> Homepage(),
              WelcomeScreen.id: (context)=> WelcomeScreen(),
             RegistrationScreen.id: (context)=> RegistrationScreen(),
              LoginScreen.id: (context)=> LoginScreen(),
              CartDescription.id: (context)=> CartDescription(),
            }

      );
  }
}

