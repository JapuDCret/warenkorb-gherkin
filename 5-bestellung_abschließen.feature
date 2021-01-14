Feature: Bestellung abschließen

    Die letzte Seite soll eine Übersicht über die zuvor eingegebenen Daten geben, bevor die Kundin die Bestellung abschließt.

    Scenario: Kundin betritt die Seite
        When die Kundin die Seite betritt soll eine Bestellübersicht über die Artikel von Seite 1 angezeigt werden
        * die Rechnungsadresse angezeigt werden
        * die Lieferadresse angezeigt werden
        * die Rechnungsart angezeigt werden
        * ein "kostenpflichtig bestellen"-Button angezeigt werden
    
    Scenario: Kundin schließt die Bestellung ab
        When die Kundin auf den "kostenpflichtig bestellen"-Button klickt
        Then soll eine Serverinteraktion ausgelöst werden, die die Bestellung speichert