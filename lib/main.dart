import 'package:flutter/cupertino.dart';

void main() {
  runApp(const InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: "Instagram Clone",
      theme: CupertinoThemeData(),
      home: Text(""),
    );
  }
}
