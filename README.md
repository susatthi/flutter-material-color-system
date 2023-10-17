# Material Color System

Material Design 3 のカラーシステムを確認できるサイトです。配色に悩んだときにご利用ください。

https://susatthi.github.io/flutter-material-color-system/

https://github.com/susatthi/flutter-material-color-system/assets/13707135/2e03e2d8-9b0a-4739-a619-8eee9e06b6dc


ライトモード|ダークモード
--|--
![](https://github.com/susatthi/flutter-material-color-system/assets/13707135/dd144ec6-4e96-4a29-a8a3-9dad039a4602)|![](https://github.com/susatthi/flutter-material-color-system/assets/13707135/20d35f43-6104-4d85-a83a-1b695a7b9e2b)

## 使い方

デスクトップでお使いください。スマホでも使えますがマウスホバーが効かないので使いづらいと思います。

- カラーピッカーからシード色を変更できます。
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

カラースキームは次のように `colorSchemeSeed` を使って `MaterialApp` に登録するように実装しています。詳しくはコードを見てください。

```dart
@riverpod
class CurrentSeedColor extends _$CurrentSeedColor {
  @override
  Color build() => const Color(0xFF6750A4);
}

@riverpod
ThemeData theme(ThemeRef ref, Brightness brightness) {
  final seedColor = ref.watch(currentSeedColorProvider);
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    brightness: brightness,
    ・・・
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
Flutter 3.10.2 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 9cd3d0d9ff (2 days ago) • 2023-05-23 20:57:28 -0700
Engine • revision 90fa3ae28f
Tools • Dart 3.0.2 • DevTools 2.23.1
```

## LISENCE

MIT