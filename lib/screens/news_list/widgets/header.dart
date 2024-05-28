import 'dart:developer';

import 'package:era_developers_test_flutter/common_widgets/back_button.dart';
import 'package:flutter/material.dart';

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
          TextButton(
            onPressed: () => log('Tap on "Mark all read"', name: 'Header'),
            child: Text(
              'Mark all read',
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
          ),
        ],
      ),
    );
  }
}
