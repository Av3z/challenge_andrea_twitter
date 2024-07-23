import 'package:flutter/material.dart';

class ImageContent extends StatelessWidget {
  const ImageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'assets/media-query-banner.jpg',
      ),
    );
  }
}
