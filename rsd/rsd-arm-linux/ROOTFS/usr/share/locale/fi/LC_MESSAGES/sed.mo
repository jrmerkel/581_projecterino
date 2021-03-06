??    U      ?  q   l      0  ?   1  ,   ,  5   Y  N   ?  7   ?  \   	  _   s	  `   ?	  u   4
  l   ?
  b     V   z  Y   ?  ~   +  ?   ?  %   :     `     w     ?     ?     ?     ?     ?       $   *     O     a     |     ?     ?  #   ?     ?     ?     ?          !     3     E  H   R     ?     ?     ?  !   ?          )  (   >     g     z  #   ?     ?     ?  $   ?          :  #   T  B   x  2   ?     ?           #     A  *   `  *   ?     ?     ?     ?  #   ?  #     &   <     c     r  ,   ?     ?     ?  -   ?          0     ?     N     d     z     ?     ?     ?  ?  ?  8  ?  1   ?  0   ?  _   &  =   ?  ?   ?  y   G  ^   ?  x      ?   ?  f   '  S   ?  i   ?  ?   L  ?   ?  $   Z  %        ?     ?     ?     ?          ,      H  /   i     ?  $   ?     ?  	   ?  (   ?  .     &   L     s     |     ?     ?     ?     ?  [   ?     S      q      ?   0   ?      ?   !   ?   I   !  '   f!  '   ?!  $   ?!  #   ?!  "   ?!  2   ""  +   U"     ?"  *   ?"  g   ?"  '   4#     \#  ;   s#      ?#  ,   ?#  <   ?#  =   :$  )   x$     ?$     ?$  ,   ?$  ,   ?$  $   &%     K%  *   _%  8   ?%     ?%     ?%  <    &     =&     R&     f&     v&     ?&     ?&     ?&     ?&  %   '                .   5   0   6   ,   7         1   2   /   	          D      A       U      4              O               +   '   (   C      T          
       >   =      "   8          E           M   N          *      :   J   R            -   G                        P   K   Q   @           %   3   9   ?          $   I          ;   B   !          L          H           #           &   F      S   <             )          
If no -e, --expression, -f, or --file option is given, then the first
non-option argument is taken as the sed script to interpret.  All
remaining arguments are names of input files; if no input files are
specified, then the standard input is read.

       --help     display this help and exit
       --version  output version information and exit
   --follow-symlinks
                 follow symlinks when processing in place
   --posix
                 disable all GNU extensions.
   -R, --regexp-perl
                 use Perl 5's regular expressions syntax in the script.
   -b, --binary
                 open files in binary mode (CR+LFs are not processed specially)
   -e script, --expression=script
                 add the script to the commands to be executed
   -f script-file, --file=script-file
                 add the contents of script-file to the commands to be executed
   -i[SUFFIX], --in-place[=SUFFIX]
                 edit files in place (makes backup if extension supplied)
   -l N, --line-length=N
                 specify the desired line-wrap length for the `l' command
   -n, --quiet, --silent
                 suppress automatic printing of pattern space
   -r, --regexp-extended
                 use extended regular expressions in the script.
   -s, --separate
                 consider files as separate rather than as a single continuous
                 long stream.
   -u, --unbuffered
                 load minimal amounts of data from the input files and flush
                 the output buffers more often
 %s: -e expression #%lu, char %lu: %s
 %s: can't read %s: %s
 %s: file %s line %lu: %s
 : doesn't want any addresses GNU sed version %s
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Memory exhausted No match No previous regular expression Premature end of regular expression Regular expression too big Success Trailing backslash Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... {script-only-if-no-other-script} [input-file]...

 `e' command not supported `}' doesn't want any addresses based on GNU sed version %s

 can't find label for jump to `%s' cannot remove %s: %s cannot rename %s: %s cannot specify modifiers on empty regexp cannot stat %s: %s command only uses one address comments don't accept any addresses couldn't attach to %s: %s couldn't edit %s: is a terminal couldn't edit %s: not a regular file couldn't follow symlink %s: %s couldn't open file %s: %s couldn't open temporary file %s: %s couldn't write %d item to %s: %s couldn't write %d items to %s: %s delimiter character is not a single-byte character error in subprocess expected \ after `a', `c' or `i' expected newer version of sed extra characters after command invalid reference \%d on `s' command's RHS invalid usage of +N or ~N as first address invalid usage of line address 0 missing command multiple `!'s multiple `g' options to `s' command multiple `p' options to `s' command multiple number options to `s' command no input files no previous regular expression number option to `s' command may not be zero option `e' not supported read error on %s: %s strings for `y' command are different lengths super-sed version %s
 unexpected `,' unexpected `}' unknown command: `%c' unknown option to `s' unmatched `{' unterminated `s' command unterminated `y' command unterminated address regex Project-Id-Version: sed 4.2.0
Report-Msgid-Bugs-To: bug-gnu-utils@gnu.org
POT-Creation-Date: 2009-06-27 15:08+0200
PO-Revision-Date: 2008-01-18 07:16+0200
Last-Translator: Jorma Karvonen <karvjorm@users.sf.net>
Language-Team: Finnish <translation-team-fi@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: KBabel 1.11.2
 
Jos valitsimia ”-e”, ”--expression”, ”-f”, tai ”--file” ei ole annettu, silloin
ensimmäistä ei-valitsinargumenttia pidetään tulkittavana sed-skriptinä.  Kaikki
jäljelle jäävät argumentit ovat syötetiedostojen nimiä; jos syötetiedostoja ei
ole määritelty, luetaan vakiosyötettä.

       --help     näytä tämä opaste ja poistu
       --version  tulosta versiotiedot ja poistu
   --follow-symlinks
                 seuraa symbolisia linkkejä, kun prosessoidaan paikallaan
   --posix
                 passivoi kaikki GNU-laajennukset.
   -R, --regexp-perl
                 käytä Perl 5:n mukaista säännöllisten lauseiden
                 syntaksia skriptissä.
   -b, --binary
                 avaa tiedostot binääritilassa (rivinvaihtomerkkejä CR+LF ei erityisemmin prosessoida)
   -e script, --expression=skripti
                 lisää skripti suoritettaviin komentoihin
   -f script-file, --file=skriptitiedosto
                 lisää skriptitiedoston sisältö suoritettaviin komentoihin
   -i[SUFFIKSI], --in-place[=SUFFIKSI]
                 muokkaa tiedostoja paikallaan (tekee varmuuskopion, jos tiedostotarkennin on annettu)
   -l N, --line-length=N
                 määrittelee halutun rivinvaihtopituuden komennolle ”l”
   -n, --quiet, --silent
                 vaienna automaattinen mallitilan tulostus
   -r, --regexp-extended
                 käytä laajennettuja säännöllisiä lausekkeita skriptissä.
   -s, --separate
                 pidä tiedostoja erillisinä pikemmin kuin yhtenä jatkuvana
                 pitkänä virtana.
   -u, --unbuffered
                 lataa syötetiedostoista minimimäärä dataa ja tyhjennä
                 tulostepuskurit useammin
 %s: -e lauseke #%lu, merkki %lu: %s
 %s: ei voida lukea syötettä %s: %s
 %s: tiedosto %s rivi %lu: %s
 : ei tarvitse osoitteita GNU sed versio %s
 Virheellinen takaisinviittaus Virheellinen merkkiluokan nimi Virheellinen vertailumerkki Virheellinen sisältö \{\}:ssä Virheellinen edeltävä säännöllinen lauseke Virheellinen lukualueen loppu Virheellinen säännöllinen lauseke Muisti loppui Ei osumaa Ei aikaisempaa säännöllistä lausetta Ennenaikainen säännöllisen lausekkeen loppu Säännöllinen lauseke on liian suuri Onnistui Seuraava kenoviiva Pariton ”(” tai ”\(” Pariton ”)” tai ”\)” Pariton ”[” tai ”[^” Pariton ”\{” Käyttö: %s [VALITSIN]... {skripti-vain-jos-ei-ole-muita-skriptejä} [syötetiedosto]...

 komento ”e” ei ole tuettu ”}” ei tarvitse osoitteita perustuu GNU sed versioon %s

 Nimikettä hypylle kohteeseen ”%s” ei löydy ei voida siirtää %s: %s ei voida nimetä uudelleen %s: %s Muuttajia ei voida määritellä tyhjään säännölliseen lausekkeeseen ei voida suorittaa stat-käskyä %s: %s Komento käyttää vain yhtä osoitetta kommentit eivät hyväksy osoitteita ei voitu liittyä kohteeseen %s: %s ei voitu muokata %s: se on pääte ei voitu muokata %s: se ei ole tavallinen tiedosto ei voitu seurata symbolista linkkiä %s: %s ei voitu avata tiedostoa %s: %s Väliaikaistiedostoa %s ei voitu avata: %s %d kohdetta ei voitu kirjoittaa tulosteeseen %s: %s %d kohdetta ei voitu kirjoittaa tulosteeseen %s: %s erotinmerkki ei ole yksitavuinen merkki virhe lapsiprosessissa \ odotettiin merkkien ”a”, ”c” tai ”i” jälkeen odotettiin uudempaa sed-versiota Ylimääräisiä merkkejä komennon jälkeen Virheellinen viittaus \%d komennon ”s” oikealla puolella Ensimmäisenä osoitteena ei voi olla ”+N” eikä ”~N” riviosoitteen nolla virheellinen käyttö Puuttuva komento Useita ”!”-merkkejä useita ”g”-valitsimia ”s”-komennolle useita ”p”-valitsimia ”s”-komennolle useita valitsimia ”s”-komennolle ei syötetiedostoja Ei aikaisempaa säännöllistä lauseketta numeerinen valitsin ”s”-komennolle ei voi olla nolla valitsin ”e” ei ole tuettu lukuvirhe syötteessä %s: %s merkkijonot ”y”-komennolle ovat pituudeltaan vaihtelevia super-sed versio %s
 Odottamaton ”,” Pariton ”}” Tuntematon komento: ”%c” Tuntematon valitsin ”s”:lle Pariton ”{” Päättymätön ”s”-komento Päättymätön ”y”-komento Päättymätön osoite vakiolauseessa 