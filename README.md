# Material Color System

Material Design 3 のカラーシステムを確認できるサイトです。配色に悩んだときにご利用ください。

https://susatthi.github.io/flutter-material-color-system/

https://github.com/susatthi/flutter-material-color-system/assets/13707135/5eb575d6-f092-4a09-b81e-57bcaf7d8d6b


ライトモード|ダークモード
--|--
![](https://github.com/susatthi/flutter-material-color-system/assets/13707135/7c8c6462-ae93-48a3-9c2f-811767e4b3e3)|![](https://github.com/susatthi/flutter-material-color-system/assets/13707135/0dd326ff-8991-476c-a2bf-1290331ae3af)

## 使い方

デスクトップでお使いください。スマホでも使えますがマウスホバーが効かないので使いづらいと思います。

- カラーピッカーからシード色とダイナミックスキーム値を変更できます。
- シード色を最大10個まで保存できます。
- カラーをクリックするとHEX値をコピーします。
- ライトテーマとダークテーマの切替ができます。
- レスポンシブ対応です。

## 参考サイト

- 本家サイト
  - https://m3.material.io/theme-builder#/custom
- Tonal palettes について
  - https://m3.material.io/styles/color/the-color-system/key-colors-tones#a828e350-1551-45e5-8430-eb643e6a7713

## カラースキームの設定方法

カラースキームは次のように `seedColor` と `schemeVariant` から作成しています。詳しくはコードを見てください。

```dart
@riverpod
class CurrentSeedColorNotifier extends _$CurrentSeedColorNotifier {
  @override
  Color build() => const Color(0xFF6750A4);
}

@riverpod
ThemeData theme(ThemeRef ref, Brightness brightness) {
  final seedColor = ref.watch(currentSeedColorNotifierProvider);
  final schemeVariant = ref.watch(currentDynamicSchemeVariantNotifierProvider);
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
      dynamicSchemeVariant: schemeVariant,
    ),
  );
}
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
Flutter 3.32.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision b25305a883 (16 hours ago) • 2025-05-29 10:40:06 -0700
Engine • revision 1425e5e9ec (2 days ago) • 2025-05-28 14:26:27 -0700
Tools • Dart 3.8.1 • DevTools 2.45.1
```
## LICENSE

MIT
