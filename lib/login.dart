import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'package:animated_text_kit/animated_text_kit.dart';
import 'package:mac_app/const.dart';
import'package:firebase_auth/firebase_auth.dart';
import'package:mac_app/navigation.dart';
import'package:modal_progress_hud/modal_progress_hud.dart';


class LoginScreen extends StatefulWidget {
  static const String id = 'Login_description';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loadingSpinner = false;
  String phoneNumber;
  String smsCode;
  String verificationId;
  String checkLength ='+2347033411779';

  Future<void> verifyPhone()async {
    if (this.phoneNumber != null && this.phoneNumber != '' && this.phoneNumber.length == checkLength.length ) {
      setState(() {
        loadingSpinner = true;
      });

      final PhoneCodeAutoRetrievalTimeout autoRetrieval = (String verID) {
        this.verificationId = verID;
      };

      final PhoneCodeSent smsCodeSent = (String verID, [int forceCodeResend]) {
        this.verificationId = verID;
        smsCodeDialog(context);
      };
      final PhoneVerificationFailed codeFailed = (AuthException exception) {
        setState(() {
          loadingSpinner = false;
        });


        print('${exception.message}');
      };


      final PhoneVerificationCompleted success = (AuthCredential credential)async{

        signIn();
        setState(() {
          loadingSpinner = false;
        });



      };
      await FirebaseAuth.instance.verifyPhoneNumber(

          phoneNumber: this.phoneNumber,
          timeout: Duration(seconds: 5),
          verificationCompleted: success,
          verificationFailed: codeFailed,
          codeSent: smsCodeSent,
          codeAutoRetrievalTimeout: autoRetrieval
      );
    }else{
      print('Phone number is empty');
    }
  }
  Future<bool> smsCodeDialog (BuildContext context){

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Enter Sms Code'),
          content:  Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged:(value){
                this.smsCode= value;
              },

              keyboardType: TextInputType.number,
              decoration:  kInputVerification,
            ),

          ),
          actions: <Widget>[
            Material(
              child: MaterialButton(
                onPressed: (){

                  if(this.smsCode != null){
                    setState(() {
                      loadingSpinner = true;
                    });
                    FirebaseAuth.instance.currentUser().then((user){

                      if(user != null){
                        setState(() {
                          loadingSpinner = false;
                        });
//                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(context, Homepage.id);
                        //  verifyPhone function to be called later
                      }else{
                        Navigator.pop(context);
                        signIn();
                      }

                    });
                  }else{
                    print('Wrong verification code');
                  }
                  },

                child: Text('Done'),
              ),
            ),
          ],
        );
      },
    );
  }

  signIn()async{
    final AuthCredential credential = PhoneAuthProvider.getCredential(
        verificationId: verificationId,
        smsCode: smsCode
    );
    await FirebaseAuth.instance.signInWithCredential(credential).then((user){

      Navigator.pushReplacementNamed(context, Homepage.id);


    }).catchError((e){
      print(e);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: loadingSpinner,
        child: SafeArea(
          child: Stack(
            children: <Widget>[

              Container(

                height: 350.0,
                decoration: BoxDecoration(
                  color: Colors.red.shade800,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150.0),
                    bottomRight: Radius.circular(150.0),
                  ),
                ),
                child: Column(

                  children: <Widget>[

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left:50.0, top: 100.0),
                          child: TypewriterAnimatedTextKit(
                            speed: Duration(milliseconds: 1000),
                            totalRepeatCount: 20,
                            pause: Duration(milliseconds:1000),
                            text: [
                              'Welcome To MacPower',
                            ],
                            textStyle:  TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                           alignment: AlignmentDirectional.topStart,
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          margin: EdgeInsets.only(left:70.0,),
                          child: Text('(Inveter With Inbuilt Battery)',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                          ),
                        ),


                      ],

                    ),

                  ],
                ),
              ),

             Column(
            mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        margin: EdgeInsets.only(top: 200.0),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                              TextField(
//                              keyboardType: TextInputType.number,
                                maxLength: 14,
                                autocorrect: false,

                                decoration: kInputNumber,
                                onChanged: (value){
                                  this.phoneNumber = value;
                                }
                                ),
                                SizedBox(height: 20.0,),
                              Material(
                                color: Colors.red.shade700,
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: MaterialButton(onPressed: verifyPhone,

                                    child: Text('Verify Number',
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
                      ),
                    ),
                  ),


                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
