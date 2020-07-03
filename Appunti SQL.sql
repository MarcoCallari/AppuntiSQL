                                                                                                -----APPUNTI SQL-----
---ORDINE OPERAZIONI---
    FROM
    WHERE
    GROUP BY
    HAVING
    SELECT
    ORDER BY

---QUERY DI BASE---

SELECT nome_variabile AS alias
FROM nome_tabella
WHERE nome_variabile (condizione)

Note: -Non è necessario inserire nel SELECT tutte le variabili su cui voglio eseguire operazioni
      -É possibile svolgere operazioni aritmetiche sulle variabili da visualizzare nel SELECT

---OPERATORE IN---

Utile per confrontare una variabile con una lista di possibili risultati

SELECT nome_variabile
FROM nome_tabella
WHERE nome_variabile IN ('Primo valore','Secondo valore','Terzo valore')

---OPERATORE CASE---

Equivalente del paradigma switch-case presente in C/C++. Da usare nello statement SELECT.

SELECT nome_variabile1,nome_variabile2,
       CASE
            WHEN nome_variabile3 (condizione) THEN valore_associato_nome_variabile3
            ELSE altro_valore_associato_nome_variabile3
      END as alias_colonna
FROM nome_tabella

(Fare attenzione alla virgola dopo il nome dell ultima variabile nel SELECT)

---WILDCARD---

Per cercare sottostringhe nelle stringhe (wildcard): LIKE (Posizione 146.3)

---DISTINCT---

Evita ripetizioni nel risultato delle query.

SELECT DISTINCT nome_variabile1

---LIMIT---

Mostra solo i primi N risultati.

SELECT nome_variabile AS alias
FROM nome_tabella
WHERE nome_variabile (condizione)
LIMIT N

---ORDER BY---

SELECT nome_variabile AS alias
FROM nome_tabella
WHERE nome_variabile (condizione)
ORDER BY nome_variabile

É possibile aggiungere più variabili dopo il comando ORDER BY. Ad esempio, posso decidere di ordinare i miei risultati per cognome della persona e se ho due persone con lo stesso cognome ordinare il risultato in base al nome di queste due persone.
Il comando ORDER BY dà la priorità alla prima delle due variabili definite nella query (ES: "ORDER BY cognome nome" ordina i risultati per cognome e nel caso di due o più persone con lo stesso cognome ordina in base al nome).

--Funzioni di aggregazione--
Eseguono un calcolo su un set di valori e restituiscono un risultato.

SELECT MAX(nome_variabile)
SELECT MIN(nome_variabile)
SELECT AVG(nome_variabile)
SELECT SUM(nome_variabile)
SELECT COUNT(nome_variabile)

Nota: è necessario raggruppare tutti le altre variabili selezionate tramite SELECT. Esempio:
SELECT nome_variabile nome_variabile2 MAX(nome_variabile3)
FROM nome_tabella
GROUP BY nome_variabile,nome_variabile2

                                                                                               -----TEORIA DEGLI INSIEMI-----

---UNION---
Date due query, il comando UNION fornisce tutti i dati della prima query insieme a tutti i dati della seconda. Se non si desidera rimuovere i dati duplicati, usare il comando UNION ALL

---INNER JOIN---
Restituisce l insieme di due (o più) tabelle che condividono lo stesso valore di una variabile.
SELECT a.nome_prima_variabile, b.nome_seconda_variabile
FROM prima_tabella a JOIN seconda_tabella b
ON a.nome_variabile_chiave = b.nome_variabile_chiave

Nota: è possibile eseguire l operazione di JOIN sulla stessa tabella.


---OUTER JOIN---
Rende la condizione di JOIN opzionale.

---LEFT OUTER JOIN---
Da usare quando voglio una lista di tutti i valori della tabella di "sinistra" (ovvero il primo argomento), non solo quelli che soddisfano la condizione "ON".

---RIGHT OUTER JOIN---

---FULL OUTER JOIN---

---JOIN di più tabelle---
TODO

                                                                                                -----GESTIONE DELLE DATE-----

---Confrontare DATE con DATETIME---
E' possibile eseguire il casting di un valore DATETIME in DATE,scartando ovviamente le informazioni sull'orario.
CAST(variabile_data AS DATE)


                                                                                                -----GESTIONE DELLE STRINGHE-----
Ricordare che i varchar devono essere dichiarati con ' ' e non " "
---Concatenare le stringhe---
CONCAT(nome_variabile1,nome_variabile2,'Stringa1','Stringa2')
