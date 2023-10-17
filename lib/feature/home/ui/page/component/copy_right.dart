import 'package:flutter/material.dart';

class CopyRightText extends StatelessWidget {
  const CopyRightText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text('(C)2023 susatthi.'),
    );
  }
}
