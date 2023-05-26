# Material Color System

Material Design 3 のカラーシステムを確認できるサイトです。配色に悩んだときにご利用ください。

https://susatthi.github.io/flutter-material-color-system/

https://github.com/susatthi/flutter-material-color-system/assets/13707135/dfb41f3e-5dac-40e9-a55c-98422f25d99f


ライトモード|ダークモード
--|--
![](https://github.com/susatthi/flutter-material-color-system/assets/13707135/cf198752-6c69-4262-b2f1-821a99a5e6aa)|![](https://github.com/susatthi/flutter-material-color-system/assets/13707135/50b01fdd-2b1d-4dd5-aac5-2af5587fd30d)

- カラーピッカーからシード色を変更できます。
- ライトテーマとダークテーマの切替ができます。

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