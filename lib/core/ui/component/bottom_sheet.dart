import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'material.dart';

/// ボトムシート用のScaffold
class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    super.key,
    required this.child,
    this.scrollController,
    this.bottomPadding = verticalPadding,
    this.height,
  });

  final Widget child;
  final ScrollController? scrollController;
  final double bottomPadding;
  final double? height;

  static const verticalPadding = 8.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: SizedBox(
            height: height,
            child: Column(
              children: [
                const Gap(verticalPadding),
                const _GrabMark(),
                const Gap(verticalPadding),
                child,
                Gap(bottomPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GrabMark extends StatelessWidget {
  const _GrabMark();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 4,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
