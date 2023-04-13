import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String datum;
  final String tekst;
  final String imageUrl;

  const NewsDetailPage({
    required this.title,
    required this.datum,
    required this.tekst,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(imageUrl)),
          Text(
            title,
            style: TextStyle(fontSize: 40),
          ),
          Text(
            datum,
            style: TextStyle(
                fontSize: 31, color: Colors.black, fontWeight: FontWeight.w700),
          ),

          Text(
            tekst,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ]),
      ),
    );
  }
}
