// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecashier/profileSaya.dart';
import 'package:flutter/material.dart';

import 'editMenu.dart';
import 'login.dart';
import 'main.dart';

class pagePengaturan extends StatefulWidget {
  const pagePengaturan({Key? key}) : super(key: key);

  @override
  State<pagePengaturan> createState() => _pagePengaturanState();
}

class _pagePengaturanState extends State<pagePengaturan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 10,
        elevation: 0,
        // leading: CircleAvatar(
        //   minRadius: 25,
        //   backgroundImage:
        //       NetworkImage("https://picsum.photos/id/237/200/300"),
        // ),
        // title: Text(
        //   'Warung Makan A',
        //   style:
        //       TextStyle(color: lightYellowColor, fontWeight: FontWeight.bold),
        // ),
        // centerTitle: true,
        backgroundColor: darkGreenColor,
      ),
      body: Column(
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
              color: darkGreenColor,
            ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                    25, 22, 7, 10), //left, top, right, bottom
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pageEditMenu();
                    }));
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: darkYellowColor,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/id/237/200/300'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                    5, 28, 5, 5), //left, top, right, bottom
                child: Container(
                  width: 190,
                  height: 75,
                  color: Colors.transparent,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Warung Makan A',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: lightYellowColor)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('warungmakana@gmail.com',
                            style: TextStyle(color: lightYellowColor)),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 25, 7, 10),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Akun Saya',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: darkGreenColor)),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: lightYellowColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Profile Saya',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: darkGreenColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: darkGreenColor,
                        )
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: lightYellowColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Ganti Kata Sandi',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: darkGreenColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: darkGreenColor,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text('Pengaturan Lainnya',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: darkGreenColor)),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: lightYellowColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Notifikasi',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: darkGreenColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: darkGreenColor,
                        )
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: lightYellowColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Bahasa',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: darkGreenColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: darkGreenColor,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text('Bantuan',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: darkGreenColor)),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: lightYellowColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Pusat Bantuan',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: darkGreenColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: darkGreenColor,
                        )
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: lightYellowColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Tentang',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: darkGreenColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: darkGreenColor,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return pageLogin();
                      }));
                    },
                    child: Text('Keluar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: darkGreenColor)),
                    style: ElevatedButton.styleFrom(
                        primary: darkYellowColor,
                        fixedSize: const Size(330, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
