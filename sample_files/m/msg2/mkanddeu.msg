�MKMSGF MKA      _          ��M�y���m���$?Zs��6���7Ut���q
       �                              mkanddeu.msg                                                                                                                                                                                                                                                         IWPAMPTR_MESSAGEFILE_1.01 DEU YN 2
ITitle Program Halt ErrTag ErrTimeframe1 ErrTimeframe2 ErrParm ErrSource ErrObj CreateDef CreateDll CreateRes WriteRes ReadScript ErrFile ErrFormatUnknown
IErrStaticPtr1 ErrStaticPtr2 ErrKeyword ErrPtrNotFound ErrNotNum ErrTimeframe3 ReadDir GeneratedBy WriteRc NoPtrs Help1 Help2 Help3
I
Animierter Mauszeiger f�r OS/2 - Version 1.01
von Christian Langanke 1996,1997 - Alle Rechte vorbehalten 
Nationale Sprachunterst�tzung von Christian Langanke

Imakeand - AniMouse Ressource DLL Datei Erstellungsprogramm

IAbbruch durch Benutzer.
I%1: Fehler:
IDer Wert des Parameters /TIMEFRAME:nnn mu� numerisch sein.
IDer Wert des Parameters /TIMEFRAME:nnn 
mu� im Bereich von %1 bis %2 liegen.
IUng�ltiger Parameter �%1�.
IScriptdatei oder Verzeichnis �%1� nicht gefunden.
EDie ben�tigte Datei 
�%1� 
wurde nicht gefunden.
IErstelle Definitionsdatei
IErstelle DLL Datei
IErstelle Ressourcendatei
ISchreibe Ressourcendatei
ILese Scriptdatei �%1� 
IUng�ltige Scriptdatei �%1�. 
�Animation_Script� in der ersten Zeile fehlt.
I%1(%2)%3 Ung�ltiges Format ignoriert.
I%1(%2)%3 Der statische Zeiger ist nicht der erste Zeiger in der Animation.
I%1(%2)%3 Mehr als ein statischer Zeiger in dieser Animation definiert.
I%1(%2)%3 Ung�ltiges Schl�sselwort �%4�.
I%1(%2)%3 Datei �%4� nicht gefunden.
I%1(%2)%3 Bilddauerwert nicht numerisch.
I%1(%2)%3 Bilddauerwert mu� im Bereich von %4 bis %5 liegen.
ILese Quellverzeichnis �%1� 
Igeneriert am %1 um %2 durch 
ISchreibe RC Datei
IKeine Zeiger gefunden/definiert in �%1�
I  Syntax: MAKEAND Scriptdatei|Verzeichnis [/?] [/TIMEFRAME:nnn] [/PACK]
      
  Die Mauszeigerdateien und Bilddauerwerte, welche f�r die Animation verwendet
  werden sollen, k�nnen in einer AniMouse Scriptdatei definiert werden.
I
  Alternativ dazu kann ein Verzeichnis angegeben verwendet werden, welches 
  die Mauszeigerdateien f�r die Animation enth�lt. Dann erstellt MAKEAND 
  zus�tzlich eine AniMouse Scriptdatei, welche zur Definition von 
  individuellen Bilddauerwerten weiterverwendet werden kann.
  Der Name des Verzeichnisses darf auf HPFS-Laufwerken l�nger als 8 Zeichen 
  sein, aber aufgrund einer Einschr�nkung des OS/2 Ressource Compilers keine 
  Leerzeichen enthalten.
I
  Siehe auch "Animierter Mauszeiger f�r OS/2" im Ordner "Information", 
     Abschnitt "Wie kann ich eine AniMouse Ressource DLL erzeugen ?"
