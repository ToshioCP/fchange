日本語の解説が後半にあります。

### What is this program?

The program 'fchange' changes some characters in a file to other characters.
It is useful when you copy files in a Linux file system to a Windows file system.
The characters allowed as a filename are different between the two file systems.
So, it is the best practice not to use such illegal characters for filename.
This programs changes the following characters.

- " " => "\_"
- TAB => "\_"
- "?" => "\_"
- BACK\_SLASH => "\_"
- ":" => "\_"
- DOUBLE_QUOTE => "\_"
- "*" => "\_"
- "<" => "\_"
- ">" => "\_"
- "|" => "_"
- "①" => "1"
- "②" => "2"
- "③" => "3"
- "④" => "4"
- "⑤" => "5"
- "⑥" => "6"
- "⑦" => "7"
- "⑧" => "8"
- "⑨" => "9"

The characters are defined in the Yaml file `lib/fchange/change_def.yaml`.
It is possible to change the characters by modifying it.

### Prerequisites

- Linux OS
- Ruby 3.2.2 or later (maybe older version is also OK)

### installation

1. Click the 'Code' button, then click 'Download ZIP' in the small dialog.
2. Unzip the downloaded Zip file, then a new directory 'fchange' will be created.
3. Type `gem build fchange` under the directory `fchange`, then the gem file `fchange-0.1.gem` will be created. The number `0.1` is the version of Fchange.
4. Type `gem install fchange-0.1`.

### How to use the program.

Start the terminal and type:

```
$ fchange file|directory
```

If the argument is a file, the characters in the filename will be replaced.
If the argument is a directory the replacement will be done recursively.

For example,

```
$ ls
abc?.txt
$ fchange abc?.txt
$ ls
abc_.txt
```

### Rakefile

Change your current directory to `fchange` which are decompressed from the zip file.
You can do the following.

- `rake rdoc`: Create documents under `docs` directory (This is the default, so you can just type `rake`).
- `rake test`: Run test programs under `test` directory.

### License

GPL ver 3 or later.
See [License.md](License.md) for details.

### これは何のプログラム？

プログラムfcahngeはファイルの中のいくつかの文字を変更します。
これはLinuxファイルシステム中のファイルをWindowsファイルシステムにコピーするときに役にたちます。
それぞれのファイルシステムで使用許可されている文字は異なります。
ですから、それらの不許可文字を避けてファイル名をつけるのが最も良い方法です。
しかし、そうでなかった場合、このプログラムを用いることで不許可文字を別の許可文字に変更することができます。

- " " => "\_"
- TAB => "\_"
- "?" => "\_"
- BACK\_SLASH => "\_"
- ":" => "\_"
- DOUBLE_QUOTE => "\_"
- "*" => "\_"
- "<" => "\_"
- ">" => "\_"
- "|" => "_"
- "①" => "1"
- "②" => "2"
- "③" => "3"
- "④" => "4"
- "⑤" => "5"
- "⑥" => "6"
- "⑦" => "7"
- "⑧" => "8"
- "⑨" => "9"

これらの文字変更規則は`lib/fchange/change_def.yaml`というYamlファイルで定義されています。
このファイルを編集し、文字変更規則をカスタマイズすることができます。

### 条件

- Linux OS
- Ruby 3.2.2以降（以前のバージョンもおそらくOK）

### インストール

1. リポジトリのCodeボタンをクリック'し、小さなダイアログのDownload ZIPをクリックする
2. ダウンロードしたzipファイルを解凍すると新しくfchangeという名前のディレクトリが作られる
3. カレントディレクトリをfchangeに移動し、`gem build fchange`とタイプすると、gemファイル`fchange-0.1.gem`が生成される。ファイル名中の`0.1`はfchangeのバージョン
4. `gem install fchange-0.1`とタイプする

### 使い方

端末を立ち上げる。

```
$ fchange ファイルまたはディレクトリ
```

引数がファイルであれば、そのファイル名の中の変更対象文字が置き換えられる。
引数がディレクトリであれば、そのディレクトリ以下のすべてのファイルに対して文字変更が行われる。

例

```
$ ls
abc?.txt
$ fchange abc?.txt
$ ls
abc_.txt
```

### Rakefile

カレントディレクトリをZipファイルを解凍してできた`fchange`に移動する。
以下のことができる。

- `rake rdoc`: ドキュメントを`docs`ディレクトリに作成（これはデフォルトなので単に`rake`だけでもよい）
- `rake test`: `test`ディレクトリ以下のテストプログラムを実行する

### License

GPLバージョン3またはそれ以後のバージョン。
詳しくは[License.md](License.md)を参照。
