Feature: Zahlungsart

    Die vierte Seite enthält die Auswahl der Zahlungsart. Hier sollen der Kundin nur Rechnung, Kreditkarte und Vorkasse zur Auswahl gestellt werden.

    Scenario: Kundin kommt von der Lieferdaten-Seite zum ersten Mal auf die Zahlungsdaten-Seite
        When die Kundin die Seite zum ersten Mal betritt
        Then soll "Rechnung" vorausgewählt sein