??    5      ?  G   l      ?  )   ?     ?  "   ?     ?          !     <     X     t     ?  1   ?     ?  ,   ?  #     (   A     j     n     ?     ?  %   ?     ?  '   ?     '     6  #   H  "   l     ?     ?     ?     ?     ?     ?  #        ;  "   Q     t  5   ?  !   ?     ?     ?     	     	     <	  "   R	     u	  '  ?	  &  ?
  H  ?     %     )     I  #   _  ?  ?  Z     c   w  K   ?  G   '     o  B   ?  j   ?  V   .  N   ?  ?   ?  ?   V     ?  ?   ?  x   ?  }        ?  H   ?  E   ?  <   $  i   a  N   ?  ?     l   ?  ?   &  o   f  k   ?  Z   B  a   ?  N   ?  O   N  T   ?  t   ?  y   h  Z   ?  c   =   T   ?   ?   ?   `   ?!  4   ?!  H   "  7   _"  P   ?"  3   ?"  t   #  V   ?#    ?#  p  ?&    [5     ?8  G   ?8  2   '9  p   Z9     (   .       !         #       +   '   5   3   ,          "         /   2   $                                                             1          	   0         )                 4                 
                -                        &   %   *      %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
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
 realloc - Failed to allocate memory Project-Id-Version: apt_po_km
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2013-06-04 11:24+0200
PO-Revision-Date: 2006-10-10 09:48+0700
Last-Translator: Khoem Sokhem <khoemsokhem@khmeros.info>
Language-Team: Khmer <support@khmeros.info>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.2
   %s គ្មាន​ធាតុប​ដិសេធគោល​ពីរ​ដែរ
   %s គ្មាន​ធាតុធាតុបញ្ចូល​​បដិសេធឡើយ
   %s គ្មាន​ធាតុ​បដិសេធ​ប្រភព
   អ្នក​ថែទាំ %s គឺ %s មិនមែន​ %s
  DeLink %s [%s]
  DeLink កំណត់​នៃ​ការ​វាយ %sB ។
 %s មិនមែន​ជា​កញ្ចប់​ DEB ត្រឹមត្រូវ​ទេ​ ។ *** បាន​បរាជ័យ​ក្នុង​ការ​ត​ %s ទៅ %s ប័ណ្ណសារ​គ្មាន​វាល​កញ្ចប់​ ប័ណ្ណសារ​គ្មាន​កំណត់​ត្រា​ត្រួត​ពិនិត្យ​ទេ​ មិន​អាច​ទទួល​យក​កំណែ​ debconf  ។ តើ​ debconf បានដំឡើង​ឬ ? បង្ហាប់កូន ​ទិន្នផល​ដែល​បាន​បង្ហាប់​​ %s ត្រូវ​ការ​កំណត់​ការបង្ហាប់​ DB ចាស់​, កំពុង​ព្យាយាម​ធ្វើ​ឲ្យ %s ប្រសើរ​ឡើង DB បាន​ខូច​, ឯកសារ​បាន​ប្តូរ​ឈ្មោះ​ទៅ​ជា​ %s.old ។ E:  E: កំហុស​អនុវត្ត​លើ​ឯកសារ​ កំហុស​ដំណើរការ​មាតិកា​ %s ​កំហុស​ដំណើរការ​ថត​ %s កំហុស​សរសេរ​បឋម​កថា​ទៅ​ឯកសារ​មាតិកា បរាជ័យ​ក្នុង​ការ​បង្កើត​ FILE* បរាជ័យ​ក្នុង​ការ​បង្កើត​បំពង់​ IPC សម្រាប់​ដំណើរ​ការ​រង​ បាន​បរាជ័យ​ក្នុងការ​ដាក់ជា​ពីរផ្នែក​ បរាជ័យ​ក្នុង​ការ​បើក %s បាន​បរាជ័យ​ក្នុង​ការ​អានឯកសារ​បដិសេធ %s បាន​បរាជ័យ​ក្នុង​ការអាន​ នៅពេល​គណនា MD5 បាន​បរាជ័យ​ក្នុង​ការ​អាន​តំណ​ %s បរាជ័យ​ក្នុង​ការ​ប្តូរ​ឈ្មោះ %s ទៅ %s បរាជ័យ​ក្នុង​ការ​ដោះស្រាយ %s បាន​បរាជ័យ​ក្នុង​ការថ្លែង  %s បាន​បរាជ័យ​ក្នុង​ការ​ផ្ដាច់ %s IO សម្រាប់​ដំណើរការ​រង​/ឯកសារ​ បាន​បរាជ័យ​ កំហុស​ខាងក្នុង​ បរាជ័យ​ក្នុង​ការ​បង្កើត​ %s គ្មាន​ការ​ជ្រើស​​ដែល​ផ្គួផ្គង​ បញ្ជី​ផ្នែក​បន្ថែម​កញ្ចប់​វែង​ពេក មានបញ្ហា​ក្នុងការ​ផ្ដាច់តំណ %s ឯកសារ​មួយ​ចំនួន​បាត់បងពី​ក្រុម​ឯកសារ​កញ្ចប់​ `%s' បញ្ជី​ផ្នែក​បន្ថែម​ប្រភព​វែង​ពេក មែក​ធាង បាន​បរាជ័យ មិន​អាច​យក​ទស្សន៍ទ្រនិច​ មិន​អាចបើក​ %s បានឡើយ មិន​អាច​បើក​ឯកសារ​ DB បានទេ %s: %s មិន​អាច​សរសេរ​ទៅ %s មិន​ស្គាល់​ក្បួន​ដោះស្រាយ​ការបង្ហាប់​ '%s' មិន​ស្គាល់​កំណត់​ត្រា​កញ្ចប់ ! ការ​ប្រើប្រាស់​ ៖ apt-extracttemplates file1 [file2 ...]

apt-extracttemplates ជាឧបករណ៍ដើម្បី​ស្រង់​ព័ត៌មាន​ការ​រចនាសម្ព័ន្ធ​​និង​ពុម្ព​
ពី​កញ្ចប់​​ដេបៀន 

ជម្រើស ៖ ​
  -h   អត្ថបទ​ជំនួយ​
  -t  កំណត់​ថត​បណ្ដោះ​អាសន្ន
  -c=? អាន​ឯកសារ​ការ​កំណត់​រចនាស្ព័ន្ធ​នេះ
  -o=? កំណត់​ជម្រើស​ការ​កំណត់​រចនា​សម្ព័ន្ធ​តាម​ចិត្ត ឧ. eg -o dir::cache=/tmp
 ការប្រើប្រាស់ ៖ ពាក្យ​បញ្ជា​ apt-ftparchive [ជម្រើស] 
ពាក្យ​បញ្ជា​ ៖ កញ្ចប់ binarypath [overridefile [pathprefix]]
          sources srcpath [overridefile [pathprefix]]
          ផ្លូវ​មាតិកា​
          ផ្លូវ​ផ្សាយ​ចេញ 
          កំណត់​រចនាស្ព័ន្ធបង្កើត​ [groups]
          ​​កំណត់​រចនាសម្ព័ន្ធសំអាត​​

apt-ftparchive បង្កើត​​ឯកសារ​លិបិក្រម​សម្រាប់​ប័ណ្ណសារ​​ដេបៀន  ។ វា​គាំទ្រ​រចនាប័ទ្ម​នៃ​ការបង្កើតដោយ​ស្វ័យប្រវត្តិ​
ដើម្បី​ធ្វើការ​ជំនួស​
 dpkg-scanpackages និង dpkg-scansources

apt-ftparchive ដែល​បង្កើត​​​​ឯកសារ​ញ្ចប់​ ពី​មែកធាង​ .debs ។ ឯកសារ​កញ្ចប់មាន​
​មាតិកា​នៃ វត្ថុបញ្ជា​​វាល​ទាំងអស់ ដែល​បាន​មក​ពី​កញ្ចប់​និមួយ​ៗដូចជា​ MD5 hash និង​ ទំហំ​ឯកសារ​ ។ ឯកសារ​បដិសេធ​​មិន​គាំទ្រ​ 
ដើម្បី​បង្ខំ​តម្លៃ​អាទិភាព​និង សម័យ​ ។

ភាព​ដូច​គ្នា​នៃ​ apt-ftparchive បង្កើត​ឯកសារ​ប្រភព​ពី​មែកធាង​ .dscs ។
ជម្រើស​បដិសេធ​ប្រភព​អាច​ត្រូវ​បាន​ប្រើ​សម្រាប់​បញ្ចាក់ឯកសារ​បដិសេធ src  

 បញ្ជា​'កញ្ចប់​' និង​ 'ប្រភព' ត្រូវ​​តែ​រត់​ជា​ root 
 ។ BinaryPath ត្រូវ​ចង្អុល​​ទៅ​កាន់​មូលដ្ឋាន​ស្វែងរក​ហៅ​ខ្លួនឯង​ ហើយ​ 
ឯកសារ​បដិសេធ​ត្រូវមាន​ទង​បដិសេធ  ។  ផ្លូវ​បរិបទ​ត្រូវ​បាន​បន្ថែម​​ទៅ​ក្នុង​វាល​ឈ្មោះ​​ឯកសារ​បើ​វា​មាន​  ។ ឧទាហរណ៍​ ការប្រើប្រាស់​ពី​ប័ណ្ណសារ​ 
ដេបៀន  ៖
   apt-ftparchive កញ្ចប់​dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

ជម្រើស​ ៖
  -h    អត្ថបទ​ជំនួយ​នេះ​
  --md5 Control MD5 ការបបង្កើត​
  -s=?  ឯកសារ​បដិសេធ​ប្រភព​
  -q    Quiet
  -d=?  ជ្រើស​ជម្រើសលាក់​ទុ​ក​ទិន្នន័យ​
  --គ្មាន​-delink អនុញ្ញាត​ delinking របៀប​បំបាត់​កំហុស​
  --មាតិកា  ពិនិត្យ​ការបង្កើត​ឯកសារ​មាតិកា
  -c=?  អាន​ឯកសារ​ការកំណត់​រចនាសម្ព័ន្ធ​នេះ​
  -o=?  កំណត់​ជម្រើស​ការ​កំណត់​រចនា​សម្ព័ន្ធ​តាម​ចិត្ត ការប្រើប្រាស់ ៖ apt-sortpkgs [ជម្រើស] file1 [file2 ...]

apt-sortpkgs ជា​ឧបករណ៍​ធម្មតា​ដើម្បី​តម្រៀប​ឯកសារ​កញ្ចប់ ។  ជម្រើស​ -s បាន​ប្រើ​
សម្រាប់​ចង្អុល​ប្រភេទ​នៃ​​​ឯកសារ​អ្វីមួយដែល​មាន​ ។

ជម្រើស​
  -h   អត្ថបទ​ជំនួយ​នេះ​
  -s   ប្រើ​ការ​តម្រៀប​ឯកសារ​ប្រភព
  -c=? អាន​ឯកសារ​កំណត់​រចនាសម្ព័ន្ធនេះ​
  -o=? កំណត់​ជម្រើស​ការ​កំណត់​រចនា​សម្ព័ន្ធ​តាម​ចិត្ត ឧ. -o dir::cache=/tmp
 W:  W: មិន​អាច​អាន​ថត %s បាន​ឡើយ
 W ៖ មិន​អាច​ថ្លែង %s
 realloc - បរាជ័យ​ក្នុង​ការ​​បម្រុង​​ទុក​សតិ​ 