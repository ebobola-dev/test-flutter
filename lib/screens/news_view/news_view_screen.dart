import 'dart:developer';

import 'package:era_developers_test_flutter/bloc/news/news_bloc.dart';
import 'package:era_developers_test_flutter/common_widgets/back_button.dart';
import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:era_developers_test_flutter/utils/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsViewScreen extends StatefulWidget {
  final Article article;
  const NewsViewScreen({super.key, required this.article});

  @override
  State<NewsViewScreen> createState() => _NewsViewScreenState();
}

class _NewsViewScreenState extends State<NewsViewScreen> {
  late final _sliverScrollController = ScrollController();

  @override
  void initState() {
    if (!widget.article.readed) {
      final newsBloc = context.read<NewsBloc>();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        //? Весь контент помещается на странице, нечего скроллить
        if (_sliverScrollController.position.maxScrollExtent == 0.0) {
          log(
            'Nothing to scroll',
            name: 'NewsViewScreen',
          );
          newsBloc.add(NewsEvent.markOneReaded(articleId: widget.article.id));
        }
      });

      //? Если долистали до конца
      _sliverScrollController.addListener(() {
        if (_sliverScrollController.position.atEdge) {
          if (_sliverScrollController.position.pixels != 0) {
            log(
              'Scrolled to end',
              name: 'NewsViewScreen',
            );
            newsBloc.add(NewsEvent.markOneReaded(articleId: widget.article.id));
          }
        }
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    _sliverScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: CustomScrollView(
          controller: _sliverScrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * .5,
              collapsedHeight: 110.0,
              automaticallyImplyLeading: false,
              flexibleSpace: ClipRRect(
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
                    Positioned.fill(
                      child: SafeArea(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: MyBackButton(
                                iconColor: Colors.white,
                                onTap: () => Navigator.pop(context),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 40.0,
                                    right: 48.0,
                                  ),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21.0,
                    vertical: 20.0,
                  ),
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
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).dividerColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
