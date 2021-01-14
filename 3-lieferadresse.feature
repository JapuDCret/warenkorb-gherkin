Feature: Lieferdaten

    Auf der dritten Seite sollen die Kunden die Lieferdaten eintragen können. Hier soll es die Möglichkeit geben, die Rechnungsadresse als Lieferadresse übernehmen zu können. Alternativ sollen die Nutzer die Pflichtfelder Anrede, Vornamen, Nachnamen, Straße, Hausnummer, Postleitzahl, Stadt eingeben können.

    Scenario: Kundin kommt auf die Lieferdaten-Seite von der Rechnungsadresse-Seite aus
        When die Kundin zum ersten mal auf die Lieferdaten-Seite kommt
        Then soll das Häkchen bei "Gleiche Lieferdaten wie Rechnungsadresse" gesetzt sein
        And das gleiche Formular wie von der Rechnungsadresse-Seite erscheinen, mit den zuvor eingegebenen Daten
        And das Formular soll deaktiviert sein, solange das Häkchen gesetzt ist
    
    Scenario: Kundin kommt auf die Lieferdaten-Seite von der Zahlungsdaten-Seite aus
        Given die Kundin hatte bereits zuvor die Lieferdaten ausgefüllt
        Then sollen die zuvor eingegebenen Adressdaten weiterhin vorhanden sein
    
    Scenario: Kundin möchte die Rechnungsadresse übernehmen
        Given das Häkchen bei "Gleiche Lieferdaten wie Rechnungsadresse" ist gesetzt
        When sie auf den "weiter"-Button klickt
        Then soll sie auf die Seite "Zahlungsdaten" gelangen

    Scenario: Kundin möchte andere Lieferdaten nutzen
        Given das Häkchen bei "Gleiche Lieferdaten wie Rechnungsadresse" wurde entfernt
        When die Kundin hat alle Felder ausgefüllt
        And sie auf den "weiter"-Button klickt
        Then soll sie auf die Seite "Zahlungsdaten" gelangen

    Scenario: Kundin möchte andere Lieferdaten nutzen, ohne alle Felder ausgefüllt zu haben
        Given das Häkchen bei "Gleiche Lieferdaten wie Rechnungsadresse" wurde entfernt
        When die Kundin eine andere Lieferdaten eingibt
        * Vorname und Nachname Sonderzeichen enthalten außer Bindestriche enthält
        * Straße Sonderzeichen außer Bindestriche und Punkte enthält
        * Hausnummer. Sonderzeichen enthält
        * PLZ alles andere außer Zahlen enthält
        * Stadt keine deutsche Stadt ist
        * das @ bei der E-Mail-Adresse fehlt
        And sie auf den "weiter"-Button klickt
        Then soll eine Warnung angezeigt und der "weiter"-Button blockiert werden