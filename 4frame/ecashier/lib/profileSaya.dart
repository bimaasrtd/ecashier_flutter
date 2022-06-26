// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class pageProfileSaya extends StatefulWidget {
  const pageProfileSaya({Key? key}) : super(key: key);

  @override
  State<pageProfileSaya> createState() => _pageProfileSayaState();
}

class _pageProfileSayaState extends State<pageProfileSaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('profile saya'),
    ));
  }
}
