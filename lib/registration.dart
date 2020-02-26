import 'package:flutter/material.dart';
import 'package:mac_app/const.dart';
import'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mac_app/product_catalogue.dart';
import 'package:url_launcher/url_launcher.dart';

class RegistrationScreen extends StatefulWidget {

  static const String id ='registration';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String customerName;
  String customerEmail;
  String customerAdd;
  String goodsName;
  String receiverPhoneNumber;
  final fireStore = Firestore.instance;
  final _auth = FirebaseAuth.instance;
    FirebaseUser loggedInUser;

  @override
  initState(){
    super.initState();

  }


  Widget build(BuildContext context) {
    _auth.currentUser().then((loggedInUser){
      print(loggedInUser.phoneNumber);
    });
    final ProductDisplay  _descriptionProperty = ModalRoute.of(context).settings.arguments;
    String nameOfProducts = _descriptionProperty.nameOfProducts;
    _placeOrder()async{
      String url ="https://wa.me/?text=hello%20I%20saw%20$nameOfProducts";
      if(await canLaunch(url)){
        await launch(url);
      }else{
        throw 'Could not launch $url';
      }
      fireStore.collection('orderInformation').add({
        'UserNumber': loggedInUser.phoneNumber,
        'ProductName': nameOfProducts,
        'UserEmail': customerEmail,
        'DeliveryAddress': customerAdd,
        'ReceiverNumber': receiverPhoneNumber,
      });
    }

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
                        onChanged:(value){
                          this.customerName = value;

                        },
//                        keyboardType: TextInputType.number,
                        decoration:  kInputName,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        onChanged:(value){
                          this.customerAdd = value;

                        },
//                        keyboardType: TextInputType.number,
                        decoration:  kInputAddress,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        onChanged:(value){
                          this.customerEmail = value;

                        },
//                        keyboardType: TextInputType.number,
                        decoration:  kInputEmail,
                      ),
                    ),

                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        onChanged:(value){
                          this.goodsName = value;

                        },
//                        keyboardType: TextInputType.number,
                        decoration:  kInputNumber,
                      ),
                    ),

                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        onChanged:(value){
                          this.goodsName = nameOfProducts;


                        },
//                        keyboardType: TextInputType.number,
                        decoration:  kInputGoods,
                        readOnly: true,
                      ),
                    ),


                    SizedBox(height: 20.0),
                    Material(
                      color: Colors.red.shade700,
                      borderRadius: BorderRadius.circular(20.0),
                      child: MaterialButton(onPressed: _placeOrder,
                        child: Text('Order Now',
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
