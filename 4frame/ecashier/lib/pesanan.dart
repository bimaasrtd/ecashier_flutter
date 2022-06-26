// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'main.dart';

class pagePesanan extends StatefulWidget {
  const pagePesanan({Key? key}) : super(key: key);

  @override
  State<pagePesanan> createState() => _pagePesananState();
}

class _pagePesananState extends State<pagePesanan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Colors.transparent),
          title: Text(
            'Pesanan',
            style:
                TextStyle(color: lightYellowColor, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: darkGreenColor,
          bottom: TabBar(tabs: [
            Tab(
              text: "Masuk",
            ),
            Tab(
              text: "Selesai",
            ),
          ]),
        ),
        body: TabBarView(
          children: [masuk(), selesai()],
        ),
      ),
    );
  }
}

class masuk extends StatefulWidget {
  const masuk({Key? key}) : super(key: key);

  @override
  State<masuk> createState() => _masukState();
}

class _masukState extends State<masuk> {
  final TextEditingController searchKodePembayaranMasukController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.amber),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        height: 40,
        child: TextField(
          controller: searchKodePembayaranMasukController,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: darkGreenColor),
              hintText: 'Cari Kode Pembayaran',
              hintStyle: TextStyle(color: Colors.grey),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: lightGreenColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              fillColor: lightYellowColor,
              filled: true),
        ),
      ),
    );
  }
}

class selesai extends StatefulWidget {
  const selesai({Key? key}) : super(key: key);

  @override
  State<selesai> createState() => _selesaiState();
}

class _selesaiState extends State<selesai> {
  final TextEditingController searchKodePembayaranSelesaiController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.greenAccent),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        height: 40,
        child: TextField(
          controller: searchKodePembayaranSelesaiController,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: darkGreenColor),
              hintText: 'Cari Kode Pembayaran',
              hintStyle: TextStyle(color: Colors.grey),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: lightGreenColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              fillColor: lightYellowColor,
              filled: true),
        ),
      ),
    );
  }
}
