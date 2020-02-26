import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: CarouselSlider(
        height: 200.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        items: [AssetImage('images/bulb-pin.jpg'), AssetImage('images/fridge1.jpg'), AssetImage('images/SmartWatch.jpg'), AssetImage('images/PR1.jpg'),].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: i,
//                            fit: BoxFit.cover,
                  ),
                ),
//                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
              );
            },
          );
        }).toList(),
      ),
    );
  }
}