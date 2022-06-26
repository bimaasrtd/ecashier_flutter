// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'main.dart';

class pageTambahMenu extends StatefulWidget {
  const pageTambahMenu({Key? key}) : super(key: key);

  @override
  State<pageTambahMenu> createState() => _pageTambahMenuState();
}

class _pageTambahMenuState extends State<pageTambahMenu> {
  File? _image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  final kategori = ['Makanan', 'Minuman'];
  final pilihan = ['Pedas', 'Sedang', 'Tidak Pedas'];
  final porsi = ['Banyak', 'Sedang', 'Sedikit'];
  String? nilaiKategori;
  String? nilaiPilihan;
  String? nilaiPorsi;

  Future<bool?> showWarning(BuildContext context) async =>
      showModalBottomSheet<bool>(
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
                    'Simpan sebagai draft?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: darkGreenColor),
                  ),
                  SizedBox(height: 20),
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
                            onPressed: () => Navigator.pop(context, true),
                            child: Text('Simpan',
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
                            onPressed: () => Navigator.pop(context, true),
                            child: Text('Hapus',
                                style: TextStyle(color: darkGreenColor))),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
          // builder: (context) => AlertDialog(
          //   title: Text('Apakah anda yakin ingin keluar?'),
          //   actions: [
          //     ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         primary: darkGreenColor, // background
          //         onPrimary: darkYellowColor, // foreground
          //         minimumSize: Size(100, 40),
          //         shape: StadiumBorder(),
          //       ),
          //       onPressed: () => Navigator.pop(context, false),
          //       child: Text('Tidak'),
          //     ),
          //     ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         primary: darkYellowColor, // background
          //         onPrimary: darkGreenColor, // foreground
          //         minimumSize: Size(100, 40),
          //         shape: StadiumBorder(),
          //       ),
          //       onPressed: () => Navigator.pop(context, true),
          //       child: Text('Ya'),
          //     ),
          //   ],
          // ),
          );
  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          print('Tombol kembali ditekan');
          final shouldPop = await showWarning(context);
          return shouldPop ?? false;
        },
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(color: lightYellowColor),
            title: Text(
              'Tambah Menu',
              style: TextStyle(
                  color: lightYellowColor, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: lightGreenColor,
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: Column(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 180.0,
                          width: 413.0,
                          decoration: BoxDecoration(
                            color: lightGreenColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(70.0)),
                          ),
                          child: Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent, // background
                                onPrimary: lightYellowColor, // foreground
                                minimumSize: Size(150, 40),
                              ),
                              child: Text('Tambah Gambar'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Container(
                          height: 180.0,
                          width: 413.0,
                          decoration: BoxDecoration(
                            color: lightGreenColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(70.0)),
                          ),
                        ),
                        Container(
                          height: 180.0,
                          width: 413.0,
                          decoration: BoxDecoration(
                            color: lightGreenColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(70.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama Makanan",
                          style: TextStyle(
                              color: lightGreenColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: darkGreenColor, width: 1)),
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: ".......",
                              hintStyle: TextStyle(color: lightGreenColor),
                            ),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Keterangan",
                          style: TextStyle(
                              color: lightGreenColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: darkGreenColor, width: 1)),
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: ".......",
                              hintStyle: TextStyle(color: lightGreenColor),
                            ),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Harga",
                          style: TextStyle(
                              color: lightGreenColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: darkGreenColor, width: 1)),
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: ".......",
                              hintStyle: TextStyle(color: lightGreenColor),
                            ),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Kategori",
                          style: TextStyle(
                              color: lightGreenColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: darkGreenColor, width: 1)),
                          height: 30,
                          child: DropdownButton<String>(
                            hint: Text('Makanan'),
                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                color: darkGreenColor),
                            iconSize: 20,
                            value: nilaiKategori,
                            isExpanded: true,
                            items: kategori.map(buildMenuItem).toList(),
                            onChanged: (value) =>
                                setState(() => this.nilaiKategori = value),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Pilihan",
                          style: TextStyle(
                              color: lightGreenColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: darkGreenColor, width: 1)),
                          height: 30,
                          child: DropdownButton<String>(
                            hint: Text('Pedas'),
                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                color: darkGreenColor),
                            iconSize: 20,
                            value: nilaiPilihan,
                            isExpanded: true,
                            items: pilihan.map(buildMenuItem).toList(),
                            onChanged: (value) =>
                                setState(() => this.nilaiPilihan = value),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Porsi",
                          style: TextStyle(
                              color: lightGreenColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: darkGreenColor, width: 1)),
                          height: 30,
                          child: DropdownButton<String>(
                            hint: Text('Sedang'),
                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                color: darkGreenColor),
                            iconSize: 20,
                            value: nilaiPorsi,
                            isExpanded: true,
                            items: porsi.map(buildMenuItem).toList(),
                            onChanged: (value) =>
                                setState(() => this.nilaiPorsi = value),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 170,
                        height: 50,
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(10.0)),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(1.0),
                            primary: darkYellowColor,
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                          child: const Text('Hapus',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        width: 241.2,
                        height: 50,
                        decoration: BoxDecoration(
                          color: darkYellowColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0)),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(1.0),
                            primary: darkGreenColor,
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                          child: const Text('Simpan',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item, style: TextStyle(fontSize: 16)),
      );
}
