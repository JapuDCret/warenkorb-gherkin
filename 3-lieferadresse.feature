Feature: Lieferadresse

    Auf der dritten Seite sollen die Kunden die Lieferadresse eintragen können.Hier soll es die Möglichkeit geben, die Rechnungsadresse als Lieferadresse eingeben zu können. Alternativ sollen die Nutzer die Pflichtfelder Anrede, Vornamen, Nachnamen, Straße, Hausnummer, Postleitzahl, E-Mail-Adresse sowie das optionale Feld Adresszusatz/Firmeninfo eingeben können.

    Scenario: Kundin kommt auf die Lieferadresse-Seite von der Zahlungsdaten-Seite aus
        When die Kundin zum ersten mal auf die Lieferdaten-Seite kommt
        Then solldas Häkchen bei "Gleiche Lieferadresse wie Rechnungsadresse" gesetzt sein
        And das gleiche Formular wie von der Rechnungsadresse-Seite erscheinen, mit den zuvor eingegebenen Daten
        And das Formular soll deaktiviert sein, solange das Häkchen gesetzt ist

    Scenario: Kundin möchte andere Lieferadresse nutzen
        Given das Häkchen bei "Gleiche Lieferadresse wie Rechnungsadresse" wurde entfernt
        When die Kundin eine andere Lieferadresse eingibt
        * Vorname und Nachname Sonderzeichen enthalten außer Bindestriche enthält
        * Straße Sonderzeichen außer Bindestriche und Punkte enthält
        * Hausnummer. Sonderzeichen enthält
        * PLZ alles andere außer Zahlen enthält
        * das @ bei der E-Mail-Adresse fehlt
        Then soll eine Warnung angezeigt und der "weiter"-Button blockiert werden