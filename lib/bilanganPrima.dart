import 'dart:math';
import 'package:flutter/material.dart';

class BilanganPrima extends StatefulWidget {
  @override
  _BilanganPrima createState() => _BilanganPrima();
}

class _BilanganPrima extends State<BilanganPrima> {
  int _limit = 100;
  List<int> _primeNumbers = [];

  void _generatePrimes() {
    setState(() { // Tambahkan setState di sini
      _primeNumbers = [];
      for (int i = 2; i <= _limit; i++) {
        if (_isPrime(i)) {
          _primeNumbers.add(i);
        }
      }
    });
  }

  bool _isPrime(int number) {
    if (number < 2) {
      return false;
    }
    for (int i = 2; i <= sqrt(number); i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
  void _showLimitDialog() {
    TextEditingController _controller = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Set Limit'),
          content: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Limit'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                int? newLimit = int.tryParse(_controller.text);
                if (newLimit != null && newLimit > 0) {
                  setState(() {
                    _limit = newLimit;
                  });
                }
                Navigator.of(context).pop();
              },
              child: Text('Set'),
            ),
          ],
        );
      },
    );
  }

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
        actions: [
          IconButton(onPressed: (){
            _showLimitDialog();
          },
            icon: Icon(Icons.settings, color: Colors.white,),
          ),
        ],
        title: Text('Prime Numbers', style: TextStyle(color: Colors.white),),
      ),

      body: Column(
        children: [
          const SizedBox(height: 20),
          Text('Prime numbers up to: $_limit', style: TextStyle(fontSize: 18),),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _generatePrimes,
            child: Text('Generate Primes', style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemCount: _primeNumbers.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${_primeNumbers[index]}', style: TextStyle(fontSize: 20),),

                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Text('Total: ${_primeNumbers.length}', style: TextStyle(fontSize: 18),), // Menampilkan total jumlah angka yang muncul
        ],
      ),
    );
  }
}