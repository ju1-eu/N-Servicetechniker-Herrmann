---
title: 'Diagnose'
author: ''
date: \today
subject: "Markdown"
keywords: [Markdown]
lang: "de"
bibliography: literatur-kfz.bib 
csl: zitierstil-number.csl
---
<!---------------------------
Dozent: 
Fachbuch ([@respondeck:2019:servicetechniker])
# 
## 
ju 12-6-22 Diagnose
+------------------------------>

**Fehlersuche in einem immer stärker vernetzten Fahrzeugsystem** ([@respondeck:2019:servicetechniker]).

1. **Fahrzeugannahme**
    - Das Fahrzeug sollte im Beisein des Kunden einer *Sicht- und Funktionsprüfung* unterzogen werden und den Kunden zu dem Fehler befragen. 
    
    - kurzen "Rundum-Check" des Fahrzeugs, um weitere (sicherheitsrelevante) Mängel aufdecken. In diesem Zusammenhang können auch Vorschäden dokumentiert und dem Kunden gezeigt werden, um etwaigen Ansprüchen nach Rückgabe des Fahrzeugs entgegenzuwirken. Ein Foto von allen Seiten hilft im Streitfall bei der Klärung.

    - Bei **sporadischen Fehlern** zu hinterfragen, unter welchen Umständen und bei welchen Bedingungen der Fehler aufgetreten ist, um ihn zu reproduzieren, zu können. 
        - Betriebszustand und Fahrsituation (Motor kalt/warm; Last; Drehzahl; Fahrgeschwindigkeit; Beschleunigen/Verzögern; Rechts-/Linkskurve usw.)
        - Einsatzbedingungen (hohe/geringe Außentemperatur; Witterung Beispiel: Nässe, Regen)
        - Schaltzustände von Teilsystemen (Licht an/aus; Klimaanlage, Sitzheizung etc. an/aus)
        - Besonderheiten (Anhängerbetrieb; Zubehör im Innenraum $\to$ elektromagnetische Störungen/Störung des Bordnetzes durch angeschlossene Geräte
        - Technische Änderungen (Motoreingriffe; Umbereifung; Fahrwerksänderungen)
        - Kürzlich von einer anderen Werkstatt durchgeführte Reparaturen

    - korrekten **Fahrzeugschlüssel** vom Kunden übernehmen. (sog. Benutzer-Adaption)
        - Sitz und Spiegeleinstellung, Radiosender und -lautstärke 
        - Aktivierung/Deaktivierung von Assistenzsystemen (Fahrlichtsteuerung, Regen-/Lichtsensor, Einparkassistent, Spurhalteassistent)
        - Tippblinken
        - Automatisches Verriegeln während der Fahrt, automatisches Wiederverschließen
        - Ansprechverhalten des Fahrpedals
        - Schaltzeitpunkt des automatischen Getriebes

1. **Fehlerspeicher auslesen**
    - bei "Mehreren Kundenbeanstandungen" im ersten Schritt sollte bei der Bewertung der Fehler eine gemeinsame Ursache in Betracht gezogen und erst, wenn diese auszuschließen ist, jeder Fehler für sich betrachtet werden.
    - gesamten Fehlerspeicher des Fahrzeugs auslesen und bei mehreren Fehlern zunächst eine gemeinsame Ursache zu suchen.
    - Vor dem Löschen eines Fehlerspeichers dokumentieren
    - **Klassische Fehler** vs. **Plausibilitätsfehler**

1. **Messwerte/Istwerte/Parameter auslesen**
    - Prüfen, ob die vom SG mithilfe der Sensorik erfassten Daten der Realität entsprechen.
    - Im Zweifel sollten die Werte mithilfe eines separaten Messgerätes ermittelt und abgeglichen werden.

1. **Stellgliedtest bei Fehlern im Bereich der Aktorik**
    - Bauteil mithilfe des Diagnosegeräts ansteuern oder anhand von Messwerten überprüfen, ob es reagiert. Prüfen, ob das gewünschte Ergebnis tatsächlich erzielt wird.
    - Der Stellgliedtest sollte über das Diagnosegerät durchgeführt werden. Eine Überprüfung durch "Provozieren" einer Ansteuerung ist nicht aussagekräftig, da oftmals nicht alle Bedingungen für das Ansteuern des jeweiligen Aktors bekannt sind. Selbst der Vergleich mit einem anderen Fahrzeug (gleiches Modell, gleicher Motor, gleiches Baujahr) scheitert, wenn sich der Stand der Software der SG unterscheidet.

1. **Messungen mit Multimeter und Oszilloskop**
    - sollte es Hinweise auf fehlerhafte Sensoren, Aktoren oder Systeme geben. Ursache des Fehlers ermitteln. 
    - Die Größen Spannung, Strom und Widerstand müssen mithilfe der Prüfanleitung des Herstellers gemessen werden. 

**Sporadischer Fehler** also wiederkehrend, aber nicht permanent vorhanden

**Klassische Fehler** sind solche, bei denen das SG ein Problem des jeweiligen Bauteils messtechnisch ermittelt und den Fehler (Beispiel: "Signalspannung zu hoch") als solchen im SG hinterlegt hat. Beim Auftreten solcher Fehler kann man sofort mit der Fehlersuche im Rahmen von Messungen im Bereich des jeweiligen Bauteils beginnen.

**Plausibilitätsfehler** legt das SG dagegen im Fehlerspeicher ab, wenn die ankommenden Informationen unplausibel sind, also nicht zueinanderpassen oder Sprünge enthalten, die ohne weitere Informationen nicht zu erklären sind. Beim Auftreten von Plausibilitätsfehlern sollte man klären, welche unpassenden Informationen zu dem Fehler geführt haben.

**Beispiel 1) Fehler: Heißfilmluftmassenmesser (Diesel) "Signal unplausibel"**

Der Heißfilmluftmassenmesser hat beim Diesel hauptsächlich die Aufgabe, die Volllastmenge zu begrenzen und die Abgasrückführrate zu ermitteln. 

Die AGR-Rate wird bestimmt, indem das SG die Soll-Luftmasse im aktuellen Betriebszustand aus Hubraum, Drehzahl, Ladedruck usw. ermittelt, und die vom Luftmassenmesser ermittelte Ist-Luftmasse hiervon abzieht. Bei einer AGR-Rate von $10~\%$ sollte die vom Luftmassenmesser ermittelte Luftmasse also $10~\%$ geringer sein, als die theoretisch unter den aktuellen Bedingungen angesaugte Luftmasse. Wäre nun beispielsweise die Abgasrückführung verrußt, so reduziert sich die rückgeführte Abgasmenge bei gleicher Stellung des AGR-Ventils. Der Rückgang der vom Heißfilmluftmassenmesser ermittelten Luftmasse läge dann unter $10~\%$ und das SG meldet, dass das "Signal unplausibel" ist.

**Beispiel 2) Fehler: Heißfilmluftmassenmesser (Diesel) "Signal unplausibel"**

Der gleiche Fehler des Heißfilmluftmassenmessers kann auftreten, wenn der Luftfilter erneuert wird, ohne dies dem SG durch das Bestätigen der jeweiligen Wartung mitzuteilen. Das SG erkennt nach dem Motorstart, dass sich die Luftmasse unter sonst gleichen Bedingungen gegenüber dem letzten Fahrzyklus, deutlich erhöht hat. Da es keine Informationen über einen Luftfilterwechsel erhalten hat, ist dieser "Sprung" der Luftmasse unplausibel. Der Fehler wird im Fehlerspeicher abgelegt.

**Beispiel 3) Fehler: steigender Kraftstoffverbrauch, Fehler in AGR-System oder Vorglühanlage**

Ist es am Motortemperaturfühler zu einem Übergangswiderstand gekommen (Beispiel: durch Korrosion am Steckkontakt), so steigt der ohmsche Widerstand der Messschaltung. Den erhöhten Widerstand nimmt das SG als geringere Temperatur auf. Motortemperaturfühler sind in der Regel NTC-Widerstände $\to$ negativer Temperatur-Koeffizient $\to$ fallender Widerstand bei steigender Temperatur. Solange die ermittelten Werte innerhalb des plausiblen Bereichs bleiben (Beispiel: $> -40^\circ\text{C}$), wertet das SG die Information aus. Der Fehler wird nicht erkannt, zeigt jedoch seine Auswirkungen (Beispiel: steigender Kraftstoffverbrauch, Fehler in AGR-System oder Vorglühanlage). Beim Blick in die Messwerte fällt jedoch schnell auf, dass eine Motortemperatur von $-20^\circ\text{C}$ an einem warmen Sommertag nicht stimmen kann.

**Digital** ziffernmäßig, stufenweise, sprungweise

**Analog** gleichartig, stetig, stufenlos

**Multimeter**

- Bei Widerstandsmessungen darf das Bauteil nicht unter Spannung stehen. 

- Vor dem Ablegen des Messgerätes den Messbereichsschalter in den höchsten Wechselspannungsbereich schalten. Dies schützt Gerät und Anwender bei unsachgemäßem Einsatz ohne vorherige Einstellungen.

**Oszilloskop** dynamische Messungen (frequente Spannungen oder eine pulsweitenmodulierte Ansteuerung erfassen, Spannungsverläufe darstellen). Ermöglicht eine Auswertung des kompletten Arbeitsbereichs des Sensors.

- Signalspannung des Potenziometers 
- Drehzahl- und Bezugsmarkengeber
- Messen des Tastverhältnisses
- Induktionsgeber
- Hallgebersignal

# Ablauf der Messungen

"Alle Spannungsmessungen erfolgen unter Last, d.h., es werden keine Stecker abgezogen." Erfolgt die Spannungsmessung bei abgezogenem Stecker, ist der Stromkreis unterbrochen. Da jetzt kein Strom mehr fließt, wirken sich Übergangswiderstände nicht mehr aus und die durchgeführten Messungen sind nicht aussagekräftig.

**Sensor-Prüfung**

1. **Erfassen der Signalspannung am SG**
    - prüfen, ob SG tatsächlich ein fehlerhaftes Signal bekommt, oder ob ein fehlerfreies Signal fehlerhaft ausgewertet wird.

1. **Erfassen der Signalspannung am Sensor**
    - Ist die Signalspannung in Ordnung und am SG fehlerhaft, ist die Signalleitung zu überprüfen. 
    - Ist die Signalspannung hier fehlerhaft, muss zwischen zwei Fällen unterschieden werden:
        1. Signalspannung $0~V$: Signalleitung auf Masseschluss prüfen ($\to$  Messung 3)
        2. Signalspannung $\neq 0~V$ ($\to$ Messung 3)

1. **Überprüfen der Spannungsversorgung am Sensor**
    - Sollwert: $5 \pm 0,02~V$ (vgl. Werkstatthandbuch)

1. **Überprüfen der Spannungsversorgung am SG**
    - Ist die Spannungsversorgung hier in Ordnung und am Sensor gestört, sind die Leitungen zum Sensor zu prüfen. 
    - Ist die Spannungsversorgung hier gestört, muss geprüft werden, ob alle Voraussetzungen gegeben sind, damit das SG eine Versorgungsspannung bereitstellt.

1. **Überprüfen der Leitungen**
    - Spannungsfall über jede elektrische Leitung messen. Hierzu werden die beiden Enden der Leitung mit dem Multimeter verbunden und die Spannung gemessen. Sie sollte gerade im Bereich der Sensorik nahe $0~V$ liegen.

    - Prüfen, ob Leitungen mit einer Plusleitung oder mit Masse verbunden sind. Hierzu wird die Leitung aus dem Stromkreis getrennt (alle Stecker ab) und anschließend mit dem Multimeter an beiden Enden der Leitung jeweils einmal gegen Plus und Masse gemessen. Alle Messungen sollten mit dem Ergebnis $0~V$ enden.

1. **Überprüfung des SGs**
    - SG-Eingänge lassen sich mithilfe einer simulierten Signalspannung überprüfen. (Beispiel: geeignete Spannungsquelle oder einer Widerstandsdekade)

**Aktor-Prüfung**

1. **Überprüfen der Spannungsversorgung am Aktor**
    - Hierzu muss der jeweilige Aktor eingeschaltet werden. Dies geschieht entweder manuell (Beispiel: Licht, Heckscheibenheizung) oder mittels Stellgliedtest (Beispiel: AGR-Ventil, Stellmotor-Saugrohr). Da viele Aktoren aktuell pulsweitenmoduliert angesteuert werden, empfiehlt sich das Oszilloskop. Die gemessene Spannung liegt i.d.R. bei Bordnetzspannung. 
    - Ist die Versorgungsspannung in Ordnung, der Aktor reagiert jedoch nicht, kann von einem Defekt des Aktors ausgegangen werden. 
    - Ist die gemessene Spannung nicht in Ordnung ($\to$ Messung 2).

1. **Überprüfen der Spannungsversorgung am SG**
    - Ist die Spannungsversorgung hier in Ordnung und am Sensor gestört, sind die Leitungen zum Sensor zu prüfen. 
    - Ist die Spannungsversorgung hier gestört, muss geprüft werden, ob alle Voraussetzungen gegeben sind, damit das SG eine Versorgungsspannung bereitstellt (Beispiel: Sicherung, Spannungsversorgung des SGs)

1. **Überprüfen der Leitungen**
    - Spannungsfall über jede elektrische Leitung messen. Hierzu werden die beiden Enden der Leitung mit dem Multimeter verbunden und die Spannung gemessen. Sie sollte unter $0,5~V$ liegen.
    - Prüfen, ob Leitungen mit einer Plusleitung oder Masse verbunden sind. Hierzu wird die Leitung aus dem Stromkreis getrennt (alle Stecker ab) und anschließend mit dem Multimeter an beiden Enden der Leitung jeweils einmal gegen Plus und Masse gemessen. Alle Messungen sollten mit dem Ergebnis $0~V$ enden.

1. **Überprüfung des SGs**
    - SG-Endstufen lassen sich nur unter Last prüfen. Ist der Stromkreis zum Aktor gestört, sollte daher ein "Ersatzverbraucher", dessen Leistung in der Nähe des originalen Aktors liegt (Beispiel: $21~W$-Glühlampe), angeschlossen werden. 
    - Anschließend erfolgt die Spannungsmessung ($\to$ Messung 2).