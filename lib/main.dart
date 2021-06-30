import 'package:flutter/material.dart';
import 'package:muktijuddher_sath_birsreshto/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'মুক্তিযুদ্ধের ৭ বীরশ্রেষ্ঠ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        accentColor: Colors.grey,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        accentColor: Colors.grey,
      ),
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}
