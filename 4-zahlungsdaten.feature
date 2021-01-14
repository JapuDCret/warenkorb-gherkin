Feature: Zahlungsart

    Die vierte Seite enthält die Auswahl der Zahlungsart. Hier sollen den Kunden die Zahlungsarten Rechnung, Lastschrift, PayPal und Kreditkarte zur Auswahl gestellt werden.

    Scenario: Kundin kommt zum ersten Mal auf die Zahlungsdaten-Seite von der Lieferdaten-Seite
        When die Kundin die Seite zum ersten Mal betritt
        Then soll "Rechnung" vorausgewählt sein
    
    Scenario: Kundin kommt auf die Zahlungsdaten-Seite von der "Bestellung abschließen"-Seite aus
        Given die Kundin hatte bereits zuvor die Zahlungsart ausgefüllt
        Then sollen die zuvor eingegebenen Zahlungsdaten weiterhin vorhanden sein