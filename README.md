# Readme
<!--ju 18-12-21 -->
Erstellt Webseiten & Latex-Files mit Markdown und Pandoc.
Projekt wurde getestet unter "iMac"   

## Kurzbefehle

**Terminal** öffnen

```
# Schreiben in Markdown, Illustrator für Vektorgrafiken und Excel für Tabellen

./projekt.sh  # Schritt 2, 3, 5
##########################################################
    0) Projekt aufräumen
    1) Projekt erstellen
    2) Markdown in (tex, html5) + sed (Suchen/Ersetzen)
    3) Kapitel erstellen + Scripte ausführen
    4) Fotos optimieren (Web, Latex)
    5) www + index.html
    6) git init
    7) git status + git log
    8) Git-Version erstellen
    9) Backup + Archiv erstellen
    10) Beenden?
##########################################################

# PDF erstellen
make distclean
make
make clean

# Git Version
git add .
git commit -a
git push

# Backup
./projekt.sh  # Schritt 9
```  
    
## Software

- Git Bash[^1]
- Git-Repository klonen[^2]
- Texlive (Latex)[^3]
- Pandoc (Dokumentenkonverter)[^4]
- Imagemagick (Bildbearbeitung)[^5]
- Editor Visual Studio Code[^6]
- TeXstudio (Latexeditor)[^9]
- Tablesgenerator (Latex / Markdown)[^10] 
- hpi-dokumentvorlagen-latex (Hasso-Plattner-Institut (HPI) Potsdam)[^11] 
- Zotero (Literaturverwaltung)[^12]
- WordPress[^13]
- XAMPP Apache + Maria DB + PHP[^14]
- FileZilla[^15]
- VM VirtualBox[^16]
- Ubuntu (Desktop / Server)[^17]
- WordPress-Themes[^18]
- themecheck (WordPress-Themes)[^19]
- ghostscript Z. B. EPS in PDF[^20]

[^1]: <https://git-scm.com/downloads>
[^2]: <https://github.com/ju1-eu/N-Servicetechniker-Herrmann.git>
[^3]: <https://www.tug.org/texlive/>
[^4]: <https://pandoc.org/installing.html>
[^5]: <https://imagemagick.org/script/download.php>
[^6]: <https://code.visualstudio.com/>
[^7]: <https://www.texstudio.org/>
[^8]: <https://www.tablesgenerator.com/latex_tables>
[^9]: <https://osm.hpi.de/theses/tipps#dokumentvorlagen-latex>
[^10]: <http://www.zotero.org/>
[^11]: <https://de.wordpress.org/download/>
[^12]: <https://www.apachefriends.org/de/index.html>
[^13]: <https://filezilla-project.org/>
[^14]: <https://www.virtualbox.org/>
[^15]: <https://ubuntu.com/download>
[^16]: <https://de.wordpress.org/themes/>
[^17]: <https://themecheck.info/>
[^18]: <https://www.ghostscript.com/>

## Erste Schritte

**Files anpassen:**

1. `scripteBash/sed.sh`
    - codelanguage: `HTML5, Python, Bash, C, C++, TeX`
    - CMS Server Pfad: `https://bw-ju.de/#`
    - Bildformat: SVG, PNG, JPG, WebP
2. `scripteBash/gitversionieren.sh`
    - "/Volumes/USB-DATEN/meineNotizen/repository/notizen-iMac"
3. `projekt.sh`
    - THEMA="N-Servicetechniker-Herrmann"
    - "/Volumes/USB-DATEN/meineNotizen/backup/notizen-iMac"
    - "/Volumes/USB-DATEN/meineNotizen/archiv/notizen-iMac"
4. `content/meta.tex`
    - Datum, Titel, Autor
5. `content/titelpage.tex`
    - "Grafiken/logo.eps"

**Markdown-Files erstellen**
    
1. Erstelle eine Datei "neu.md" im Ordner "md/"
    - Bilder nach `images/` kopieren
    - Vektorgrafiken  nach `images/` kopieren
    
2. Script ausführen: `projekt.sh`

**Terminal** öffnen

```
$ ./projekt.sh

    0) Projekt aufräumen
    1) Projekt erstellen
    2) Markdown in (tex, html5) + sed (Suchen/Ersetzen)
    3) Kapitel erstellen + Scripte ausführen
    4) Fotos optimieren (Web, Latex)
    5) www + index.html
    6) git init
    7) git status + git log
    8) Git-Version erstellen
    9) Backup + Archiv erstellen
    10) Beenden?

Eingabe Zahl >_
```

3. Latex-PDFs erstellen: `make`

``` 
$ make
$ make clean
$ make distclean
```

4. Repository auf Github erstellen

## Git-Repository erstellen -- klonen

GitHub's Maximum File size of **50 MB**

**Repository auf Github erstellen**

```
# HTTPS oder SSH
HTTPS: https://github.com/ju1-eu/N-Servicetechniker-Herrmann.git
SSH: git@github.com:ju1-eu/N-Servicetechniker-Herrmann.git

# create a new repository 
echo "# README" >> README.md
# iMac Warnung 
# git config --global init.defaultBranch master
git init
git add .
git commit -m "git init"
                
# or push an existing repository 
git remote add origin https://github.com/ju1-eu/N-Servicetechniker-Herrmann.git
git push -u origin master
# new
git push -u origin main
```

**Git-Repository klonen**

```
git clone https://github.com/ju1-eu/N-Servicetechniker-Herrmann.git
```

## Script Beschreibung

`$ ./projekt.sh`

1. Projekt erstellen
    - Verzeichnis erstellen, wenn nicht vorhanden
2. Markdown in `*.tex und *.html`
    - Markdown in Latex + HTML5 + WordPress
    - sed > WordPress
    - sed > Latex
3. Kapitel erstellen + Scripte ausführen
    - Alle Abbildungen "images/" in Markdown speichern.
        - "archiv/input-img.txt"
    - Latex Kapitel erstellen.
        - Kopiere "texPandoc/.tex" nach "content/tex/"
        - "content/tex/" **Handarbeit...** für optimale Ergebnisse!
        - Kopiere "archiv/inhalt.tex" nach "content/"
        - make -- Latex-PDF erstellen
    - Tabellen als PDFs in Latex einfügen. "Tabellen/ ?"
    - Inhalt vom Projektverzeichnis.
        - "archiv/Projekt-Inhalt.txt"
    - Quellcode "code/" in Latex speichern.
        - "archiv/Quellcode-files.tex"
      HTML, Python, Bash, C, C++, TeX
    - Artikel aus den Ordnern erstellen
        - "content/tex/"
        - "archiv/"
        - "Tabellen/"
        - "content/beispiele/tex/"
        -  wird gespeichert in "Artikel/"
    - Alle Abbildungen "images/" in Latex speichern
        - "archiv/Pics-files.tex"
        - Bildgröße: `width=.80\textwidth`
4) Fotos optimieren (Web, Latex)
5) www + index.html
    - "html/alle-pics.html" erstellen
    - "index.html" erstellen
6) `git init`
7) `git status` + `git log`
8) Git-Version erstellen
    - **Pfade** anpassen in `gitversionieren.sh`
    - lokales Repository: master
    - Github Repository: `origin/master` **new:** `origin/main`
    - Sicherung Repository: backupUSB/master
        - "/Volumes/USB-DATEN/meineNotizen/repository/notizen-iMac"
9) Sicherung + Archiv erstellen
    - **Pfade** anpassen in `projekt.sh`
    - THEMA="N-Servicetechniker-Herrmann"
    - "/Volumes/USB-DATEN/meineNotizen/backup/notizen-iMac"
    - "/Volumes/USB-DATEN/meineNotizen/archiv/notizen-iMac"