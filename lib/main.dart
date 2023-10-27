import 'package:flutter/material.dart';
import 'package:flutter_application_1/tugas.dart';
import 'package:flutter_application_1/MeTime.dart';
import 'package:flutter_application_1/acara.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("To-Do List"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Beranda"),
              Tab(text: "Favorite"),
              Tab(text: "Kalender"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Beranda(),
            Favorite(),
            Kalender(),
          ],
        ),
      ),
    );
  }
}

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade900,
            Colors.blue.shade300
          ], // Ganti warna sesuai keinginan Anda
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Category",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: Card(
              color: Colors.white.withOpacity(0.5),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade300
                                ], // Ganti warna sesuai keinginan Anda
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TugasLayout()));
                                // Tindakan yang akan diambil saat card "Tugas" ditekan
                                // Misalnya, berpindah ke layout tugas
                              },

                              // height: 100,
                              // width: 150,
                              // color: Colors.blue.shade900,
                              child: Column(
                                children: [
                                  Container(
                                      width: 150,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white))),
                                      child: Text(
                                        "TAKS",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      )),
                                  Container(
                                      width: 150,
                                      padding: EdgeInsets.all(4),
                                      child: Text(
                                        "Jangan Lupa Kerjakan Tugas Mu, Demi Masa Depan Yang Cerah!!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade300
                                ], // Ganti warna sesuai keinginan Anda
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AcaraLayout()));
                                // Tindakan yang akan diambil saat card "Tugas" ditekan
                                // Misalnya, berpindah ke layout tugas
                              },

                              // height: 100,
                              // width: 150,
                              // color: Colors.blue.shade900,
                              child: Column(
                                children: [
                                  Container(
                                      width: 150,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white))),
                                      child: Text(
                                        "EVENTS",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )),
                                  Container(
                                      width: 150,
                                      padding: EdgeInsets.all(4),
                                      child: Text(
                                        "Jangan Lupakan Aktivitas Mu, tetap semangat jalanin hari-hari mu yaa :)",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade300
                                ], // Ganti warna sesuai keinginan Anda
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MeTimeLayout()));
                                // Tindakan yang akan diambil saat card "Tugas" ditekan
                                // Misalnya, berpindah ke layout tugas
                              },

                              // height: 100,
                              // width: 150,
                              // color: Colors.blue.shade900,
                              child: Column(
                                children: [
                                  Container(
                                      width: 150,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white))),
                                      child: Text(
                                        "ME TIME",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )),
                                  Container(
                                      width: 150,
                                      padding: EdgeInsets.all(4),
                                      child: Text(
                                        "Jangan Lupa Bahagia, Istirahatkan sejenak pikiran dan hati mu >,<",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Upcoming Due",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white.withOpacity(0.5),
            child: Column(
              children: [
                Card(
                  child: Row(children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text("tugas 1")
                  ]),
                ),
                Card(
                  child: Row(children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text("tugas 2")
                  ]),
                ),
                Card(
                  child: Row(children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text("tugas 3")
                  ]),
                ),
                Card(
                  child: Row(children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text("tugas 4")
                  ]),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "News Today",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white.withOpacity(0.5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rekomendasi Berita"),
                    Text(
                      'Lihat Semua  >',
                      style: TextStyle(
                        color: Colors.blue.shade900,
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                          child: Card(
                        color: Colors.white.withOpacity(0.5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/berita1.png",
                              height: 120,
                            )),
                      )),
                      Card(
                          child: Card(
                        color: Colors.white.withOpacity(0.5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/berita2.jpeg",
                              height: 120,
                            )),
                      )),
                      Card(
                          child: Card(
                        color: Colors.white.withOpacity(0.5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/berita3.jpeg",
                              height: 120,
                            )),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Halaman Favorite"),
    );
  }
}

class Kalender extends StatelessWidget {
  final List<String> daysOfWeek = [
    'Sen',
    'Sel',
    'Rab',
    'Kam',
    'Jum',
    'Sab',
    'Min'
  ];
  final List<int> daysInMonth = List.generate(31, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7, // 7 kolom untuk hari dalam seminggu
      ),
      itemCount: daysOfWeek.length + daysInMonth.length,
      itemBuilder: (context, index) {
        if (index < daysOfWeek.length) {
          // Tampilkan nama hari
          return Center(
            child: Text(
              daysOfWeek[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        } else {
          // Tampilkan tanggal dalam bulan
          int day = daysInMonth[index - daysOfWeek.length];
          return Center(
            child: Text(
              day.toString(),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }
      },
    );
  }
}
