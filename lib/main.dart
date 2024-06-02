import 'package:era_developers_test_flutter/app_provider.dart';
import 'package:era_developers_test_flutter/bloc/news/news_bloc.dart';
import 'package:era_developers_test_flutter/screens/news_list/news_list_screen.dart';
import 'package:era_developers_test_flutter/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const AppProviders(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<NewsBloc>();
    return MaterialApp(
      title: 'Test Flutter App',
      debugShowCheckedModeBanner: false,
      theme: getThemeData(context),
      home: const NewsListScreen(),
    );
  }
}
