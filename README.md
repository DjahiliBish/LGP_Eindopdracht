# LGP_Eindopdracht

Projectvoorstel eindopdracht Leergang Programmeren.

Groep:	Taco Boerkamp
		Toto Kromojahjo
		Djahili Bish
		Menno Mennen
		Tania van Elven
		

Versie:  	Concept projectvoorstel 1 juni 2018

Inleiding

In het kader van de eindopdracht Leergang Programmeren 2017/2018 is ons idee een webapplicatie te realiseren waar vraag en aanbod naar producten samenkomen. 
Hierbij denken we aan een winkel/webshop met de onderstaande doelstelling;
 
Het doel van de webapplicatie is het ontwikkelen van een eenvoudige webshop voor een winkel. 
Hier willen we een online verkoopkanaal mee bereiken om de klanten digitaal mee van dienst te kunnen zijn en de omzet van de winkel te vergroten. 
Het product dat we willen aanbieden via de webshop betreft fietsen en als voorbeeld voor onze webapplicatie zien we de website www.fietsenwinkel.nl

Projectdefinitie:

De webapplicatie zal bestaan uit een back-end middels een SQL database welke communiceert met een front-end webpagina. 
In de database willen we de voorraad aan artikelen weergeven. 
Hierbij denken we aan type fiets, kleur, prijs, merk, nieuw/tweedehands, versnellingen ja/nee etc. 
Via de webpagina willen we vervolgens kunnen zoeken/selecteren in de database op basis van onze selectiecriteria voor een fiets. 

Globaal dienen we de onderstaande punten te realiseren: 

	1.	Een website geschikt voor tenminste de browsers Chrome en FireFox.
	2.	De homepage dient klantvriendelijk en aantrekkelijk vorm te worden gegeven en een korte uitleg te bevatten over het aanbod van de webwinkel.
	3.	In de homepage kan je gaan naar:
		a.	Contact maken (contactgegevens, google-map of email sturen).
		b.	Ons Assortiment.
		c.	Stel ons een vraag (via webformulier).
		d.	Humor, quotes of wetenswaardigheidje.
	4.	In pagina Ons Assortiment:
		a.	Krijg je aanvankelijk een leeg browse venster te zien. Hierin wordt  de blik geleid (d.m.v. splash of animatie) naar checkboxes die je moet aan/uit vinken voor heren-, dames-, kinderfiets of accessoires. Als je op een [Zoek] knop klikt wordt een query-opvraag gedaan en krijg je het resultaat in een browse venster te zien. In het browse venster kun je een sortering doen op een item,  bijv. op prijs of datum.
		b.	Je kunt ten allen tijde de checkboxes aan/uit zetten en daarna op de  [Zoek] knop klikken om de selectie te updaten.
		c.	In het browse venster kun je een object aanklikken, om nadere gegevens, plaatjes  in 3D of een promo-video te bekijken. Of om een bestelling te doen !
		d.	Kun je terug gaan naar de homepage.
	5.	De beheerder moet beheer werkzaamheden kunnen doen. Verwijderen of veranderen van items in het assortiment.

Afbakening:

De volgende zaken gelden om het project af te bakenen voor complexiteit.
	-	Er hoeft geen printmogelijkheid te zijn
	-	Er hoeft geen rekening gehouden te worden met ingewikkelde security issue (hacks)
	-	Accounts worden niet automatisch aangemaakt, maar middels een verzoek via mail naar de beheerder.
	-	In eerste instantie gebruiken we een webserver via localhost.


User Story:

Een user story is een korte beschrijving (story) van wat een gebruiker (user) wil en ziet er in het algemeen als volgt uit;
 
Aan de hand van de genoemde structuur hebben we als leidraad bij het ontwikkelen van de webwinkel onderstaande 9 userstory’s geformuleerd;

1.	Als klant wil ik het type fiets kunnen selecteren zodat ik specifiek kan zoeken naar een racefiets als ik voornemens ben te gaan wielrennen.
2.	Als klant wil ik het merk kunnen selecteren zodat ik specifiek kan zoeken naar een merk als Gazelle als ik een fiets zoek van dit betreffende merk.
3.	Als klant wil ik kunnen zoeken op prijs zodat ik kan bepalen of het product binnen mijn budget past.
4.	Als klant wil ik kunnen zoeken op hoogte van de fiets zodat ik kan bepalen of de fiets bij mijn lichaamslengte past.
5.	Als klant wil ik kunnen zoeken of er een kinderzitje op de fiets past zodat ik weet of het mogelijk is een kind op de fiets mee te nemen.
6.	Als klant wil ik kunnen zoeken op de kleur van de fiets zodat ik een fiets kan selecteren welke voldoet aan mijn favoriete kleur.
7.	Als klant wil ik kunnen zoeken op het aantal versnellingen dat een fiets heeft zodat ik kan selecteren op een fiets met het gewenste aantal versnellingen.
8.	Als klant wil ik kunnen zoeken op het type rem dat een fiets heeft zodat ik kan selecteren op een fiets met een handrem of een terugtraprem.
9.	Als klant/winkelier wil ik het aantal fietsen van een type in voorraad kunnen zien zodat ik weet of een fiets bijna uitverkocht is en niet meer leverbaar.  
		


