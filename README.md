FastMeet - The Most Simple Instant Messaging Ever
=================================================

バッチファイルで書かれた IRC-like な超原始的チャットツールです。
フリーウェアの使用が禁止された環境でコミュニケーションを図るため、30 分くらいで開発されました :)

環境
----
* Windows 7 で動作確認をしています。
* Windows XP 以降で動作するはずです。
* 一つの SMB 共有が必要です。

使用方法
--------
1. FastMeet ディレクトリを任意の SMB 共有に配置します。
2. SystemSetup.vbs を実行します。(ショートカットを作成するだけなので手動でも可)
3. "Bootstrap/Start FastMeet.cmd" ファイルの FASTMEET_SERVER および FASTMEET_DIR を書き換えて、ユーザに配布します。

注意
----
* 書込みの度にログファイル全体がネットワークを流れますが、常識的な利用の範疇では、特に問題にはならないと思われます。

