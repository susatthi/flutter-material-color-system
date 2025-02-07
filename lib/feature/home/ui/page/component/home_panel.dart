import 'package:flutter/material.dart';

import '../../../../../../core/ui/component/layout.dart';
import '../../../../../../core/ui/component/material.dart';

class HomePanel extends StatelessWidget {
  const HomePanel({
    super.key,
    this.title,
    required this.child,
  });

  final String? title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: p8),
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(p8),
            child: _TitleText(title: title!),
          ),
        child,
      ],
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.titleLarge,
    );
  }
}
