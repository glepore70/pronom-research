�MKMSGF RCD     G          u�	m@���f������$3       R                              rundeu.msg                                                                                                                                                                                                                                                           IRUNCMD_MESSAGEFILE_1.40 DEU JN 2
ITitle AppTitle AppHelp Halt ErrorSysFileSearch ErrorAlreadyIncluded ErrorCannotAdd InfoAdded InfoCreateObjects
IIconFolder IconProgram IconReadme IconSetBreak IconDelBreak IconEditExec IconHelp ExecFileComment
I
RUNCMD - V1.40 - Installationsprogramm
von C.Langanke 1993,1995,1997,1998 - Alle Rechte vorbehalten
Nationale Sprachunterst�tzung von Christian Langanke
I
RUNCMD V1.40 - C.Langanke 1993,1995,1997,1998

IRUNCMD [wartezeit [befehl] [parameter]] [/?|/H]

RUNCMD wartet die angegebene Anzahl von Sekunden, ob
L-SHIFT, L-CONTROL und L-ALT zusammen gedr�ckt werden.
Ist dies der Fall, so wird CMD.EXE (bzw. %%COMSPEC%%) gestartet
oder ein angegebener Befehl ausgef�hrt.
Wird w�hrend der Wartezeit ESCAPE gedr�ckt, so wird
RUNCMD abgebrochen, ohne CMD.EXE zu starten.

Existiert die Datei ?:\_RUNCMD.CMD, so wird diese zus�tzlich ausgef�hrt.
Existiert die Datei ?:\RUNCMD, so wird unbedingt unterbrochen
und ausserdem diese Datei gel�scht.

   wartezeit          - gibt die Wartezeit in Sekunden an. Standardwert: 3
   befehl [parameter] - auszuf�hrendes OS/2 Kommando mt Parametern.
                        Standardwert: leer, %%COMSPEC%% wird ohne Parameter
                        ausgef�hrt.

Syntax f�r CONFIG.SYS:
  CALL=d:\pfad\RUNCMD.EXE
IAbbruch durch Benutzer.
IFehler in SysFileSearch(), rc=%1.
IWarnung: RUNCMD ist bereits in %1 enthalten.
IWarnung: RUNCMD kann nicht zu %1 hinzugef�gt werden.
F�gen Sie folgende Zeile manuell hinzu:
IRUNCMD wurde zu %1 hinzugef�gt.
IErstelle Programmobjekte
IRUNCMD V1.40
IRUNCMD testen
IRUNCMD Readme
IRUNCMD Stoppdatei erstellen
IRUNCMD Stoppdatei l�schen
I_RUNCMD.CMD editieren
IRUNCMD Hilfe
ITragen Sie hier OS/2 Befehle ein, die RUNCMD ausf�hren soll
