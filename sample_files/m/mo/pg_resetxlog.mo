��    =        S   �      8  9   9  -   s  ,   �  8   �  *     N   2  N   �     �  *   �  +        G  !   c  )   �  #   �  &   �  -   �  !   (  !   J  +   l  "   �  (   �     �  J   �     D	     d	  #   �	  #   �	  #   �	  \   �	      K
  @   l
  D   �
  &   �
       )   )  )   S  )   }  )   �  )   �  )   �     %  V   B  )   �  )   �  )   �  )     )   A  )   k  )   �  )   �  )   �  	     �        �  &   �  !   �  -        J     a  )   v    �  S   �  4     1   F  D   x  '   �  g   �  g   M  -   �  D   �  :   (  ,   c  (   �  4   �  2   �  1   !  4   S  .   �  +   �  9   �  .     4   L     �  Q   �     �       (     (   F  (   o  �   �  *     F   D  T   �  =   �       -   -  )   [  3   �  *   �  /   �  )     "   >  R   a  )   �  )   �  )     )   2  1   \  )   �  *   �  .   �  *     
   =  �   H  .   1  .   `  &   �  >   �     �       )   ,     !   0              1   3   4          *         -                        8   7       6          2   
       (                          ;                "          9   )   <   .                  /   	          #      :   =   5   &   $                     ,           +      '                      %    
If these values seem acceptable, use -f to force reset.
 
Report bugs to <pgsql-bugs@postgresql.org>.
   --help          show this help, then exit
   --version       output version information, then exit
   -f              force update to be done
   -l TLI,FILE,SEG force minimum WAL starting location for new transaction log
   -n              no update, just show extracted control values (for testing)
   -o OID          set next OID
   -x XID          set next transaction ID
 %s resets the PostgreSQL transaction log.

 %s: OID (-o) must not be 0
 %s: cannot be executed by "root"
 %s: could not create pg_control file: %s
 %s: could not delete file "%s": %s
 %s: could not open directory "%s": %s
 %s: could not open file "%s" for reading: %s
 %s: could not open file "%s": %s
 %s: could not read file "%s": %s
 %s: could not read from directory "%s": %s
 %s: could not write file "%s": %s
 %s: could not write pg_control file: %s
 %s: fsync error: %s
 %s: internal error -- sizeof(ControlFileData) is too large ... fix xlog.c
 %s: invalid LC_COLLATE setting
 %s: invalid LC_CTYPE setting
 %s: invalid argument for option -l
 %s: invalid argument for option -o
 %s: invalid argument for option -x
 %s: lock file "%s" exists
Is a server running?  If not, delete the lock file and try again.
 %s: no data directory specified
 %s: pg_control exists but has invalid CRC; proceed with caution
 %s: pg_control exists but is broken or unknown version; ignoring it
 %s: transaction ID (-x) must not be 0
 64-bit integers Blocks per segment of large relation: %u
 Catalog version number:               %u
 Current log file ID:                  %u
 Database block size:                  %u
 Database system identifier:           %s
 Date/time type storage:               %s
 Guessed pg_control values:

 If you are sure the data directory path is correct, execute
  touch %s
and try again.
 LC_COLLATE:                           %s
 LC_CTYPE:                             %s
 Latest checkpoint's NextOID:          %u
 Latest checkpoint's NextXID:          %u
 Latest checkpoint's TimeLineID:       %u
 Maximum length of identifiers:        %u
 Maximum length of locale name:        %u
 Maximum number of function arguments: %u
 Next log file segment:                %u
 Options:
 The database server was not shut down cleanly.
Resetting the transaction log may cause data to be lost.
If you want to proceed anyway, use -f to force reset.
 Transaction log reset
 Try "%s --help" for more information.
 Usage:
  %s [OPTION]... DATADIR

 You must run %s as the PostgreSQL superuser.
 floating-point numbers pg_control values:

 pg_control version number:            %u
 Project-Id-Version: pg_resetxlog-fr
POT-Creation-Date: 2004-12-20 19:09+0000
PO-Revision-Date: 2004-12-20 21:46+0100
Last-Translator: 
Language-Team:  <fr@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.9.1
 
Si ces valeurs semblent acceptables, utilisez -f pour forcer la r�initialisation.
 
Indiquez les bogues � <pgsql-bugs@postgresql.org>.
   --help          affiche cette aide puis quitte
   --version       affichage des informations de version puis quitte
   -f              force la mise � jour
   -l TLI,FILE,SEG force l'emplacement de d�but minimum du WAL pour le nouveau journal des transactions
   -n              pas de mise � jour, affiche seulement les valeurs de contr�le extraites (pour tests)
   -o OID          initialise le prochain OID
   -x XID          initialise le prochain identifiant de transaction
 %s r�-initialise le journal des transactions PostgreSQL.

 %s : l'OID (-o) ne doit pas �tre nul (z�ro)
 %s : n'a pas pu �tre ex�cut� par �root�
 %s : impossible de cr�er le fichier pg_control : %s
 %s : impossible de supprimer le fichier �%s� : %s
 %s : impossible d'ouvrir le r�pertoire �%s� : %s
 %s : ne peut ouvrir le fichier �%s� en lecture : %s
 %s : impossible d'ouvrir le fichier �%s� : %s
 %s : ne peut pas lire le fichier �%s� : %s
 %s : impossible de lire � partir du r�pertoire �%s� : %s
 %s : impossible d'�crire le fichier �%s� : %s
 %s : impossible d'�crire le fichier pg_control : %s
 %s : erreur fsync : %s
 %s : erreur interne -- sizeof(ControlFileData) est trop gros ... corrigez xlog.c
 %s : LC_COLLATE invalide
 %s : LC_CTYPE invalide
 %s : argument invalide pour l'option -l
 %s : argument invalide pour l'option -o
 %s : argument invalide pour l'option -x
 %s : le fichier de verrouillage �%s� existe
Le serveur est-il lanc� ? Sinon, supprimez le fichier de verrouillage et r�essayez.
 %s : aucun r�pertoire de donn�es sp�cifi�
 %s : pg_control existe mais son CRC est invalide ; agissez prudemment
 %s : pg_control existe mais soit il est cass� soit sa version est inconnue ; ignor�
 %s : l'identifiant de la transaction (-x) ne doit pas �tre 0
 entiers 64-bit Blocs par segment d'une grosse relation : %u
 Num�ro de version du catalogue :      %u
 Identifiant du fichier de transaction courant : %u
 Taille du bloc de la base de donn�es : %u
 Identifiant du syst�me de base de donn�es : %s
 Stockage du type date/heure :         %s
 Valeurs de pg_control devin�es :

 Si vous �tes certain du r�pertoire des donn�es, ex�cutez
  touch %s
et r�essayez.
 LC_COLLATE :                          %s
 LC_CTYPE :                            %s
 Dernier NextOID de la v�rification :  %u
 Dernier NextXID de la v�rification :  %u
 Dernier TimeLineID du point de v�rification : %u
 Longueur maximum des identifiants :   %u
 Longueur maximum du nom de la locale : %u
 Nombre maximum d'arguments aux fonctions : %u
 Prochain segment du journal de trace : %u
 Options :
 Le serveur de bases de donn�es n'a pas �t� arr�t� proprement.
R�-initialiser le journal des transactions peut occasionner des pertes de donn�es.
Si vous souhaitez continuer malgr� tout, utilisez -f pour forcer la r�-initialisation.
 R�-initialisation du journal des transactions
 Essayez �%s --help� pour plus d'informations.
 Usage :
  %s [OPTION]... R�P_DONN�ES

 Vous devez lancer %s en tant que superutilisateur PostgreSQL.
 nombres � virgule flottante Valeurs de pg_control : 

 Num�ro de version de pg_control :     %u
 