#!/bin/bash -e
# ju 7-6-22
#################################################################
# Artikel aus den Ordnern erstellen
#   content/tex/
#   wird gespeichert in Artikel/
#################################################################

# Variable anpassen
TEX="tex"
CONTENT="content"
ARTIKEL="Artikel"
INFO="Artikel aus den Ordnern erstellen
	* '$CONTENT/$TEX/'
	*  wird gespeichert in 'Artikel/'"
TIMESTAMP=$(date +"%d-%h-%y")
COPYRIGHT="ju $TIMESTAMP"

#################################################################
echo "+ $INFO"

T1A="\documentclass[a4paper,12pt,fleqn,parskip=half]{scrartcl}
\include{content/praeambel-artikel}   

\usepackage[left=2cm,right=2cm,top=1cm,bottom=1cm,includeheadfoot]{geometry}
%\usepackage[left=4cm,right=2cm,top=1cm, bottom=1cm,includeheadfoot]{geometry}
%\usepackage[left=6cm,right=1cm,top=1cm, bottom=1cm,includeheadfoot]{geometry}
%\usepackage[landscape=true,left=2cm,right=2cm,top=1cm,bottom=1cm,includeheadfoot]{geometry}%quer

% eigene Farbe definieren
% Adobe Prozessfarben: CMYK: 100,50,0,35 -> 1,0.5,0,0.35
\definecolor{orange}{cmyk}{0,0.55,0.61,0}   % 0,55,61,0
\definecolor{blau5}{cmyk}{1,0.77,0.1,0.01}  % 100,77,10,
\definecolor{rot5}{cmyk}{0.22,1,1,0.19}     % 22,100,100,19
\definecolor{grau2}{cmyk}{0,0,0,0.1}        % 0,0,0,40
\definecolor{blau}{cmyk}{0.93,0.66,0,0.21}% 

% Literatur
\bibliography{content/literatur}
\bibliography{content/literatur-kfz}
\bibliography{content/literatur-sport}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\name}{Jan Unger}"

T1B="\newcommand{\quelle}{\name}
\newcommand{\website}{https://bw-ju.de/}
\newcommand{\github}{https://github.com/ju1-eu}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ihead{\textbf{Quelle:} \quelle}%{Kopfzeile innen}
\ohead{\textbf{Datum:} \today}  %{Kopfzeile außen}
\ifoot{\textbf{Thema:} \thema}  %{Fußzeile  innen}
\ofoot{Seite {\thepage} von {\pageref{LastPage}}}%{Fußzeile  außen}

\title{\thema}
\author{\name}
\date{\today}

\begin{document}
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\begin{abstract}
		\center
		\textbf{\Large \thema}%14pt
		
		\vspace{1.5em}
		%\datum	
		%\qrcode[hyperlink,level=Q,version=2,height=1cm]{\website}
		\qrcode[hyperlink,level=Q,version=2,height=1cm]{\github}
		
		\vspace{1.5em} 
		\raggedright
		\textbf{\large Keywords}
		% Checkliste
		\begin{itemize}[label=\checkmark]
			\item Begriff
		\end{itemize}
	\end{abstract}
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
T2="
	% anpassen
	%\input{content/tex/neu}"
T3="
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Bibliographie
    \printbibliography[category=cited]
\end{document}"

# tex/
cd $CONTENT/$TEX
EXT="tex" 
EXIST=$(find . -type f -iname "*.$EXT" | wc -l)
if [ $EXIST -ge 1 ]; then
	for i in *.$EXT; do
		# dateiname ohne Endung
		TEXNAME=`basename "$i" .$EXT`
		echo "% $COPYRIGHT"       			    > ../../$ARTIKEL/N-Keywords-$TEXNAME.tex # file anlegen
		echo "$T1A"               			   >> ../../$ARTIKEL/N-Keywords-$TEXNAME.tex
		echo "\newcommand{\thema}{$TEXNAME}"   >> ../../$ARTIKEL/N-Keywords-$TEXNAME.tex
		echo "$T1B"               			   >> ../../$ARTIKEL/N-Keywords-$TEXNAME.tex
		echo "$T2"               			   >> ../../$ARTIKEL/N-Keywords-$TEXNAME.tex
		echo "	\input{$CONTENT/$TEX/$i}"      >> ../../$ARTIKEL/N-Keywords-$TEXNAME.tex
		echo "$T3"               			   >> ../../$ARTIKEL/N-Keywords-$TEXNAME.tex
	done
fi
cd ../..

echo "...fertig."
