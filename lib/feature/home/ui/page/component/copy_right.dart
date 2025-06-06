import 'package:flutter/material.dart';

import '../../../../../core/ui/component/material.dart';

class CopyRightText extends StatefulWidget {
  const CopyRightText({super.key});

  @override
  State<CopyRightText> createState() => _CopyRightTextState();
}

class _CopyRightTextState extends State<CopyRightText> {
  Future<String?> _getFlutterVersion() async {
    try {
      final flutterVersion = await DefaultAssetBundle.of(context)
          .loadString('.dart_tool/version');
      return flutterVersion;
    } catch (_) {
      // The asset might not be available in packaged builds.
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getFlutterVersion(),
      builder: (context, snapshot) {
        final flutterVersion = snapshot.data;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: DefaultTextStyle.merge(
            style: TextStyle(
              color: context.outline,
              fontSize: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'powered by Flutter${flutterVersion != null ? ' $flutterVersion' : ''} ',
                ),
                const Text('(C) 2023 susatthi.'),
              ],
            ),
          ),
        );
      },
    );
  }
}
