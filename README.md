# SLyDIFi

SLyDIFi は， [SATySFi](https://github.com/gfngfn/SATySFi) でスライドを作成するためのパッケージ（クラスファイル）です．
LaTeX でいうところの beamer に相当しています（機能は最低限のもののみ用意しています）．

## Installation & Usage

[Satyrographos](https://github.com/gfngfn/SATySFi/wiki/Satyrographos)
を用いてインストールすることが出来ます．
より具体的には， Satyrographos の入った環境で以下のように打てばインストールできます:


```
opam install satysfi-class-slydifi
satyrographos install
```

正しくインストールされたかどうか動作を確認したければ，
適当なディレクトリ下で，以下のように記述された `minimum.saty` を用意してください:

```
@require: code
@require: annot
@require: list
@require: slydifi/theme/plain

SlydifiPlain.document(|
  draft-mode = false;
|)'<
  +frame{\SLyDIFi; のテスト}<
    +p{Hello, \SLyDIFi;!}
  >
>
```

これで SATySFi を走らせて以下のような PDF が生成されたら，正常に動いています
（必要なフォントは適宜準備してください）．

![slydifi-test](fig/slydifi-test.jpg)

## Gitpodを使ったデモ

[Gitpod](https://gitpod.io) を使って，SLyDIFi の使用感を試すことができます．

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/monaqa/slydifi)

`demo/demo.saty` を自由に編集し，ターミナル上で `satysfi demo/demo.saty` とすることでPDF (`demo/demo.pdf`) を生成できます．
[SATySFi の docker image](https://github.com/amutake/satysfi-docker) を使用しているため，
`opam` / `satyrographos` コマンドで他のパッケージを入れることもできます．

![gitpod-demo-gif](https://user-images.githubusercontent.com/48883418/93006630-8d70c200-f599-11ea-8777-d3d5afbacf25.gif)

## SLyDIFi でできること

SLyDIFi は以下の機能を有しています．

### フレームの作成

標準のスライドテーマでは，以下の3種類のスライドを用意しています，

* 通常のスライド
* タイトルスライド
* セクションスライド

具体的なレイアウトについては，後述の「テーマの選択と変更」を参照してください．

### スライド内でのマークアップ

スライド内では，以下のマークアップを行うことが出来ます．

* 段落
* 箇条書き
* 図表の挿入
* 脚注の挿入

また，インラインテキストマークアップとして以下のコマンドを用意しています．

* ``\textbf``
* ``\emph``
* ``\link``

### テーマの選択と変更

SLyDIFi はテーマの変更に対応しています．
標準では現時点で3種類のテーマを用意しています．
テーマは自作することも可能ですし，既存のテーマを自身でカスタマイズすることもできます
（ただし，そのためのドキュメントはまだ作成されていません）．

以下は標準で用意されたテーマの外観と導入方法です．

#### Plain

装飾のないシンプルなテーマ．

![plain-title](fig/plain-title.jpg)

![plain-section](fig/plain-section.jpg)

![plain-frame](fig/plain-frame.jpg)

以下のように記述すれば用いることが出来ます:

```
@require: class-slydifi/theme/plain

SlydifiPlain.document(|
  draft-mode = false;
|)'<

（本文）

>
```

#### Hakodate

[Gruvbox](https://github.com/gruvbox-community/gruvbox)
の色をベースにしたテーマ．

![hakodate-title](fig/hakodate-title.jpg)

![hakodate-section](fig/hakodate-section.jpg)

![hakodate-frame](fig/hakodate-frame.jpg)

以下のように記述すれば用いることが出来ます:

```
@require: class-slydifi/theme/hakodate

SlydifiHakodate.document(|
  draft-mode = false;
|)'<

（本文）

>
```

使用するには [M+ フォント](https://mplus-fonts.osdn.jp/about.html)
のインストールと，hash ファイルによる紐付けが必要です．
このあたりはいずれ別途パッケージ化するかもしれません．


#### Akasaka

灰色のスタンダードなテーマ．

![akasaka-title](fig/akasaka-title.jpg)

![akasaka-section](fig/akasaka-section.jpg)

![akasaka-frame](fig/akasaka-frame.jpg)

以下のように記述すれば用いることが出来ます:

```
@require: class-slydifi/theme/akasaka

SlydifiAkasaka.document(|
  draft-mode = false;
  header-text = {（ヘッダに付与したいテキスト）};
|)'<

（本文）

>
```

使用するには [Noto Sans](https://www.google.com/get/noto/) 系のフォント
（Noto Sans 及び Noto Sans CJK JP）
のインストールと，hash ファイルによる紐付けが必要です．
これは既に satyrographos に登録されており，以下のコマンドでインストール可能です:

```
opam install satysfi-fonts-noto-sans
opam install satysfi-fonts-noto-sans-cjk-jp
satyrographos install
```

詳細は
[SATySFi-fonts-noto-sans](https://github.com/zeptometer/SATySFi-fonts-noto-sans)
及び
[SATySFi-fonts-noto-sans-cjk-jp](https://github.com/zeptometer/SATySFi-fonts-noto-sans-cjk-jp)
を参照．


## ToDo

* block 環境に相当するコマンド
