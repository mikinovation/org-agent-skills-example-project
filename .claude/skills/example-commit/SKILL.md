---
name: example-commit
description: "[EXAMPLE] org共通のコミット規約に従ってgit commitを作成するサンプルスキル。apm検証用。"
---

# [EXAMPLE] example-commit

> このスキルはapm動作検証用のサンプルです。実際の運用では削除してください。

## 概要

org共通のコミットメッセージ規約に従ってコミットを作成する。

## コミットメッセージ規約

```
<type>: <subject>
```

typeの種類:
- `feat`: 新機能
- `fix`: バグ修正
- `docs`: ドキュメントのみの変更
- `refactor`: リファクタリング
- `test`: テストの追加・修正
- `chore`: ビルドやツールの変更

## 手順

1. `git diff --staged` でステージ済みの差分を確認する
2. 変更内容からtypeとsubjectを決定する
3. 以下のコマンドでコミットする:

```bash
git commit -m "<type>: <subject>"
```

## 例

```bash
git commit -m "feat: ユーザー認証APIを追加"
git commit -m "fix: ログイン時のリダイレクトループを修正"
```
