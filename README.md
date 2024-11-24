# robosys2024
授業用。

## 概要
課題提出用のリポジトリ。

主なコマンドは`plus`と`genngou`の二つ。

## インストール方法、準備

以下の手順でローカル環境にインストールし、コマンドを利用するための準備を行ってください。

```
#リポジトリをクローン
$ git clone https://github.com/rasukutabeyou/robosys2024.git

#ディレクトリに移動
$ cd robosys2024

#ブランチの変更
$ git switch dev
```


## plusコマンド
![test](https://github.com/rasukutabeyou/robosys2024/actions/workflows/test.yml/badge.svg)

-基本動作

標準入力から読み込んだ数字を足す。

-使い方

1.一列の数字が書き込まれたファイルを用意する。

2.`./plus　< ファイル名`で実行する。

3.結果が出力される。

-動作例
```
$ seq 5 > nums
$ ./plus < nums
15
```
## genngouコマンド
![test](https://github.com/rasukutabeyou/robosys2024/actions/workflows/gtest.yml/badge.svg)

-基本動作

西暦を元号に変換する。

年齢を元号に変換する。

-使い方

1.`./genngou`で実行する。

2.`value:`と表示されるため、元号を調べたい西暦または年齢の値を入力。

3.`mode:`と表示されるため、西暦であれば`year`、年齢であれば`age`と入力。

4.結果が出力される。

-動作例
```
$ ./genngou
value:2005
mode:year
2005 年は
平成 17 年
```

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.10

## テスト環境
- Ubuntu 20.04.6 LTS

© 2024 Kouta Sakai

