import 'package:era_developers_test_flutter/common_widgets/back_button.dart';
import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:era_developers_test_flutter/utils/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewsViewScreen extends StatefulWidget {
  final Article article;
  const NewsViewScreen({super.key, required this.article});

  @override
  State<NewsViewScreen> createState() => _NewsViewScreenState();
}

class _NewsViewScreenState extends State<NewsViewScreen> {
  late final _scrollConrtoller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        widget.article.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned.fill(
                      child: ColoredBox(
                        color: Color(0xBF000000), // BF - 75% opacity
                      ),
                    ),
                    SafeArea(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: MyBackButton(
                          iconColor: Colors.white,
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48.0),
                      child: Align(
                        alignment: const Alignment(0.0, 0.75),
                        child: Text(
                          widget.article.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: SingleChildScrollView(
                  controller: _scrollConrtoller,
                  child: Column(
                    children: [
                      if (widget.article.description != null)
                        Text(widget.article.description!),
                      const SizedBox(height: 20.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          widget.article.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget
                              .article.publicationDate.fullHumanReadableString,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Theme.of(context).dividerColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
