### Datenbereinigung
1. **Feld "char"**
   - Einheitliche Schreibweise der Namen.
   - Entfernen von Leerzeichen am Anfang/Ende.
2. **Feld "dialog"**
   - Entfernen von Sonderzeichen und überflüssigen Leerzeichen.
   - Behebung fehlerhafter Zeichenkodierung.
3. **Feld "film"**
   - Validierung der Filmnamen.
### Fragen
wc -l clean_lotr_scripts.csv  # Anzahl der Zeilen
cut -d, -f2 clean_lotr_scripts.csv | tr ' ' '\n' | sort | uniq | wc -l  # Einzigartige Wörter
2391 clean_lotr_scripts.csv
114

# Prozentuale Verteilung der Filme
cut -d',' -f[movies] lotr_scripts.csv | sort | uniq -c | awk '{print $2, ($1/NR)*100"%"}'

cut -d, -f2 clean_lotr_scripts.csv | grep -o '\w\+' | sort | uniq -c | sort -nr | head -5
 229 Frodo
    218 Sam
    214 Gandalf
    187 Aragorn
    168 Pippin

$ cut -d',' -f2 lotr_scripts.csv | tail -n +2 | head -n 5
SMEAGOL
SMEAGOL
SMEAGOL
SMEAGOL
SMEAGOL