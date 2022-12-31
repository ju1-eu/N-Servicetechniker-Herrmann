---
title: 'FS-Elektrik'
author: ''
date: \today
subject: "Markdown"
keywords: [Markdown]
lang: "de"
bibliography: literatur-kfz.bib 
csl: zitierstil-number.csl
---
<!---------------------------
Einheiten: $5~cm$, $\cdot$, $\dots$, $\Omega$
$100^\circ\text{C}$  > 100°C
$80~\%$           > 80 %
$\boxed{E=mc^2}$

\sim = ~

\cancel{5}

Exponentialschreibweise: \num{2,67e-03} => 2.67 x 10^-3
Pfeil: \curvearrowright  oder \to
Mathemodus: https://katex.org/docs/supported.html

\quad
\bigl[\frac{V}{\Omega}\bigl] große eckige Klammern

\approx rund

https://johnbsmith.github.io/Typografie/LaTeX-Befehle.htm

https://de.wikibooks.org/wiki/LaTeX-Kompendium:_Sonderzeichen

ju 8-5-22
+------------------------------>

# Grundlagen

**Eingabe Rechner**

z. B. $20~mV = \num{20,0e-3} \curvearrowright$ Rechner: $20\text{EE}-3 = 0,02$

$10^3 =  1.000 = \num{1,0e3}$ 

$10^{-3} = \frac{1}{1000} = 0,001 = \num{1,0e-3}$

$10^6 =  1.000.000 = \num{1,0e6}$

$10^{-6} = \frac{1}{1.000.000} = 0,000.001 = \num{1,0e6}$

**Größen**

$\boxed{K = \num{1,0e3} \quad M = \num{1,0e6} \quad G = \num{1,0e9} \quad T = \num{1,0e12}}$

$\boxed{m = \num{1,0e-3} \quad \mu = \num{1,0e-6} \quad n = \num{1,0e-9} \quad p = \num{1,0e-12}}$

**Einheiten** 

**Faktor** Länge 10, Fläche 100, Volumen 1000

$\boxed{\mu m \quad mm \quad cm \quad dm \quad m \quad km}$

$1~l = 1~dm^3 \quad 10~ml = 1~cl = 0,01~l$

$\frac{g}{cm^3} \quad \frac{kg}{dm^3} \quad \frac{t}{m^3}$

**Prozent** $10~\% = \frac{10}{100} = 0,1$

**km/h in m/s** $\Rightarrow \frac{km/h}{3,6} \quad \frac{km}{h} \Rightarrow \frac{m}{s} \Rightarrow \frac{1000}{3600}$ 

**Stunden:Min:Sek in Dezimalstunden** $\Rightarrow \text{h} + \frac{Min}{60} + \frac{Sek}{60 \cdot 60}$ 

**Zoll in mm** $1~\text{Zoll} = 25,4~mm$

**Kreisfläche** $\boxed{\frac{d^2 \cdot \pi}{4}} \quad \text{Hinweis: }\frac{\pi}{4} \approx 0,785$

**Masse** $\boxed{m = V \cdot \rho}$ Dichte bleibt immer gleich $\to$ Volumen ändert sich

**Volumen** $\boxed{V = A \cdot h}$

**Umfang** $\boxed{Umfang = d \cdot \pi}$

**Drehmoment** $\boxed{M = F \cdot r}$

# Fach Elektrotechnik
 
**SPANNUNG** $U~\text{Volt}~[V]$

**STROM** $I~\text{Ampere}~[A]$

**WIDERSTAND** $R~\text{Ohm}~[\Omega]$

**Reihe**

1. Strombegrenzung
1. Spannungsteilung

**Parallel**

1. Stromflusserhöhung
1. Leistungsteilung $\boxed{R_{ges} = \frac{R_{Teil}}{n}}$

**OHMSCHE GESETZ**

$\boxed{I = \frac{U}{R}} \quad \bigl[\frac{V}{\Omega}\bigl] = A \quad
 \boxed{R = \frac{U}{I}} \quad \bigl[\frac{V}{A}\bigl] = \Omega \quad
 \boxed{U = R \cdot I} \quad [\Omega \cdot A] = V$

**STROMDICHTE**

$\boxed{J = \frac{I}{A}} \quad \bigl[\frac{A}{mm^2}\bigl] \quad
 \boxed{I = J \cdot A} \quad \bigl[\frac{A \cdot mm^2}{mm^2}\bigl] = A \quad
 \boxed{A = \frac{I}{J}} \quad \bigl[\frac{A \cdot mm^2}{A}\bigl] = mm^2$

**LEITWERT** $S$ Siemens

$\boxed{G = \frac{1}{R}} \quad \bigl[\frac{1}{\Omega}\bigl] = S \quad \boxed{R = \frac{1}{G}} \quad \bigl[\frac{1}{S} = \Omega\bigl]$

**LEITERWIDERSTAND** 

$\boxed{R_l = \frac{\rho \cdot l}{A}} \quad  \bigl[\frac{\Omega \cdot mm^2 \cdot m}{m \cdot mm^2}\bigl] = \Omega \quad 
\boxed{A = \frac{\rho \cdot l}{R_l}} \quad  \bigl[\frac{\Omega \cdot mm^2 \cdot m}{m \cdot \Omega}\bigl] = mm^2$

$\boxed{l = \frac{R_l \cdot A}{\rho}} \quad  \bigl[\frac{\Omega \cdot mm^2 \cdot m}{\Omega \cdot mm^2}\bigl] = m$

**SPEZIFISCHER WIDERSTAND** $\rho$ rho

$\rho \quad \bigl[\frac{\Omega \cdot mm^2}{m}\bigl] \quad \rho_{Cu} = 0,0178~\frac{\Omega \cdot mm^2}{m}$

**ELEKTRISCHE LEITFÄHIGKEIT** $\kappa$ Kappa

$\boxed{\kappa = \frac{1}{\rho}} \quad \bigl[\frac{m}{\Omega \cdot mm^2}\bigl] \quad \kappa_{Cu} = 56~\frac{m}{\Omega \cdot mm^2}$

**REIHENSCHALTUNG**

$\boxed{U_{ges} = U_{R_1} + U_{R_2} + U_{R_3} + \dots + U_{R_n}} \quad \bigl[V + V + V\bigl] = V$ 

$\boxed{U_{teil} = \frac{U_{ges}}{n}} \quad \bigl[\frac{V}{1}\bigl] = V$

$\boxed{I_{ges} = I_{R_1} = I_{R_2} = I_{R_3} = \dots = I_{R_n}} \quad \bigl[A = A = A\bigl] = A$ 

$\boxed{R_{ges} = R_1 + R_2 + R_3 + \dots + R_n} \quad \bigl[\Omega + \Omega + \Omega\bigl] = \Omega$ 

**SPANNUNGSVERLUST** (Spannungsfall)

$U_{ges} = U_v + U_k;\quad U_k = U_{ges} - U_v;\quad U_v = U_{ges} - U_k$

$U_v = R_l \cdot I;\quad R_l = \frac{\rho \cdot l}{A} \quad \bigl[\frac{\Omega \cdot mm^2 \cdot m}{m \cdot mm^2}\bigl] = \Omega$

$U_k = U_{ges} - R_l \cdot I$

$\boxed{U_v = \frac{\rho \cdot l \cdot I}{A}} \quad \bigl[\frac{\Omega \cdot mm^2 \cdot m \cdot A}{m \cdot mm^2}\bigl] = V \quad \rho_{Cu} = 0,0178~\frac{\Omega \cdot mm^2}{m}$

$U_{v_{~\%}} = \frac{U_v \cdot 100}{U_{ges}} \quad \bigl[\frac{V \cdot ~\%}{V}\bigl] = ~\%$

$\boxed{U_{v_{max}} = 0,5~V}$

$\boxed{\text{max. Leiterwiderstand} = 1~\Omega}$ (außer Starterhauptleitung)

**INNENWIDERSTAND** (von Spannungsquellen)

$U_q = U_k + U_i \quad [V + V] = V$

$U_k = U_q - U_i \quad [V - V] = V$

$U_i = U_q - U_k \quad [V - V] = V$

$U_i = I \cdot R_i \quad [A \cdot \Omega] = V$

$U_k = I \cdot R_a \quad [A \cdot \Omega] = V$

$I = \frac{U_i}{R_i} \quad [\frac{V}{\Omega}] = A$

$I = \frac{U_k}{R_a} \quad [\frac{V}{\Omega}] = A$

$I = \frac{U_q}{R_{ges}} \quad [\frac{V}{\Omega}] = A$

$I = \frac{U_q}{R_i + R_a} \quad [\frac{V}{\Omega + \Omega}] = A$

$\boxed{U_k = U_q - I \cdot R_i} \quad [V - A \cdot \Omega \to V - V] = V$

$\boxed{R_i = \frac{U_i}{I}} \quad [\frac{V}{A}] = \Omega$

$\boxed{U_k = U_q - U_i - U_v} \quad \boxed{R_{ges} = R_i + R_l + R_\text{ü} + R_{La}}$

*Herleitung*

$U_k = U_q - I \cdot R_i$  $\quad | +I \cdot R_i$

$U_k + I \cdot R_i = U_q - I \cdot R_i + I \cdot R_i$ $\quad |  -U_k$

$-U_k + U_k + I \cdot R_i = U_q - U_k$  $\quad | :I$

$\frac{I \cdot R_i}{I} = \frac{U_q - U_k}{I}$ $\quad \bigl[\frac{V - V}{A} \to \frac{V}{A}\bigl] = \Omega$

$R_i = \frac{U_i}{I}$

**PARALLELSCHALTUNG**

$\boxed{I_{ges} = I_{R_1} + I_{R_2} + I_{R_3} + \dots + I_{R_n}}\quad [A + A + A] = A$

$\boxed{U_{ges} = U_{R_1} = U_{R_2} = U_{R_3} = \dots = U_{R_n}}\quad [V = V = V] = V$

$\boxed{R_{ges} = \frac{1}{\frac{1}{R_1} + \frac{1}{R_2} + \frac{1}{R_3} + \dots + \frac{1}{R_n}}} \quad \bigl[\frac{1}{\frac{1}{\Omega} + \frac{1}{\Omega} + \frac{1}{\Omega}} = \frac{1}{\frac{1}{\Omega}} = \frac{1}{S}\bigl] = \Omega$

Ersatzwiderstand $\boxed{R_{ges} = \frac{R_{Teil}}{n}} \quad \bigl[\frac{\Omega}{1}\bigl] = \Omega \quad \to \text{Anzahl } n = \frac{R_{Teil}}{R_{ges}} \quad \bigl[\frac{\Omega}{\Omega}\bigl] = 1$ 

n = Anzahl der Widerstände (gleich große Widerstände)

$\boxed{R_{ges} = \frac{R_1 \cdot R_2}{R_1 + R_2}}$

$R_{ges} = \frac{1}{\frac{1}{R_1} + \frac{1}{R_2} + \frac{1}{R_3}}$

$\to R_{1} = \frac{1}{\frac{1}{R_{ges}} - \frac{1}{R_2} - \frac{1}{R_3}} \quad \to R_{2} = \frac{1}{\frac{1}{R_{ges}} - \frac{1}{R_1} - \frac{1}{R_3}}  \quad \to R_{3} = \frac{1}{\frac{1}{R_{ges}} - \frac{1}{R_1} - \frac{1}{R_2}}$

**LEISTUNG** $P$ (Power) Watt, $[W], [kW]$

$\boxed{P = U \cdot I} \quad [V \cdot A] = W$

$\boxed{U = \frac{P}{I}} \quad [\frac{W}{A} \to \frac{V \cdot A}{A}] = V$

$\boxed{I = \frac{P}{U}} \quad [\frac{W}{V} \to \frac{V \cdot A}{V}] = A$

**wenn $I$ fehlt** (Einsetzverfahren)

$P = U \cdot I \quad [V \cdot A] = W, \quad I = \frac{U}{R} \quad [\frac{V}{\Omega}] = A$

$P = U \cdot \frac{U}{R} \to \boxed{P = \frac{U^2}{R}} \quad [\frac{V \cdot V}{\Omega} \to A \cdot V] = W$

**wenn $U$ fehlt** (Einsetzverfahren)

$P = U \cdot I \quad [V \cdot A] = W, \quad U = R \cdot I \quad [\Omega \cdot A] = V$

$P = R \cdot I \cdot I \to \boxed{P = R \cdot I^2} \quad [\Omega \cdot A \cdot A \to V \cdot A] = W$

**Lampe** $12~V/55~W$ 

1. $R_{La} = \frac{U^2}{P}$
2. $I_{tat} = \frac{U_k}{R_{La}} = \frac{U_{ges} - U_v}{R_{La}}$
3. $P_{tat} = U_k \cdot I_{tat}$