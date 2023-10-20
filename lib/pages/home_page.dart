// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mental_app/pages/setrika_page_detail.dart';
import 'package:mental_app/pages/tv_page_detail.dart';
import 'package:mental_app/util/exercise.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          Text(
                            'Selamat Datang',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Mau Cari Barang Apa?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //Notifikasi
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        padding: EdgeInsets.all(9),
                        child: Icon(
                          Icons.notifications,
                          color: const Color.fromARGB(255, 48, 47, 47),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Cari Barang',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kategori Barang',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //Emoticon Faces
                  Container(
                    height: 150, // Sesuaikan tinggi container sesuai kebutuhan
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // Action
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/action');
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/tv.jpeg',
                                  width: 120,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Televisi',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        // Isekai
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/isekai');
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/ac.jpeg',
                                  width: 80,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'AC',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        // Fantasy
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/fantasy');
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/cuci.jpeg',
                                  width: 120,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Mesin Cuci',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                        // Game
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/game');
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/setrika.jpeg',
                                  width: 90,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Strika',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
// ...

// ...

            Expanded(
                child: Container(
              padding: EdgeInsets.all(10),
              height: 800,
              width: 500,
              color: Colors.yellow,
              child: Center(
                child: Column(
                  children: [
                    //Excersie Heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Alat-Alat Baru',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //ListView of Exercise
                    Expanded(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SetrikaPageDetail(
                                    image: 'assets/setrika2.jpeg',
                                    exercisename: 'Setrika Maspion',
                                    rating: 8.55,
                                    synopsis:
                                        'Sertrika dengan teknologi Canggih',
                                    // Ganti dengan sinopsis yang sesuai),
                                  ),
                                ),
                              );
                            },
                            child: Exercise(
                              image: 'assets/setrika2.jpeg',
                              exercisename: 'Sertrika terbaru dari Maspion',
                              rating: 8.68,
                              color: Colors.yellow,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TvPageDetail(
                                    image: 'assets/cuci1.jpeg',
                                    exercisename: 'Mesin Cuci',
                                    rating: 8.68,
                                    synopsis: 'Mesin Cuci Terbaru dan Canggih',
                                    // Ganti dengan sinopsis yang sesuai),
                                  ),
                                ),
                              );
                            },
                            child: Exercise(
                              image: 'assets/cuci1.jpeg',
                              exercisename: 'Mesin Cuci',
                              rating: 8.48,
                              color: Colors.yellow,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TvPageDetail(
                                    image: 'assets/ac1.jpeg',
                                    exercisename: 'Ac Tensei',
                                    rating: 8.35,
                                    synopsis: 'AC Tensei Terbaru',
                                    // Ganti dengan sinopsis yang sesuai),
                                  ),
                                ),
                              );
                            },
                            child: Exercise(
                              image: 'assets/ac1.jpeg',
                              exercisename: 'Ac Tensei Canggih',
                              rating: 8.48,
                              color: Colors.yellow,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
