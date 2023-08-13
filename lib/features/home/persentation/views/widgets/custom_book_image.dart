import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7 / 2.4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            image:  DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
