import 'package:flutter/material.dart';
import 'package:tugas4_tpm/loginPage.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.help, color: Colors.red), // Icon di sini
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Icon Setting pada Halaman Bilangan Prima berfungsi untuk mengubah batas angka yang akan ditampilkan.',
                      style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.help, color: Colors.red), // Icon di sini
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Segitiga pada Hitung Keliling Segitiga adalah Segitiga Sama Sisi.',
                      style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,
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
}
