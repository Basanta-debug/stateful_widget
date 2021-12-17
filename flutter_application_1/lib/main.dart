
import 'package:flutter/material.dart';
import 'package:flutter_application_1/stfl.dart';

import 'addingnumbers.dart';
import 'mytext.dart';


void main() {

  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {

    return const MaterialApp(

      title: 'Flutter Demo',

      home: Addingnum(),

    );

}}