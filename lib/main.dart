import 'package:flutter/material.dart';
import 'package:tugas4_tpm/loginPage.dart';
import 'package:tugas4_tpm/homepage.dart';
import 'package:tugas4_tpm/daftarAnggota.dart';
import 'package:tugas4_tpm/bilanganPrima.dart';
import 'package:tugas4_tpm/website.dart';
import 'package:tugas4_tpm/luasSegitiga.dart';
import 'package:tugas4_tpm/kelilingSegitiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', // Set the initial route
      routes: {
        '/login': (context) => const LoginPage(), // Define the route for the login page
        '/home': (context) =>  MyHomePage(),   // Define the route for the home page
        '/situsRekomendasi': (context) =>  SitusRekomendasi(),
        '/prima' : (context) => BilanganPrima(),
        '/website' : (context) => DaftarWebsite(),
        '/luasSegitiga' : (context) => LuasSegitigaPage(),
        '/kelilingSegitiga' : (context) => KelilingSegitigaPage(),

        // '/stopwatch' : (context) => MyHomePage(),
      },
    );
  }
}


