Feature: Warenkorb

    Der Warenkorb ist eine Übersicht über die gewählten Artikel. Hier sollen die Artikel samt Name, Anzahl sowie Preis angezeigt werden. Der Warenkorb stellt den Einstieg der Software dar.

    Scenario: Kundin öffnet den Warenkorb
        When die Kundin den Warenkorb öffnet
        Then soll sie die ausgewählten Artikel mit Bild, Artikelnamen, Anzahl und dem Gesamtpreis des Artikels sehen
        And sie soll den Gesamtpreis für alle Artikel sehen
    
    Scenario: Kundin soll zur nächsten Seite wechseln können
        Given die Kundin hat die gewählten Produkte prüft
        When sie auf den "Bestellvorgang starten"-Button klickt
        Then soll sie auf die Seite "Rechnungsadresse" gelangen
