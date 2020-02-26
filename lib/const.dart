import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kTexeStyle = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w300,
  color: Colors.black,
);
const kCartStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w800,
);

const kDescriptionStyles =  TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.w900,

);
const kProductDescriptionStyles =  TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.normal,
  letterSpacing: 0.1,
);

final kInputPassword = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40.0),
  ),
  labelText: 'Password',
);

final kInputEmail = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0)
  ),
  labelText: 'Enter your email address',

);
final kInputName = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0)
  ),
  labelText: 'Full Name',

);

final kInputNumber = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0)
  ),
  labelText: 'Phone Number',
  hintText: 'e.g +23407033333333',

);
final kInputVerification = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40.0)
  ),
  labelText: 'Verification Code',
  hintText: 'e.g Enter code sent to your number',
);

final kInputGoods = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0)
  ),
  labelText: 'Product Name',
);

final kInputAddress = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0)
  ),
  labelText: 'Enter your home Address',

);

