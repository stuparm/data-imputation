Ajde onda da presecemo - meni su missing values interesantnije, tako da ajmo to.

Predlazem da rad ima bar cetiri eksperimenta:
- 3+ klasifikatora pustiti na ceo skup podataka (jedan mora da bude NM da bi tako polozio ispit iz NM, a drugi Bajesove mreze zbog daljeg rada, ostalih 1+ biraj)
- pustiti Bajesa na izbusen skup podataka
- popuniti izbusen skup podataka sa neka 2+. Predlazem LASSO i neku MLE estimaciju, ili tako neku statisticku banalnost (a da nije umetanje srednjih vrednosti). Onda na taj skup podataka pustiti preostala dva klasifikatora
- uzeti jedan skup podataka sa missing values sa UCI repositorijuma / Kegla, pa na njemu pustiti bajes mrezu, LASSO+2klasifik, MLE+2klasifik.
- dodaj sta god ti je po zelji.

I za prvi ekepseriment uzmi neki dataset sa UCIja, ili Kegla, koji god ti 'legne'. Samo, predlazem da radis na problemima klasifikacije, lakse cemo tu evaluirati gresku klasifikacije. Obavezno cuvaj matricu konfuzije, tacnost, preciznost. U slucaju da uzorak nije balansiran i da radis binarnu klasifikaciju, onda ne bi bilo lose i da prezentujes ROC krivu (area under curve).

Glavna pitanja u radu su:
Da li missing values utice na performanse klasifikatora? 
Koji klasifikator najbolje "radi" dati problem bez missing values?
Koji klasifikator najbolje "radi" dati problem sa missing values?
Koji algoritam "bolje" popunjava podatke za date klasifikatore?
U slucaju vec postojeceg skupa sa missing data, koji najbolje radi posao?


Okvirna organizacija rada:
1. Uvod
2. Problem klasifikacije/regresije
2. Opis problema sa missing data
3. Teorijski opis klasifikatora
3. Teorijski opis tehnika za missing data
4. Opis podataka za prvi skup
4. Rezultati i uporedna analiza
5. Opis podataka za drugi skup
5. Rezultati i uporedna analiza
6. Zakljucak

Opseg rada 40-50tak strana, bar 20 referenci. Zbog opsega rada i samog pisanja, koje ce tebi biti najdosadnije, predlazem da 3+ = 3, i 2+ = 2 (ako budes radio vise klasfikatora/imputation algoritma onda u radu opisi najbolji/e).

U zavisnosti da li ce nam 'faliti' strane i da li ce kodovi biti citljivi, dogovaramo se da li cemo njih ukljuciti u rad.

Knjige Statistical analysis with missing data ? Applied missing data analysis saljem kad mi ih profa prosledi.

Odgovara?