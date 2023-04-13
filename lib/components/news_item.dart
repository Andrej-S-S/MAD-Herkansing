import 'package:flutter/material.dart';
import '../pages/news_detail_page.dart';

class NewsItem extends StatelessWidget {
  final String id;
  final String title;
  final String datum;
  final String tekst;
  final String imageUrl;

  const NewsItem({
    required this.id,
    required this.title,
    required this.datum,
    required this.tekst,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          footer: GridTileBar(
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black54,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NewsDetailPage(
                    title: title,
                    imageUrl: imageUrl,
                    datum: datum,
                    tekst: tekst,
                  ),
                ),
              );
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
