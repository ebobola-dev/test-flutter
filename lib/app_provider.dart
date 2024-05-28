import 'package:era_developers_test_flutter/bloc/news/news_bloc.dart';
import 'package:era_developers_test_flutter/repositories/news/mock_news_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AppProviders extends StatelessWidget {
  final Widget child;
  const AppProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (BuildContext context) => MockNewsRepository())
      ],
      child: MultiBlocProvider(
        providers: [
          Provider(
            create: (BuildContext context) => NewsBloc(
              context.read<MockNewsRepository>(),
            )..add(const NewsEvent.load()),
          ),
        ],
        child: child,
      ),
    );
  }
}
