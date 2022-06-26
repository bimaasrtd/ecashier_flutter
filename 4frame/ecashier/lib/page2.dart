// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:ecashier/dashboard.dart';
import 'package:ecashier/katalog.dart';
import 'package:ecashier/pesanan.dart';
import 'package:ecashier/pengaturan.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  int currentIndex = 0;
  final List<Widget> body = [
    pagePesanan(),
    pageKatalog(),
    pageDashboard(),
    pagePengaturan()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: ontap,
          currentIndex: currentIndex,
          backgroundColor: lightYellowColor,
          selectedItemColor: lightGreenColor,
          unselectedItemColor: Colors.grey,
          iconSize: 35,
          selectedFontSize: 15,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Pesanan',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.article_outlined,
              ),
              label: 'Katalog',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart_outlined,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
              ),
              label: 'Pengaturan',
            ),
          ],
        ),
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
