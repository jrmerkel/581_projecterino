??    6      ?  I   |      ?  )   ?     ?  "   ?     
     (     9     T     t     ?     ?     ?  1   ?       ,   (  #   U  (   y     ?     ?     ?     ?  %   ?        '   7     _     n  #   ?  "   ?     ?     ?     ?               2  #   O     s  "   ?     ?  5   ?  !   ?     	     -	     D	     V	     t	  "   ?	     ?	  '  ?	  &  ?
  H       ]     a     ?  #   ?  ?  ?  *   S     ~  '   ?  $   ?     ?  #   ?  -     #   M     q     ?     ?  8   ?       (        ?  (   [  	   ?  '   ?     ?     ?  -   ?     $  #   7     [     j     z  &   ?     ?     ?     ?                0     N     m     ?  %   ?  '   ?     ?          "     5     E     `     p     ?  .  ?  z  ?  <  Q!  	   ?"     ?"      ?"     ?"                .   %       2   6                             	         1           *      +   )         (             !   ,   3   0            /   -         "      
       4                               #      5   &                    '                       $      %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 %s %s for %s compiled on %s %s
 %s not a valid DEB package. *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create FILE* Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s Failed to unlink %s IO to subprocess/file failed Internal error, failed to create %s No selections matched Package extension list is too long Problem unlinking %s Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-extracttemplates file1 [file2 ...]

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
  -o=?  Set an arbitrary configuration option Usage: apt-sortpkgs [options] file1 [file2 ...]

apt-sortpkgs is a simple tool to sort package files. The -s option is used
to indicate what kind of file it is.

Options:
  -h   This help text
  -s   Use source file sorting
  -c=? Read this configuration file
  -o=? Set an arbitrary configuration option, eg -o dir::cache=/tmp
 W:  W: Unable to read directory %s
 W: Unable to stat %s
 realloc - Failed to allocate memory Project-Id-Version: 0.5.4
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2013-06-04 11:24+0200
PO-Revision-Date: 2009-01-28 10:41+0800
Last-Translator: Tetralet <tetralet@gmail.com>
Language-Team: Debian-user in Chinese [Big5] <debian-chinese-big5@lists.debian.org>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
   %s 也沒有二元碼重新定義項目
   %s 沒有重新定義項目
   %s 沒有原始碼重新定義項目
   %s 的維護者是 %s，而非 %s
  DeLink %s [%s]
  達到了 DeLink 的上限 %sB。
 %s %s 是用於 %s 並在 %s %s 上編譯的
 %s 並不是正確的 DEB 套件。 *** 無法將 %s 連結到 %s 套件檔裡沒有套件資訊 套件檔沒有 control 記錄 無法取得 debconf 版本。是否有安裝 debconf？ 壓縮子程序 要壓縮輸出 %s 需搭配壓縮動作 DB 過舊，嘗試升級 %s DB 已損毀，檔案被更名為 %s.old 錯誤： 錯誤：套用到檔案時發生錯誤 處理內容 %s 時發生錯誤 處理目錄 %s 時發生錯誤 寫入標頭資訊到內容檔時發生錯誤 無法建立 FILE* 無法和子程序建立 IPC 管線 fork 時失敗 無法開啟 %s 無法讀取重新定義檔 %s 在計算 MD5 時無法讀取到資料 無法讀取連結 %s 無法將 %s 更名為 %s 無法解析 %s 無法取得 %s 的狀態 無法移除連結 %s 和子程序/檔案 IO 失敗 內部錯誤，無法建立 %s 找不到符合的選項 套件延伸列表過長 在取消 %s 的連結時發生問題 套件檔案組 `%s' 少了部份檔案 原始碼的延伸列表太長 無法走訪目錄樹 無法取得遊標 無法開啟 %s 無法開啟 DB 檔 %s: %s 無法寫入 %s 未知的壓縮演算法 '%s' 未知的套件記錄！ 用法：apt-extracttemplates 檔案1 [檔案2 ...]

apt-extracttemplates 是用來從 debian 套件中解壓出設定檔和模板資訊
的工具

選項
  -h   本幫助訊息。
  -t   指定暫存目錄
  -c=? 讀取指定的設定檔
  -o=? 指定任意的設定選項，例如:-o dir::cache=/tmp
 用法：apt-ftparchive [選項] 指令
指令：packages 二進制檔搜索路徑 [重新定義檔 [路徑前綴]]
      sources 原始碼搜索路徑 [重新定義檔 [路徑前綴]]
      contents 搜索路徑
      release 搜索路徑
      generate 設定檔 [群組]
      clean 設定檔

apt-ftparchive 可用來替 Debian 套件庫建立索引檔。它支援了從全
自動化到足以替代 dpkg-scanpackages 及 dpkg-scansources 所提供
的所有功能等等各式各樣建立索引的方式。apt-ftparchive 會根據 .deb 檔案樹建立 Package 檔。Package 檔
裡不僅包含了每個套件的 control 資料的內容，還包含了 MD5 檢驗
碼和檔案大小。它還支援了重新定義檔，可用來強制指定優先等級及
其所屬的類別。

而同樣的，apt-ftparchive 也能根據 .dsc 檔案樹生成 Source 檔。
可用 --source-override 選項來指定一個 src 重新定義檔。

應當在檔案樹的根目錄下執行 'packages' 和 'source' 指令。
二進制檔的搜索路徑必須指向遞迴搜索的底層，且在重新定義檔裡必
須包含 override 旗標。若指定了路徑前綴時，則會被附加到檔案名
稱這個欄位裡。以 Debian 套件庫為例:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

選項：
  -h    本幫助說明
  --md5 控制如何產生 MD5 檢驗碼
  -s=?  原始碼的重新定義檔
  -q    安靜模式
  -d=?  指定搭配的快取資料庫
  --no-delink 啟用 DeLinking 模式
  --contents  產生控制內容檔
  -c=?  讀取指定的設定檔
  -o=?  指定任意的設定選項 用法：apt-sortpkgs [選項] 檔案1 [檔案2 ...]

apt-sortpkgs 是用來排序套件檔的簡單工具。-s 選項是用來指定它的檔案類型。

選項：
  -h   本幫助訊息。
  -s   根據原始檔排序
  -c=? 讀取指定的設定檔
  -o=? 指定任意的設定選項，例如:-o dir::cache=/tmp
 警告： 警告：無法讀取目錄 %s
 警告：無法取得 %s 狀態
 realloc - 無法配置記憶體 