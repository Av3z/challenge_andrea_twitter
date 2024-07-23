import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/vector_icon.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/andrea-avatar.png'),
              ),
            ),
            const Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Andrea Bizzoto',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text('@biz84 -'),
                            Text(
                              ' Follow',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    VectorIcon(
                      asset: SvgAsset.heartBlue,
                      height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    VectorIcon(asset: SvgAsset.verified)
                  ],
                ),
              ],
            ),
          ],
        ),
        const VectorIcon(asset: SvgAsset.x)
      ],
    );
  }
}
