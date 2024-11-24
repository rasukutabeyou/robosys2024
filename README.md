# robosys2024
授業用。

## 概要
課題提出用のリポジトリ。

主なコマンドは`plus`と`genngou`の二つ。

## インストール方法、準備

以下の手順でローカル環境にインストールし、コマンドを利用するための準備を行ってください。

```
リポジトリをクローン
git clone https://github.com/rasukutabeyou/robosys2024.git

ディレクトリに移動
cd robosys2024

ブランチの変更
git switch dev
```


## plusコマンド
![test](https://github.com/rasukutabeyou/robosys2024/actions/workflows/test.yml/badge.svg)

-基本動作

標準入力から読み込んだ数字を足す。

-使い方

1.一列の数字が書き込まれたファイルを用意する。

2.`./plus　< ファイル名`で実行する。

3.結果が出力される。

-動作の例
```
seq 5 > nums
./plus < nums
15



etc...

## genngouコマンド
![test](https://github.com/rasukutabeyou/robosys2024/actions/workflows/gtest.yml/badge.svg)

1:西暦を元号に変換する。
2:年齢を元号に変換する。

etc

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.10

## テスト環境
- Ubuntu 20.04.6 LTS

© 2024 Kouta Sakai

