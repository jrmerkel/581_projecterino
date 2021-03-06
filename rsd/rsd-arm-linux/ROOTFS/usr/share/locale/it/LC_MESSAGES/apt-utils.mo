??    ;      ?  O   ?        )   	     3  "   O     r     ?     ?     ?     ?     ?          1  1   O     ?  ,   ?  m   ?  #   +  (   O     x     |     ?     ?  %   ?     ?  '        5     D  #   V  "   z     ?     ?     ?     ?     ?     	  #   %	  "   I	  "   l	  "   ?	     ?	  "   ?	     ?	  5    
  !   6
     X
     l
     ?
     ?
     ?
  "   ?
     ?
  '    &  ,  V  S  H  ?     ?     ?       #   -  ?  Q  .   B     q  %   ?  %   ?     ?  '   ?        "   6  (   Y  $   ?  $   ?  :   ?       =     ?   ]  5   ?  B   !     d  #   h  $   ?  %   ?  <   ?       =   4     r     ?  )   ?  /   ?  )   ?  !   $     F     e  '   ?  &   ?  ,   ?  #     #   %  #   I     m  6   ?     ?  4   ?  5        H     h     ?  .   ?     ?  *   ?  !     U  5  %  ?   z  ?'  g  ,)     ?*  '   ?*  #   ?*  0   ?*     .   &                        +              7       :      9           !   5              3   1               '   	         ,              "          $   4       ;         %   )   -   6              /            #       8       2   (                 *   0                      
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
 realloc - Failed to allocate memory Project-Id-Version: apt
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2013-06-04 11:24+0200
PO-Revision-Date: 2012-06-25 21:54+0200
Last-Translator: Milo Casagrande <milo@ubuntu.com>
Language-Team: Italian <tp@lists.linux.it>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n!=1);
X-Launchpad-Export-Date: 2012-06-25 19:48+0000
X-Generator: Launchpad (build 15482)
   %s non ha neppure un campo binario override
   %s non ha un campo override
   %s non ha un campo source override
   il responsabile di %s è %s non %s
  Delink %s [%s]
  Raggiunto il limite di DeLink di %sB.
 %s %s per %s compilato il %s %s
 %s non è un pacchetto DEB valido. *** Collegamento di %s a %s non riuscito L'archivio non ha un campo "package" L'archivio non ha un campo "control" Impossibile trovare la versione di debconf. È installato? Sottoprocesso compresso L'output compresso %s necessita di un insieme di compressione Il formato del database non è valido. Se è stato eseguito l'aggiornamento da una vecchia versione di apt, rimuovere e ricreare il database. Il database è vecchio, tentativo di aggiornamento %s Il database era danneggiato, il file è stato rinominato in %s.old E:  E: Gli errori si applicano al file  Errore nell'elaborare i contenuti %s Errore nell'elaborare la directory %s Errore nella scrittura dell'intestazione nel file "contents" Creazione di FILE* non riuscita Creazione di una pipe IPC verso il sottoprocesso non riuscita Fork non riuscita Apertura di %s non riuscita Lettura del file override %s non riuscita Lettura durante l'elaborazione MD5 non riuscita Esecuzione di readlink su %s non riuscita Rinomina di %s in %s non riuscita Risoluzione di %s non riuscita Impossibile eseguire stat su %s Esecuzione di unlink su %s non riuscita I/O al sottoprocesso/file non riuscito Errore interno, creazione di %s non riuscita Override %s riga %llu malformato #1 Override %s riga %llu malformato #2 Override %s riga %llu malformato #3 Nessuna selezione corrisponde L'elenco dell'estensione del pacchetto è troppo lungo Problema nell'unlink di %s Mancano alcuni file nel file group di pacchetti "%s" L'elenco dell'estensione del sorgente è troppo lungo Visita dell'albero non riuscita Impossibile ottenere un cursore Impossibile aprire %s Impossibile aprire il file del database %s: %s Impossibile scrivere in %s Algoritmo di compressione "%s" sconosciuto Record del pacchetto sconosciuto. Uso: apt-extracttemplates FILE1 [FILE2 ...]

apt-extracttemplates è uno strumento per estrarre configurazioni e template
dai pacchetti debian

Opzioni:
  -h   Mostra questo aiuto
  -t   Imposta la directory temporanea
  -c=? Legge come configurazione il file specificato
  -o=? Imposta un'opzione di configurazione, come -o dir::cache=/tmp
 Uso: apt-ftparchive [OPZIONI] COMANDO
Comandi: packages PERCORSO_AL_BINARIO [FILE_OVERRIDE [PREFISSO_PERCORSO]
         sources PERCORSO_AI_SORGENTI [FILE_OVERRIDE [PREFISSO_PERCORSO]
         contents PERCORSO
         release PERCORSO
         generate CONFIGURAZIONE [GRUPPI]
         clean CONFIGURAZIONE

apt-ftparchive genera file di indice per gli archivi Debian. Supporta
molti stili di generazione da completamente automatici ad alternative
funzionali per dpkg-scanpackages e dpkg-scansources

apt-ftparchive genera file Packages da un albero di ".deb". Il file
Package contiene le informazioni di tutti i campi control da ogni
pacchetto, così come l'hash MD5 e la dimensione del file. Un file override
è supportato per forzare i valori di priorità e sezione.

Similmente, apt-ftparchive genera file Sources da un albero di .dscs.
L'opzione --source-override può essere usata per specificare un file
di override per i sorgenti

I comandi "packages" e "sources" devono essere eseguiti nella root 
dell'albero. Il percorso al binario deve puntare alla base della ricerca 
ricorsiva e il file override deve contenere le opzioni di override.
Il prefisso del percorso è aggiunto al campo filename se presente. Esempio
di utilizzo dall'archivio Debian:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages 

Opzioni:
  -h          Mostra questo aiuto
  --md5       Controlla la generazione dell'MD5
  -s=?        File override dei sorgenti
  -q          Silenzioso
  -d=?        Seleziona il database di cache opzionale
  --no-delink Abilita la modalità di debug del delinking
  --contents  Controlla la generazione del file "contents"
  -c=?        Legge come configurazione il file specificato
  -o=?        Imposta un'opzione arbitraria di configurazione Uso: apt-internal-solver

apt-internal-solver è un'interfaccia per l'utilizzo del resolver interno
come resolver esterno per il debugging degli strumenti APT

Opzioni:
  -h   Mostra questo aiuto
  -q   Output registrabile, nessun indicatore di avanzamento
  -c=? Legge come configurazione il file specificato
  -o=? Imposta un'opzione di configurazione, es. -o dir::cache=/tmp
 Uso: apt-sortpkgs [OPZIONI] FILE1 [FILE2 ...]

apt-sortpkgs è uno strumento per ordinare i file dei pacchetti.
L'opzione -s è usata per indicare il tipo di file.

Opzioni:
  -h   Mostra questo aiuto
  -s   Ordina per pacchetto sorgente
  -c=? Legge come configurazione il file specificato
  -o=? Imposta un'opzione di configurazione, es. -o dir::cache=/tmp
 A:  A: Impossibile leggere la directory %s
 A: Impossibile eseguire stat su %s
 realloc - Allocazione della memoria non riuscita 