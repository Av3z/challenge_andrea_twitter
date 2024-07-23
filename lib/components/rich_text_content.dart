import 'package:flutter/material.dart';

class RichTextContent extends StatelessWidget {
  const RichTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: const [
          TextSpan(
            text: 'Did you know?\n\n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: 'When you call ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: 'MediaQuery.of(context)',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: ' inside a build method, the widget will rebuild when ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: 'any',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text:
                ' of the MediaQuery properties change.\n\nBut there\'s a better way that lets you depend only on the properties you care about (and minimize unnecessary rebuilds). ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: '👇',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
