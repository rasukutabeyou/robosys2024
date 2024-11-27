# robosys2024

## 概要
2024年度　ロボットシステム学における練習用リポジトリ。

`plus`と`genngou`の二つのコマンドが実装されている。

## ダウンロード、セットアップ

以下の手順でローカル環境にダウンロードし、コマンドを利用するための準備を行ってください。

```
#リポジトリをクローン
$ git clone https://github.com/rasukutabeyou/robosys2024.git
　(略)

#ディレクトリに移動
$ cd robosys2024
```


## plusコマンド
![test](https://github.com/rasukutabeyou/robosys2024/actions/workflows/test.yml/badge.svg)

- 基本動作

標準入力から読み込んだ数字を足す。

- 使い方

1.一列の数字が書き込まれたファイルを用意する。

2.`./plus　< ファイル名`で実行する。

3.結果が出力される。

- 動作例
```
$ seq 5 > nums #1~5までの数字
$ ./plus < nums
15
```

- その他

数字以外を入力した場合や、何も入力しない場合、エラーとなり正常に動作しない。

## genngouコマンド
![test](https://github.com/rasukutabeyou/robosys2024/actions/workflows/gtest.yml/badge.svg)

- 基本動作

西暦を元号に変換する。

年齢を元号に変換する。

- 使い方

1.`./genngou`で実行する。

2.`echo -e "A\nB" | ./genngou`で実行する。
（`A`には元号を調べたい西暦または年齢の値を、`B`には西暦であれば`year`、年齢であれば`age`を入力）

3.結果が出力される。

- 動作例
  - 例1:西暦を元号に
  ```
  $ echo -e "2005\nyear" | ./genngou
   2005 年は
   平成 17 年
  ```
  - 例2:年齢を元号に
  ```
  $ echo -e "19\nage" | ./genngou
   19 歳は
   平成 17 年
   生まれ
  ```

- その他

元号は昭和∼令和まで対応、昭和以前は"昭和以前"と表示される。

`A`に対して数字以外を入力した場合や、`B`に対して`year`,`age`以外の入力した場合はエラーとなり、正常に動作しない。


## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.10

## テスト環境
- Ubuntu 20.04.6 LTS

## その他
- このソフトウェアは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- このソフトウェアのコードの一部は下記スライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て自身の著作としたものです。
  - [ryuichiueda/slides_marp robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)

- © 2024 Kouta Sakai

