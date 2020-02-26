import 'package:flutter/material.dart';
import 'package:mac_app/product_catalogue.dart';
import 'package:mac_app/description_list.dart';
//all products properties is here
import 'package:mac_app/slider_component.dart';
import'package:firebase_auth/firebase_auth.dart';
class MainPage extends StatefulWidget {

//creating object from productBrain TO HAVE ACCESS TO THE LIST

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //this DescriptionList is a class created in description_list
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;





DescriptionList myProductDetails = DescriptionList();
  @override

  void initState(){
    super.initState();
    getCurrentUser();
  }

 void  getCurrentUser()async{

    final user = await _auth.currentUser();
    if(user != null){
      loggedInUser = user;
    }


  }
  Widget build(BuildContext context) {
  print(loggedInUser.phoneNumber);
    return Stack(
      children: <Widget>[
        Image.asset('images/MacPower.png',
        height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBar(
              actions: <Widget>[
          IconButton(
            onPressed: (){
              _auth.signOut();
                  Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
    ],
              title: Text('MacPower'),
              backgroundColor: Colors.red,
              centerTitle: false,
            ),
            backgroundColor: Colors.transparent,
            body: Column(

              children: <Widget>[
              Carousel(),

              Expanded(
                  child: GridView.count(
                    primary: false,
                    padding:  EdgeInsets.all(10.0),
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    children: <Widget>[
                       ProductDisplay(image: myProductDetails.productDescription[0].productImage,
                       nameOfProducts: myProductDetails.productDescription[0].name, productsInformation: myProductDetails.productDescription[0].details,

                       ),
                      ProductDisplay(image: myProductDetails.productDescription[1].productImage,
                        nameOfProducts: myProductDetails.productDescription[1].name, productsInformation: myProductDetails.productDescription[1].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[2].productImage,
                        nameOfProducts: myProductDetails.productDescription[2].name, productsInformation: myProductDetails.productDescription[2].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[3].productImage,
                        nameOfProducts: myProductDetails.productDescription[3].name, productsInformation: myProductDetails.productDescription[3].details,

                      ), //UPDATED
                      ProductDisplay(image: myProductDetails.productDescription[4].productImage,
                        nameOfProducts: myProductDetails.productDescription[4].name, productsInformation: myProductDetails.productDescription[4].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[5].productImage,
                        nameOfProducts: myProductDetails.productDescription[5].name, productsInformation: myProductDetails.productDescription[5].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[6].productImage,
                        nameOfProducts: myProductDetails.productDescription[6].name, productsInformation: myProductDetails.productDescription[6].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[7].productImage,
                        nameOfProducts: myProductDetails.productDescription[7].name, productsInformation: myProductDetails.productDescription[7].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[8].productImage,
                        nameOfProducts: myProductDetails.productDescription[8].name, productsInformation: myProductDetails.productDescription[8].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[9].productImage,
                        nameOfProducts: myProductDetails.productDescription[9].name, productsInformation: myProductDetails.productDescription[9].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[10].productImage,
                        nameOfProducts: myProductDetails.productDescription[10].name, productsInformation: myProductDetails.productDescription[10].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[11].productImage,
                        nameOfProducts: myProductDetails.productDescription[11].name, productsInformation: myProductDetails.productDescription[11].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[12].productImage,
                        nameOfProducts: myProductDetails.productDescription[12].name, productsInformation: myProductDetails.productDescription[12].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[13].productImage,
                        nameOfProducts: myProductDetails.productDescription[13].name, productsInformation: myProductDetails.productDescription[13].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[14].productImage,
                        nameOfProducts: myProductDetails.productDescription[14].name, productsInformation: myProductDetails.productDescription[14].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[15].productImage,
                        nameOfProducts: myProductDetails.productDescription[15].name, productsInformation: myProductDetails.productDescription[15].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[16].productImage,
                        nameOfProducts: myProductDetails.productDescription[16].name, productsInformation: myProductDetails.productDescription[16].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[17].productImage,
                        nameOfProducts: myProductDetails.productDescription[17].name, productsInformation: myProductDetails.productDescription[17].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[18].productImage,
                        nameOfProducts: myProductDetails.productDescription[18].name, productsInformation: myProductDetails.productDescription[18].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[19].productImage,
                        nameOfProducts: myProductDetails.productDescription[19].name, productsInformation: myProductDetails.productDescription[19].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[20].productImage,
                        nameOfProducts: myProductDetails.productDescription[20].name, productsInformation: myProductDetails.productDescription[20].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[21].productImage,
                        nameOfProducts: myProductDetails.productDescription[21].name, productsInformation: myProductDetails.productDescription[21].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[22].productImage,
                        nameOfProducts: myProductDetails.productDescription[22].name, productsInformation: myProductDetails.productDescription[22].details,

                      ),
                      ProductDisplay(image: myProductDetails.productDescription[23].productImage,
                        nameOfProducts: myProductDetails.productDescription[23].name, productsInformation: myProductDetails.productDescription[23].details,

                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );

  }
}



