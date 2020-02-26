import 'package:flutter/material.dart';
import 'package:mac_app/faqs.dart';
import 'package:mac_app/home.dart';
import 'package:mac_app/profile.dart';
import 'package:mac_app/news_page.dart';
class Homepage extends StatefulWidget {
  static const String id ='navigation';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedBarIndex = 0;
 final  List<Widget> _barProperty= [
   MainPage(),
   UserProfile(),
   Questions(),
   NewsPage(),


  ];
  void _tappedItem(int index){
      setState(() {
        _selectedBarIndex = index;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _barProperty[_selectedBarIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
//            backgroundColor: Colors.red,
            canvasColor: Colors.red,
            primaryColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Colors.white),),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.yellow,
            currentIndex: _selectedBarIndex,
            onTap: _tappedItem,
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home,
                  color: Colors.white,
                ),
                title: Text('Home')
              ),
              BottomNavigationBarItem(

                icon: Icon(Icons.person, color: Colors.white),
                title: Text('My Profile',
                ),
              ),


              BottomNavigationBarItem(
                icon: Icon(Icons.info, color: Colors.white,),
                title: Text('FAQS'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.announcement, color: Colors.white,),
                title: Text('News'),
              ),
            ],

          ),
        ),

      );


  }
}

