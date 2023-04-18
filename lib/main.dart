import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/ui/main/main_page.dart';

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
      home: MainPage(),
    );
  }
}
