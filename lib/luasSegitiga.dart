import 'package:flutter/material.dart';

class LuasSegitigaPage extends StatefulWidget {
  @override
  _LuasSegitigaPageState createState() => _LuasSegitigaPageState();
}

class _LuasSegitigaPageState extends State<LuasSegitigaPage> {
  TextEditingController _controllerAlas = TextEditingController();
  TextEditingController _controllerTinggi = TextEditingController();
  double _luas = 0;

  void _hitungLuas() {
    double alas = double.tryParse(_controllerAlas.text) ?? 0;
    double tinggi = double.tryParse(_controllerTinggi.text) ?? 0;
    setState(() {
      _luas = (alas * tinggi) / 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Luas Segitiga', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
        'https://blog-static.mamikos.com/wp-content/uploads/2021/04/luas-segitiga.jpg'
            ),

            TextField(
              controller: _controllerAlas,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Alas'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _controllerTinggi,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Tinggi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungLuas,
              child: Text('Hitung Luas', style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Luas Segitiga: $_luas',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
