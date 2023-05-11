# Flutter Material Color System

Material Design 3 の Tonal Palletes と Color Scheme を動的に確認できるデモサイトです。
アプリを作る際のカラー決めにご利用ください。

https://susatthi.github.io/flutter-material-color-system/

ライトモード|ダークモード
--|--
<img width="1766" alt="CleanShot 2023-05-11 at 16 53 14@2x" src="https://github.com/susatthi/flutter-material-color-system/assets/13707135/b7d55695-3bbb-41a4-95db-9c3e5ecf4142">|<img width="1768" alt="CleanShot 2023-05-11 at 16 53 32@2x" src="https://github.com/susatthi/flutter-material-color-system/assets/13707135/e4c44c7a-51a7-4a10-9286-6e6fe50094db">

- 左側にあるカラーピッカーからシード色を変更できます。
- 右上のテーマモードアイコンからライトテーマとダークテーマの切替が出来ます。

## カラースキームの設定方法

カラースキームは次のように `colorSchemeSeed` を使って `MaterialApp` に登録するように実装しています。詳しくはコードを見てください。

```dart
final themeProvider = Provider.family<ThemeData, Brightness>((ref, brightness) {
  final seedColor = ref.watch(currentSeedColorProvider);
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    brightness: brightness,
    ・・・
  );
});

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ref.watch(themeProvider(Brightness.light)),
      darkTheme: ref.watch(themeProvider(Brightness.dark)),
      ・・・
    );
  }
}

```

## 環境

```
Flutter 3.10.0 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 84a1e904f4 (2 days ago) • 2023-05-09 07:41:44 -0700
Engine • revision d44b5a94c9
Tools • Dart 3.0.0 • DevTools 2.23.1
```

## LISENCE

MIT