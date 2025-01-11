# 1. Alle E-Mail-Adressen extrahieren
grep -oE '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b' /csv/contacts.csv

# 2. Alle Telefonnummern extrahieren
awk -F, '{print $NF}' /csv/contacts.csv

# 3. Alle Namen, die mit ‘J’ beginnen
grep -oE '\bJ[A-Za-z]+\b' /csv/contacts.csv

# 4. Alle Straßennamen, die 'St' enthalten
grep -oE '\b[A-Za-z]+St\b' /csv/contacts.csv

# 5. Alle Adressen in den USA extrahieren
grep -oE '\b[A-Za-z0-9, ]+USA\b' /csv/contacts.csv

# 6. Gesamtanzahl der Zeilen in der Datei
wc -l /csv/contacts.csv

# 7. Alle E-Mail-Domains extrahieren (Teil nach dem @)
grep -oE '@[A-Za-z0-9.-]+' /csv/contacts.csv | sed 's/@//'

# 8. Alle Einträge mit dem Vornamen 'David' und vollständiger Adresse
grep -oE 'David.*[A-Za-z0-9, ]+USA' /csv/contacts.csv

# 9. Alle Einträge, bei denen die Telefonnummer mit ‘7’ endet
grep -oE '\b\d{3}[-.]?\d{3}[-.]?[0-9]*7\b' /csv/contacts.csv

# 10. Alle Vornamen, die mit ‘e’ enden
grep -oE '\b[A-Za-z]+e\b' /csv/contacts.csv
