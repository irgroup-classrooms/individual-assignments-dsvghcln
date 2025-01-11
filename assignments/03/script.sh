# Aufgabe 1: Erste drei Zeilen der Datei anzeigen
# Befehl:
head -n 3 2014-01_JA.tsv

# Aufgabe 2: Zeilenanzahl der .tsv-Dateien anzeigen
# Befehl:
wc -l *.tsv

# Aufgabe 3: Datei mit der höchsten Zeilenanzahl finden
# Befehl:
wc -l *.tsv | sort -n | tail -n 1

