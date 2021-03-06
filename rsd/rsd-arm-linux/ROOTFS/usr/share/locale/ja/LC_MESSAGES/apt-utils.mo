??    ;      ?  O   ?        )   	     3  "   O     r     ?     ?     ?     ?     ?          1  1   O     ?  ,   ?  m   ?  #   +  (   O     x     |     ?     ?  %   ?     ?  '        5     D  #   V  "   z     ?     ?     ?     ?     ?     	  #   %	  "   I	  "   l	  "   ?	     ?	  "   ?	     ?	  5    
  !   6
     X
     l
     ?
     ?
     ?
  "   ?
     ?
  '    &  ,  V  S  H  ?     ?     ?       #   -  ?  Q  =     1   V  :   ?  5   ?  #   ?  :     *   X  ;   ?  8   ?  K   ?  B   D  h   ?     ?  4     ?   ;  ?   ?  M   "     p  6   |  9   ?  C   ?  W   1  $   ?  A   ?     ?  '     @   3  4   t  0   ?  1   ?  !     3   .  *   b  ;   ?  3   ?  $   ?  $   "  $   G  0   l  3   ?  3   ?  ]      -   c   -   ?   $   ?   #   ?   8   !     A!  /   ]!  +   ?!  ?  ?!  ,  s#  ?  ?+  ?  ?-     ?/  1   ?/  -   ?/  7   0     .   &                        +              7       :      9           !   5              3   1               '   	         ,              "          $   4       ;         %   )   -   6              /            #       8       2   (                 *   0                      
         %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 %s %s for %s compiled on %s %s
 %s not a valid DEB package. *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB format is invalid. If you upgraded from an older version of apt, please remove and re-create the database. DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create FILE* Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s Failed to unlink %s IO to subprocess/file failed Internal error, failed to create %s Malformed override %s line %llu #1 Malformed override %s line %llu #2 Malformed override %s line %llu #3 No selections matched Package extension list is too long Problem unlinking %s Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-extracttemplates file1 [file2 ...]

apt-extracttemplates is a tool to extract config and template info
from debian packages

Options:
  -h   This help text
  -t   Set the temp dir
  -c=? Read this configuration file
  -o=? Set an arbitrary configuration option, eg -o dir::cache=/tmp
 Usage: apt-ftparchive [options] command
Commands: packages binarypath [overridefile [pathprefix]]
          sources srcpath [overridefile [pathprefix]]
          contents path
          release path
          generate config [groups]
          clean config

apt-ftparchive generates index files for Debian archives. It supports
many styles of generation from fully automated to functional replacements
for dpkg-scanpackages and dpkg-scansources

apt-ftparchive generates Package files from a tree of .debs. The
Package file contains the contents of all the control fields from
each package as well as the MD5 hash and filesize. An override file
is supported to force the value of Priority and Section.

Similarly apt-ftparchive generates Sources files from a tree of .dscs.
The --source-override option can be used to specify a src override file

The 'packages' and 'sources' command should be run in the root of the
tree. BinaryPath should point to the base of the recursive search and 
override file should contain the override flags. Pathprefix is
appended to the filename fields if present. Example usage from the 
Debian archive:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Options:
  -h    This help text
  --md5 Control MD5 generation
  -s=?  Source override file
  -q    Quiet
  -d=?  Select the optional caching database
  --no-delink Enable delinking debug mode
  --contents  Control contents file generation
  -c=?  Read this configuration file
  -o=?  Set an arbitrary configuration option Usage: apt-internal-solver

apt-internal-solver is an interface to use the current internal
like an external resolver for the APT family for debugging or alike

Options:
  -h  This help text.
  -q  Loggable output - no progress indicator
  -c=? Read this configuration file
  -o=? Set an arbitrary configuration option, eg -o dir::cache=/tmp
 Usage: apt-sortpkgs [options] file1 [file2 ...]

apt-sortpkgs is a simple tool to sort package files. The -s option is used
to indicate what kind of file it is.

Options:
  -h   This help text
  -s   Use source file sorting
  -c=? Read this configuration file
  -o=? Set an arbitrary configuration option, eg -o dir::cache=/tmp
 W:  W: Unable to read directory %s
 W: Unable to stat %s
 realloc - Failed to allocate memory Project-Id-Version: apt 0.9.7.1
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2013-06-04 11:24+0200
PO-Revision-Date: 2012-07-01 00:14+0900
Last-Translator: Kenshi Muto <kmuto@debian.org>
Language-Team: Debian Japanese List <debian-japanese@lists.debian.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8 bit
Plural-Forms: Plural-Forms: nplurals=1; plural=0;
   %s にバイナリ override エントリがありません
   %s に override エントリがありません
   %s にソース override エントリがありません
   %1$s メンテナは %3$s ではなく %2$s です
  リンク %s [%s] を外します
  リンクを外す制限の %sB に到達しました。
 %s %s for %s コンパイル日時: %s %s
 %s は正しい DEB パッケージではありません。 *** %s を %s にリンクするのに失敗しました アーカイブにパッケージフィールドがありませんでした アーカイブにコントロールレコードがありません debconf のバージョンを取得できません。debconf はインストールされていますか? 圧縮子プロセス 圧縮出力 %s には圧縮セットが必要です DB フォーマットが無効です。apt の古いバージョンから更新したのであれば、データベースを削除し、再作成してください。 DB が古いため、%s のアップグレードを試みます DB が壊れていたため、ファイル名を %s.old に変更しました エラー:  エラー: エラーが適用されるファイルは  Contents %s の処理中にエラーが発生しました ディレクトリ %s の処理中にエラーが発生しました Contents ファイルへのヘッダの書き込み中にエラーが発生しました FILE* の作成に失敗しました 子プロセスへの IPC パイプの作成に失敗しました fork に失敗しました %s のオープンに失敗しました override ファイル %s を読み込むのに失敗しました MD5 の計算中に読み込みに失敗しました %s のリンク読み取りに失敗しました %s を %s に名前変更できませんでした %s の解決に失敗しました %s の状態を取得するのに失敗しました %s のリンク解除に失敗しました 子プロセス/ファイルへの IO が失敗しました 内部エラー、%s の作成に失敗しました 不正な override %s %llu 行目 #1 不正な override %s %llu 行目 #2 不正な override %s %llu 行目 #3 選択にマッチするものがありません パッケージ拡張子リストが長すぎます %s のリンク解除で問題が発生しました パッケージファイルグループ `%s' に見当たらないファイルがあります ソース拡張子リストが長すぎます ツリー内での移動に失敗しました カーソルを取得できません '%s' をオープンできません DB ファイル %s を開くことができません: %s %s に書き込めません '%s' は未知の圧縮アルゴリズムです 不明なパッケージレコードです! 使用方法: apt-extracttemplates ファイル名1 [ファイル名2 ...]

apt-extracttemplates は debian パッケージから設定とテンプレート情報を
抽出するためのツールです

オプション:
  -h   このヘルプを表示する
  -t   一時ディレクトリを指定する
  -c=? 指定した設定ファイルを読み込む
  -o=? 指定した設定オプションを適用する (例: -o dir::cache=/tmp)
 使用方法: apt-ftparchive [オプション] コマンド
コマンド: packages binarypath [overridefile [pathprefix]]
          sources srcpath [overridefile [pathprefix]]
          contents path
          release path
          generate config [groups]
          clean config

apt-ftparchive は Debian アーカイブ用のインデックスファイルを生成しま
す。全自動のものから、dpkg-scanpackages と dpkg-scansources の代替機能
となるものまで、多くの生成方法をサポートしています。

apt-ftparchive は .deb のツリーから Packages ファイルを生成します。
Packages ファイルは MD5 ハッシュやファイルサイズに加えて、各パッケージ
のすべての制御フィールドの内容を含んでいます。Priority と Section の値
を強制するために override ファイルがサポートされています。

同様に apt-ftparchive は .dsc のツリーから Sources ファイルを生成しま
す。--source-override オプションを使用するとソース override ファイルを
指定できます。

'packages' および 'sources' コマンドはツリーのルートで実行する必要があ
ります。BinaryPath には再帰検索のベースディレクトリを指定し、override 
ファイルは override フラグを含んでいる必要があります。もし pathprefix 
が存在すればファイル名フィールドに付加されます。debian アーカイブでの
使用方法の例:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

オプション:
  -h このヘルプを表示する
  --md5 MD5 の生成を制御する
  -s=?  ソース override ファイル
  -q    表示を抑制する
  -d=?  オプションのキャッシュデータベースを選択する
  --no-delink delinking デバッグモードを有効にする
  --contents  contents ファイルの生成を制御する
  -c=? 指定の設定ファイルを読む
  -o=? 任意の設定オプションを設定する 使用方法: apt-internal-solver

apt-internal-solver は、デバッグなどの用途で、現在の内部リゾルバを
APT ファミリの外部リゾルバのように使うためのインターフェイスです。

オプション:
  -h   このヘルプを表示する
  -q   ログファイルに出力可能な形式にする - プログレス表示をしない
  -c=? 指定した設定ファイルを読み込む
  -o=? 指定した設定オプションを適用する (例: -o dir::cache=/tmp)
 使用方法: apt-sortpkgs [オプション] ファイル名1 [ファイル名2 ...]

apt-sortpkgs はパッケージファイルをソートするための簡単なツールです。
-s オプションはファイルの種類を示すために使用されます。

オプション:
  -h   このヘルプを表示する
  -s   ソースファイルソートを使用する
  -c=? 指定した設定ファイルを読み込む
  -o=? 指定した設定オプションを適用する (例: -o dir::cache=/tmp)
 警告:  警告: ディレクトリ %s が読めません
 警告: %s の状態を取得できません
 realloc - メモリの割り当てに失敗しました 