import 'package:flutter/material.dart';
import 'package:tugas4_tpm/bilanganPrima.dart';
import 'package:tugas4_tpm/daftarAnggota.dart';
import 'package:tugas4_tpm/stopwatch.dart';
import 'package:tugas4_tpm/website.dart';
import 'package:tugas4_tpm/luasSegitiga.dart';
import 'package:tugas4_tpm/kelilingSegitiga.dart';
import 'package:tugas4_tpm/helpPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    MainPage(),
    MyStopwatch(),
    HelpPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
        ],
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 40),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SitusRekomendasi()),
                      );
                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)),
                    child: const Text(
                      'Anggota',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),

                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BilanganPrima()),
                      );
                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)),
                    child: const Text(
                      'Bilangan Prima',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LuasSegitigaPage()),
                      );
                      },
                    style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)
                    ),
                    child: const Text('Luas Segitiga', style: TextStyle(color: Colors.black87),),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KelilingSegitigaPage()),
                      );                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)
                    ),
                    child: const Text('Keliling Segitiga', style: TextStyle(color: Colors.black87),),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DaftarWebsite()),
                      );
                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)),
                    child: const Text(
                      'Website',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ]
            )
          ],
        ),
      ),
    );
  }
}
