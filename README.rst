SLyDIFi
#######

SLyDIFi は， `SATySFi <https://github.com/gfngfn/SATySFi>`_ でスライドを作成するためのパッケージ（クラスファイル）です．
LaTeX でいうところの beamer に相当しています（機能は本当に最低限のものしかありませんが）．

Installation & Usage
====================

以下，SATySFi が手元の環境にインストールされていることを前提とします．
クラスファイル作成者の限られた環境下でしか試していませんが，
以下の手順を踏めばだいたい動くのではないかと思います．

1. ``~/.satysfi/dist/packages/`` 以下に本リポジトリをクローン
   （ディレクトリ名を ``slydifi`` とする）

2. 適当なディレクトリ下で，以下のように記述された ``minimum.saty`` を用意::

      @require: slydifi/slydifi

      Slydifi.document(|
        draft-mode = false;
        fonts = (|
          frame-title-cjk = `mplus-sans-b`;    % 自分が持っているフォントに変える
          normal-text-cjk  = `mplus-sans-r`;   % 自分が持っているフォントに変える
          frame-title-latin = `mplus-sans-b`;  % 自分が持っているフォントに変える
          normal-text-latin  = `mplus-sans-r`; % 自分が持っているフォントに変える
          mono-text-latin  = `mplus-mono-r`;   % 自分が持っているフォントに変える
          font-ratio-cjk = 1.0;
        |);
      |)'<
         +frame{\SLyDIFi; のテスト}<
           +p{Hello, \SATySFi; and \SLyDIFi;!}
         >
      >

3. これで以下のような PDF が生成されたら，正常に動いています．

.. image:: fig/slydifi-test.png

SLyDIFi でできること
====================

タイトルスライド，セクションスライド，通常のスライドを作成することができます．
スライド内では，段落，箇条書き，図表の挿入，脚注の挿入を行うことができます．
インラインテキストマークアップとして，最低限必要と思われる ``\textbf``, ``\emph``, ``\link`` を用意しています．

ToDo
====

* `satyrographos <https://github.com/na4zagin3/satyrographos>`_ への対応
* オーバーレイ（アニメーション）機能
* テーマのカスタマイズ機能

