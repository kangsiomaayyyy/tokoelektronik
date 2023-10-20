// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_app/pages/setrika_page_detail.dart';
import 'package:mental_app/util/exercise.dart';

class SetrikaPage extends StatefulWidget {
  const SetrikaPage({Key? key}) : super(key: key);

  @override
  State<SetrikaPage> createState() => _SetrikaPageState();
}

class _SetrikaPageState extends State<SetrikaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 48, 48),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.maxFinite,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(5)),
                      image: DecorationImage(
                        image: AssetImage('assets/setrika.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 30,
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 10, // Remove the shadow
                      title: Text(
                        'Setrika',
                        style: TextStyle(
                          color: Colors.white, // Set text color
                        ),
                      ),
                      actions: [
                        IconButton(
                          icon: Icon(Icons.favorite,
                              color: Colors.white), // Set icon color
                          onPressed: () {
                            // Handle like action
                          },
                        ),
                      ],
                      leading: IconButton(
                        icon: Icon(Icons.arrow_back,
                            color: Colors.white), // Set icon color
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Konten Anda di sini
                        ],
                      ),
                      // Notifikasi
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.yellow,
                child: Center(
                  child: Column(
                    children: [
                      // Judul Latihan
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Daftar Merk Setrika',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // ListView Latihan
                      Expanded(
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SetrikaPageDetail(
                                      image: 'assets/setrika1.jpeg',

                                      exercisename: 'MASPION',
                                      rating: 8.55,
                                      synopsis: 'Setrika Terbaru dari Maspion',
                                      // Ganti dengan sinopsis yang sesuai
                                    ),
                                  ),
                                );
                              },
                              child: Exercise(
                                image: 'assets/setrika1.jpeg',
                                exercisename: 'Setrika MASPION',
                                rating: 8.55,
                                color: Colors.yellow,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SetrikaPageDetail(
                                      image: 'assets/setrika2.jpeg',
                                      exercisename: 'PHILIPS',
                                      rating: 8.68,
                                      synopsis: 'Setrika Philips Terbaru',
                                    ),
                                  ),
                                );
                              },
                              child: Exercise(
                                image: 'assets/setrika2.jpeg',
                                exercisename: 'Setrika PHILIPS',
                                rating: 8.68,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
