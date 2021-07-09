# 図表の挿入

わかりやすいスライドを作成するには適切な図を適切なサイズで挿入することが不可欠です。
SLyDIFi 自身は図表を挿入するためのインターフェースを提供しません。
代わりにそれを `figbox` というパッケージに任せることによって柔軟かつ汎用性の高い図の挿入を実現しています。

## 図の挿入

`figbox` は Satyrographos で簡単にインストールできます。

```
opam install satysfi-figbox
satyrographos install
```

図表を挿入するには外部パッケージを用います。
まずはファイルの最初に以下の `@require` を書きましょう。

```
@require: figbox/figbox
```


詳しい使い方は `figbox` パッケージのマニュアルを参照してください。

## 表の挿入

表の挿入は `easytable/easytable` パッケージを用いることをおすすめします。
Satyrographos で簡単にインストールできます。

```
opam install satysfi-easytable
satyrographos install
```

詳しい使い方は `easytable` パッケージのマニュアルを参照してください。
