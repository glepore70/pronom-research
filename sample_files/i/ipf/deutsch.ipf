:userdoc.

.im src\common.ipf

.*-------------------------------------------------------------------------
.*fold00.*About the program

:h1 id=about res=1000.�ber dieses Programm
:fn id=mp3.
:p.MP3 ist ein Format zum speichern von Audiodaten (Lieder, Musikst�cke,
etc.) das es erlaubt, viel Ton in wenige Bytes zu kodieren (d.h. sehr gute
Kompressionsraten).
:efn.

:fn id=tag.
:p.An eine MP3-Datei kann ein sog. "ID3 tag" angeh�ngt werden, das ist
einfach eine Reihe von Daten am Ende der Datei, die Informationen �ber dieses
St�ck beinhaltet&colon. Titel, Interpret, Album, Jahr, einen Kommentar, das
Genre (Art), Liednummer (ID3 v1.1). Diese Informationen werden von vielen
MP3-Playern angezeigt.
:efn.

.*-------------------------------------------------------------------------

:artwork name='src/data/minta.bmp' align=center.
:p.Dieses Programm zeigt Information �ber :link refid=mp3
reftype=fn.MP3:elink.-Audio-Dateien und erlaubt es Ihnen einen :link refid=tag
reftype=fn.ID3-Informationstag:elink. zu diesen hinzuzuf�gen.

:p.Neben dem Arbeiten mit einzelnen Dateien erlaubt es &progname. auch, die
Tags f�r mehrere Dateien zu bearbeiten, entweder nacheinander oder auch f�r
alle gleichzeitig.

:p.Zus�tzlich k�nnen Sie den Tag einer oder mehrerer Dateien entfernen und
automatisch Dateien umbenennen lassen.

:p.Dieses Programm kann ausserdem auf Listen der MP3-Dateien erstellen, mit
allen oder nur ausgew�hlten Informationen f�r jede Datei.


:p.:hp2.Was gibt's Neues?:ehp2.

:p.Wenn Sie wissen m�chten, was in dieser Version neu hinzugekommen ist oder
ge�ndert wurde, schauen Sie einfach in der :link refid=history
reftype=hd.Versionsgeschichte:elink. nach.

:p.Bitte beachten Sie, das es noch mehr Dinge gibt, die in zuk�nftigen
Versionen von &progname. verbessert werden k�nnen (und werden). Schicken Sie
mir Ihre Kommentare, was Sie noch gerne haben m�chten ... (allerdings,
versprechen kann ich nix ;-)

:p.:hp2."Registrieren":ehp2.

:p.&progname. ist Mailware, schreiben Sie mir also bitte eine kurze Mail
(oder Postkarte oder sowas in der Richtung) wenn Sie &progname. benutzen!
(Siehe auch :link refid=register reftype=hd."Die Top 10 Gr�nde um &progname.
nicht zu registrieren":elink.;-)



.*-------------------------------------------------------------------------
.*fold00.*The windows

:h1 id=windows res=2000.Die Fenster
:p.Dieser Teil informiert Sie �ber die verschiedenen Fenster von &progname.,
welche Funktionen sie beinhalten und wie man sie benutzt.
:p.
:ul compact.
:li.:link refid=mainwindow reftype=hd.Das Hauptfenster:elink.
:li.:link refid=settingswindow reftype=hd.Das Einstellungen-Fenster:elink.
:li.:link refid=listwindow reftype=hd.Das Listen-Fenster:elink.
:li.:link refid=autoopenwindow reftype=hd.Das Auto-�ffnen-Fenster:elink.
:li.:link refid=renamewindow reftype=hd.Das Umbenennen-Fenster:elink.
:eul.

.*-------------------------------------------------------------------------
.*fold00.*The main window

:h2 id=mainwindow res=2100.Das Hauptfenster
:p.Das Hauptfenster ist das Fenster, in dem Sie das meiste Ihrer Arbeit
erledigen werden. Hier k�nnen Sie die Tags von Dateien bearbeiten und
Informationen dar�ber erhalten.

:p.Das Hauptfenster hat folgende Bereiche&colon.
:ul compact.
:li.:link refid=filelist reftype=hd.Die Dateiliste:elink.
:li.:link refid=fileinfo reftype=hd.Dateiinfo-Anzeige:elink.
:li.:link refid=taginfo reftype=hd.Taginfo-Anzeige:elink.
:li.:link refid=buttons reftype=hd.Die Buttons und das Men�:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*The selected files list

:h3 id=filelist res=2110.Die Dateiliste
:p.In dieser Liste befinden sich alle ausgew�hlten Dateien, d.h. die Dateien,
mit denen Sie arbeiten k�nnen.

:dl break=all tsize=5.

:dt.:hp2.Dateien in die Liste aufnehmen:ehp2.
:dd.Es gibt mehrere M�glichkeiten, Dateien in die Liste aufzunehmen&colon.
:ul.

:li.Sie k�nnen den Dateiauswahldialog benutzen, der erscheint, wenn Sie den
"�ffnen"-Button oder "�ffnen..." aus dem "Dateien"-Menu ausw�hlen.

:li.Sie k�nnen &progname. :hp1.Verzeichnissen nach Dateien durchsuchen:ehp1.
lassen, indem Sie Auto-�ffnen..." aus dem "Dateien"-Menu ausw�hlen. Ein
:link refid=autoopenwindow reftype=hd.Verzeichnisauswahldialog:elink.
erscheint, in dem Sie das nach MP3-Dateien zu durchsuchende Verzeichnis
bestimmen k�nnen.

:p.:hp1.Anmerkung&colon.:ehp1. Alle Unterverzeichnisse des gew�hlten
Verzeichnisses werden ebenfalls durchsucht.

:li.Sie k�nnen Dateien und/oder Verzeichnisse auf das &progname.-Hauptfenster
ziehen (mittels Drag &amp. Drop). Die Dateien werden der Liste hinzugef�gt,
die Verzeichnisse werden nach hinzuzuf�genden Dateien durchsucht.

:eul.

:dt.:hp2.Dateien aus der Liste l�schen:ehp2.
:dd.Es gibt mehrere Wege, Dateien aus der Liste zu l�schen&colon.
:ul.
:li.Um nur die aktuelle Datei zu l�schen, dr�cken Sie ALT+"D" oder w�hlen Sie
"Aktuelle freigeben" aus dem "Dateien"-Men�.
:li.Um alle Dateien aus der Liste zu l�schen, w�hlen Sie "Alle freigeben" aus
dem "Dateien"-Men�.
:eul.
:edl.

:p.Globale Dateioperationen wie "Alle speichern" oder "Alle entfernen"
beeinflussen alle Dateien in der Liste.

:p.Einfache Dateioperationen wie "Speichern" oder "Entfernen" beziehen sich
nur auf die aktuell aus der Liste ausgew�hlte Datei.

:p.Der Titel dieser Gruppe gibt die Anzahl der zur Zeit in der Liste
befindlichen Dateien an.

:p.Wenn Sie ALT+'n' dr�cken (oder "Speichern &amp. N�chster" aus dem
"Tag"-Men� ausw�hlen) wird der aktuelle Tag automatisch gespeichert und die
n�chste Datei in der Liste zur aktuellen gemacht. Wenn Sie ALT+'v' dr�cken
(oder "Speichern &amp. Vorheriger aus dem "Tag"-Men� ausw�hlen) passiert
dasselbe, nur das dann die vorherige Datei zur aktuellen gemacht wird. Auf
diese Weise k�nnen Sie einfach mehrere Dateien nacheinander bearbeiten.


.*-------------------------------------------------------------------------
.*fold00.*The file information display

:h3 id=fileinfo res=2120.Die Dateiinformations-Anzeige
:p.Dieser Teil des Fensters zeigt (technische) Informationen �ber die aktuelle
MP3-Datei. Die Werte hier werden direkt aus dem Kopf der Datei entnommen und
k�nnen nicht ver�ndert werden.

:dl break=all tsize=5.

:dt.:hp2.Version:ehp2.
:dd.Dieses Feld zeigt die :hp1.Version:ehp1. der MP3-Datei.

:dt.:hp2.Layer:ehp2.
:dd.Dieses Feld zeigt den :hp1.Layer:ehp1. (1, 2 oder 3) der MP3-Datei.

:dt.:hp2.Frequenz:ehp2.
:dd.Dieses Feld zeigt die :hp1.Sampling-Frequenz:ehp1. oder
:hp1.Sampling-Rate:ehp1. der Datei.

:dt.:hp2.Bitrate:ehp2.
:dd.Dieses Feld zeigt die :hp1.Bitrate:ehp1. der MP3-Datei. Die Bitrate teilt
dem MP3-Player mit, wie viele Bits pro Sekunde dekodiert werden sollen.

:dt.:hp2.Modus:ehp2.
:dd.Kann Stereo, Joint-Stereo, Dual-Channel oder Mono sein. Bitte fragen Sie
mich nicht, was Joint-Stereo oder Dual-Channel sind &colon.-)

:dt.:hp2.Ungef. Zeit:ehp2.
:dd.Die ungef�hre Spielzeit der MP3-Datei. Wird berechnet aus der Gr�sse der
Datei und der Bitrate.

:dt.:hp2.Emphasis:ehp2.
:dd.Heute nur noch selten benutzt. Irgendwas mit Rauschunterdr�ckung ...

:dt.:hp2.Privat:ehp2.
:dd.Gibt an, ob die MP3-Datei privat oder nicht ist - was auch immer das
bedeuten soll.

:dt.:hp2.Copyright:ehp2.
:dd.Gibt an, ob die MP3-Datei Copyright-gesch�tzt ist.

:dt.:hp2.Original:ehp2.
:dd.Gibt an, ob die MP3-Datei das Original oder eine Kopie ist. Ich weiss
nicht, wozu genau das gut sein soll - oder auch, wer das eigentlich bestimmt.

:dt.:hp2.CRCs:ehp2.
:dd.Gibt an, ob die MP3-Datei eine Form von Fehlerkontrolle besitzt.

:dt.:hp2.Padding:ehp2.
:dd.Irgendwelcher technischer Kram der mit dem Format der MP3-Datei
zusammenh�ngt.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*The tag information display

:h3 id=taginfo res=2130.Die Tag-Informationsanzeige
:fn id=boc.
:p.Vom Album "Imaginos" von Blue &Oe.yster Cult.
:efn.
:fn id=sid.
:p.Aus dem Text von "Shut it down" von Mot&oe.rhead's Album "Iron fist".
:efn.
.*-------------------------------------------------------------------------
:p.Dieser Teil des Fensters zeigt Informationen an, die im ID3-Tag der Datei
enthalten sind. Sie k�nnen diese Werte nach Belieben ver�ndern (oder neue
eingeben, wenn die Datei noch keinen Tag hat). Nat�rlich nur, wenn die Datei
nicht schreibgesch�tzt ist (z.B. das Read-Only-Attribut gesetzt hat oder sich
auf eine CD-ROM befindet).

:p.:hp1.Anmerkung&colon.:ehp1. Die L�ngenbegrenzungen sind die der
ID3-Tag-Spezifikation, also beschweren Sie sich nicht bei mir, wenn Sie :link
refid=boc reftype=fn."The siege and investiture of Baron von Frankenstein's
castle at Weisseria":elink. nicht im Titel-Feld unterbringen k�nnen ...

:dl break=all tsize=5.

:dt.:hp2.Titel:ehp2.
:dd.Der Titel des Liedes (Oder welches St�ck Ton die Datei auch immer enth�lt).
Kann bis zu 30 Zeichen lang sein.

:dt.:hp2.Interpret:ehp2.
:dd.Mozart, Black Sabbath, Bananarama, eine bellende Katze ... Sie verstehen
schon. Kann bis zu 30 Zeichen lang sein.

:dt.:hp2.Album:ehp2.
:dd.Von welchem Album dieses Lied (oder was auch immer) stammt. Wenn es von
keinem Album-�hnlichen Ding kommt, k�nnen Sie dieses Feld leer lassen, wenn
Sie wollen. Ein weiteres Feld, das bis zu 30 Zeichen fasst.

:dt.:hp2.Jahr:ehp2.
:dd.Wann das Lied aufgenommen, ver�ffentlicht wurde, Nr.1 in den Charts war
oder was auch immer Ihrer Meinung nach hier hin passt - selbst Buchstaben, da
es keine Einschr�nkung auf Zahlen gibt. Wer weiss, f�r was es gut sein mag ...
Bis zu 4 Zeichen finden hier Platz.

:dt.:hp2.Genre:ehp2.
:dd.Welche Art von Musik das St�ck ist. W�hlen Sie eines aus der ausf�hrlichen
Liste. Ich weiss nicht, wer diese Genres "erfindet", aber es scheint eine
allgemeine �bereinkunft dar�ber zu geben. Wenn Sie wollen, k�nnen Sie sie auch
selbst bearbeiten (siehe auch :link refid=genresfile reftype=hd."Die
Genredatei":elink.).

:dt.:hp2.Kommentar:ehp2.
:dd.Plazieren Sie einen Kommentar hier. Nicht �ber das Programm nat�rlich,
sondern �ber die MP3-Datei. 30 Zeichen (nur 28, wenn Sie "Liednummer"
benutzen), the same old thing (:link refid=sid reftype=fn.I just wanna shut
it down:elink.).
:p.:hp1.Anmerkung&colon.:ehp1. Sie k�nnen hier Platzhalter benutzen, die
automatisch durch die entsprechenden Werte ersetzt werden, wenn der Tag
gespeichert wird (funktioniert auch f�r "Alle speichern")&colon.
:ul compact.
:li.$T - Titel
:li.$A - Interpret
:li.$a - Album
:li.$Y - Jahr
:li.$G - Genre
:li.$v - MPEG-Versionsnummer
:li.$l - Layer der Datei
:li.$t - Ungef�hre Spielzeit
:li.$m - Modus
:li.$f - Frequenz
:li.$b - Bitrate
:li.$r - Track
:eul.
:p.:hp1.Beispiel&colon.:ehp1. Wenn Sie "Spielzeit=$t, Modus=$m" hier angeben
und speichern, w�rde der Kommentar danach ungef�hr so aussehen
"Spielzeit=03&colon.14, Modus=Stereo".

:dt.:hp2.Track #:ehp2.
:dd.Hier k�nnen Sie angeben, welche Nummer das Lied hatte (wenn es z.B. von
einer CD oder �hnlichem stammt).
:p.:hp1.Anmerkung&colon.:ehp1. Dieses Feld ist eine Erweiterung von ID3 v1.0
(es ist v1.1). Wenn Sie hier 0 einsetzen, ist der Tag v1.0. Wenn Sie einen
Wert ungleich 0 einsetzen, ist der Tag v1.1. Die Liednummer wird in den letzen
beiden Bytes des Kommentars gespeichert, d.h. der Kommentar kann dann nur 28
Zeichen lang sein. Wenn Sie bereits 29 oder 30 Zeichen eingegeben haben,
werden die letzten Zeichen beim Speichern abgeschnitten.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*The push buttons + menu

:h3 id=buttons res=2140.Die Pushbuttons und das Men�
:dl break=all tsize=5.
:dt.:hp2.�ffnen...:ehp2.
:dd.Dieser Punkt erzeugt einen Dateiauswahldialog, der es Ihnen erlaubt
Dateien auszuw�hlen, die zur :link refid=filelist reftype=hd.Dateiliste:elink.
hinzugef�gt werden sollen.

:dt.:hp2.Auto-�ffnen...:ehp2. (nur Men�)
:dd.Erzeugt einen :link refid=autoopenwindow
reftype=hd.Verzeichnisauswahldialog:elink., der es Ihnen erm�glicht, das
Verzeichnis, welches nach Dateien, die zur :link refid=filelist
reftype=hd.Dateiliste:elink. hinzugef�gt werden sollen, durchsucht werden
soll, zu bestimmen. Unterverzeichnisse werden ebenfalls durchsucht.

:dt.:hp2.Aktuelle freigeben:ehp2. (nur Men�)
:dd.L�scht die aktuelle Datei aus der :link refid=filelist
reftype=hd.Dateiliste:elink..

:dt.:hp2.Alle freigeben:ehp2. (nur Men�)
:dd.L�scht alle Dateien aus der :link refid=filelist
reftype=hd.Dateiliste:elink..

:dt.:hp2.Umbenennen...:ehp2. (nur Men�)
:dd.�ffnet den :link refid=renamewindow reftype=hd.Umbenennen-Dialog:elink.,
der es Ihnen erlaubt, automatisch alle Dateien mittels einer Namens-Vorlage
(die auch Makros enthalten kann) umzubenennen.

:dt.:hp2.Liste...:ehp2.
:dd.�ffnet den :link refid=listwindow reftype=hd.Listendialog:elink., der
es Ihnen erlaubt, eine Liste der ausgew�hlten Dateien auszugeben. Sie k�nnen
ebenfalls w�hlen, welche Informationen f�r jede Datei in die Liste aufgenommen
werden sollen.

:dt.:hp2.Beenden:ehp2.
:dd.Wie Sie sich wahrscheinlich schon gedacht haben, beendet die Auswahl
dieses Punktes das Programm. Speichern Sie, was Sie behalten m�chten, es gibt
kein "Wirklich beenden?" ...

:dt.:hp2.(Aktuellen) Speichern:ehp2.
:dd.Speichert die Daten in der :link refid=taginfo
reftype=hd.Tag-Informationsgruppe:elink. als den Tag f�r die aktuelle Datei.

:dt.:hp2.Speichern &amp. N�chster:ehp2. (nur Men�)
:dd.Speichert automatisch den aktuellen Tag und macht die n�chste Datei in der
Liste zur aktuellen Datei.

:dt.:hp2.Speichern &amp. Vorheriger:ehp2. (nur Men�)
:dd.Speichert automatisch den aktuellen Tag und macht die vorherige Datei in
der Liste zur aktuellen Datei.

:dt.:hp2.Alle speichern:ehp2.
:dd.Speichert die Daten in der :link refid=taginfo
reftype=hd.Tag-Informationsgruppe:elink. als den Tag f�r alle Dateien in der
:link refid=filelist reftype=hd.Dateiliste:elink..
:p.Wenn Sie eines oder mehrere der Eingabefelder leer lassen (und das heisst
:hp1.leer:ehp1., keine Leerzeichen, nichts!) wird der Wert dieser Information
nicht ge�ndert, falls die Datei bereits einen Tag mit dieser Information hat.
Die Auswahl von "(keines)" f�r das Genre hat denselben Effekt f�r dieses Feld.

:dt.:hp2.(Aktuellen) Entfernen:ehp2.
:dd.Entfernt den Tag der aktuellen Datei - wenn Sie einen hat (andernfalls ist
dieser Punkt nicht ausw�hlbar). Nicht besonders n�tzlich, um ihrer belegten
Plattenplatz zu verringern, da es die Datei nur um 128 Bytes verk�rzt.

:dt.:hp2.Alle entfernen:ehp2.
:dd.Entfernt die Tags alle Dateien in der :link refid=filelist
reftype=hd.Dateiliste:elink.. Bitte mit Vorsicht benutzen!

:dt.:hp2.Datei abspielen:ehp2. (Nur Men�)
:dd.Startet einen MP3-Player Ihrer Wahl mit der aktuellen Datei.
Siehe :link refid=playercmdfiles reftype=hd.Die MP3-Player CMD-Dateien:elink.
f�r mehr Infos.

:dt.:hp2.Buttons anzeigen:ehp2. (nur Men�)
:dd.Zeigt (wenn versteckt) oder versteckt (wenn angezeigt) die Buttons auf der
rechten Seite des Fensters.

:dt.:hp2.Dateiinfo anzeigen:ehp2. (menu only)
:dd.Zeigt (wenn versteckt) oder versteckt (wenn angezeigt) die :link
refid=fileinfo reftype=hd.Dateiinfoanzeige:elink..

:dt.:hp2.Hilfeinhalt:ehp2. (nur Men�)
:dd.Zeigt den Inhalt der Online-Hilfe.

:dt.:hp2.(Allgemeine) Help:ehp2.
:dd.Zeigt diese Hilfe. Aber ich denke, das haben Sie schon alleine
herausgefunden ;-)

:dt.:hp2.Info / Produktinformation:ehp2.
:dd.Zeigt ein Nachrichtenfenster mit Informationen �ber diese Version von
&progname. sowie Angaben zum Kontaktieren des Autors und solche Sachen.

:edl.




.*-------------------------------------------------------------------------
.*fold00.*The settings window

:h2 id=settingswindow res=2200.Das Einstellungen-Fenster
:p.Das Einstellungen-Fenster erm�glicht Ihnen, diverse Dinge (wie z.B.
Benachrichtigungen (z.B. beim Hinzuf�gen von Dateien zur :link refid=filelist
reftype=hd.Dateiliste:elink.) oder die verwendete Sprache zu �ndern und
einzustellen.

:p.Der "Ok"-Button am unteren Rand des Fensters schliesst das Fenster und
aktiviert die Einstellungen. Der "Widerrufen"-Button setzt alle �nderungen
auf der aktuell angezeigten Seite des Notizbuches auf ihre urspr�nglichen
Werte zur�ck. Der "Hilfe"-Button zeigt einen Hilfetext f�r die aktuelle Seite.

:p.Das Einstellungsnotizbuch hat folgende Seiten&colon.
:ul compact.
:li.:link refid=notification reftype=hd.Benachrichtigung:elink.
:li.:link refid=keepinfo reftype=hd.Infos behalten:elink.
:li.:link refid=misc reftype=hd.Sonstiges:elink.
:li.:link refid=language reftype=hd.Sprache:elink.
:eul.

.*-------------------------------------------------------------------------
.*fold00.*Notification

:h3 id=notification res=2210.Die "Benachrichtigung"-Seite
:p.Auf dieser Seite k�nnen Sie ausw�hlen, �ber welche Ereignisse und in
welcher Weise Sie &progname. informieren soll.

:dl break=all tsize=5.

:dt.:hp2.Benachrichtige mich wenn ...:ehp2.
:dd.Hier k�nnen Sie ausw�hlen, �ber welche Ereignisse Sie benachrichtigt
werden wollen. Dieser Teil ist ziemlich selbsterkl�rend, denke ich.

:dt.:hp2.Benachrichtigungs-Art:ehp2.

:dd.Hier k�nnen Sie ausw�hlen, wie Sie benachrichtigt werden wollen.
:ul.
:li."Nachrichtenfenster zum Wegklicken" zeigt ein Nachrichtenfenster mit einem
"Ok"-Button, den Sie ausw�hlen m�ssen, um das Fenster zu schliessen.
:li."Zeitgesteuertes Nachrichtenfenster" zeigt ein Fenster, das nach einigen
Sekunden automatisch wieder verschwindet (Sie k�nnen auch mit der Maus
hineinklicken um es verschwinden zu lassen).
:li."Akkustisch (3 Beeps)" gibt einfach drei T�ne �ber den Lautsprecher aus.
:eul.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Keep info

:h3 id=keepinfo res=2220.Die "Infos behalten"-Seite
:p.Auf dieser Seite k�nnen Sie w�hlen, ob (einige der) Tag-Informationen beim
Wechseln zu einer neuen Datei (mittels ALT+'n' oder ALT+'v') in den
Eingabefeldern behalten werden sollen und was behalten werden soll.

:dl break=all tsize=5.

:dt.:hp2.Behalte Taginfos beim Wechsel der Datei:ehp2.
:dd.Markieren Sie diesen Button, wenn Sie das "Infos behalten"-Feature
benutzen wollen. Wenn Sie diesen Button nicht markieren wird die neue Datei
nur die Infos, die in ihrem Tag gespeichert sind, bekommen.

:dt.:hp2.Behalte ...:ehp2.
:dd.Hier k�nnen Sie ausw�hlen, welche Tag-Informationen behalten werden
sollen. Ziemlich selbsterkl�rend denke ich.

:dt.:hp2.Optionen:ehp2.
:dd.Einige Optionen f�r die "Infos behalten"-Funktion.
:ul.
:li."Tracknummer erh�hen/erniedrigen" - Wenn Sie dies aktivieren, wird die
Liednummer automatisch erh�ht wenn Sie zur n�chsten Datei wechseln, bzw.
erniedrigt, wenn Sie zur vorhergehenden Datei wechseln.
:li."Nur behalten, wenn noch nicht vorhanden" - Wenn Sie dies aktivieren,
werden die Informationen, die Sie als zu behaltend ausgew�hlt haben, nur dann
auch behalten, wenn die neue Datei diese Info noch nicht besitzt (d.h. das
Eingabefeld ist leer, die Tracknummer steht auf 0, das Genre ist "(keines)").
Wenn die neue Datei diese Info besitzt, wird sie nicht ge�ndert.
:eul.
:edl.
:p.:hp1.Beispiel&colon.:ehp1. Sie haben "Titel" und "Interpret" in der
"Behalte ..."-Gruppe ausgew�hlt und "Nur behalten, wenn noch nicht vorhanden"
(und nat�rlich "Behalte Taginfos beim Wechsel der Datei") ist aktiviert.
Der Titel der aktuellen Datei ist "I wish you were a beer" und der Interpret
"Cycle Sluts from Hell". Sie dr�cken ALT+'n' (oder w�hlen "Speichern &amp.
N�chster" aus dem "Tag"-Men�). Die neue Datei hat bereits einen Titel (sagen
wir "Dark Ships") aber noch keinen Interpret. Die Info in den Eingabefeldern
f�r die neue Datei wird nun lauten&colon. "Dark Ships" im Titel-Feld und
"Cycle Sluts from Hell" im Interpret-Feld
:p.Wenn Sie "Nur behalten, wenn ..." im obigen Beispiel nicht aktiviert
h�tten, w�rde der Titel f�r die neue Datei "I wish you were a beer" lauten.
:p.Hmm, Ich hoffe das zu verstehen is einfacher als es zu programmieren war
;-)

:p.:hp1.Anmerkung&colon.:ehp1. Wenn Sie beim Benutzen von "Infos behalten"
eine Datei erreichen, die schreibgesch�tzt ist, oder Infos f�r ein Feld hat
und "Nur behalten wenn noch nicht vorhanden" aktiviert ist, wird &progname.
von jetzt an die Info dieser Datei behalten und nicht die des "Originals".
Das wird hoffentlich in einer zuk�nftigen Version behoben.


.*-------------------------------------------------------------------------
.*fold00.*Misc

:h3 id=misc res=2230.Die "Sonstiges"-Seite
:p.Auf dieser Seite finden Sie diverse sontige Einstellungen.

:dl break=all tsize=5.

:dt.:hp2.Lese Genres aus Datei ...:ehp2.
:dd.Hier k�nnen Sie den Namen einer (Text-)Datei angeben, aus der &progname.
die Namen der Genres lesen soll. F�r weitere Informationen siehe :link
refid=genresfile reftype=hd."Die Genredatei":elink..

:dt.:hp2.MP3-Player-Kommando:ehp2.
:dd.Hier k�nnen Sie den Befehl eingeben, der zum Starten eines MP3-Players
benutzt werden soll, wenn Sie "Datei abspielen" aus dem "Extras"-:link
refid=buttons reftype=hd.Men�:elink. des :link refid=mainwindow
reftype=hd.Hauptfensters:elink. w�hlen. Geben Sie $f an der Stelle an, an der
der Dateiname auf der Kommandozeile erscheinen soll.

:p.:hp1.Anmerkung&colon.:ehp1. Aus technischen Gr�nden m�ssen Sie eine
CMD-Datei benutzen, um den Player zu starten, wenn Sie direkt die EXE-Datei
aufrufen funktioniert das m�glicherweise nicht. Ich habe mehrere :link
refid=playercmdfiles reftype=hd.CMD-Dateien f�r die bekanntesten
MP3-Player:elink. f�r OS/2 bei &progname. beigef�gt, bitte passen Sie das,
welches Sie benutzen wollen, an Ihre Konfiguration an (mit jedem beliebigen
Texteditor m�glich).

:p.:hp1.Beispiel&colon.:ehp1. Geben Sie "goPM123 $f" hier ein, wenn Sie PM123
benutzen wollen, um ihre Dateien abzuspielen.

:dt.:hp2.Andere Optionen:ehp2.
:dd.Hier k�nnen Sie diverse andere Einstellungen ver�ndern&colon.
:ul.

:li."Dateiname als Titel wenn keine Titelinfo" - Wenn Sie dies aktivieren,
wird &progname. automatisch den Dateinamen in das Titel-Feld der :link
refid=taginfo reftype=hd.Tag-Informationsanzeige:elink. eintragen, wenn die
Datei noch keinen Titel besitzt.

:li."Benutze eigenes Dateiauswahlfenster" - Wenn Sie dies aktivieren, benutzt
&progname. ihr eigenes Dateiauswahlfenster (das IMHO etwas besser aussieht als
der Standard-System-Dateidialog).

:li."Keine Warnung bei fehlerhaften Dateien" - Ab und zu ist es &progname.
nicht m�glich, den Header mancher MP3-Dateien zu dekodieren. (manche Dateien
haben :hp1.wirklich:ehp1. seltsame Header) und wird annehmen, das es sich bei
der Datei nicht um eine g�ltige MP3-Datei handelt (Das wird nat�rlich auch
passieren, wenn es sich bei der Datei :hp1.in der Tat:ehp1. um keine MP3-Datei
handelt!). Wenn Sie viele solcher Dateien haben, k�nnen Sie hier die Warnung,
die &progname. in solchen F�llen anzeigt, deaktivieren.

:li."Read-only&colon. Felder nur schreibgesch�tzt" - Normalerweise setzt
&progname. alle Felder in der :link refid=taginfo
reftype=hd.Tag-Informationsanzeige:elink. auf "gesperrt" wenn die aktuelle
Datei schreibgesch�tzt ist. Da dies allerdings den Inhalt manchmal etwas
schwer zu erkennen macht, k�nnen Sie dies deaktivieren und &progname. wird die
Eingabefelder nur noch schreibgesch�tzt machen, so das Sie sie nicht
bearbeiten k�nnen.

:eul.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*Language

:h3 id=language res=2240.Die "Sprache"-Seite
:p.Auf dieser Seite k�nnen Sie w�hlen, welche Sprache &progname. benutzen
soll. Sie k�nnen eine beliebige Sprache aus der angezeigten Liste ausw�hlen.

:p.:hp1.Anmerkung&colon.:ehp1. Wenn Sie hier eine andere Sprache w�hlen, wird
Sie erst ge�ndert, wenn Sie das Programm neu starten.

:p.:hp1.Anmerkung&colon.:ehp1. Wenn Sie &progname. in eine andere Sprache
�bersetzen m�chten, sind Sie herzlich willkommen! Bitte schauen Sie unter
:link refid=helpwanted reftype=hd."Hilfe gesucht!":elink. nach weiteren
Informationen.


.*-------------------------------------------------------------------------
.*fold00.*The list window
:h2 id=listwindow res=2300.Das Listen-Fenster
:p.Dieses Fenster erm�glicht es Ihnen, Listen aller ausgew�hlten Dateien auf
Platte auszugeben. Die Liste enth�lt eine Zeile f�r jede Datei.

:dl break=all tsize=5.

:dt.:hp2.Ausgabedatei &amp. "Suchen..."-Button:ehp2.
:dd.Hier k�nnen Sie den Namen der Datei, in die die Liste ausgegeben werden
soll, angeben. Der "Suchen..."-Button wird einen Dateiauswahldialog �ffnen,
der es Ihnen erm�glicht, die Datei auf einfache Weise zu bestimmen.

:dt.:hp2.Gib aus ...:ehp2.
:dd.Hier k�nnen Sie ausw�hlen, welche Infomationen aus dem Tag f�r jede Datei
ausgegeben werden sollen. Bitte w�hlen Sie mindestens einen Eintrag. Die
Reihenfolge der Felder kann zur Zeit leider noch nicht ver�ndert werden
(m�glicherweise in einer zuk�nftigen Programmversion).

:dt.:hp2.Listen-Kopfzeile ausgeben:ehp2.
:dd.Wenn Sie diesen Button selektieren, enth�lt die Liste eine Kopfzeile mit
den Namen der Informationseintr�ge als �berschrift.

:dt.:hp2.Gesamtzeit ausgeben:ehp2.
:dd.Wenn Sie diesen Button selektieren, wird die Spielzeit aller Dateien
aufsummiert und am Ende der Liste mit ausgegeben.

:dt.:hp2.Automatische Spaltenbreite:ehp2.
:dd.Wenn Sie diesen Button selektieren, werden die Spalten in der Liste
automatisch so breit wie der jeweils l�ngste vorkommende Eintrag gemacht.
Wenn dieser Button nicht selektiert ist, wird immer die maximal m�gliche
L�nge der Infofelder benutzt.
:p.:hp1.Anmerkung&colon.:ehp1. Wenn Sie Dateiname &amp. Pfad ausgeben lassen,
wird diese Spalte immer automatische Breite haben; ich denke nicht, das es
gut aussieht, diese Spalte immer 256 Zeichen (die maximale L�nge eines
HPFS-Pfades) breit zu machen. Bitte beachten Sie auch, das diese Option die
Zeit zum Ausgeben der Liste ungef�hr verdoppeln wird, da &progname. erst alle
Dateien nach den Feldern mit der maximalen L�nge durchsuchen muss (dies gilt
nicht f�r das Dateiname/Pfad-Feld, da dort die maximale L�nge bereits beim
Einf�gen in die :link refid=filelist reftype=hd.Dateiliste:elink. bestimmt
wird).

:dt.:hp2.Nur Dateien mit Tag:ehp2.
:dd.Wenn Sie diesen Button selektieren, werden nur Dateien mit einem ID3-Tag
in die Liste ausgegeben, Dateien ohne Tag werden ignoriert.

:dt.:hp2.Ok:ehp2.
:dd.Dieser Button speichert die Liste in die angegebene Datei.

:dt.:hp2.Abbruch:ehp2.
:dd.Dieser Button schliesst das Fenster ohne eine Aktion auszuf�hren.

:dt.:hp2.Hilfe:ehp2.
:dd.Dieser Button zeigt diesen Hilfetext.

:edl.

.*-------------------------------------------------------------------------
.*fold00.*The renaming window
:h2 id=renamewindow res=2500.Das Umbenennen-Fenster
:p.Dieses Fenster erm&oe.glicht es Ihnen, alle Dateien in der Liste nach
einer konfigurierbaren Vorlage umzubenennen.

:dl break=all tsize=5.

:dt.:hp2.Umbenennungs-Vorlage:ehp2.
:dd.Dieses Feld enth&ae.lt den Umbenennen-Text. Sie k&oe.nnen jede Kombination
von normalem Text und Makros eingeben. Alle Dateien werden nach dieser Vorlage
umbenannt. Wenn ein Name bereits existiert, wird die Datei denselben Namen
erhalten aber mit einer angeh&ae.ngten, eindeutigen Nummer.
:p.Die folgenden Makros sind verf&ue.gbar und werden automatisch durch die
passenden Werte ersetzt&colon.
:ul compact.
:li.$T - Titel
:li.$A - Interpret
:li.$a - Album
:li.$Y - Jahr
:li.$G - Genre
:li.$C - Kommentar
:li.$v - MPEG Versions-Nummer
:li.$l - Layer
:li.$t - Ungef. Spieldauer
:li.$m - Modus
:li.$f - Frequenz
:li.$b - Bitrate
:li.$r - Track (Benutzen Sie $r2 oder $r3 um Tracknummern mit fester L�nge von zwei oder drei zu bekommen)
:eul.
:p.:hp1.Beispiel&colon.:ehp1. Wenn Sie "($A)-$T" hier eingeben w&ue.rden und
der Titel der ersten Datei w&ae.re "Eat the Rich" von "Mot&oe.rhead", dann
w&ue.rde der neue Dateiname lauten "(Mot&oe.rhead)-Eat the Rich.mp3".
:p.:hp1.Anmerkung&colon.:ehp1. Alle Zeichen, die nicht in (HPFS-)Dateinamen
erlaubt sind ("*", "?", etc.) werden vor dem Umbenennen nach '_' konvertiert.

:dt.:hp2.Begrenze die L&ae.nge der Namen auf nicht mehr als ...:ehp2.
:dd.Besonders beim Erstellen von CDs, wo das Dateisystem z.B. keine Namen mit
einer L&ae.nge gr&oe.sser als 31 Zeichen erlaubt, ist dieses Feature
n&ue.tzlich. Die Namen werden automatisch auf die angegebene Anzahl von
Zeichen begrenzt (schliesst die Erweiterung mit ein!).

:dt.:hp2.Ersetzte Leerzeichen durch Unterstriche:ehp2.
:dd.Wenn Sie keine Leerzeichen in ihren Dateinamen m&oe.chten, w&ae.hlen Sie
diesen Button aus und sie werden durch '_' ersetzt werden.

:dt.:hp2.Umbenennen:ehp2.
:dd.Schenkt Ihnen Reichtum, Ruhm und ewige Jugend. Naja, eigentlich nicht
(sonst w&ae.re &progname. sicher nicht frei verf&ue.gbar ;-). Dieser Button
startet das Umbenennen.

:dt.:hp2.Abbruch:ehp2.
:dd.Entfernt den Fluch von allen Gegenst&ae.nden in Ihrem Rucksack wenn Sie
sich selbst damit verzaubern.
:p.Nein, Moment, falsche Dokumentation! Dieser Button schliesst das Fenster
und tut weiter nichts.

:dt.:hp2.Hilfe:ehp2.
:dd.Dieser Button l&ae.sst einen Chor von "Hilfe! Hilfe!"-Schreien aus jedem
verf&ue.gbaren Audioger&ae.t erschallen. Oder sowas ...

:edl.
:p.:hp1.Anmerkung&colon.:ehp1. Diese Funktion wird ziemlich danebengehen
(d.h. eine Fehlermeldung anzeigen) wenn ein Dateiname f�r das Dateisystem zu
lang w�re (z.B. auf einem FAT-Laufwerk, bei dem Dateinamen nur bis zu 8
Zeichen lang sein k�nnen).

.*-------------------------------------------------------------------------
.*fold00.*The autoopen window
:h2 id=autoopenwindow res=2400.Das Auto-�ffnen-Fenster
:p.Dieses Fenster erm�glicht es Ihnen, das Verzeichnis, welches nach
MP3-Dateien durchsucht werden soll, zu bestimmen.

.*-------------------------------------------------------------------------
.*fold00.*Commandline arguments
:h1 id=cmdlineargs res=3000.Kommandozeilen-Argumente
:p.Das erste Kommandozeilen-Argument, das &progname. akzeptiert, ist ein
Datei- oder Verzeichnisname. Das erm�glicht es Ihnen, die zu ladende Datei
oder das durchsuchende Verzeichnis schon beim Start anzugeben und ausserdem
k�nnen Sie nun MP3-Dateien auf der WPS mit &progname. assoziieren.

:p.:hp1.Beispiel&colon.:ehp1. Wenn Sie "minta c&colon.\mp3s" in der Kommanozeile
eintippen, wird &progname. das Verzeichnis "c&colon.\mp3s" (nat�rlich nur
wenn es ein Verzeichnis ist ;-) nach MP3-Dateien durchsuchen und wenn das
Hauptfenster ge�ffnet wird, werden alle gefundenen Dateien in der :link
refid=filelist reftype=hd.Dateiliste:elink. stehen.

:p.Das zweite Argument ist "-f"&colon. Aus irgendwelchen Gr�nden hat WarpAMP
Probleme die Informationen anzuzeigen, wenn die Tag-Felder, wie normalerweise,
mit Nullen aufgef�llt sind und verlangt stattdessen Leerzeichen. Wenn Sie
dieses Argument benutzen wird &progname. ebenfalls Leerzeichen benutzen.

:p.Ein weiteres Argument ist "-t"&colon. welches &progname. mitteilt, beim
Umbenennen die Tracknummer zweistellig (d.h. mit f�hrender Null falls n�tig)
auszugeben.

:p.Noch ein Argument ist "-i<pfad>" welches &progname. mitteilt, die 
INI-Datei im Verzeichnis "pfad" (und nicht im Startverzeichnis) zu suchen.


.*-------------------------------------------------------------------------
.*fold00.*Tips + tricks
:h1 id=tipstricks res=4000.Tips &amp. Tricks
:p.Hier finden Sie einige Tips  &amp. Tricks die Ihnen Arbeit ersparen und die
Benutzung von &progname. erleichtern werden.

:dl break=all tsize=5.

:dt.:hp2.Taggen ganzer Alben - Die "Alle speichern"-Methode:ehp2.
:dd.Eine M�glichkeit, ganze Alben mit Tags zu versehen, ohne das Sie die
selben Infos wieder und wieder eingeben m�ssen, bietet die "Alle
speichern"-Funktion&colon.
:ol compact.
:li.Laden Sie alle MP3-Dateien, die zum Album geh�ren in die :link
refid=filelist reftype=hd.Dateiliste:elink.. Wenn die Dateien zusammen in
einem Verzeichnis liegen, k�nnen Sie dazu einfach die :link refid=buttons
reftype=hd.Auto-�ffnen-Funktion:elink. benutzen. (Stellen Sie aber sicher,
das nur diese Dateien in der Liste sind, benutzen Sie gegebenenfalls vorher
"Alle freigeben"!)
:li.Geben Sie Interpret, Album und Jahresinfo (m�glicherweise auch Genre) in
die betreffenden Felder der :link refid=taginfo
reftype=hd.Taginfo-Anzeige:elink. ein. Stellen Sie sicher, das die anderen
Felder leer sind (oder 0, oder "(keines)").
:li.Wenn Sie Sachen wie die Spielzeit, etc. f�r jeden Track in den im
Kommentar aufnehmen wollen, benutzen Sie die passenden :link refid=taginfo
reftype=hd.Platzhalter im Kommentar-Feld:elink..
:li.W�hlen Sie den "Alle speichern"-Button oder "Alle speichern" aus dem
"Tag"-Men�.  W�hlen Sie "Ok" in im erscheinenden R�ckfragefenster. Die Infos,
die Sie eingegeben haben, werden nun f�r alle Dateien gespeichert.
:li.W�hlen Sie die erste Datei aus der :link refid=filelist
reftype=hd.Dateiliste:elink. und erg�nzen Sie die noch fehlenden
Informationen (Titel, Track #, etc.).
:li.Wenn Sie fertig sind, benutzen Sie ALT+'n' und erg�nzen Sie die Tags der
anderen Dateien.
:eol.

:dt.:hp2.Taggen ganzer Alben - Die "Infos behalten"-Methode:ehp2.
:dd.Die andere M�glichkeit, ganze Alben mit Tags zu versehen, bietet die
"Infos behalten"-Funktion&colon.
:ol compact.
:li.�ffnen Sie das :link refid=settingswindow
reftype=hd.Einstellungsfenster:elink. (indem Sie "Einstellungen..." aus dem
"Dateien"-Men� w�hlen) und gehen Sie auf die "Infos behalten"-Seite.
:li.Aktivieren Sie (wenn noch nicht aktiviert) "Behalte Taginfos beim Wechsel
der Datei". In der "Behalte ..."-Gruppe aktivieren Sie "Interpret, Album, Jahr"
und wenn Sie wollen auch noch "Genre" und "Kommentar". Wenn Sie die
Liednummer f�r jede Datei speichern wollen, aktivieren Sie "Tracknummer
erh�hen/erniedrigen". Deaktivieren Sie alle anderen Buttons auf der Seite
(wenn welche aktiviert sind).
:li.Schliessen Sie die Einstellungen durch Ausw�hlen des "Ok"-Button.
:li.Laden Sie alle MP3-Dateien, die zum Album geh�ren in die :link
refid=filelist reftype=hd.Dateiliste:elink.. Wenn die Dateien zusammen in
einem Verzeichnis liegen, k�nnen Sie dazu einfach die  :link refid=buttons
reftype=hd.Auto-�ffnen-Funktion:elink. benutzen. (Stellen Sie aber sicher,
das nur diese Dateien in der Liste sind, benutzen Sie gegebenenfalls vorher
"Alle freigeben"!)
:li.Geben Sie Titel, Interpret, Album und Jahresinfo (m�glicherweise auch
Genre) in die betreffenden Felder der :link refid=taginfo
reftype=hd.Taginfo-Anzeige:elink. ein.
:li.Wenn Sie Sachen wie die Spielzeit, etc. f�r jeden Track in den im
Kommentar aufnehmen wollen, benutzen Sie die passenden :link refid=taginfo
reftype=hd.Platzhalter im Kommentar-Feld:elink..
:li.Wenn Sie die Liednummer f�r jede Datei speichern wollen, setzten Sie
"Track #" auf 1.
:li.Benutzen Sie ALT+'n' (oder "Speichern &amp. N�chster" im "Tag"-Men�) um
zur n�chsten Datei in der Liste zu wechseln. Erg�nzen Sie die fehlenden Infos.
Benutzen Sie ALT+'n' und erg�nzen Sie die Tags der anderen Dateien.
:eol.
:edl.
:p.Ein n�tzliches Feature, das in der zweiten Methode benutzt werden kann, ist
"Dateiname als Titel wenn keine Titelinfo" auf der :link refid=misc
reftype=hd."Sonstiges"-Seite:elink. im :link refid=settingswindow
reftype=hd.Einstellungenfenster:elink.. Wenn Ihre Dateien Dateinamen haben,
die dem Titel des Liedes schon sehr �hnlich sind (z.B. wie
"I_WISH_YOU_WERE_A_BEER.MP3"), ist alles was Sie dann noch tun m�ssen, die
Titel f�r jede Datei ein wenig abzu�ndern.


.*-------------------------------------------------------------------------
.*fold00.*Past, present + future
:h1 id=pastpresentfuture res=5000.Vergangenheit, Gegenwart &amp. Zukunft
:p.Hier bekommen Sie Informationen �ber die Versionsgeschichte von &progname.,
�ber Bugs in der aktuellen Programmversion und �ber Sachen, die in Zukunft
noch verbessert oder ge�ndert werden sollen.


.*-------------------------------------------------------------------------
.*fold00.*Version history
:h2 id=history.Versionsgeschichte
:p.Hier k�nnen Sie sehen, was in den verschiedenen Versionen des Programms
hinzugef�gt oder ver�ndert wurde.

:dl break=all tsize=5.

:dt.:hp2.Version 2.52:ehp2.
:dd.Ein Mini-Update wegen eines kleinen, neuen Features.
:ul compact.
:li.Beim Umbenennen kann die Tracknummer jetzt mit einer festen L�nge von zwei oder drei angegeben werden.
:li.Ein Hinweis warum keine Tracknummern > 255 m�glich sind im Kapitel "Bugs".
:li.&progname. steht jetzt unter der GPL.
:eul.

:dt.:hp2.Version 2.50:ehp2.
:dd.Nein, das ist er immer noch nicht, der n�chste grosse Release &colon.-)
:ul compact.
:li.Italienische �bersetzung von Programm und Onlinehilfe - Vielen Dank
an Alberto Gabrielli!!
:li.Diverse kleinere Bugfixes und Verbesserungen - auch hier besonderen 
Dank an Alberto Gabrielli!
:eul.

:dt.:hp2.Version 2.45:ehp2.
:dd.Weil aufgrund meiner begrenzten Zeit der n�chste "grosse" Release noch
eine Weile dauern kann, habe ich mich entschlossen einen kleinen mit einigen
Bugfixes und ein paar kleinen, neuen Features einzuschieben.
:ul compact.
:li.Neues :link refid=cmdlineargs reftype=hd.Kommandozeilenargument:elink. 
um &progname. mittzuteilen, dass die Tracknummer beim Umbenennen mit f�hrender
Null ausgegeben werden soll.
:li.Neues :link refid=cmdlineargs reftype=hd.Kommandozeilenargument:elink. 
um &progname. mittzuteilen, wo sie nach der INI-Datei suchen soll.
:li.Neues :link refid=cmdlineargs reftype=hd.Kommandozeilenargument:elink. 
um &progname. mittzuteilen, das bei Probleme beim �ndern des LONGNAME-Erweiterten-Attributs
keine Fehlermeldung erscheinen soll (bei einigen Konfigurationen liefert 
diese Funktion einen Fehler, obwohl das Umbenennen funktioniert hat).
:li."L�schen" im Menu in das weniger gef�hrlich klingende "Freigeben" 
umbenannt &colon.-)
:li.Bugfix&colon. Beim Umbennen wird jetzt nicht mehr versucht den Namen zu
�ndern, wenn der alte und der neue Name gleich sind (f�hrte dazu, das die
Dateien eine unn�tige Nummer an den Namen angeh�ngt bekamen).
:li.Bugfix&colon. MP3-Dateien auf der WPS mit &progname. zu assoziiern sollte
wieder funktionieren (Ich hatte das Auslesen der Kommandozeile umgestellt,
daher kam das Problem)
:li.Wenn &progname. in einem fremden Verzeichnis gestartet wird, wird sie jetzt 
versuchen, die Dateien (*.dll, *.hlp, *.ini, genres, ...) aus dem Verzeichnis
zu laden, wo die exe-Datei liegt.
:eul.

:dt.:hp2.Version 2.41:ehp2.
:dd.Weitere �bersetzungen und ein paar andere Kleinigkeiten ...
:ul compact.
:li.Franz�sische Sprachunterst�tzung.
:li.Norwegische Sprachunterst�tzung (noch nicht ganz vollst�ndig)
:li.Russische Sprachunterst�tzung (Nur Programm)
:li.Beim Umbenennen von Dateien wird jetzt auch das ".LONGNAME" 
Erweiterte Attribut ge�ndert.
:li.Beim Umbenennen gibt es jetzt auch ein Makro f�r die Liednummer.
:eul.

:dt.:hp2.Version 2.27:ehp2.
:dd.Zwei Bugfixes - einer f�r &progname. und einer ... ;-)
:ul compact.
:li.Technische Infos f�r die MP3-Dateien werden wieder korrekt angezeigt.
:li.&progname. kann jetzt Leerzeichen zum F�llen der Tag-Felder benutzen,
was ein Problem von WarpAMP behebt (siehe :link refid=cmdlineargs
reftype=hd.Kommandozeilenparameter:elink.)
:eul.

:dt.:hp2.Version 2.25:ehp2.
:dd."It's about time the played something cool!" - Ja, und deswegen gibt's
jetzt v2.25!
:ul compact.
:li.Niederl&ae.ndische Sprachunterst&ue.tzung.
:li.Verbessertes Auto-Umbenennen-Feature (umbenennen von Dateien mittels
Vorlage, Makros, automatische Begrenzung der Namensl&ae.nge, Ersetzten von
Leerzeichen durch Unterstriche w&ae.hlbar).
:li.ID3v2.x-Tags werden jetzt erkannt und sauber &ue.berlesen (Tut mir leid,
Anzeigen/Bearbeiten kommt erst noch ...)
:li.Besser aussehender Dateiauswahldialog mit Datei-Typ-Unterst&ue.tzung.
:li.Einige interne Code&ae.nderungen.
:li.Einige Buglets (Bugs, die so klein waren, das niemand sie bemerkt hat oder
einfach nur &ae.sthetische Sachen ;-) wurden gefixt.
:eul.

:dt.:hp2.Version 2.00:ehp2.
:dd.Aufgrund der unendlichen Kreativit�t der Betatester, Vorschl�ge von
Benutzern und eigener W�nsche, enth�lt &progname. nun die folgenden
Features&colon.
:ul compact.
:li.Wie ich bereits f�r die vorhgehende Version versprochen habe, l�dt
&progname. die Genres jetzt aus einer Benutzerdefinier- und bearbeitbaren
Datei. &progname. akzeptiert ihr eigenes Format und kann auch mit WarpAMP's
"genres.txt" umgehen. Siehe :link refid=genresfile reftype=hd."Die Genredatei"
:elink. f�r mehr Informationen.
:li.Wenn eine Datei keinen Eintrag f�r das Titel-Feld hat, kann &progname.
jetzt automatisch den Dateinamen als Titel einsetzen.
:li.Sie k�nnen jetzt einen Datei- oder Verzeichnisnamen angeben, wenn Sie
&progname. von der :link refid=cmdlineargs reftype=hd.Kommandozeile:elink.
aus aufrufen, was es Ihnen erlaubt die zu ladende Datei oder das durchsuchende
Verzeichnis schon beim Start anzugeben und es ausserdem erm�glicht,
MP3-Dateien auf der WPS mit &progname. zu assoziieren.
:li.&progname. unterst�tzt nun andere Sprachen (Deutsch und Englisch zur Zeit).
:li.Sie k�nnen jetzt Dateien und Verzeichnisse mittels Drag &amp. Drop auf das
&progname.-Fenster ziehen, die Dateien werden dann in die  :link
refid=filelist reftype=hd.Dateiliste:elink. eingef�gt, die Verzeichnisse
werden nach MP3-Dateien durchsucht.
:li.Sie k�nnen nun einfach einen MP3-Player Ihrer Wahl mit der aktuellen Datei
starten.
:li.Sie k�nnen nun einstellen, das beim Wechseln von Dateien bestimmte
Felder des Tags der Datei f�r die Datei, zu der gewechselt wird behalten
werden (n�tzlich z.B. zum Taggen ganzer Alben).
:li.Wenn eine Datei schreibgesch�tzt ist, kann &progname. die Felder der :link
refid=taginfo reftype=hd.Tag-Infoanzeige:elink. lediglich schreibgesch�tzt
machen, anstelle von gesperrt ("ausgeblendet"), manchmal waren sie etwas
schwer zu lesen.
:li.Sie k�nnen jetzt zwischen drei verschiedenen "Arten" bei
Benachrichtigungsfenstern w�hlen.
:li.Sie k�nnen jetzt die "M�glicherweise keine MP3-Datei"-Warnung abschalten.
:li.Auto-Umbenennen kann jetzt die erzeugten Namen auf eine L�nge von max.
31 Zeichen begrenzen (n�tzlich wenn Sie CD-ROMs erstellen wollen, die nur
31 Zeichen im Namen unterst�tzen).
:li.Verbesserte und erweiterte Online-Hilfe/Dokumentation.
:li.Einige Bugs wurden behoben (Nicht geschlossene Dateien nach "Alle
l�schen", kleiner Bug im "Verzeichnis w�hlen ..."-Dialog, Abst�rze von
&progname. beim Auflisten von Dateien mit ung�ltigen Genres, ...).
:eul.

:dt.:hp2.Version 1.67:ehp2.
:dd.Die folgenden Dinge wurden ge�ndert/hinzugef�gt&colon.
:ul compact.
:li.&progname. unterst�tzt nun auch ID3 v1.1 Tags.
:li.Sie k�nnen nun auch Version, Layer, Frequenz, Bitrate und Modus in die
Listen ausgeben.
:li.Hinzugef�gt wurde die Auto-Umbenennen-Funktion (erlaubt es, alle Dateien
nach ihrem Titel umzubenennen).
:li.Sie k�nnen jetzt Platzhalter im Kommentar-Feld verwenden, um automatisch
Dinge wie Spielzeit etc. dort unterzubringen.
:li.Sie k�nnen nun die Buttons und Dateiinfoanzeige verstecken (und wieder
anzeigen lassen).
:li.Einstellungsfenster, wo Sie die diversen Benachrichtigungen an- und
ausschalten k�nnen.
:li.Farbe und Schriftart des Hauptfensters k�nnen nun einfach mittels Drag
&amp. Drop aus den entsprechenden Paletten ge�ndert werden. Diese Werte werden
ebenfalls nach &inifile. gespeichert.
:li.&progname.'s Icon wurde ver�ndert, damit es besser zum
MP3-Standard-Dateiicon passt.
:li.Ein paar kleine Bugs behoben.
:eul.

:dt.:hp2.Version 1.45:ehp2.
:dd.Ich glaub's nicht! Live at last! Endlich ist es geschafft ...
Erste allgemein verf�gbare Version.

:dt.:hp2.Version 1.44:ehp2.
:dd.Ich sag nur "v2.0" ...
:ul compact.
:li.Fenstertitel zeigt jetzt die aktuell bearbeitete Datei beim Ausf�hren
globaler Operationen (Alle speichern, etc.)
:li.Option zur Ausgabe ausschliesslich von Dateien mit Tag hinzugef�gt.
:li.Habe meine eigene (seltsame, l�ckenhafte, m�glicherweise fehlerhafte)
MP3-Header Dekodierroutine mit der aus den :link refid=credits
reftype=hd.mpg123/2:elink.-Sourcen ersetzt (ein kleines bischen ver�ndert).
:li.Interne Restrukturierung einiger Teile des Codes.
:li.Einige Bugs behoben, neue hinzugef�gt, diese behoben ...
:eul.

:dt.:hp2.Version 1.41:ehp2.
:dd.Kein Kommentar. Aber sie werden daf�r bezahlen ... (Oh nein! Das Programm
ist ja Freeware! ;-)
:ul compact.
:li.M�glichkeit zum automatischen Ausw�hlen von Dateien in
(Unter-)Verzeichnissen hinzugef�gt.
:li.Schreibgesch�tzte Dateien werden nun erkannt und entsprechend behandelt.
:li.Option f�r automatische Spaltenbreite in Listen hinzugef�gt.
:eul.

:dt.:hp2.Version 1.34:ehp2.
:dd.Ich glaube ich muss mir ein paar weniger anspruchsvolle Betatester
suchen ...
:ul compact.
:li.Funktion zum Ausw�hlen von Dateien in mehreren Verzeichnissen hinzugef�gt.
:li.M�glichkeit zum Ausgeben von Dateinamen in die Liste hinzugef�gt.
:li.Men�leiste hinzugef�gt (mittlerweile gibt es genug Funktionen, die eine
rechtfertigen ...)
:li.&inifile. hat eine interne Versionsnummer bekommen, um m�gliche Fehler
bei Benutzung einer alten Datei mit einer neuene Version von &progname. zu
vermeiden.
:li.Ein paar kleine Bugs behoben.
:eul.

:dt.:hp2.Version 1.29:ehp2.
:dd.Wieder wollten die Tester eine weitere Funktion implementiert haben, und
das hab ich gemacht. Wenn das so weitergeht wird &progname. m�glicherweise das
erste Programm mit v2.0 als erstem Release! ;-)
:ul compact.
:li.Die M�glichkeit zum Ausgeben der Dateien in eine Liste kam dazu.
:li.Die Optionen f�r die Listenausgabe werden ebenfalls in &inifile.
gespeichert.
:li.Ein kleiner Bug, die Buttons im Hauptfenster betreffend, wurde behoben.
:eul.

:dt.:hp2.Version 1.16:ehp2.
:dd.Aufgrund der W�nsche der Tester f�r weitere Features und meiner eigenen
Ideen wurden die folgenden Dinge erg�nzt&colon.
:ul compact.
:li.Ausw�hlen von mehreren Dateien.
:li.Entfernen von Tags f�r mehrere Dateien auf einmal.
:li.Globales Hinzuf�gen von Tags f�r mehrere Dateien auf einmal.
:li.Einfaches Bearbeiten von mehreren Dateien auf einmal.
:li.Das letztbenutzte Arbeitsverzeichnis (in dem Sie Dateien ge�ffnet haben)
und die Position des Hauptfensters werden nach &inifile. abgespeichert und
beim n�chsten Start des Programms wiederhergestellt.
:li.Es gibt jetzt ein Installationsskript um ein WPS-Objekt f�r &progname. zu
erstellen.
:eul.

:dt.:hp2.Version 1.00:ehp2.
:dd.Diese Version war nur ein Release f�r die Betatester und hat es nie
nach draussen geschafft.

.*Added ... something (yes, it's a secret)
.*:li.When doing lengthly jobs (Save all, Rename all, etc.) &progname. now displays
.*a progress status window and those jobs now have their own thread.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Bugs

:h2 id=bugs.Bekannte Bugs
:p."Richtige" Bugs sind zur Zeit keine bekannt, die folgenden Dinge sind mehr
oder weniger nur Unsch�nheiten&colon.

:ul compact.
:li.Beim L�schen aller Dateien aus der Dateiliste bleibt der Name der letzten
ausgew�hlten Datei in der Anzeige stehen. Aus irgendwelchen seltsamen Gr�nden
ist es nicht m�glich dieses Feld zu l�schen (Aber anderswo funktioniert es!
Seltsam, wie gesagt).
:li.Ich muss zugeben, das, wie die meisten meiner Programme, auch &progname.
Probleme bekommt, wenn sehr lange Pfadnamen (> 255 Zeichen) benutzt werden
w�rden (z.B. beim Auto-Umbennennen). Aber bis jetzt habe ich noch nie so
eine "Monster" entdeckt ...
:li.Wenn Sie den Titel einer Datei �ndern, wird Auto-Umbenennen diese Datei
nicht umbenennen, wenn der Tag nicht vorher gespeichert wurde. Aber ich weiss
nicht, ob wir das wirklich einen Bug nennen sollen ...
:li.Wenn Sie beim Benutzen von "Infos behalten" eine Datei erreichen, die
schreibgesch�tzt ist, oder Infos f�r ein Feld hat und "Nur behalten wenn noch
nicht vorhanden" aktiviert ist, wird &progname. von jetzt an die Info dieser
Datei behalten und nicht die des "Originals".
:li.Benachrichtigungsfenster "erben" ab und zu nicht die Farbe und Schriftart
des Hauptfensters.
:li.Drag &amp. Drop funktioniert nur, wenn Sie die Objekte auf einen freien
Platz im Hauptfenster bewegen, der nicht von Kindfenstern (Buttons,
Eingabefeld, etc.) besetzt ist. 
:li."Datei abspielen" ben�tigt eine CMD-Datei um den MP3-Player zu starten.
:li.Mir wurde gesagt, dass das Folgende in WarpAMP gefixed wurde (es passierte
weil es zwei leicht unterschiedliche ID3v1.1-Specifikationen gab)&colon.
Die Playlist von WarpAMP zeigt manchmal einige Taginfo-Felder nicht.
Aber da andere Programme (PM123 um eines zu nennen) alles richtig anzeigen
und ich keinerlei Ahnung habe, was mit den Tags nicht in Ordnung sein k�nnte,
werde ich das einfach WarpAMP in die Schuhe schieben ;-)
:eul.

:p.Das folgende ist *kein* Fehler&colon. Die Tracknummer im Tag kann nur
von 0 bis einschliesslich 255 reichen; der Grund daf�r ist, das laut ID3
v1.1-Spezifikation die Tracknummer im letzten Byte des Kommentar-Feldes
gespeichert wird (abgetrennt vom Text des Feldes durch ein null-Byte) und
da ein Byte nur 256 unterschiedliche Werte speichern kann sind Zahlen > 255
hier nicht m�glich.

.*-------------------------------------------------------------------------
.*fold00.*Future enhancements

:h2 id=future.Zuk�nftige Erweiterungen
:p.Diese Features werden (hoffentlich) eines Tages in &progname.
eingebaut&colon.
:p.:hp2."Kleine" Sachen:ehp2.
:ul compact.
:li.Buttons/Tasten f�r das Wechseln zur vorherigen/n�chsten Datei.
:li.Ausschneiden/Kopieren/Einf�gen von Tags in die/aus der Zwischenablage.
:eul.
:p.:hp2."Mittlere" Sachen:ehp2.
:ul compact.
:li.Andere Sortierungen der Dateien in der Dateiliste.
:li.Andere Sortierungen der Info-Felder beim Ausgeben von Listen.
:li."History"-Funktion f�r die Tag-Eingabefelder (d.h. Sie bekommen eine
Drop-down-Liste f�r jedes Feld, in der Sie aus den letzten n Eintr�gen
ausw�hlen k�nnen).
:li.Eine (irgendwann Benutzer-konfigurierbare) Werkzeugleiste f�r das
Hauptfenster.
:li.Eine Statusleiste f�r das Hauptfenster (als Ersatz f�r die
Benachrichtigungsfenster?)
:li.Lyrics3/Lyrics3 v2.00-Unterst�tzung.
:li.M�glichkeit, Tags aus einer Datei zu lesen und sie automatisch den
Dateien in der Liste zuzuweisen.
:li.Auto-Tagging-Funktion, die versucht, so viele Infos wie m�glich aus dem
Dateinamen, etc. herauszuziehen und daraus einen Tag f�r die Datei erzeugt.
:eul.
:p.:hp2."Grosse" Sachen:ehp2.
:ul compact.
:li.Eine MP3-Datenbank f�r &progname., die es Ihnen erlaubt, die �bersicht
�ber ihre MP3-Dateien zu behalten, zusammen mit deren Informationen, Suche
nach Dateien, Ausgabe von Listen verschiedener Gruppen, Export von Listen in
anderen Formaten und mehr.
:li.M�glichkeit zum Anzeigen von ID3 v2.x-Tags.
:li.M�glichkeit zum Bearbeiten von ID3 v2.x-Tags.
:li.M�glichkeit �ber &progname. auf (eine oder mehrere der)
Internet-CD-Datenbanken zugreifen zu k�nnen.
:eul.
:p.Teilen Sie mir mit, welche(s) Feature(s) die h&oe.chste Priorit&ae.t
bekommen soll und auf welche(s) Sie gut verzichten k&oe.nnen ...

.*-------------------------------------------------------------------------
.*fold00.*Files

:h1 id=files.Dateien
:p.Dieser Teil informiert Sie �ber einige der Dateien, die bei &progname.
mitgeliefert werden.


.*-------------------------------------------------------------------------
.*fold00.*The genres file

:h2 id=genresfile.Die Genre-Datei
:p.In dieser Datei sind die Namen f�r die diversen Genres gespeichert.
:p.Normalerweise heisst diese Datei "genres.txt" aber Sie k�nnen jede
beliebige andere Datei angeben, indem Sie das Eingabefeld auf der :link
refid=misc reftype=hd."Sonstiges"-Seite:elink. des :link refid=settingswindow
reftype=hd.Einstellungsfensters:elink. benutzten.
:p.Sie k�nnen diese Datei mit jedem normalen Texteditor bearbeiten, aber bevor
Sie das tun denken Sie bitte an folgende Dinge&colon.
:ul.
:li.Wenn Sie den Namen eines "alten" Genres �ndern, werden alle Dateien mit
diesem Genre nun auch den neuen Namen daf�r haben.
:li.Eine zweiter Nachteil ist, das Sie wahrscheinlich der einzige sind, der
dieses neue Genre benutzt. Wenn jemand anderes eine MP3-Datei mit diesem Genre
bekommt, wird er/sie den "alten" Namen sehen. Was vielleicht nicht das ist,
was Sie beabsichtigten.
:li.Wenn Sie neue Genres erfinden (d.h. welche zur Liste hinzuf�gen) wird
ebenfalls kein Anderer diese Genres benutzen. Wenn jemand anderes eine
MP3-Datei mit diesem Genre bekommt, k�nnte das zu einem Fehler f�hren,
zumindest aber zu etwas Verwirrung.
:eul.
:p.Das voreingestellte Format f�r die Genre-Datei ist &progname.'s eigenes
Format&colon.
:xmp.
# &progname. Genre-Datei
# Diese und die obige Zeile sind Kommentare

Blues
Classic Rock
Country
Dance
 ...
:exmp.
:p.Die Datei wird Zeile f�r Zeile gelesen. Kommentare (Zeilen, die mit '#'
beginnen) und Leerzeilen werden ignoriert. Andere Zeilen werden als Name f�r
ein Genre angesehen. Die Genres werden nach der Reihenfolge, nach der Sie
eingelesen wurden, nummeriert (d.h. im obigen Beispiel w�re Blues 1, Classic
Rock 2, usw.). Zeilen (und Genrenamen) d�rfen maximal 255 Zeichen lang sein.

:p.&progname. versteht auch das Format von WarpAMP's "genres.txt" (bei dem
jede Zeile aus "nn name" besteht, "nn" ist die Nummer und "name" der Name
dieses Genres). Tats�chlich k�nnen Sie sogar beide Formate nebeneinander
benutzen und &progname. wird immer noch versuchen, das Richtige
herauszubekommen, aber dieses Vorgehen wird :hp1.nicht empfohlen:ehp1.!


.*-------------------------------------------------------------------------
.*fold00.*The player CMD-files

:h2 id=playercmdfiles.Die MP3-Player CMD-Dateien
:p.Diese Dateien werden benutzt, um einen MP3-Player Ihrer Wahl direkt aus
&progname. mit der aktuellen MP3-Datei zu starten.
:p.Aus diversen technischen Gr�nden muss &progname. den Player mit Hilfe einer
CMD-Datei starten, direkt �ber die EXE-Datei funktioniert die Sache meistens
nicht. Ich hoffe, dass sich das in einer zuk�nftigen Version �ndern wird.
Sie k�nnen den Namen der CMD-Datei die benutzt werden soll auf der
:link refid=misc reftype=hd."Sonstiges"-Seite:elink. des :link
refid=settingswindow reftype=hd.Einstellungsfensters:elink. angeben.
:p.Bitte passen Sie die Datei f�r den Player Ihrer Wahl an Ihre Bed�rfnisse
an (was mehr oder weniger nur auf das Eintragen des Installationslaufwerks und
-pfades hinausl�uft).
:p.Die folgenden Dateien sind beigef�gt&colon.
:ul.
:li.gowamp.cmd - f�r WarpAMP
:li.gopm123.cmd - f�r PM123
:li.gompg123.cmd - f�r mpg123
:eul.
:p.Wenn Sie einen anderen Player benutzen, sollte es Ihnen leicht m�glich
sein, eine der Dateien (tats�chlich sind sie alle ziemlich gleich ;-) f�r
die Benutzung mit Ihrem Player abzu�ndern.


.*-------------------------------------------------------------------------
.*fold00.*Disclaimer & legal stuff

:h1 id=disclaimer.Disclaimer &amp. rechtliches Zeug
:p.Hier kommen die �blichen Disclaimer. F�r alle, die sie schon viel zu oft
gelesen haben, hier nur die kurze Version&colon.

:p."I didn't do it! I didn't do it! Butthead did it!" ;-)

:p.Alle anderen, bitte lesen und im Kopf behalten&colon.

:p.Obwohl dieses Programm ausf�hrlich getestet wurde, ist es durchaus m�glich,
das noch eine ganze Menge an Bugs vorhanden ist (selbst schwere - obwohl ich
das nicht glaube). Beschweren Sie sich nicht bei mir, wenn dieses Programm
ihre Dateien plattmacht oder was auch immer.

:p.:hp2.SIE VERWENDEN DIESES PROGRAMM AUF EIGENE GEFAHR!:ehp2. Ich �bernehme
keine Verantwortung f�r Sch�den, Unannehmlichkeiten, Geldeinbu�en,
Haftstrafen, Ehestreitigkeiten etc. die durch die Verwendung, die Unf�higkeit
zur Verwendung, den Mi�brauch, den Besitz oder den Nichtbesitz dieses
Programms direkt oder indirekt entstehen. Ich �bernehme ebenfalls keine
Garantie f�r die Fehlerfreiheit, die Brauchbarkeit f�r einen bestimmten Zweck
oder das angemessene Verhalten dieses Programms gegen�ber Tieren,
Programmierern und kleinen Kindern.

:p.THE SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE
PROGRAM IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU
ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

:p.Oder, in wenigen Worten&colon.
Wenn es gut ist, bin ich verantwortlich.
Wenn es schlecht ist, ist es ganz alleine Ihre Fehler. ;)

:p.Ich gebe die Erlaubnis, dieses Programm kostenlos weiterzuverbreiten,
sofern dies in Form des vollst�ndigen, unver�nderten Archivs geschieht und
kein Profit gemacht wird, der die Kosten des Mediums, auf dem es verbreitet
wird, �bersteigt. Eine Ausnahme hierzu&colon. Das Programm darf in
Freeware/Shareware-Sammlungen auf CD-ROMs sowie auf bei Zeitschriften
beiliegenden CD-ROMs aufgenommen werden.

:p.Alle Warenzeichen die hier irgendwo verwendet werden, sind Eigentum ihrer
Besitzer und so weiter ...

:p.(Seltsam, dieser Teil wird l�nger und l�nger mit jedem Programm ...
&colon.-)

.*-------------------------------------------------------------------------
.*fold00.*GNU Public License

:h1 id=gpl.GNU GENERAL PUBLIC LICENSE

:lines.
                    GNU GENERAL PUBLIC LICENSE
                       Version 2, June 1991

 Copyright (C) 1989, 1991 Free Software Foundation, Inc.
     59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

                            Preamble

  The licenses for most software are designed to take away your
freedom to share and change it.  By contrast, the GNU General Public
License is intended to guarantee your freedom to share and change free
software--to make sure the software is free for all its users.  This
General Public License applies to most of the Free Software
Foundation's software and to any other program whose authors commit to
using it.  (Some other Free Software Foundation software is covered by
the GNU Library General Public License instead.)  You can apply it to
your programs, too.

  When we speak of free software, we are referring to freedom, not
price.  Our General Public Licenses are designed to make sure that you
have the freedom to distribute copies of free software (and charge for
this service if you wish), that you receive source code or can get it
if you want it, that you can change the software or use pieces of it
in new free programs; and that you know you can do these things.

  To protect your rights, we need to make restrictions that forbid
anyone to deny you these rights or to ask you to surrender the rights.
These restrictions translate to certain responsibilities for you if you
distribute copies of the software, or if you modify it.

  For example, if you distribute copies of such a program, whether
gratis or for a fee, you must give the recipients all the rights that
you have.  You must make sure that they, too, receive or can get the
source code.  And you must show them these terms so they know their
rights.

  We protect your rights with two steps&colon. (1) copyright the software, and
(2) offer you this license which gives you legal permission to copy,
distribute and/or modify the software.

  Also, for each author's protection and ours, we want to make certain
that everyone understands that there is no warranty for this free
software.  If the software is modified by someone else and passed on, we
want its recipients to know that what they have is not the original, so
that any problems introduced by others will not reflect on the original
authors' reputations.

  Finally, any free program is threatened constantly by software
patents.  We wish to avoid the danger that redistributors of a free
program will individually obtain patent licenses, in effect making the
program proprietary.  To prevent this, we have made it clear that any
patent must be licensed for everyone's free use or not licensed at all.

  The precise terms and conditions for copying, distribution and
modification follow.
 
                    GNU GENERAL PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. This License applies to any program or other work which contains
a notice placed by the copyright holder saying it may be distributed
under the terms of this General Public License.  The "Program", below,
refers to any such program or work, and a "work based on the Program"
means either the Program or any derivative work under copyright law&colon.
that is to say, a work containing the Program or a portion of it,
either verbatim or with modifications and/or translated into another
language.  (Hereinafter, translation is included without limitation in
the term "modification".)  Each licensee is addressed as "you".

Activities other than copying, distribution and modification are not
covered by this License; they are outside its scope.  The act of
running the Program is not restricted, and the output from the Program
is covered only if its contents constitute a work based on the
Program (independent of having been made by running the Program).
Whether that is true depends on what the Program does.

  1. You may copy and distribute verbatim copies of the Program's
source code as you receive it, in any medium, provided that you
conspicuously and appropriately publish on each copy an appropriate
copyright notice and disclaimer of warranty; keep intact all the
notices that refer to this License and to the absence of any warranty;
and give any other recipients of the Program a copy of this License
along with the Program.

You may charge a fee for the physical act of transferring a copy, and
you may at your option offer warranty protection in exchange for a fee.

  2. You may modify your copy or copies of the Program or any portion
of it, thus forming a work based on the Program, and copy and
distribute such modifications or work under the terms of Section 1
above, provided that you also meet all of these conditions&colon.

    a) You must cause the modified files to carry prominent notices
    stating that you changed the files and the date of any change.

    b) You must cause any work that you distribute or publish, that in
    whole or in part contains or is derived from the Program or any
    part thereof, to be licensed as a whole at no charge to all third
    parties under the terms of this License.

    c) If the modified program normally reads commands interactively
    when run, you must cause it, when started running for such
    interactive use in the most ordinary way, to print or display an
    announcement including an appropriate copyright notice and a
    notice that there is no warranty (or else, saying that you provide
    a warranty) and that users may redistribute the program under
    these conditions, and telling the user how to view a copy of this
    License.  (Exception&colon. if the Program itself is interactive but
    does not normally print such an announcement, your work based on
    the Program is not required to print an announcement.)
 
These requirements apply to the modified work as a whole.  If
identifiable sections of that work are not derived from the Program,
and can be reasonably considered independent and separate works in
themselves, then this License, and its terms, do not apply to those
sections when you distribute them as separate works.  But when you
distribute the same sections as part of a whole which is a work based
on the Program, the distribution of the whole must be on the terms of
this License, whose permissions for other licensees extend to the
entire whole, and thus to each and every part regardless of who wrote it.

Thus, it is not the intent of this section to claim rights or contest
your rights to work written entirely by you; rather, the intent is to
exercise the right to control the distribution of derivative or
collective works based on the Program.

In addition, mere aggregation of another work not based on the Program
with the Program (or with a work based on the Program) on a volume of
a storage or distribution medium does not bring the other work under
the scope of this License.

  3. You may copy and distribute the Program (or a work based on it,
under Section 2) in object code or executable form under the terms of
Sections 1 and 2 above provided that you also do one of the following&colon.

    a) Accompany it with the complete corresponding machine-readable
    source code, which must be distributed under the terms of Sections
    1 and 2 above on a medium customarily used for software interchange; or,

    b) Accompany it with a written offer, valid for at least three
    years, to give any third party, for a charge no more than your
    cost of physically performing source distribution, a complete
    machine-readable copy of the corresponding source code, to be
    distributed under the terms of Sections 1 and 2 above on a medium
    customarily used for software interchange; or,

    c) Accompany it with the information you received as to the offer
    to distribute corresponding source code.  (This alternative is
    allowed only for noncommercial distribution and only if you
    received the program in object code or executable form with such
    an offer, in accord with Subsection b above.)

The source code for a work means the preferred form of the work for
making modifications to it.  For an executable work, complete source
code means all the source code for all modules it contains, plus any
associated interface definition files, plus the scripts used to
control compilation and installation of the executable.  However, as a
special exception, the source code distributed need not include
anything that is normally distributed (in either source or binary
form) with the major components (compiler, kernel, and so on) of the
operating system on which the executable runs, unless that component
itself accompanies the executable.

If distribution of executable or object code is made by offering
access to copy from a designated place, then offering equivalent
access to copy the source code from the same place counts as
distribution of the source code, even though third parties are not
compelled to copy the source along with the object code.
 
  4. You may not copy, modify, sublicense, or distribute the Program
except as expressly provided under this License.  Any attempt
otherwise to copy, modify, sublicense or distribute the Program is
void, and will automatically terminate your rights under this License.
However, parties who have received copies, or rights, from you under
this License will not have their licenses terminated so long as such
parties remain in full compliance.

  5. You are not required to accept this License, since you have not
signed it.  However, nothing else grants you permission to modify or
distribute the Program or its derivative works.  These actions are
prohibited by law if you do not accept this License.  Therefore, by
modifying or distributing the Program (or any work based on the
Program), you indicate your acceptance of this License to do so, and
all its terms and conditions for copying, distributing or modifying
the Program or works based on it.

  6. Each time you redistribute the Program (or any work based on the
Program), the recipient automatically receives a license from the
original licensor to copy, distribute or modify the Program subject to
these terms and conditions.  You may not impose any further
restrictions on the recipients' exercise of the rights granted herein.
You are not responsible for enforcing compliance by third parties to
this License.

  7. If, as a consequence of a court judgment or allegation of patent
infringement or for any other reason (not limited to patent issues),
conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot
distribute so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you
may not distribute the Program at all.  For example, if a patent
license would not permit royalty-free redistribution of the Program by
all those who receive copies directly or indirectly through you, then
the only way you could satisfy both it and this License would be to
refrain entirely from distribution of the Program.

If any portion of this section is held invalid or unenforceable under
any particular circumstance, the balance of the section is intended to
apply and the section as a whole is intended to apply in other
circumstances.

It is not the purpose of this section to induce you to infringe any
patents or other property right claims or to contest validity of any
such claims; this section has the sole purpose of protecting the
integrity of the free software distribution system, which is
implemented by public license practices.  Many people have made
generous contributions to the wide range of software distributed
through that system in reliance on consistent application of that
system; it is up to the author/donor to decide if he or she is willing
to distribute software through any other system and a licensee cannot
impose that choice.

This section is intended to make thoroughly clear what is believed to
be a consequence of the rest of this License.
 
  8. If the distribution and/or use of the Program is restricted in
certain countries either by patents or by copyrighted interfaces, the
original copyright holder who places the Program under this License
may add an explicit geographical distribution limitation excluding
those countries, so that distribution is permitted only in or among
countries not thus excluded.  In such case, this License incorporates
the limitation as if written in the body of this License.

  9. The Free Software Foundation may publish revised and/or new versions
of the General Public License from time to time.  Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number.  If the Program
specifies a version number of this License which applies to it and "any
later version", you have the option of following the terms and conditions
either of that version or of any later version published by the Free
Software Foundation.  If the Program does not specify a version number of
this License, you may choose any version ever published by the Free Software
Foundation.

  10. If you wish to incorporate parts of the Program into other free
programs whose distribution conditions are different, write to the author
to ask for permission.  For software which is copyrighted by the Free
Software Foundation, write to the Free Software Foundation; we sometimes
make exceptions for this.  Our decision will be guided by the two goals
of preserving the free status of all derivatives of our free software and
of promoting the sharing and reuse of software generally.

                            NO WARRANTY

  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
REPAIR OR CORRECTION.

  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
POSSIBILITY OF SUCH DAMAGES.

                     END OF TERMS AND CONDITIONS
 
            How to Apply These Terms to Your New Programs

  If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these terms.

  To do so, attach the following notices to the program.  It is safest
to attach them to the start of each source file to most effectively
convey the exclusion of warranty; and each file should have at least
the "copyright" line and a pointer to where the full notice is found.

    <one line to give the program's name and a brief idea of what it does.>
    Copyright (C) <year>  <name of author>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA


Also add information on how to contact you by electronic and paper mail.

If the program is interactive, make it output a short notice like this
when it starts in an interactive mode&colon.

    Gnomovision version 69, Copyright (C) year  name of author
    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `show c' for details.

The hypothetical commands `show w' and `show c' should show the appropriate
parts of the General Public License.  Of course, the commands you use may
be called something other than `show w' and `show c'; they could even be
mouse-clicks or menu items--whatever suits your program.

You should also get your employer (if you work as a programmer) or your
school, if any, to sign a "copyright disclaimer" for the program, if
necessary.  Here is a sample; alter the names&colon.

  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
  `Gnomovision' (which makes passes at compilers) written by James Hacker.

  <signature of Ty Coon>, 1 April 1989
  Ty Coon, President of Vice

This General Public License does not permit incorporating your program into
proprietary programs.  If your program is a subroutine library, you may
consider it more useful to permit linking proprietary applications with the
library.  If this is what you want to do, use the GNU Library General
Public License instead of this License.

:elines.


.*-------------------------------------------------------------------------
.*fold00.*Author & Minta homepage

:h1 id=author.Autor &amp. &progname.-Homepage
:p.:hp7.Autor:ehp7.

:dl break=all tsize=5 compact.

:dt.:hp2.Normale Post:ehp2.
:dd.Thorsten Thielen c/o Sascha Weber, Postfach 3928, 54229 Trier, Deutschland

:dt.:hp2.e-Mail:ehp2.
:dd.&email1.

:dt.:hp2.WWW:ehp2.
:dd.&www.

:edl.
:p.Stolzes Mitglied von :link refid=teamos2 reftype=hd.Team OS/2 Region
Trier:elink., den Machern der :link refid=ttc reftype=hd."Team Trier
Collection"-CDROM:elink..

:lm margin=1.
:p.Vorschl�ge und Bugreports sind immer willkommen. Naja ... Bugreports sind
vielleicht nicht :hp1.so:ehp1. willkommen ... ;)

:p.
.br
:hp7.&progname.-Homepage:ehp7.
:p.Besuchen Sie die &progname.-Homepage f�r Info und neue Versionen&colon.
&www./minta


.*-------------------------------------------------------------------------
.*fold00.*Help wanted!
:h1 id=helpwanted.Hilfe gesucht!
:p.Jetzt, da &progname. auch andere Sprachen unterst�tzt, will ich nat�rlich
auch soviele wie m�glich mitgeben. Das Problem dabei ist, das ich nur Deutsch
und Englisch gut genug spreche, um eine �bersetzung zu machen &colon.-) Wenn
also irgendjemand da draussen &progname. in eine neue Sprache �bersetzen will
ist er herzlich willkommen!

:p.Ich habe den Quellcode f�r Hilfedatei und Programmressourcen in einem
seperaten ZIP-Archiv ('language.zip') beigef�gt. Nehmen Sie einfach die *.rc
und die *.hlp-Datei ihrer Wahl und machen Sie sich an die Arbeit! &colon.-)
Wenn Sie irgendwelche Fragen haben, :link refid=author reftype=hd.fragen Sie
mich einfach:elink.!

:p.Wenn Sie keine Zeit (oder keine Lust ;-) haben eine "vollst&ae.ndige"
&Ue.bersetzung (d.h. Programm und Online-Hilfe) zu machen, k&oe.nnen Sie
auch nur die Programmressourcen (Dialogfenster, Men&ue.s, einige
Nachrichtentexte) &ue.bersetzten! Das w&ae.re ebenfalls schon eine grosse
Hilfe ...

.*-------------------------------------------------------------------------
.*fold00.*Registering
:h1 id=register."Registrieren"
.*:p. if you are satisfied with what &progname. 1.67 offers, you are free to keep
.*using this version ... but please keep in mind that it lacks many useful
.*functions that are present in newer versions and that it is not supported
.*any longer!
:p.Sie k�nnen ein registrierter Benutzer f�r &progname. (&version.) werden, einfach
indem Sie :link refid=author reftype=hd.mir eine e-Mail schicken:elink. (oder
auch eine Postkarte oder so). Eigentlich ist das sogar erforderlich, wenn
Sie &progname. (mehr als einmal im Jahr oder so ;-) benutzen. Schreiben Sie
einfach sowas wie "Hi, ich benutze dein Programm &progname.!" und ich bin
zufrieden. Wenn Sie :hp1.nicht:ehp1. in die Mailingliste f�r Neuigkeiten und
Infos �ber &progname. aufgenommen werden wollen, vergessen Sie nicht, mir das
mitzuteilen!

:p.Aber ich denke, es gibt eine ganze Reihe von Leuten, die &progname. gesehen,
eine Weile damit gearbeitet haben aber einfach nicht registrieren wollen,
indem sie mir eine Mail schreiben. Nun, f�r euch habe ich diese Liste
zusammengestellt&colon.

:p.:hp2.Die Top 10 Gr�nde um &progname. nicht zu registrieren:ehp2.

:ul compact.

:li.Meiner Meinung nach ist &progname. ein ziemlich mieses Programm. Ich mag
die Farbe und Schriftart des Fensters nicht (und noch viel weniger die Idee,
sie �ndern zu k�nnen!), ich spreche keine der verf�gbaren Sprachen und habe
geh�rt, das sogar wirklich mal ein Bug gefunden wurde! Gar nicht zu reden vom
lausigen Support; eine e-Mail zu schreiben um Hilfe zu bekommen ist viel zu
kompliziert.

:li.Ich bin vollkommen zufrieden mit den Sachen, die &progname. 1.67 bietet.
Ich werde meine eigenen Workarounds f�r die Bugs finden, die eventuell noch
entdeckt werden! Ich werde dieses Drag &amp. Drop, diese Auto-Tagging-Funktion
oder diesen Datenbankkram sowieso nie benutzen! Und ID3 v2.x ist weit
ausserhalb meiner Interessen. Verschone mich also mit deinen Updates ...

:li.Wen interessieren schon neue Versionen? Warum sollte ich auf noch eine
dieser Mailinglisten kommen? Meine Mailbox quillt jetzt schon regelm�ssig �ber
und das "incoming"-Verzeichnis von Hobbes �berpr�fe ich sowieso jeden Tag!

:li.Ich habe einfach nicht die Zeit, dir eine Mail zu schreiben! Sieh mal,
ich habe einen Beruf, eine Frau, 10 Kinder oder so, eine Freundin, ein Auto,
ein Haus, ein Schwimmbad und tausende MP3-Dateien die noch getagged werden
m�ssen, ich bin also wirklich Tag und Nacht besch�ftigt! Ich will garnicht
dar�ber nachdenken, was ich in den verlorenen f�nf Minuten alles verpassen
w�rde ...

.*:li.$10 is far too much money for this program! For this big amount I could,
.*well, buy half of an audio CD! I could go out to dinner with my friend (well,
.*at least if we have already eaten before). I could think of thousand things
.*more ...

:li.Warum sollte ich dir das Gef�hl geben, das es eine gute Sache ist,
Software f�r OS/2 zu schreiben? Es gibt sowieso schon viel zu viele Programme
f�r OS/2, wir wollen doch den Markt nicht �bers�ttigen, nicht wahr?

:li.Es gibt so viele andere Programme da draussen, die das Gleiche tun! Ok,
vielleicht haben die nicht diese sch�ne PM-Benutzeroberfl�che, kann sein, das
sie einiges der Funktionalit�t von &progname. vermissen lassen und
m�glicherweise gibt es ja auch nur ein oder zwei, aber wenigstens muss ich
nicht Stunden damit verbringen, lange Mails an ihre Autoren zu schreiben!

:li.Ich finde es schwachsinnig, das Mailware-Konzept zu unterst�tzen.
Entwickler die voll funktionsf�hige Programme rausgeben und dann erwarten,
das jemand ihnen eine Mail dazu schreibt, wenn er/sie auch ohne das
weitermachen kann, sind ein vertrauensseliger Haufen Idioten!

:li.Warum sollte ich OS/2-Software unterst�tzen? OS/2 ist tot, glaub's mir!
"Ich bin Bill Gates von MicroBorg. Dieses Betriebssystem wird assimiliert.
Entwicklung ist sinnlos."

:li.Ich habe eine �bersetzung in eine andere Sprache gemacht und schon eine
Mail zusammen mit den �bersetzten Dateien mitgeschickt! &colon.-)

:li.Ich kann nicht schreiben! Ich weiss nicht, wie man e-Mail versendet!! Ich
habe �berhaupt keinen Account!!! Und ich benutze Windows!!!!

:eul.



.*-------------------------------------------------------------------------
.*fold00.*Credits

:h1 id=credits.Danksagung
:p.Ich m�chte den folgenden Personen f�r ihre Hilfe und Unterst�tzung mit
&progname. danken&colon.

:ul.
:li.Vielen Dank an :hp1.Sascha Weber:ehp1. und :hp1.Dirk Riemekasten:ehp1.
f�r das exzellente Beta-Testen von &progname. (und einen Tritt in den *rsch
weil sie mich gezwungen haben, dauernd neue Features zu implementieren ;-)
:li.Vielen Dank auch an das :hp1.mpg123-Team:ehp1. f�r das Schreiben von
mpg123 und das zur Verf�gung stellen des Quellcodes, so dass ich mir ihre
MP3-Header-Dekodierroutine borgen konnte! Sie ist um einiges besser als das
Teil, was ich geschrieben habe ... (Sie k�nnen mehr �ber mpg123 herausfinden
bei http&colon.//www.sfs.nphil.uni-tuebingen.de/~hipp/mpg123.html).
:li.Dieses Programm benutzt einige kleine St�cke Code aus :hp1.Richard
Papo's:ehp1. exzellentem Systemressourcen-Monitor "MemSize" (Sie k�nnen mehr
�ber MemSize erfahren bei http&colon.//www.msen.com/~rpapo).
:li.Ein Extra Dankesch�n an alle Leute, die &progname. in andere Sprachen
�bersetzt haben&colon.
:ul.
:li.Vielen Dank an :hp1.Luc Van Bogaert:ehp1. f�r die Niederl�ndische
�bersetzung von &progname.!
:li.Vielen Dank an :hp1.Guillaume Gay:ehp1. f�r die Franz�sische
�bersetzung von &progname.!
:li.Vielen Dank an :hp1.Jostein Ullestad:ehp1. und 
:hp1.H�vard Mork:ehp1. f�r die Norwegische �bersetzung von &progname.!
:li.Vielen Dank an :hp1.Cyrill Vakhneyev:ehp1. f�r die Russische
�bersetzung von &progname.!
:li.Vielen Dank an :hp1.Michael Baryshnikov:ehp1. f�r das Aufsp�ren diverser
Bugs!
:li.Speziellen Dank an :hp1.Alberto Gabrielli:ehp1., nicht nur f�r die
Italienische �berseztzung von Programm und Online-Hilfe sondern auch
f�r das Ausp�ren vieler, vieler Bugs und Ungereimtheiten!
:eul.
:li.Dank auch an alle Benutzer die mich auf Fehler aufmerksam gemacht haben,
mir Vorschl�ge unterbreiteten oder einfach nur eine Mail zu &progname.
geschrieben haben!
:eul.

.*-------------------------------------------------------------------------
.*fold00.*Dedication

:h1 id=dedication.Widmung
:p.&progname. ist :hp1."Hackers":ehp1. gewidmet, wahrscheinlich der
schlechteste Film �ber Computer, Hackerdom und Informationstechnologie der
je gemacht wurde. Eine wirklich gute Kom�die trotzdem, ich habe mich fast
totgelacht (naja, eigentlich nur wenn ich nicht gerade am Weinen war).

:p.BTW, ich wette "da Vinci" h�tte jedes System schon durch seinen Bedarf an
Ressourcen zum Absturz gebracht ...
:p.BTW 2&colon. Vielleicht h�tten sie :hp1.den Film:ehp1. "The Plague" nennen
sollen?

:p.Nein, nat�rlich ist das nicht die richtige Widmung ...

:p.:artwork name='src/data/godzilla.bmp' align=center.
:hp2.
.ce Diese Version von &progname. ist Godzilla gewidmet.
:ehp2.

.*-------------------------------------------------------------------------
.*fold00.*There's more where that came from ...

:h1 id=moreprogs.There's more where that came from ...
:p.&progname. ist keineswegs das einzige Programm f&ue.r OS/2, das ich
geschrieben habe. Hier eine kleine &Ue.bersicht &ue.ber weitere :hp1.frei
verf&ue.gbare:ehp1. Programme aus meinem Editor&colon.

:dl break=all tsize=5.

:dt.:hp2.Gotcha!:ehp2. (Screencapture-Programm)
:dd.Einfangen von Fenster, Fensterinhalten, (Teile des) Bildschirm.
Zeigesteuertes, automatisches, wiederholtes Einfangen. Abspeichern in Datei
oder Zwischenablage, etc.

:dt.:hp2.Wanda:ehp2. ("Notizzettel" f&ue.r die Arbeitsoberfl&ae.che)
:dd.Notizfenster in allen Farben, Gr&oe.ssen, usw.. Grosse Anzahl frei
konfigurierbarer Optionen. Ausdrucken, abspeichern, etc.

:dt.:hp2.Carrie R. Lust:ehp2. (Telefonkosten/Onlinezeit-&Ue.berwachung)
:dd.11 angezeigbare Werte (konfigurierbar). 4 Benachrichtigungsmodi
(konfigurierbar). Mitloggen aller Verbindungen, etc.

:dt.:hp2.Xened:ehp2. ("Xenon II"-Editor)
:dd.&Ae.ndern der Waffenpreise, Bearbeiten der Karten, Anzeigen von
Tips und Tricks, etc. Gibt's auch in einer DOS-und einer Linux-Version.

:dt.:hp2.CAD/Off:ehp2. ("Reboot-Verhinderer")
:dd.Desaktiviert die CTRL-ALT-DEL-Tastenkombination bis zum Systemabschluss.

:dt.:hp2.Tomo:ehp2. (Tetris-Klon)
:dd.Mehr Steine, w&ae.hlbare Spielfeldgr&oe.sse, etc. Leider nur f&ue.r
DOS und leider nur in Deutsch (ich hab die Sourcen nicht mehr ...)

:edl.
:p.Neben den hier aufgef&ue.hrten Programmen sind dauernd weitere in Arbeit
(darunter auch einige Spiele!). Wenn Sie n&ae.here Informationen w&ue.nschen,
schauen Sie doch einfach mal unter &www./projects.html vorbei!

.*-------------------------------------------------------------------------

.* Den folgenden Text brauchen Sie nicht zu �bersetzen, er ist nur f�r die
.* deutsche Version dieser Hilfe gedacht!

.*-------------------------------------------------------------------------
.*fold00.*Team OS/2 Region Trier

:h1 id=teamos2.Team OS/2 Region Trier
:p.Als engagierter OS/2-Anwender und -Entwickler bin ich nat�rlich auch
Mitglied im ...

:artwork name='src/data/teamlogo.bmp' align=center.
:p.:hp1.Team OS/2 Region Trier:ehp1. ist eine Gruppe OS/2-interessierter
Anwender und Entwickler aus der Region Trier (u.a. auch Bitburg, Wittlich).
Wir helfen bei Problemen, beraten und informieren und versuchen allen
Interessierten die Vorteile von OS/2 nahezubringen.

:p.Zu diesem Zweck organisieren wir neben unserem monatlichen Stammtisch auch
weitere Veranstaltungen, wie z.B. Warpstock Europe.

:p.Ausserdem erscheint ungef�hr alle sechs Monate unsere OS/2-CDROM, die 
:link refid=ttc reftype=hd."Team Trier Collection":elink..

:p.Wenn Sie mehr Informationen �ber uns m�chten, besuchen Sie doch einfach
einmal unsere Webseiten&colon. :hp1.www.teamos2.ipcon.de:ehp1.


.*-------------------------------------------------------------------------
.*fold00.*Team Trier Collection

:h1 id=ttc.Die Team Trier Collection
:link reftype=hd refid=ttc1 auto split group=10
      vpx=left vpy=top vpcx=30% vpcy=100%
      scroll=none titlebar=none rules=border.
:link reftype=hd refid=ttc2 auto split group=11
      vpx=right vpy=top vpcx=70% vpcy=100%
      scroll=vertical titlebar=none rules=border.

:h2 id=ttc1 hide nosearch noprint.Cover
:artwork name='src/data/ttc1.bmp' align=center.
:artwork name='src/data/ttc2.bmp' align=center.
:artwork name='src/data/ttc3.bmp' align=center.

:h2 id=ttc2 hide nosearch noprint.Text
:p.Die :hp1.Team Trier Collection:ehp1. ist die vom :link refid=teamos2
reftype=hd.Team OS/2 Region Trier:elink. erstellte CDROM f�r OS/2.

:ul compact.
:li.Aktuellste Freeware, Shareware, Public-Domain &amp. Demo-Versionen!
:li.Mit den neuesten Fixpaks f�r Warp 3 und 4!
:li.Einfache Bedienung durch zwei komfortable Men�systeme!
:li.Mit nur 5,- EUR fast geschenkt!
:eul.
:p.Und selbstverst�ndlich finden Sie auf der TTC immer auch die neueste
Version von &progname.! &colon.-)
:p.Wenn Sie weitere Infos zur TTC m�chten, schauen Sie doch einfach mal bei
:hp1.www.teamos2.ipcon.de/cdrom.htm:ehp1. vorbei!

.*-------------------------------------------------------------------------

:euserdoc.
