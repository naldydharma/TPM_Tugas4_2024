import 'package:flutter/material.dart';

class DaftarWebsite extends StatelessWidget {
  const DaftarWebsite({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CardWithImage(
                cardName: 'YouTube',
                imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/YouTube_social_white_square_%282017%29.svg/800px-YouTube_social_white_square_%282017%29.svg.png', // URL gambar untuk card pertama
              ),
              CardWithImage(
                cardName: 'Spotify',
                imageUrl: 'https://store-images.s-microsoft.com/image/apps.10546.13571498826857201.6603a5e2-631f-4f29-9b08-f96589723808.dc893fe0-ecbc-4846-9ac6-b13886604095?h=464', // URL gambar untuk card kedua
              ),
              CardWithImage(
                cardName: 'X',
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaH-jwA1s0tFBHa-MBH5WQe47zkFxLQbDs8YI2Y7yEPw&s', // URL gambar untuk card ketiga
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWithImage extends StatelessWidget {
  const CardWithImage({
    required this.cardName,
    required this.imageUrl,
    this.imageWidth = 100, // Ukuran default untuk lebar gambar
    this.imageHeight = 100, // Ukuran default untuk tinggi gambar

  });

  final String cardName;
  final String imageUrl;
  final double imageWidth;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
            imageUrl,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.fill, // Mengatur gambar agar menutupi card
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              cardName,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

