#!/bin/bash -e
# ju 28-5-22

# Websiten erstellen

# Variable anpassen
THEMA="N-Servicetechniker-Herrmann"
CSS="md/github.css" # oder design.css
HTML="html"
CMS_LOKAL="cms-lokal"
CMS_SERVER="cms-server"
FILE="index.html"
IMG="images"
SKIZZE="Skizze" # anpassen
TABELLEN="Tabellen"
PDF="PDF"
MUSTER="Muster"
INFO="Websiten erstellen."
TIMESTAMP=$(date +"%d-%h-%y") # 11-Aug-20
COPYRIGHT="ju $TIMESTAMP"

echo "+ $INFO"

T1="<!DOCTYPE html>
<html><head>
	<meta charset=\"utf-8\"/>
	<title>$THEMA</title><!--anpassen-->
	<meta name=\"description\" content=\"Beschreibung\" />
	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=yes\" />
	<style type=\"text/css\">
		code{white-space: pre-wrap;}
		span.smallcaps{font-variant: small-caps;}
		span.underline{text-decoration: underline;}
		div.column{display: inline-block; vertical-align: top; width: 50%;}
	</style>"

# index.html
T2="	<link rel=\"stylesheet\" href=\"./$CSS\" />"
# html/website.html
T3="	<link rel=\"stylesheet\" href=\"../$CSS\" />"
T4="</head><body><!-- Inhalt -->"
T5="</body></html>"

# File neu anlegen
# index.html
echo "<!--$COPYRIGHT-->"  > $FILE
echo "$T1"               >> $FILE
echo "$T2"               >> $FILE
echo "$T4"               >> $FILE
echo "	<h1>$THEMA</h1>
	<!-- Navi -->
	<ul class=\"nav\">"  >> $FILE

#----------------------
# alle pics
PICS="alle-pics.html"
echo "<!--$COPYRIGHT-->"  > ./$HTML/$PICS
echo "$T1"               >> ./$HTML/$PICS
echo "$T3"               >> ./$HTML/$PICS
echo "$T4"               >> ./$HTML/$PICS
echo "	<p><a href=\"../$FILE\">Start</a></p>
	<h1>$THEMA</h1>
	<h2>alle Pics</h2>"  >> ./$HTML/$PICS

cd $IMG/$SKIZZE
EXT="webp"
exist=$(find . -type f -iname "*.$EXT" | wc -l)
n=1 # Pic Zaehler ((n+=1))
if [ $exist -ge 1 ]; then
	for i in *.$EXT; do
		# Dateiname ohne Endung
		FILEname=`basename "$i" .$EXT` # anpassen
		# html/alle-pics.html
		echo "	<!-- Abb. $n -->
		<p><a href=\"../$IMG/$SKIZZE/$i\">
		<figure>
			<IMG class=scaled src=\"../$IMG/$SKIZZE/$i\" alt=\"$FILEname\" style="width:60.0%">
			<figcaption>Abb. $n : $i</figcaption>
		</figure>
		</a></p>" >> ../../$HTML/$PICS
		((n+=1)) # Pic Zaehler
	done
fi

EXT="jpg" 
exist=$(find . -type f -iname "*.$EXT" | wc -l)
n=1 # Pic Zaehler ((n+=1))
if [ $exist -ge 1 ]; then
	for i in *.$EXT; do
		# Dateiname ohne Endung
		FILEname=`basename "$i" .$EXT` # anpassen
		# html/alle-pics.html
		echo "	<!-- Abb. $n -->
		<p><a href=\"../$IMG/$SKIZZE/$i\">
		<figure>
			<IMG class=scaled src=\"../$IMG/$SKIZZE/$i\" alt=\"$FILEname\" style="width:60.0%">
			<figcaption>Abb. $n : $i</figcaption>
		</figure>
		</a></p>" >> ../../$HTML/$PICS
		((n+=1))
	done
fi

EXT="svg" 
exist=$(find . -type f -iname "*.$EXT" | wc -l)
n=1 # Pic Zaehler ((n+=1))
if [ $exist -ge 1 ]; then
	for i in *.$EXT; do
		# Dateiname ohne Endung
		FILEname=`basename "$i" .$EXT` # anpassen
		# html/alle-pics.html
		echo "	<!-- Abb. $n -->
		<p><a href=\"../$IMG/$SKIZZE/$i\">
		<figure>
			<IMG class=scaled src=\"../$IMG/$SKIZZE/$i\" alt=\"$FILEname\" style="width:60.0%">
			<figcaption>Abb. $n : $i</figcaption>
		</figure>
		</a></p>" >> ../../$HTML/$PICS
		((n+=1))
	done
fi

EXT="png" 
exist=$(find . -type f -iname "*.$EXT" | wc -l)
n=1 # Pic Zaehler ((n+=1))
if [ $exist -ge 1 ]; then
	for i in *.$EXT; do
		# Dateiname ohne Endung
		FILEname=`basename "$i" .$EXT` # anpassen
		# html/alle-pics.html
		echo "	<!-- Abb. $n -->
		<p><a href=\"../$IMG/$SKIZZE/$i\">
		<figure>
			<IMG class=scaled src=\"../$IMG/$SKIZZE/$i\" alt=\"$FILEname\" style="width:60.0%">
			<figcaption>Abb. $n : $i</figcaption>
		</figure>
		</a></p>" >> ../../$HTML/$PICS
		((n+=1))
	done
fi
cd ../..

echo "+ $HTML/alle-pics.html wurde erstellt"
echo "$T5"     >> ./$HTML/$PICS


#----------------------
# File neu anlegen
# alle x-PDFs
X_PDFs="alle-PDFs.html"
echo "<!--$COPYRIGHT-->"  >  ./$HTML/$X_PDFs
echo "$T1"                >> ./$HTML/$X_PDFs
echo "$T3"                >> ./$HTML/$X_PDFs
echo "$T4"                >> ./$HTML/$X_PDFs
echo "	<p><a href=\"../$FILE\">Start</a></p>
	<h1>$THEMA</h1>
	<h2>$X_PDFs</h2>"    >> ./$HTML/$X_PDFs

cd $TABELLEN/$PDF

EXT="pdf"
exist=$(find . -type f -iname "*.$EXT" | wc -l)
if [ $exist -ge 1 ]; then
	for i in *.$EXT; do
		echo "		<li><a href=\"../$TABELLEN/$PDF/$i\">$i</a></li>"  >> ../../$HTML/$X_PDFs
	done
fi

cd ../..

echo "	</ul>" >> ./$HTML/$X_PDFs
echo "$T5"     >> ./$HTML/$X_PDFs
echo "+ $HTML/alle-PDFs.html wurde erstellt"


# -------------------------
# index.html
cd $HTML
for i in *.html; do
	# navi - index.html
	echo "		<li><a href=\"./$HTML/$i\">$i</a></li>"  >> ../$FILE
done
cd ..

echo "	</ul>" >> $FILE
echo "$T5"     >> $FILE
echo "+ index.html wurde erstellt"
rm -rf ./$HTML/*.html-e
rm -rf ./$CMS_LOKAL/*.html-e
rm -rf ./$CMS_SERVER/*.html-e
echo "...fertig."

