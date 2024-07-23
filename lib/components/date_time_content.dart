import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/vector_icon.dart';

class DateTimeContent extends StatelessWidget {
  const DateTimeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('10:21 AM Jun 20, 2023'),
        VectorIcon(asset: SvgAsset.info)
      ],
    );
  }
}
