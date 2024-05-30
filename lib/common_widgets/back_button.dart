import 'package:era_developers_test_flutter/assets/icon_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? iconColor;
  const MyBackButton({super.key, this.onTap, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: SvgPicture.asset(
        IconPaths.angleLeft,
        colorFilter: ColorFilter.mode(
          iconColor ?? Theme.of(context).iconTheme.color!,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
