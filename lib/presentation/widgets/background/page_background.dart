import 'package:flutter/material.dart';
import 'package:magic_hat_task/gen/assets.gen.dart';

class PageBackground extends StatelessWidget {
  final Widget child;

  const PageBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.background.backgroundSplash.path),
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
