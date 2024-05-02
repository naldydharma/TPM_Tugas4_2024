import 'package:flutter/material.dart';

class KelilingSegitigaPage extends StatefulWidget {
  @override
  _KelilingSegitigaPage createState() => _KelilingSegitigaPage();
}

class _KelilingSegitigaPage extends State<KelilingSegitigaPage> {
  TextEditingController _controllerSisi = TextEditingController();
  double _keliling= 0;

  void _hitungKeliling() {
    double sisi = double.tryParse(_controllerSisi.text) ?? 0;
    setState(() {
      _keliling = sisi + sisi + sisi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Keliling Segitiga Sama Sisi', style: TextStyle(color: Colors.white),),
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
                'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2021/01/15/1853786887.jpg'
            ),

            TextField(
              controller: _controllerSisi,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Alas'),
            ),
            SizedBox(height: 10),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungKeliling,
              child: Text('Hitung Keliling', style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Keliling Segitiga: $_keliling',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
