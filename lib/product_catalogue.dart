import 'package:flutter/material.dart';
import 'package:mac_app/Cart_description.dart';
import 'package:mac_app/const.dart';

class ProductDisplay extends StatefulWidget {
  //I initialized the final variable declared and I extrated it in Cart_Description where I need it
  ProductDisplay({@required this.image, @required this.nameOfProducts, @required this.productsInformation,});
  final image;
  final String nameOfProducts;
  final String productsInformation;

  @override
  _ProductDisplayState createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {




  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){

        Navigator.pushNamed(context, CartDescription.id, arguments: ProductDisplay(
          nameOfProducts: widget.nameOfProducts,
          image: widget.image,
          productsInformation: widget.productsInformation,
        ),);
      },
      child : Container(
        width: 350,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: widget.image,
          ),
        ),
        child: Stack(
          overflow: Overflow.clip,
          alignment: AlignmentDirectional(1.0, 1.0),
          children: <Widget>[


            Container(
              height: 80.0,
              width: 200.0,
              child: Card(
                semanticContainer: true,
                borderOnForeground: true,
                color: Colors.pink.shade50,

                margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                child: Column(

                  children: [
                    Text(widget.nameOfProducts,
                      style: kTexeStyle,
                    ),
                    Text('Status: New',
                      style: kTexeStyle,
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