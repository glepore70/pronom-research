�MKMSGF AMP3     �          ��,Y�/)����F	x	�	�	�
2��l@cB<����Rvk��3f9����'��(G{�       �                              instlsve.msg                                                                                                                                                                                                                                                         IWPAMPTR_MESSAGEFILE_1.01 SVE JN 2
IHelpData Title Halt InstallProg InstHelp1 InstHelp2 InstHelp3 InvalidParm DirNotFound QueryUpgrade QueryInst MissingFiles MissingProgs CannotUnpack1 CannotUnpack2 QueryUnzip PromptPtrPath NoPointerSets1 NoPointerSets2 QueryUnzip2 ErrorUnzip ErrorInit PromptInstPath  PromptCopying  PromptLockedFiles
IHandleManually HandleDeinst ActionLockedFiles ActionMsgFiles ActionAnyFiles FilesCopied CopyError Replacing ReplaceError PromptReset InstDone1 InstDoneReboot DoneReset InstDone2 InstDone3 DeInstallProg DeinstHelp NotInstalled QueryDeinst Unreplacing UnreplaceError DeinstDone DeinstDoneReboot
IAnimerade Muspekare f�r OS/2 V1.01|Allm�nt
I
%1 f�r Animerade Muspekare f�r OS/2 - Version 1.01 
Christian Langanke 1996, 1998 - Alla r�ttigheter reserverade
National Language Support av Richard R�jfors

IAvbrott av anv�ndaren.
IInstallationsprogram
ISyntax: INSTALL.CMD [/?] [/Batch] [/Resetwps]
                                   [/Installpath:...] [/Animfilepath:...]
 /?                 - visar denna hj�lp
 /Batch             - bat l�ge. Standardv�rden anv�nds
 /Resetwps          - Anv�nder alternativet starta om skrivbordet(WPS)
 /Installpath:...   - katalog d�r programmet ska installeras.
                      standard: %1
 /Animfilepath:...  - directory where animation resources should be installed.
                      Default: %2
I Obs:
  - ?: motsvarar OS/2:s startenhet.
  - Det r�cker att enbart ange f�rsta bokstaven i v�xeln.
  - katalognamn som inneh�ller mellanslag m�ste omges av citationstecken.

I
Detta program installerar Animerade Muspekare f�r OS/2 - Version 1.01.
L�s filen �readme.inf�  f�r mer information om installationen av 
Animerade Muspekare f�r OS/2.
EFelaktig prarameter �%1�.
EKatalogen �%1� saknas.
IVersionen %1 av Animerade Muspekare f�r OS/2 �r redan installerad.
Vill du ers�tta den befintliga versionen med denna version 1.01
IVill du installera Animerade Muspekare f�r OS/2
EF�ljande filer saknas i katalogen �%2� :
%1

Installationsprogrammet kommer att avbrytas.
WProgrammet %1 saknas i ditt system.
I
De bifogade muspekarna kan inte packas upp automatiskt.
Installera UNZIP.EXE och starta installationsprogrammet igen f�r att packa upp
muspekarna.
IDetta uppackningsprogram m�ste st�dja l�nga filnamn och externa filattribut.
F�r detta rekommenderas Info UNZIP, vilket finns gratis p� m�nga ftp-siter.
IDet finns animerade muspekare bifogade med Animerade Muspekare f�r OS/2, 
vill du packa upp dem
IAnge full s�kv�g dit du vill packa upp de animerade muspekarna.

IVarning: M�lkatalogen f�r muspekarna st�djer inte l�nga filnamn.
De OS/2-pekarupps�ttnigarna som �r bifogade i Animerade Muspekare f�r OS/2 
kan inte packas upp till denna katalog, d�rf�r att de inneh�ller filer med
l�nga namn.
De animerade muspekarna finns ocks� att tillg� som AniMouse-DLLer.
Om du inte vill modifiera de bifogade muspekarna, r�cker det 
att enbart installera AniMouse-DLLer.
I
Om du vill installera OS/2 pekarupps�ttninger �nd�, avbryt nu
och starta om installationsprogrammet f�r att ange en annan katalog f�r
muspekarna p� en enhet som st�djer l�nga filnamn (tex en HPFS enhet).

IVill du packa upp AniMouse-DLLer
WEtt fel uppstod vid uppackningen av muspekarna (rc=%1).
R�tta till felet och k�r installationsprogrammet igen f�r att packa upp
de animerade muspekarna utan fel.

Obs: Installationsprogrammet kommer inte avbrytas �n.
IEtt fel uppstod n�r Animerade Muspekare f�r OS/2 startades.
Katalognamnet f�r muspekarna kan inte anv�ndas. 
Du m�ste st�lla in katalogen manuellt.

F�r mer information, l�s WPAMPTR.INF:
  avsnittet "Hur �ndrar jag animationsinst�llningarna?"
I
Ange full s�kv�g dit programfilerna till Animerade Muspekare f�r OS/2 
skall installeras.

IKopierar
IF�ljande filer anv�nds redan d�rf�r att programmet redan �r installerat
och/eller d�rf�r att en annan process anv�nder dessa filer i m�lkatalogen:
%1

Tryck
 1 f�r att l�ta installationsprogram sk�ta alla l�sta filer via en omstart
 %2
I2 f�r att avbryta installationsprogrammet och sk�ta l�sta filer manuellt.
I2 f�r att avinstallera programmet med alternativet 
	    starta om skrivbordet (ingen omstart beh�vs.)
I   Du m�ste f�rs�kra dig om att  
I   - de l�sta meddelande filerna (.MSG) kan skrivas �ver. St�ng alla
     OS/2 textsessioner d�r du har startat eller k�r n�gon .cmd-fil bifogad med
     det installerade programmet. Detta inkluderar sessionen som k�r detta  
     program.
I   - st�ng alla processer som anv�nder f�ljande filer:
     %1
IFilerna kopierades.
EEtt fel uppstod vid kopierning av filerna.
Utf�r f�ljande �tg�rd, beroende p� fil�ndelsen:
 .DLL - starta om datorn och k�r installationsprogrammet igen
 .MSG - st�ng alla OS/2 textsessioner, d�r du antingen k�r
        installations- eller avinstallationsprogrammet och
        k�r installationsprogrammet i en ny OS/2 textsession
IInstallerar WPS klassen %1
EFel vid installation av
WPS klassen %1 (rc=%2).
IF�r att slutf�ra %1 kr�vs en omstart av antingen skrivbordet
eller datorn.

Tryck
  1 f�r att enbart starta om skrivbordet eller
  2 f�r att slutf�ra %1 och starta om datorn vid en
    senare tidpunkt

I*** Grattis! ***
Du har installerat Animerade Muspekare f�r OS/2.
Programfilerna installerades i katalogen %1.

IAvsluta nu alla sessioner och starta om datorn.
I%1 startar nu om skrivbordet.
Obs:
Om du anv�nder alternativet "l�s vid uppstart" i skrivbords inst�llningarna 
kommer skrivbordet l�sas n�r det �r omstartat.
I�ppna d�refter Musobjektet i mappen Systemkonfiguration och v�lj 
fliken Pekare f�r att konfigurera dina animationer.
I
Tryck p� hj�lpknapparna i flikarna f�r att f� detaljerad information om 
Animerade Muspekare f�r OS/2.
Du kan ocks� se denna hj�lp genom ikonen "Animerade Muspekare f�r OS/2" i 
Dokumentation mappen.
En skugga av denna ikon skapas ocks� p� skrivbordet.

Ha kul !
IAvinstallationsprogram
ISyntax: REMOVE.CMD [/?] [/Batch] [/Resetwps]

 /?        - visar denna hj�lp
 /Batch    - bat l�ge. Standardv�rden anv�nds
 /Resetwps - anv�nder alternativet starta om skrivbordet(WPS)

Detta program avinstallerar Animerade Muspekare f�r OS/2 - Version 1.01.
L�s ocks� filen �readme.1st�  f�r mer information om avinstallationen av 
Animerade Muspekare f�r OS/2.
EAnimerade Muspekare f�r OS/2 �r inte installerat.
Avinstallationsprogrammet avbryts.
IVill du avinstallera Animerade Muspekare f�r OS/2
IAvinstallerar WPS klassen %1
EFel vid avinstallation av WPS klassen %1 (rc=%2).
IDu har avinstallerat Animerade Muspekare f�r OS/2.

Obs: Inga filer har tagits bort.

IAvinstallationen har ingen effekt f�rr�n systemet startas om.
