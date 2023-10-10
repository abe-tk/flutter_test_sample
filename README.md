# flutter_test_sample

Flutter自動テストのサンプルアプリ

# 概要

Flutterの自動テストを学ぶために作成したプロジェクト

参考：[Testing Flutter apps](https://docs.flutter.dev/testing/overview)

E2EツールはMaestoroを採用

参考：[What is Maestro?](https://maestro.mobile.dev/)

# 環境構築

FlutterSDKはfvmで指定
```
fvm use
```

# ビルド方法

```
fvm flutter run 
```

# テスト方法

## Unit

- テスト対象

`lib/counter.dart`

- テストコード

`test/counter_test.dart`

- 実行方法

`counter_test.dart`を実行

## Widget

- テスト対象

`lib/main.dart`

- テストコード

`test/widget_test.dart`

- 実行方法

`widget_test.dart`を実行

## Integration

- テスト対象

アプリ全体

- テストコード

`integration_test/app_test.dart`

- 実行方法

アプリをビルドし`app_test.dart`を実行

## Maestro

※Maestroのインストールは[InstallingMaestro](https://maestro.mobile.dev/getting-started/installing-maestro)を参照

- テスト対象

アプリ全体

- テストコード

`maestro/Flow.yaml`

- 実行方法

`maestro test Flow.yaml`