import 'package:era_developers_test_flutter/screens/news_list/widgets/featured_list.dart';
import 'package:era_developers_test_flutter/screens/news_list/widgets/header.dart';
import 'package:era_developers_test_flutter/screens/news_list/widgets/latest_list.dart';
import 'package:flutter/material.dart';

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
            child: Column(
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
            ),
          ),
        ),
      ),
    );
  }
}
