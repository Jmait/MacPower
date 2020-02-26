import'package:flutter/material.dart';
import 'package:mac_app/navigation.dart';
import 'package:mac_app/const.dart';
class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Registration'),
        centerTitle: false,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration:  kInputEmail,
                      ),
                    ),

                    SizedBox(height:10.0),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(

                        decoration:  kInputName,
                      ),
                    ),
                    SizedBox(height:10.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration:  kInputNumber,
                      ),
                    ),
                    SizedBox(height:10.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(

                        decoration:  kInputAddress,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      color: Colors.red.shade700,
                      borderRadius: BorderRadius.circular(20.0),
                      child: MaterialButton(onPressed: (){

                        Navigator.pushReplacementNamed(context, Homepage.id);
                      },
                        child: Text('Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
