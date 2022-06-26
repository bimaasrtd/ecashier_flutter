import 'package:ecashier/page2.dart';
import 'package:ecashier/tambahMenu.dart';
import 'package:flutter/material.dart';

class pageLogin extends StatelessWidget {
  const pageLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: Text('page2'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return page2();
          }));
        },
      ),
    ));
  }
}
