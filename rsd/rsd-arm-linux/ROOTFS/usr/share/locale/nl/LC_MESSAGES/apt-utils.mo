??    7      ?  I   ?      ?  )   ?     ?  "   ?          8     I     d     ?     ?     ?     ?  1   ?     )  ,   8  m   e  #   ?  (   ?           $     =     Z  %   x     ?  '   ?     ?     ?  #   ?  "   "     E     [     u     ?     ?     ?  #   ?     ?  "   	     *	  5   ?	  !   u	     ?	     ?	     ?	     ?	     ?	  "   
     +
  '  C
  &  k  H  ?     ?     ?     ?  #     ?  9  :   ?     7  2   W     ?     ?      ?  $   ?       #      !   D  #   f  ?   ?     ?  3   ?  ?     5   ?  .   ?        0     +   5  !   a  A   ?     ?  /   ?          0  ,   I  1   v     ?  #   ?     ?            $   3  (   X  "   ?     ?  !   ?  C   ?     *  "   H     k     ?  %   ?     ?  "   ?     ?  N    ?  c  i  ?$     O&     S&  &   m&  '   ?&                /   &       3   7                         6   	         2           +      ,   *         )             "   -   4   1            0   .         #      
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
 realloc - Failed to allocate memory Project-Id-Version: apt 0.8.15.9
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2013-06-04 11:24+0200
PO-Revision-Date: 2011-12-05 17:10+0100
Last-Translator: Jeroen Schot <schot@a-eskwadraat.nl>
Language-Team: Debian l10n Dutch <debian-l10n-dutch@lists.debian.org>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
  %s heeft ook geen voorrangsingang voor binaire pakketten
  %s heeft geen voorrangsingang
  %s heeft geen voorrangsingang voor bronpakketten
   %s beheerder is %s, niet %s
  OntlLink %s [%s]
  Ontlinklimiet van %sB bereikt.
 %s %s voor %s gecompileerd op %s %s
 %s is geen geldig DEB-pakket. *** Linken van %s aan %s is mislukt Archief heeft geen 'package'-veld Archief heeft geen 'control'-record Kan versie van debconf niet bepalen. Is debconf geïnstalleerd? Comprimeer kind Gecomprimeerde uitvoer %s vereist een compressieset DB-formaat is ongeldig. Als u opgewaardeerd heeft van een oudere versie van apt, dient u de database te verwijderen en opnieuw aan te maken. DB is verouderd, opwaardering van %s wordt geprobeerd DB is beschadigd, bestand hernoemd naar %s.old F:  F: Er zijn fouten van toepassing op het bestand  Fout bij het verwerken van de inhoud van %s Fout bij het verwerken van map %s Fout bij wegschrijven van de koptekst naar het 'contents'-bestand Aanmaken van FILE* is mislukt Aanmaken van IPC-pijp naar subproces is mislukt Vorken van proces is mislukt Openen van %s is mislukt Lezen van het voorrangsbestand %s is mislukt Lezen tijdens het berekenen van de MD5 is mislukt readlink op %s is mislukt Hernoemen van %s naar %s is mislukt Oplossen van %s is mislukt stat op %s is mislukt Ontlinken van %s is mislukt IO naar subproces/bestand is mislukt Interne fout, aanmaken van %s is mislukt Geen van de selecties kwam overeen Pakket-extensielijst is te lang Probleem bij het ontlinken van %s Sommige bestanden zijn niet aanwezig in de pakketbestandsgroep '%s' Bron-extensielijst is te lang Doorlopen boomstructuur is mislukt Kan geen cursor verkrijgen Kan %s niet openen Kan het DB-bestand %s niet openen: %s Kan niet naar %s schrijven Onbekend compressie-algoritme '%s' Onbekend pakketrecord! Gebruik: apt-extracttemplates bestand1 [bestand2 ...]

apt-extracttemplates is een programma om configuratie- en sjablooninformatie
uit Debian pakketten te halen.

Opties:
  -h     Deze hulptekst.
  -t      Stel de tijdelijke map in.
  -c=? Lees dit configuratiebestand.
  -o=? Stel een willekeurige optie in, b.v. -o dir::cache=/tmp
 Gebruik: apt-ftparchive [opties] commando
Opdrachten: packages <pad naar .deb's> [voorrangsbestand [padprefix]]
            sources <pad naar .dsc's> [voorrangsbestand [padprefix]]
            contents <pad>
            release <pad>
            generate config [groepen]
            clean config

Met apt-ftparchive genereert u index bestanden voor Debian archieven.
Het ondersteunt verschillende generatiestijlen variërend van volledig 
automatisch tot een functionele vervanging van dpkg-scanpackages en 
dpkg-scansources

apt-ftparchive genereert pakketbestanden van een boom met .debs.
Het 'Packages'-bestand bevat de inhoud van alle 'control'-velden van elk
pakket alsook de MD5 hash en de bestandsgrootte. Via een voorrangsbestand
kunnen de waardes van de 'Priority'- en 'Section'-velden afgedwongen
worden.

Op overeenkomstige wijze genereert apt-ftparchive de 'Sources'-bestanden
van een boom met .dscs. De '--source-override'-optie kan gebruikt worden
om een voorrangsbestand voor bronpakketten te specificeren.

De 'packages' en 'sources' opdrachten dienen uitgevoerd te worden 
in de basismap van de boom. Het pad naar de .deb's dient te verwijzen naar
het startpunt van de recursieve zoekopdracht en een voorrangsbestand dient
de voorrangsvlaggen te bevatten. Padprefix wordt toegevoegd aan het
'filename'-veld indien dit aanwezig is. Enkele voorbeelden uit het debian
archief:
            apt-ftparchive packages dists/potato/main/binary-i386/ > \
            dists/potato/main/binary-i386/Packages

Opties:
  -h          Deze hulptekst
  --md5       Beheer de MD5 generatie
  -s=?        Bronvoorrangsbestand
  -q          Stille uitvoer
  -d=?        Selecteert de optionele caching database
  --no-delink Schakelt de ontlinking debug modus in
  --contents  Beheer de generatie van het inhoudsbestand
  -c=?        Lees dit configuratiebestand in
  -o=?        Stel een willekeurige configuratie optie in Gebruik: apt-sortpkgs [opties] bestand1 [bestand2 ...]

apt-sortpkgs is een simpel programma om pakketbestanden te sorteren.
De -s optie wordt gebruikt om aan te geven om welk soort bestand het gaat.

Opties:
  -h    Deze helptekst
  -s    Sorteer bronbestanden
  -c=? Lees dit configuratiebestand
  -o=? Stel een willekeurige optie in, b.v. -o dir::cache=/tmp
 W:  W: Kon map %s niet lezen
 W: Kon de status van %s niet opvragen
 realloc - Geheugentoewijzing is mislukt 