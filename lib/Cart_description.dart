import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mac_app/const.dart';
import 'package:mac_app/product_catalogue.dart';
import'package:url_launcher/url_launcher.dart';
import 'package:mac_app/registration.dart';
class CartDescription extends StatefulWidget {
static const String id ='Cart_description';



  @override
  _CartDescriptionState createState() => _CartDescriptionState();
}

class _CartDescriptionState extends State<CartDescription> {


  _callSeller()async{
    const sellerNumber ='tel:+2348135503221';
    if(await canLaunch(sellerNumber)){
      await launch(sellerNumber);
    }else{
      throw 'Could not call seller';
    }
  }

  _emailSeller()async{
    const sellerNumber ='https://wa.me/23408135503221?text=Hello%20I%20have%20Suggestions/Complaints%20about%20products';
    if(await canLaunch(sellerNumber)){
      await launch(sellerNumber);
    }else{
      throw 'Could not call seller';
    }
  }

  _messageSeller()async{
    const sellerNumber ='sms:+2348135503221';
    if(await canLaunch(sellerNumber)){
      await launch(sellerNumber);
    }else{
      throw 'Could not call seller';
    }
  }



  @override
  Widget build(BuildContext context) {
    //Product display is from home.dart it is used to have access to final variable initialized
   final ProductDisplay  _descriptionProperty = ModalRoute.of(context).settings.arguments;

  String nameOfProducts = _descriptionProperty.nameOfProducts;
  String productDescription = _descriptionProperty.productsInformation;
    Size screenSize = MediaQuery.of(context).size;

   _shareProduct()async{
     String url ="https://wa.me/?text=hello%20I%20saw.$nameOfProducts";
     if(await canLaunch(url)){
       await launch(url);
     }else{
       throw 'Could not launch $url';
     }
   }
    return Stack(
      children: <Widget>[
        Image.asset('images/MacPower.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(

          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: (){
            _callSeller();
          },
            backgroundColor: Colors.red,
            tooltip: 'Call Seller',
          child: Icon(Icons.phone, color:  Colors.white,),
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    _shareProduct();
                  },
                  child: Container(
                    width: (screenSize.width-10)/2,
                    height: 50.0,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.share, color: Colors.white,),
                        SizedBox(width: 10.0,),
                        Text('Share',
                        style: kCartStyle
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
    Navigator.pushNamed(context, RegistrationScreen.id, arguments: ProductDisplay(
    nameOfProducts: nameOfProducts,

    ),
    );

    },
                  child: Container(

                    height: 50.0,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.shopping_basket, color:  Colors.white,),
                        SizedBox(width: 10.0,),
                        Text('Order Now',
                        style:kCartStyle  ,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text(nameOfProducts),
            centerTitle: false,

          ),
          body: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.black,

                    child: Container(

                      height: 200,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: _descriptionProperty.image,//this comes frome home.dart productdisplay class
                        ),
                      ),
                    ),
                  ),

                  Card(

                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Text(nameOfProducts,

                      style: kDescriptionStyles,
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text('Descprition',
                        style: kDescriptionStyles,
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding:  EdgeInsets.all(15.0),
                      child: Text(productDescription,
                        style: kProductDescriptionStyles,
                      ),
                    ),
                  ),
                  SizedBox(height:10.0),
                  GestureDetector(
                    onTap: (){
                      _messageSeller();
                      print('SMS Sent');
                    },
                    child: Card(
                      child: Padding(
                        padding:  EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                          Icon(Icons.message,
                            color: Colors.red,
                          ),
                            SizedBox(width: 10.0),
                            Text(
                              'SEND ORDER BY SMS',
                              style: kProductDescriptionStyles,
                            ),
                          ],
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height:5.0),
                  GestureDetector(
                    onTap: (){
                      _emailSeller();

                    },
                    child: Card(
                      child: Padding(
                        padding:  EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.mail,
                              color: Colors.red,
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              'SUGGESTIONS AND COMPLAINTS',
                              style: kProductDescriptionStyles,
                            ),
                          ],
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ],
    );



  }
}
