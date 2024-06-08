import 'package:flutter/material.dart';

class CopyRightText extends StatefulWidget {
  const CopyRightText({super.key});

  @override
  State<CopyRightText> createState() => _CopyRightTextState();
}

class _CopyRightTextState extends State<CopyRightText> {
  Future<String> _getFlutterVersion() async {
    final flutterVersion =
        await DefaultAssetBundle.of(context).loadString('.dart_tool/version');
    return flutterVersion;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getFlutterVersion(),
      builder: (context, snapshot) {
        final flutterVersion = snapshot.data;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (flutterVersion != null)
                Text('powered by Flutter $flutterVersion '),
              const Text('(C) 2023 susatthi.'),
            ],
          ),
        );
      },
    );
  }
}
