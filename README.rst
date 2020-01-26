SLyDIFi
#######

SLyDIFi は， `SATySFi <https://github.com/gfngfn/SATySFi>`_ でスライドを作成するためのパッケージ（クラスファイル）です．
LaTeX でいうところの beamer に相当しています（機能は本当に最低限のものしかありませんが）．

Installation & Usage
====================

以下，SATySFi が手元の環境にインストールされていることを前提とします．
クラスファイル作成者の限られた環境下でしか試していませんが，
以下の手順を踏めばだいたい動くのではないかと思います．

1. 適当なディレクトリに本リポジトリをクローンし，以下を実行::

      git clone https://github.com/monaqa/slydifi.git
      cd slydifi
      ./install.sh

2. 適当なディレクトリ下で，以下のように記述された ``minimum.saty`` を用意::

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

3. これで SATySFi を走らせて以下のような PDF が生成されたら，正常に動いています．
   なお， 必要なフォントは適宜準備してください．

.. image:: fig/slydifi-test.png

SLyDIFi でできること
====================

タイトルスライド，セクションスライド，通常のスライドを作成することができます．
スライド内では，段落，箇条書き，図表の挿入，脚注の挿入を行うことができます．
インラインテキストマークアップとして，最低限必要と思われる ``\textbf``, ``\emph``, ``\link`` などを用意しています．

ToDo
====

* `satyrographos <https://github.com/na4zagin3/satyrographos>`_ への対応
* オーバーレイ（アニメーション）機能

