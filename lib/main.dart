import 'package:flutter/material.dart';
import 'package:twitter_embed_card/components/actions_content.dart';
import 'package:twitter_embed_card/components/date_time_content.dart';
import 'package:twitter_embed_card/components/header_profile.dart';
import 'package:twitter_embed_card/components/image_content.dart';
import 'package:twitter_embed_card/components/rich_text_content.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            // Use Center as layout has unconstrained width (loose constraints),
            // together with SizedBox to specify the max width (tight constraints)
            // See this thread for more info:
            // https://twitter.com/biz84/status/1445400059894542337
            child: Center(
              child: SizedBox(
                width: 600, // max allowed width
                child: SizedBox(
                  child: Column(
                    children: [
                      const HeaderProfile(),
                      const SizedBox(
                        height: 15,
                      ),
                      const RichTextContent(),
                      const SizedBox(
                        height: 20,
                      ),
                      const ImageContent(),
                      const SizedBox(
                        height: 10,
                      ),
                      const DateTimeContent(),
                      const Divider(),
                      const ActionsContent(),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: TextButton(
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side:
                                        const BorderSide(color: Colors.black)),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Read 12 replies',
                              style: TextStyle(color: Colors.blue),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
