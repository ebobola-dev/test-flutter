import 'package:era_developers_test_flutter/screens/news_list/news_list_screen.dart';
import 'package:era_developers_test_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Flutter App',
      debugShowCheckedModeBanner: false,
      theme: getThemeData(context),
      home: const NewsListScreen(),
    );
  }
}
