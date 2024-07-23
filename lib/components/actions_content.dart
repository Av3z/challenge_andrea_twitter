import 'package:flutter/material.dart';
import 'package:twitter_embed_card/components/action_item.dart';
import 'package:twitter_embed_card/svg_asset.dart';

class ActionsContent extends StatelessWidget {
  const ActionsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ActionItem(
          asset: SvgAsset.heartRed,
          text: '997',
        ),
        SizedBox(
          width: 20,
        ),
        ActionItem(
          asset: SvgAsset.comment,
          text: 'Reply',
        ),
        SizedBox(
          width: 20,
        ),
        ActionItem(
          asset: SvgAsset.link,
          text: 'Copy link',
        )
      ],
    );
  }
}
