import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/vector_icon.dart';

class ActionItem extends StatelessWidget {
  final SvgAsset asset;
  final String text;
  const ActionItem({super.key, required this.asset, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VectorIcon(asset: asset),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style:
              TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
