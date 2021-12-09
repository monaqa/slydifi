HISTORY
=======

# 0.5.0 (2021/12/09)

* `enumitem` の依存バージョンを `v3.0.1` に変更
* Arctic テーマにおいてデフォルトで使用するフォントを IBM Plex Sans JP に変更
* Arctic Noto テーマを追加

# 0.4.0 (2021/07/09)

* SlydifiScheme 及び各テーマファイルの実装を大幅に変更
  * `Frame` モジュールを用いて、フレームの要素を引き継げるようにした（PowerPoint のスライドマスターのような機能）
  * 文書ファイル内でスライドの設定（フォント、色、マージンなど）を動的に変更できるようにした
  * `SlydifiGraphics` モジュールの追加。複数行からなる見出しなどをテーマファイル内で簡単に実装できるようにした
* Arctic テーマの追加
* `+namedframe` / `+againframe` の追加
* `debug-mode` の廃止
* Overlay の関数名変更 (#19, thanks to @na4zagin3)

# 0.3.1 (2021/05/21)

* figbox パッケージを外部パッケージに切り出し、そちらへの依存に変更

# 0.2.0 (2020/09/12)

* overlay の追加
* FigBox を用いた柔軟な図の配置
* satysfi-enumitem への依存を追加（SLyDIFi 独自の enumitem パッケージを削除）
* SlydifiScheme のインターフェースを一部変更
* その他，標準テーマの仕様変更

# 0.1.0 (2020/01/27)

* 本体とテーマの分離
* slydifi パッケージを satyrographos でインストールできるように
