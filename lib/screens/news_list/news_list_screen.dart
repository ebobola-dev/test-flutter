import 'package:era_developers_test_flutter/bloc/news/news_bloc.dart';
import 'package:era_developers_test_flutter/common_widgets/loading_indicator.dart';
import 'package:era_developers_test_flutter/screens/news_list/widgets/featured_list.dart';
import 'package:era_developers_test_flutter/screens/news_list/widgets/header.dart';
import 'package:era_developers_test_flutter/screens/news_list/widgets/latest_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Header(),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: BlocBuilder<NewsBloc, NewsState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading,
              builder: (context, state) {
                final Widget child;
                if (state.isLoading && state.isEmpty) {
                  child = Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Loading news...',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 16.0),
                        const LoadingIndicator(),
                      ],
                    ),
                  );
                } else {
                  child = Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Align(
                          child: Text(
                            "Featured",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Flexible(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0),
                          child: FeaturedList(),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Align(
                          child: Text(
                            "Latest news",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Flexible(
                        flex: 1,
                        child: LatestList(),
                      ),
                    ],
                  );
                }
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  reverseDuration: const Duration(milliseconds: 400),
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeIn,
                  transitionBuilder: (child, animation) => ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                  child: child,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
