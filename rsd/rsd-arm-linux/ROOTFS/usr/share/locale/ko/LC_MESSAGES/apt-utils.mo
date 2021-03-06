??    7      ?  I   ?      ?  )   ?     ?  "   ?          8     I     d     ?     ?     ?     ?  1   ?     )  ,   8  m   e  #   ?  (   ?           $     =     Z  %   x     ?  '   ?     ?     ?  #   ?  "   "     E     [     u     ?     ?     ?  #   ?     ?  "   	     *	  5   ?	  !   u	     ?	     ?	     ?	     ?	     ?	  "   
     +
  '  C
  &  k  H  ?     ?     ?     ?  #     ?  9  2   ?  +     2   >  *   q     ?  5   ?  "   ?  3     9   D  0   ~  0   ?  I   ?     *  =   E  ?   ?  E     A   W     ?  G   ?  <   ?  ?   '  D   g  (   ?  N   ?      $  )   E  2   o  7   ?  1   ?  A     2   N  ,   ?  ,   ?  C   ?  1         Q  +   r  6   ?  @   ?  (     )   ?  $   i     ?  0   ?     ?  0   ?      #  T  D  ?  ?  ?  '     ?(  3   ?(  0   ?(  9   )                /   &       3   7                         6   	         2           +      ,   *         )             "   -   4   1            0   .         #      
       5   !                                 $   '                     (                       %      %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 %s %s for %s compiled on %s %s
 %s not a valid DEB package. *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB format is invalid. If you upgraded from an older version of apt, please remove and re-create the database. DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create FILE* Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s Failed to unlink %s IO to subprocess/file failed Internal error, failed to create %s No selections matched Package extension list is too long Problem unlinking %s Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-extracttemplates file1 [file2 ...]

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
 realloc - Failed to allocate memory Project-Id-Version: apt
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2013-06-04 11:24+0200
PO-Revision-Date: 2010-08-30 02:31+0900
Last-Translator: Changwoo Ryu <cwryu@debian.org>
Language-Team: Korean <debian-l10n-korean@lists.debian.org>
Language: ko
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
   %s에는 binary override 항목이 없습니다
   %s에는 override 항목이 없습니다
   %s에는 source override 항목이 없습니다
   %s 관리자가 %s입니다 (%s 아님)
  링크 %s [%s] 없애기
  DeLink 한계값 %s바이트에 도달했습니다.
 %s %s(%s), 컴파일 시각 %s %s
 %s은(는) 올바른 DEB 패키지가 아닙니다. *** %s 파일을 %s에 링크하는데 실패했습니다 아카이브에 패키지 필드가 없습니다 아카이브에 컨트롤 기록이 없습니다 debconf 버전을 알 수 없습니다. debconf가 설치되었습니까? 압축 하위 프로세스 압축된 출력물 %s에는 압축 세트가 필요합니다 DB 형식이 잘못되었습니다. APT 예전 버전에서 업그레이드했다면, 데이터베이스를 지우고 다시 만드십시오. DB가 오래되었습니다. %s의 업그레이드를 시도합니다 DB가 망가졌습니다. 파일 이름을 %s.old로 바꿉니다 오류:  오류: 다음 파일에 적용하는데 오류가 발생했습니다:  %s 컨텐츠를 처리하는데 오류가 발생했습니다 %s 디렉터리를 처리하는데 오류가 발생했습니다 컨텐츠 파일에 헤더를 쓰는데 오류가 발생했습니다 FILE*를 만드는데 실패했습니다 하위 프로세스에 대한 IPC 파이프를 만드는데 실패했습니다 fork하는데 실패했습니다 %s 파일을 여는데 실패했습니다 %s override 파일을 읽는데 실패했습니다 MD5를 계산하는 동안 읽는데 실패했습니다 %s 파일에 readlink하는데 실패했습니다 %s 파일의 이름을 %s(으)로 바꾸는데 실패했습니다 %s의 경로를 알아내는데 실패했습니다 %s의 정보를 읽는데 실패했습니다 %s 파일을 지우는데 실패했습니다 하위 프로세스/파일에 입출력하는데 실패했습니다 내부 오류, %s 만드는데 실패했습니다 맞는 패키지가 없습니다 패키지 확장 목록이 너무 깁니다 %s의 링크를 해제하는데 문제가 있습니다 `%s' 패키지 파일 그룹에 몇몇 파일이 빠졌습니다 소스 확장 목록이 너무 깁니다 트리에서 이동이 실패했습니다 커서를 가져올 수 없습니다 %s 열 수 없습니다 DB 파일, %s 파일을 열 수 없습니다: %s %s에 쓸 수 없습니다 '%s' 압축 알고리즘을 알 수 없습니다 알 수 없는 패키지 기록! 사용법: apt-extracttemplates 파일1 [파일2 ...]

apt-extracttemplates는 데비안 패키지에서 설정 및 서식 정보를 뽑아내는
도구입니다

옵션:
  -h   이 도움말
  -t   임시 디렉토리 설정
  -c=? 설정 파일을 읽습니다
  -o=? 임의의 옵션을 설정합니다. 예를 들어 -o dir::cache=/tmp
 사용법: apt-ftparchive [옵션] 명령
명령: packages 바이너리경로 [override파일 [경로앞부분]]
      sources 소스경로 [override파일 [경로앞부분]]
      contents 경로
      release 경로
      generate 설정 [그룹]
      clean 설정

apt-ftparchive는 데비안 아카이브용 인덱스 파일을 만듭니다. 이 프로그램은
여러 종류의 인덱스 파일 만드는 작업을 지원합니다 -- 완전 자동화 작업부터
dpkg-scanpackages와 dpkg-scansources의 기능을 대체하기도 합니다.

apt-ftparchive는 .deb 파일의 트리에서부터 Package 파일을 만듭니다.
Package 파일에는 각 패키지의 모든 제어 필드는 물론 MD5 해시와 파일
크기도 들어 있습니다. override 파일을 이용해 Priority와 Section의 값을 
강제로 설정할 수 있습니다

이와 비슷하게 apt-ftparchive는 .dsc 파일의 트리에서 Sources 파일을
만듭니다. --source-override 옵션을 이용해 소스 override 파일을
지정할 수 있습니다.

'packages'와 'sources' 명령은 해당 트리의 맨 위에서 실행해야 합니다.
"바이너리경로"는 검색할 때의 기준 위치를 가리키며 "override파일"에는
override 플래그들을 담고 있습니다. "경로앞부분"은 각 파일 이름
필드의 앞에 더해 집니다. 데비안 아카이브에 있는 예를 하나 들자면:

   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

옵션:
  -h    이 도움말
  --md5 MD5 만들기 작업을 제어합니다
  -s=?  소스 override 파일
  -q    조용히
  -d=?  캐시 데이터베이스를 직접 설정합니다
  --no-delink 디버깅 모드 지우기를 사용합니다
  --contents  컨텐츠 파일을 만드는 적업을 제어합니다
  -c=?  이 설정 파일을 읽습니다
  -o=?  임의의 옵션을 설정합니다 사용법: apt-sortpkgs [옵션] 파일1 [파일2 ...]

apt-sortpkgs는 패키지 파일을 정렬하는 간단한 도구입니다. -s 옵션은 무슨 파일인지
알아 내는데 쓰입니다.

옵션:
  -h   이 도움말
  -s   소스 파일 정렬을 사용합니다
  -c=? 이 설정 파일을 읽습니다
  -o=? 임의의 옵션을 설정합니다. 예를 들어 -o dir::cache=/tmp
 경고:  경고: %s 디렉터리를 읽을 수 없습니다
 경고: %s의 정보를 읽을 수 없습니다
 realloc - 메모리를 할당하는데 실패했습니다 