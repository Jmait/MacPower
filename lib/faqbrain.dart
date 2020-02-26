import 'package:flutter/material.dart';
import 'package:flutter_read_more_text/flutter_read_more_text.dart';

class Faqtwo extends StatelessWidget {

  Faqtwo({@required this.textTitle, @required this.textBody});
  final String textTitle;
  final String textBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(textTitle,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,

            ),
          ),

          ReadMoreText(textBody,


          ),
        ],
      ),
    );
  }
}

class Faq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Where is Your Office Address',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
          Text('Our office address is No. 3 Governor Road, Ikotun, Lagos',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,

            ),
          ),
        ],
      ),
    );
  }
}