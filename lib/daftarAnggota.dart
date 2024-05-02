import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SitusRekomendasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Anggota',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            DataTable(
              columns: const [
                DataColumn(label: Text('Nama')),
                DataColumn(label: Text('NIM')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Muhammad Rainaldy Dharmawan')),
                  DataCell(Text('123210087')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bagas Makayasa')),
                  DataCell(Text('123210099')),
                ]),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}