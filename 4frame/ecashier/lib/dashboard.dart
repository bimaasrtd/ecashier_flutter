// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:ecashier/profileSaya.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';
import 'main.dart';

class pageDashboard extends StatefulWidget {
  const pageDashboard({Key? key}) : super(key: key);

  @override
  State<pageDashboard> createState() => _pageDashboardState();
}

class Grafik {
  final String hari;
  final int jumlah;

  Grafik(this.hari, this.jumlah);
}

class _pageDashboardState extends State<pageDashboard> {
  late List<charts.Series<Grafik, String>> seriesData;
  DateTime _selectedStartDate = DateTime.now();
  DateTime _selectedEndDate = DateTime.now();
  final TextEditingController inputStartDateController =
      TextEditingController();
  final TextEditingController inputEndDateController = TextEditingController();
  @override
  void initState() {
    super.initState();
    seriesData =
        <charts.Series<Grafik, String>>[]; //salah tanda kurung ngen()[]
    generateData();
  }

  generateData() {
    var dataGrafik = [
      Grafik('Senin', 40),
      Grafik('Selasa', 88),
      Grafik('Rabu', 60),
      Grafik('Kamis', 41),
      Grafik('Jumat', 71),
      Grafik('Sabtu', 11),
      Grafik('Minggu', 8),
    ];

    seriesData.add(
      charts.Series(
        domainFn: (Grafik grafik, _) => grafik.hari,
        measureFn: (Grafik grafik, _) => grafik.jumlah,
        id: 'Grafik',
        data: dataGrafik,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Grafik grafik, _) =>
            charts.ColorUtil.fromDartColor(darkYellowColor),
        // labelAccessorFn: (Grafik grafik, _) =>
        //     '${grafik.hari}: ${grafik.jumlah.toString()}'
      ),
    );

    // var series = [
    //   charts.Series(
    //       domainFn: (Grafik grafik, _) => grafik.hari,
    //       measureFn: (Grafik grafik, _) => grafik.jumlah,
    //       id: 'Grafik',
    //       data: dataGrafik,
    //       labelAccessorFn: (Grafik grafik, _) =>
    //           '${grafik.hari}: ${grafik.jumlah.toString()}')
    // ];

    // var chart = charts.BarChart(
    //   seriesData,
    //   vertical: true,
    //   barRendererDecorator: charts.BarLabelDecorator<String>(),
    //   domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: BackButton(color: Colors.transparent),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                      color: lightYellowColor,
                      // fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                Text(
                  'Rumah Makan A',
                  style: TextStyle(
                      color: lightYellowColor,
                      // fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return pageProfileSaya();
                }));
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: darkYellowColor,
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/id/237/200/300'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: darkGreenColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      20, 20, 10, 20), //left, top, right, bottom
                  child: Container(
                    width: 153,
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          width: 3,
                          height: 60,
                          color: Colors.black,
                        ),
                        Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                            color: lightYellowColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(5.0),
                                topRight: Radius.circular(5.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(children: [
                                    Icon(
                                      Icons.money,
                                      color: lightGreenColor,
                                      size: 18.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Pendapatan hari ini',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: lightGreenColor))
                                  ]),
                                  Text('Rp12.000',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      20, 20, 10, 20), //left, top, right, bottom
                  child: Container(
                    width: 153,
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          width: 3,
                          height: 60,
                          color: Colors.black,
                        ),
                        Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                            color: lightYellowColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(5.0),
                                topRight: Radius.circular(5.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(children: [
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      color: lightGreenColor,
                                      size: 18.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Item terjual',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: lightGreenColor))
                                  ]),
                                  Text('Rp12.000',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: darkGreenColor,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15), //left, top, right, bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Penjualan',
                            style: TextStyle(
                                fontSize: 16,
                                color: darkGreenColor,
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 380,
                            height: 220,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: lightYellowColor,
                            ),
                            child: Column(
                              children: [
                                // SizedBox(height: 400.0, child: chart),
                                Expanded(
                                  child: charts.BarChart(
                                    seriesData,
                                    animate: true,
                                    barGroupingType:
                                        charts.BarGroupingType.grouped,
                                    animationDuration: Duration(seconds: 2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    popUpCetak(context);
                                  },
                                  child: Text('Unduh Garfik',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: darkGreenColor,
                                        fontWeight: FontWeight.bold,
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Penjualan terlaris',
                            style: TextStyle(
                                fontSize: 16,
                                color: darkGreenColor,
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 400,
                            // height: 220,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: lightYellowColor,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                                  width: 360,
                                  height: 60,
                                  child: Row(children: [
                                    Container(
                                      width: 80,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),
                                        ),
                                        color: darkGreenColor,
                                      ),
                                    ),
                                    Container(
                                      width: 280,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                        ),
                                        color: lightYellowColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(1.0,
                                                3.0), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Nama Makanan',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: darkGreenColor,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    'Terjual 100 porsi',
                                                    style: TextStyle(
                                                        color: lightGreenColor),
                                                  ),
                                                ]),
                                            Text(
                                              'Rp15.000',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: darkGreenColor,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  width: 360,
                                  height: 60,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            bottomLeft: Radius.circular(10.0),
                                          ),
                                          color: darkGreenColor,
                                        ),
                                      ),
                                      Container(
                                        width: 280,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                          ),
                                          color: lightYellowColor,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(1.0,
                                                  3.0), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 15, 15, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Nama Makanan',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: darkGreenColor,
                                                          fontSize: 16),
                                                    ),
                                                    Text(
                                                      'Terjual 100 porsi',
                                                      style: TextStyle(
                                                          color:
                                                              lightGreenColor),
                                                    ),
                                                  ]),
                                              Text(
                                                'Rp15.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: darkGreenColor,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
    );
  }

  _selectStartDate(BuildContext context) async {
    final DateTime? newSelectedDate = await showDatePicker(
      context: context,
      initialDate: _selectedStartDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
      initialEntryMode: DatePickerEntryMode.input,
      // helpText: 'Help Text',
      cancelText: 'Cancel Text',
      confirmText: 'Confirm Text',
      fieldHintText: 'Bulan/Tanggal/Tahun',
      fieldLabelText: 'Isi tanggal!',
      errorFormatText: "Enter a Valid Date",
      errorInvalidText: "Date Out of Range",
      // builder: (context, child) {
      //   return Theme(
      //     data: ThemeData.dark().copyWith(
      //       colorScheme: ColorScheme.dark(
      //         primary: lightGreenColor,
      //         onPrimary: lightYellowColor,
      //         surface: darkGreenColor,
      //         onSurface: lightYellowColor,
      //       ),
      //       dialogBackgroundColor: Colors.black,
      //     ),
      //     child: child,
      //   );
      // }
    );

    if (newSelectedDate != null) {
      _selectedStartDate = newSelectedDate;
      inputStartDateController
        ..text = DateFormat.yMMMd().format(_selectedStartDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: inputStartDateController.text.length,
            affinity: TextAffinity.upstream));
    }
  }

  _selectEndDate(BuildContext context) async {
    final DateTime? newSelectedDate = await showDatePicker(
      context: context,
      initialDate: _selectedEndDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
      initialEntryMode: DatePickerEntryMode.input,
      // helpText: 'Help Text',
      cancelText: 'Cancel Text',
      confirmText: 'Confirm Text',
      fieldHintText: 'Bulan/Tanggal/Tahun',
      fieldLabelText: 'Isi tanggal!',
      errorFormatText: "Enter a Valid Date",
      errorInvalidText: "Date Out of Range",
      // builder: (context, child) {
      //   return Theme(
      //     data: ThemeData.dark().copyWith(
      //       colorScheme: ColorScheme.dark(
      //         primary: lightGreenColor,
      //         onPrimary: lightYellowColor,
      //         surface: darkGreenColor,
      //         onSurface: lightYellowColor,
      //       ),
      //       dialogBackgroundColor: Colors.black,
      //     ),
      //     child: child,
      //   );
      // }
    );

    if (newSelectedDate != null) {
      _selectedEndDate = newSelectedDate;
      inputEndDateController
        ..text = DateFormat.yMMMd().format(_selectedEndDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: inputEndDateController.text.length,
            affinity: TextAffinity.upstream));
    }
  }

  void popUpCetak(context) {
    showModalBottomSheet(
        barrierColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 250,
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
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Cetak',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: darkGreenColor),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    focusNode: AlwaysDisabledFocusNode(),
                    controller: inputStartDateController,
                    onTap: () {
                      _selectStartDate(context);
                    },
                    decoration: InputDecoration(
                        hintText: 'DD/MM/YY',
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: lightGreenColor,
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    focusNode: AlwaysDisabledFocusNode(),
                    controller: inputEndDateController,
                    onTap: () {
                      _selectEndDate(context);
                    },
                    decoration: InputDecoration(
                        hintText: 'DD/MM/YY',
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: lightGreenColor,
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: darkGreenColor,
                      ),
                      height: 30,
                      width: 300,
                      child: TextButton(
                          onPressed: () {},
                          child: Text('Cetak',
                              style: TextStyle(color: darkYellowColor))),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
