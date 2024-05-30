import 'dart:developer';

import 'package:era_developers_test_flutter/bloc/news/news_bloc.dart';
import 'package:era_developers_test_flutter/common_widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: AppBar(
        leading: MyBackButton(
          onTap: () => log('Tap on "<"', name: 'Header'),
        ),
        title: const Text('Notifications'),
        actions: [
          BlocBuilder<NewsBloc, NewsState>(
            buildWhen: (previous, current) =>
                previous.isLoading != current.isLoading,
            builder: (context, state) {
              return TextButton(
                onPressed: state.isLoading
                    ? null
                    : () => context
                        .read<NewsBloc>()
                        .add(const NewsEvent.markAllReaded()),
                child: Text(
                  'Mark all read',
                  style: TextStyle(color: Theme.of(context).iconTheme.color),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
