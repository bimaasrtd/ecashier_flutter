// ignore_for_file: prefer_const_constructors

import 'package:ecashier/tambahMenu.dart';
import 'package:flutter/material.dart';

import 'editMenu.dart';
import 'main.dart';

class pageKatalog extends StatefulWidget {
  const pageKatalog({Key? key}) : super(key: key);

  @override
  State<pageKatalog> createState() => _pageKatalogState();
}

class _pageKatalogState extends State<pageKatalog> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.transparent),
        title: Text(
          'Katalog',
          style:
              TextStyle(color: lightYellowColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: darkGreenColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 330,
                  height: 40,
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: darkGreenColor),
                        hintText: 'Cari Menu',
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: lightGreenColor,
                          ),
                        ),
                        fillColor: lightYellowColor,
                        filled: true),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: lightYellowColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        height: 30,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                          color: lightYellowColor,
                        ),
                        child: Text(
                          'Makanan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: darkGreenColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      SingleChildScrollView(
                        //list makanan
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 5, 5, 3), //left,top,right,bottom
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: lightYellowColor,
                                ),
                                width: 110,
                                height: 150,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2, 0, 1), //left,top,right,bottom
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        height: 50,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      'Nama Makanan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Deskripsi singkat nama makanan',
                                      style: TextStyle(
                                          fontSize: 9, color: darkGreenColor),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rp15.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: darkGreenColor),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0)),
                                              color: lightGreenYellowColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkGreenYellowColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return pageEditMenu();
                                              }));
                                            },
                                            child: const Text('edit'),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0)),
                                              color: lightRedPinkColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkRedPinkColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {
                                              popUpDelete(context);
                                            },
                                            child: const Text('hapus'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 5, 5, 3), //left,top,right,bottom
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: lightYellowColor,
                                ),
                                width: 110,
                                height: 150,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2, 0, 1), //left,top,right,bottom
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        height: 50,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      'Nama Makanan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Deskripsi singkat nama makanan',
                                      style: TextStyle(
                                          fontSize: 9, color: darkGreenColor),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rp15.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: darkGreenColor),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0)),
                                              color: lightGreenYellowColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkGreenYellowColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('edit'),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0)),
                                              color: lightRedPinkColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkRedPinkColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('hapus'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 5, 5, 3), //left,top,right,bottom
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: lightYellowColor,
                                ),
                                width: 110,
                                height: 150,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2, 0, 1), //left,top,right,bottom
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        height: 50,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      'Nama Makanan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Deskripsi singkat nama makanan',
                                      style: TextStyle(
                                          fontSize: 9, color: darkGreenColor),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rp15.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: darkGreenColor),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0)),
                                              color: lightGreenYellowColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkGreenYellowColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('edit'),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0)),
                                              color: lightRedPinkColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkRedPinkColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('hapus'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_rounded)),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 5, 5, 3), //left,top,right,bottom
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: lightYellowColor,
                                ),
                                width: 110,
                                height: 150,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2, 0, 1), //left,top,right,bottom
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        height: 50,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      'Nama Makanan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Deskripsi singkat nama makanan',
                                      style: TextStyle(
                                          fontSize: 9, color: darkGreenColor),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rp15.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: darkGreenColor),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0)),
                                              color: lightGreenYellowColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkGreenYellowColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('edit'),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0)),
                                              color: lightRedPinkColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkRedPinkColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('hapus'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //button
                        height: 28,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return pageTambahMenu();
                                  }));
                                },
                                icon: Icon(Icons.add_rounded,
                                    color: darkGreenColor, size: 16)),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return pageTambahMenu();
                                  }));
                                },
                                child: Text(
                                  'Tambah Menu Baru',
                                  style: TextStyle(
                                      color: darkGreenColor, fontSize: 12),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: lightYellowColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        height: 30,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                          color: lightYellowColor,
                        ),
                        child: Text(
                          'Makanan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: darkGreenColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      SingleChildScrollView(
                        //list makanan
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 5, 5, 3), //left,top,right,bottom
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: lightYellowColor,
                                ),
                                width: 110,
                                height: 150,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2, 0, 1), //left,top,right,bottom
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        height: 50,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      'Nama Makanan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Deskripsi singkat nama makanan',
                                      style: TextStyle(
                                          fontSize: 9, color: darkGreenColor),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rp15.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: darkGreenColor),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0)),
                                              color: lightGreenYellowColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkGreenYellowColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('edit'),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0)),
                                              color: lightRedPinkColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkRedPinkColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('hapus'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 5, 5, 3), //left,top,right,bottom
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: lightYellowColor,
                                ),
                                width: 110,
                                height: 150,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2, 0, 1), //left,top,right,bottom
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        height: 50,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      'Nama Makanan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Deskripsi singkat nama makanan',
                                      style: TextStyle(
                                          fontSize: 9, color: darkGreenColor),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rp15.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: darkGreenColor),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0)),
                                              color: lightGreenYellowColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkGreenYellowColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('edit'),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0)),
                                              color: lightRedPinkColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkRedPinkColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('hapus'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 5, 5, 3), //left,top,right,bottom
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: lightYellowColor,
                                ),
                                width: 110,
                                height: 150,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2, 0, 1), //left,top,right,bottom
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        height: 50,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      'Nama Makanan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Deskripsi singkat nama makanan',
                                      style: TextStyle(
                                          fontSize: 9, color: darkGreenColor),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rp15.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: darkGreenColor),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0)),
                                              color: lightGreenYellowColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkGreenYellowColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('edit'),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0)),
                                              color: lightRedPinkColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkRedPinkColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('hapus'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_rounded)),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 5, 5, 3), //left,top,right,bottom
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: lightYellowColor,
                                ),
                                width: 110,
                                height: 150,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2, 0, 1), //left,top,right,bottom
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        height: 50,
                                        width: 100,
                                      ),
                                    ),
                                    Text(
                                      'Nama Makanan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Deskripsi singkat nama makanan',
                                      style: TextStyle(
                                          fontSize: 9, color: darkGreenColor),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rp15.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: darkGreenColor),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 0.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0)),
                                              color: lightGreenYellowColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkGreenYellowColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('edit'),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0)),
                                              color: lightRedPinkColor,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: darkGreenColor)),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: darkRedPinkColor,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {},
                                            child: const Text('hapus'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //button
                        height: 28,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return pageTambahMenu();
                                  }));
                                },
                                icon: Icon(Icons.add_rounded,
                                    color: darkGreenColor, size: 16)),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return pageTambahMenu();
                                  }));
                                },
                                child: Text(
                                  'Tambah Menu Baru',
                                  style: TextStyle(
                                      color: darkGreenColor, fontSize: 12),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return pageTambahMenu();
          }));
        },
        backgroundColor: darkYellowColor,
        child: const Icon(Icons.add_rounded, color: darkGreenColor, size: 55),
      ),
    );
  } //widget buld context

  void popUpDelete(context) {
    showModalBottomSheet(
        barrierColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
            height: 110,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  spreadRadius: 7,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0)),
              color: lightYellowColor,
            ),
            child: Column(
              children: [
                Text(
                  'Hapus Menu',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: darkGreenColor),
                ),
                SizedBox(height: 10),
                Text('Yakin hapus menu Nama Makanan dari kategori ini?',
                    style: TextStyle(fontSize: 13, color: darkGreenColor)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: darkGreenColor,
                      ),
                      height: 30,
                      width: 150,
                      child: TextButton(
                          onPressed: () {},
                          child: Text('Yakin',
                              style: TextStyle(color: darkYellowColor))),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: darkYellowColor,
                      ),
                      height: 30,
                      width: 150,
                      child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Batal',
                              style: TextStyle(color: darkGreenColor))),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
