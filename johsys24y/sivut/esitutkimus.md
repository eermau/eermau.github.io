# Esitutkimus

## Yleistä

### Tuoteidea

Mitä sovelluksella on tarkoitus tehdä? Ketä ovat sovelluksen käyttäjät?

Esimerkiksi:

Käyttäjäryhmät
 - Pääkäyttäjä: pääkäyttäjiä on yleensä 1-2 ja he voivat käyttää kaikkia ylläpitotyökaluja. Pääkäyttäjä
voi tulostaa mm. tilausraportin.
 - Käyttäjä: käyttäjiä voi olla hyvin monta ja he käyttävät sovellusta yleensä puhelimen kautta.
Käyttäjät voivat kirjauduttuaan käyttää kohdassa 3.1 esitettyjä toimintoja. Käyttäjä voi halutessaan
poistaa tilinsä jolloin kaikki hänen tietonsa poistetaan järjestelmästä.

### Tuotteen tausta ja hyödyt
Kenelle sovellus tehdään, kuka on projektin asiakas? Millaisia ongelmia sovellus ratkaisee, mitä hyötyä sillä
olisi käyttäjilleen?

## Tavoitteet ja vaatimukset

### Toiminnalliset vaatimukset

![Use Case -kaavio](./kuvat/use_case_esimerkki.png)

### Ei-toiminnalliset vaatimukset

Mitä ei-toiminnallisia vaatimuksia sovelluksella olisi?

Esimerkki
 - Asiakas-käyttäjän toiminnoissa on tärkeää huomioida käytettävyys ja responsiivisuus.
 - Ulkoasua suunniteltaessa tulee huomioida saavutettavuus.
 - Noudatetaan käyttöliittymää suunniteltaessa ja toteutettaessa saatu graafinen ohjeistus.

## Ulkoasusuunnitelma

Liitä tänne kuvat tekemästäsi käyttöliittymäehdotuksesta. Tarvittaessa jaa useampaan sopivan kokoiseen
kuvaan, jotta ne ovat luettavia. Pyri kertomaan esimerkiksi otsikoiden avulla mistä asiasta kuvassa on
kysymys.

![UI-suunnitelma](./kuvat/xd_demo1.png)

## Tietokantasuunnitelma

Liitä tähän kohtaan laatimasi ER-kaavio ja tietokantakaavio.

![ER-kaavio](./kuvat/esimerkki_er.png)

![Tietokantakaavio](./kuvat/esimerkki_db.png)

## Riskit

Mitä riskejä voidaan ennakoida projektilla olevan? Onko jotain ratkaisemattomia asioita joita pitäisi tietää
tarkemmin ennen toteuttamista?

| Riski                      | Vakavuus (1-5) | Miten voidaan ehkäistä                                                                                                                                                                                          |
|----------------------------|----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Aikataulun epäonnistuminen | 5              | Säännölliset viikkopalaverit, joiden aikana käydään läpi tulevan viikon tavoitteet ja tarkistetaan mitä edellisellä viikolla tehty. Tiedotus ohjausryhmälle mikäli havaitaan viivästymistä aiheuttavia ongelmia |
| Tiedostojen tuhoutuminen   | 5              | Versionhallintana GitHub, säännöllinen git commit ja toteutustiimin sisällä merge request                                                                                                                       |
|                            |                |                                                                                                                                                                                                                 |