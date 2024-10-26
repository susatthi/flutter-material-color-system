import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'messenger.g.dart';

@riverpod
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey(
  Ref ref,
) {
  return GlobalKey<ScaffoldMessengerState>();
}

@riverpod
GlobalKey<NavigatorState> navigatorKey(Ref ref) {
  return GlobalKey<NavigatorState>();
}

/// エラーダイアログ
class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    super.key,
    required this.error,
  });

  final Object error;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('エラー'),
      content: Text(error.toString()),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }
}

/// 確認ダイアログ
class ConfirmDialog extends ConsumerWidget {
  const ConfirmDialog({
    super.key,
    required this.content,
    required this.onApproved,
  });

  final Widget content;
  final VoidCallback? onApproved;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: const Text('確認'),
      content: content,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('いいえ'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onApproved?.call();
          },
          child: const Text('はい'),
        ),
      ],
    );
  }
}

/// メッセージダイアログ
class MessageDialog extends StatelessWidget {
  const MessageDialog({
    super.key,
    this.title,
    this.content,
  });

  final Widget? title;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      content: content,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
