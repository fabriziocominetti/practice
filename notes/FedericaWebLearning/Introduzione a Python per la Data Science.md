# Introduzione a Python per la Data Science

## Lezione 1. Python e Jupyter notebook

### Unit 1 - Introduzione al linguaggio Python e agli strumenti di sviluppo

Python è un linguaggio di programmazione di alto livello che può essere utilizzato in diversi ambiti:

- Sviluppo software
- Data Science
- Integrazione di sistemi

Caratteristiche del linguaggio Python

Interpretato. Un programma scritto in linguaggio Python è compilato in bytecode (una versione semplificata delle istruzioni di una CPU) che può essere eseguite in maniera efficiente da un interprete software chiamato macchina virtuale.

Orientato agli oggetti. Il linguaggio Python oltre al paradigma della programmazione strutturata offre anche la possibilità di programmare ad oggetti, cioè di definire oggetti software in grado di interagire gli uni con gli altri attraverso l'invocazione di metodi.

Alto livello. Il linguaggio offre un'astrazione dai dettagli del funzionamento del calcolatore permettendo di realizzare programmi complessi anche con poche righe di codice

Due modalità per eseguire i programmi:

    Nella modalità script i programmi vengono eseguiti dall'interprete Python continuativamente fino alla fine
    Nella modalità interattiva è posibile eseguire un'istruzione alla volta ottenendon un feedback immediato sui risultati. Il risultato delle elaborazioni è mantenuto in memoria, con la possibilità di modificare le istruzioni che saranno eseguite successivamente. Questa modalità è molto utilizzata per svolgere analisi dei dati.
    
Avviate il programma idle (Python's Integrated Development and Learning Environment)

Windows

    apri Anaconda Prompt (lo trovate nel menù di windows, dopo aver installato anaconda/miniconda)
    digita idle e premi invio
    
---

### Unit 2 - Strumenti di sviluppo

![image](https://user-images.githubusercontent.com/75806093/132828647-457dfe8f-ecfb-4d36-8798-87013dea3ec8.png)

![image](https://user-images.githubusercontent.com/75806093/132828685-224e88fa-a85f-4c17-a3a8-577d230afe77.png)

Creare uno script usando IDLE

Aprite il programma IDLE (vedi slide precedenti), dal menù selezionate File / New File

Nella finestra che si apre (l'editor di testi), inserite alcune istruzioni python come nell'esempio seguente

```python
print('Hello World1')

print('Hello World2')
```

Salvate il file (File / Save ...), quando richiesto date un nome al file (es. iniziale.py)

Per eseguire il file selezionale Run / Run Module (in Windows e Mac OS potete premere il tasto F5)

Nella finestra interattiva potrete osservare i risultati
Python 3.4.4 ...

```python
>>>
 RESTART: /Users/.../iniziale.py 
Hello World1
Hello World2
>>>
```

E' possibile scrivere uno script python con un qualsiasi editor di testi

Da terminale (Windows / Start / Esegui programma / cmd + invio), usando il comando python è possibile eseguire uno script. Per esempio, suppondendo che lo script iniziale.py sia salvato nella directory c:\documenti

    c:\>cd \documenti
    c:\documenti>python iniziale.py
    Hello World1
    Hello World2
    c:\documenti>

cd è utilizzato per cambiare la directory di lavoro corrente (maggiori dettagli in seguito)

Il comando python seguito dal nome dello script esegue lo script creato in precedenza, senza dover aprire l'ambiente di sviluppo

Eseguendo il comando python da solo (senza indicare uno script), si apre la shell, con il caratteristico prompt >>> nella quale è possibile digitare ed eseguire singole istruzioni

IDLE è un IDE (Integrated Development Environment) molto semplice che ha al suo interno
Un editor di testo
Una shell python (un interprete che permette di eseguire i singoli comandi python). La shell è facilmente riconoscibile dal prompt >>> con la quale il programma informa l'utente che è pronta per eseguire comandi.
Un interprete python per eseguire script

iPython è un interprete e una shell interattiva (alternativi alla shell python standard) che permette all'utente di lanciare istruzioni e comandi in linguaggio Python
Rispetto alla shell Python offre in più
Syntax highlighting (evidenziazione dei diversi elementi della sintassi)
Tab completion
Object Introspection
Input history persistente tra una sessione e l'altra. iPython mantiene l'elenco dei comandi eseguiti, con la possibilità di rieseguire un'istruzione senza doverla riscrivere nuovamente
Help con spiegazioni dettagliate dei diversi comandi

Da terminale (Windows / Start / Esegui programma / cmd + invio), digitando il comando ipython si apre una shell come le seguenti

![image](https://user-images.githubusercontent.com/75806093/132829533-54b3c5c7-1543-4131-9827-8e0889c295b8.png)

![image](https://user-images.githubusercontent.com/75806093/132829545-c433f04e-18c4-44b3-b701-03790651910b.png)

Sia la shell Python (esempio la shell che si avvia con il comando python.exe in windows) sia la shell iPython sono due interpreti dello stesso linguaggio
Uno script python può essere eseguito indifferentemente su una qualsiasi delle due shell

![image](https://user-images.githubusercontent.com/75806093/132829652-801fe35b-0b85-4634-be68-d30a7be5d5d1.png)

 Esiste un'ulteriore modalità per scrivere ed eseguire codice python: i notebook (Jupyter Notebook per essere precisi)
I notebook sono molto utili per la visualizzazione dei dati, per svolgere simulazioni numeriche, per analizzare i dati, ...
I notebook sono basati su un approccio client server: usano un client per la scrittura del codice che si connette ad un server per lo svolgimento delle elaborazioni
Come editor dei testi si usa un browser web (il client)
In un Jupyter Notebook accanto al codice python è possibile inserire equazioni, testo, grafici, contenuti multimediali, etc.

L'esecuzione del codice avviene in un serverTerminologia: si chiama kernel la componente che si occupa dell'esecuzione del codice python nell'architettura di un Jupyter Notebook
Frequentemente il kernel gira su un computer locale (dietro le quinte viene utilizzata la shell iPython)
E' possibile tuttavia collegare l'editor web ad un kernel che gira su un computer remoto (computazionale più prestante del computer locale) con cui è possibile ad esempio analizzare grosse quantità di dati

Jupyter dovrebbe essere già installato nella vostra distribuzione python. Se non risultasse installato, potete seguire le istruzioni seguenti per installarlo
Installiamo jupyter nella distribuzione python Anaconda/Miniconda

![image](https://user-images.githubusercontent.com/75806093/132829969-0adf1df7-53b6-4031-903b-9a32e9e172a1.png)

### Unit 3 - Jupyter Notebook

Avviate il software di gestione dei notebook. Da terminale digitate:

    c:\>jupyter notebook
    
![image](https://user-images.githubusercontent.com/75806093/132839182-e342bdcb-c90f-47ee-a72b-d59956350222.png)

La linguetta Files permette di vedere i file e le directory su disco
Per creare un nuovo notebook, click su New / Python 3

![image](https://user-images.githubusercontent.com/75806093/132839235-6e99c988-d391-4e51-aa1b-e4f55e232edd.png)

Vi si aprirà una pagina contenente un'interfaccia (come quella mostrata nella slide seguente) dove potrete ...

    Inserire codice Python
    Inserire commenti
    Inserire URL
    Inserire immagini

Il vostro codice sarà inframmezzato dai risultati delle elaborazioni, dai commenti e da tutti i riferimenti che inserirete 

![image](https://user-images.githubusercontent.com/75806093/132839282-94a3425d-51e8-409d-8a4e-eff204af1c78.png)

Nell'interfaccia visualizzata nella slide precedente:
Nel rettangolo blu trovate il nome del notebook. Facendo clic su questo, è possibile rinominare il nome del file nel quale sarà salvato il notebook
Nel rettangolo viola, trovate un esempio di cella codice. Dentro una cella codice è possibile digitare

    Codice python. I risultati dell'esecuzione saranno visualizzati subito dopo la cella)
    Testo. In questo modo possono essere inseriti commenti, URL con riferimenti a siti esterni, etc. Il testo può essere testo semplice, markdown.

Nel rettangolo rosso è specificato come deve essere interpretato il contenuto della cella codice corrente (la cella nel rettangolo viola). Il default è codice Python.

Alternativa all'utilizzo di Jupyter Notebook è la piattaforma 'Google Colab'

Selezionate un cella, scrivete del codice python es. print("Hello Word"')
Eseguite il codice nella cella premendo il pulsante Run (in alternativa potrete premere SHIFT+INVIO). Accadrà quanto segue

    I risultati dell'elaborazione saranno visualizzati sotto la cella
    Il focus si sposterà sulla cella successiva, se si trattava dell'ultima cella ne viene aggiunta una in coda

Per eseguire il codice di tutte le celle, dal menù selezionate il comando Cell / Run All
Il notebook viene periodicamente salvato in un file .ipynb (il nome del file coincide con il nome del notebook)
Nel notebook, oltre al codice vengono anche salvati i risultati delle elaborazioni

    se provate a chiudere e riaprire il notebook, vedrete che anche gli output sono stati salvati
    Questo è uno dei grossi vantaggi dei notebook: il codice, il testo nelle celle di tipo Markdown e i risultati delle elaborazioni vengono tutti salvati, rendendo il notebook un'ottimo strumento per comunicare
    
Può accadere che il Kernel abbia problemi (reminder: il kernel è la componente che si occupa dell'esecuzione del codice nell'architettura dei Jupyter Notebook)

    Esempio più frequente: è stato mandato in esecuzione del codice che è andato in loop (es., un ciclo che non termina mai)
    Il Kernel può essere bloccato nell'eseguire un'elaborazione che richiede molto più tempo di quanto è stato previsto

In tutti questi casi può essere necessario

    resettare il kernel
    ed eventualmente rieseguire parte del codice

Per svolgere queste operazioni sono utili i comandi contenuti nel menù kernel (in alto)

    Interrupt
    Restart
    Restart & Clear Output
    
Jupyter provvede periodicamente a salvare il contenuto del Notebook su disco
Per questo motivo nel menù File non troverete Save
E' possibile richiedere il salvataggio immediato del contenuto del notebook premendo l'icona con il simbolo del floppy
Se volete modificare il nome del file, dovete effettuare un click sul nome del notebook (come spiegato in precedenza)
Il notebook è salvato in un file

    che ha come nome il nome del notebook,
    che ha come estensione .ipynb
    il file è situato nella directory di lavoro corrente (es. la directory in cui è stato avviato Jupyter notebook)

Se dal menù scegliamo File / Download as possiamo esportare il contenuto del notebook in diversi formati, tra cui

    file .py (permette di esportare un notebook in uno script python. Il contenuto delle celle Markdown (o in generale delle celle non contenenti codice) sarà salvato come commento
    file .pdf

Se esportiamo un notebook in uno script .py, lo script così ottenuto può essere eseguito da una shell Python

![image](https://user-images.githubusercontent.com/75806093/132839527-7d27d2f8-d604-4f23-9b09-d2c41fcbea36.png)

---

## Lezione 2. Variabili ed istruzioni condizionali

### Unit 1 - Le variabili

Variabile: nome assegnato ad una cella di memoria.

Le variabili permettono di costruire algoritmi la cui esecuzione può essere ripetuta più volte su dati diversi.

Regole per i nomi di variabili:
- Possono contenere solo lettere, numeri e il simbolo _ (altri simboli o caratteri di punteggiatura non sono ammessi)
- Devono sempre iniziare con una lettera
- E' permesso usare lettere sia maiuscole sia minuscole
- Non possono essere usati "nomi riservati": print, \ldots (vedremo più avanti altri esempi)
- I nomi delle variabili possono essere lunghi quanto si desidera
- I programmatori generalmente scelgono dei nomi significativi per le loro variabili, documentando così a che cosa servono

Naming conventions (convenzioni suggerite per scegliere i nomi delle variabili) non sono obbligatorie ma facilitano la comprensione del codice e in progetti complessi si dimostrano molto utili.

### Unit 2 - I tipi delle variabili

Dichiarare una variabile: informare l'interprete che si intende usare una variabile

Per dichiarare una variabile in python basta effettuare un assegnamento:


    totale=0 # l'operatore di assegnamento e' =
    cognome="Rossi" # Le stringhe vanno scritte tra virgolette, in questo modo la stringa Rossi non viene confusa con una variabile
    studente=cognome 
    nome='Mario' # Al posto delle virgolette possono essere usati gli apici singoli 
    PI=3.14 # si usa il . per separare la parte intera dalla parte decimale

Una variabile oltre ad ospitare un valore, contiene anche informazioni sul tipo di valore ospitato:

![image](https://user-images.githubusercontent.com/75806093/132943079-a376d934-db83-44d1-9b09-1555d48c51ad.png)

Il tipo di una variabile stabilisce quali sono le operazioni ammesse sui dati e qual è la loro semantica (comportamento):

![image](https://user-images.githubusercontent.com/75806093/132943098-0221d581-4c25-40c9-a7b8-360ff2cbfce7.png)

Python non richiede di dichiarare il tipo delle variabili, a differenza di altri linguaggi (C, Java). In Python, ogni variabile nel corso del tempo può ospitare tipi di dati diversi. Dopo un assegnamento (dietro le quinte) l'interprete Python cerca di determinare il tipo della variabile in base al suo contenuto:

![image](https://user-images.githubusercontent.com/75806093/132943118-f6938349-2071-4c03-8dd0-0aebd7225386.png)

Tipi elementari di variabili in Python:

![image](https://user-images.githubusercontent.com/75806093/132943135-fa5bae56-2600-478a-9e23-d067e875bcba.png)

Tipi e operazioni ammesse:

![image](https://user-images.githubusercontent.com/75806093/132943151-171d3bc6-f8e9-4faa-a9ff-457c3759da6c.png)

Conversioni forzate di tipi:

Le funzioni int(), float(), str() possono essere usate per forzare la conversione di una variabile in uno specifico tipo

```python
a="10" # type 'str'
b=int(a)
print('*')
print(b)
print(type(b))
c=float(a)
print('**')
print(c)
print(type(c))
*
10
type 'int'
**
10.0
type 'float'
Attenzione! Che cosa viene visualizzato?
d="fila" # type 'str'
e=int(d)
ValueError: invalid literal for int() with base 10: 'fila'
E qua sotto
f="dieci,cinque" # type 'str'
g=float(f)
ValueError: could not convert string to float: dieci,cinque
```

### Unit 3 - Istruzioni condizionali

Prendiamo il seguente programma:

```python
a=int(input("Immetti il coefficiente a: "))
b=int(input("Immetti il coefficiente b: "))
c=int(input("Immetti il coefficiente c: "))
print("Data l'equazione algebrica ")
print(str(a)+"*X^2+"+str(b)+"*X+"+str(c)+"=0 ")
delta = b*b - 4*a*c
rad_delta=delta**0.5  
x1=-(b - rad_delta)/(2*a)
x2=-(b + rad_delta)/(2*a)
print ("Le soluzioni sono")
print('x1: '+str(x1))
print('x2: '+str(x2))
```

![image](https://user-images.githubusercontent.com/75806093/132943474-d2ac7fd6-8408-4608-af93-7aaa6f94e9b7.png)

![image](https://user-images.githubusercontent.com/75806093/132943490-f47341e9-d629-4757-8d5f-8c2123858240.png)

Il problema (con a=2, b=3, c=2 ) nasce nelle istruzioni:

Δ = b∗b − 4∗a∗Δ = Δ∗∗0.5

Quando delta assume un valore negativo Python non esegue la radice quadrata di un numero negativo (si potrebbero utilizzare le librerie per manipolare i numeri complessi ..., ma per ora non le consideriamo)

![image](https://user-images.githubusercontent.com/75806093/132943541-433797f1-d340-46b4-808d-a0021d5ef411.png)

![image](https://user-images.githubusercontent.com/75806093/132943555-fe9faa92-e7e0-4151-9bdd-1f37e0c303cc.png)

Ramificazioni:

    if condizione:
       prina riga di istruzioni  # Blocco 
       ...                       # di istruzioni
       ultima riga di istruzioni # indentato
    else:
       prima riga di istruzioni  # Blocco
       ...                       # di istruzioni
       ultima riga di istruzioni # indentato
    prima istruzione fuori dal blocco condizionale

Il valore booleano della condizione determina quale dei due blocchi sarà eseguito

![image](https://user-images.githubusercontent.com/75806093/132943602-42aef56c-bba0-491b-a94d-3eec5a81eba8.png)

![image](https://user-images.githubusercontent.com/75806093/132943605-9308eb0f-6121-45a6-8757-8bc49abb4ded.png)


![image](https://user-images.githubusercontent.com/75806093/132943611-67818197-9e4e-47a0-a433-7df435b9ce97.png)

![image](https://user-images.githubusercontent.com/75806093/132943645-db6601db-1d89-4398-9c22-63764e2666bc.png)


![image](https://user-images.githubusercontent.com/75806093/132943654-8be1dd7e-2ca4-42e2-b480-fc5bba00bc42.png)

elif è l‘abbreviazione di else if 

Non c’è alcun limite al numero di istruzioni elif In un blocco if ... elif, l’istruzione else:

    è facoltativa, 
    se presente deve essere l'ultima dell'elenco 
    rappresenta l'azione da eseguire quando nessuna delle condizioni precedenti è stata soddisfatta 

NB: elif richiede una condizione booleana, else no

Scritte per mezzo di espressioni booleane
Un'espressione booleana è un'espressione che può assumere solo valore vero o falso.
Nota bene: i valori booleani in python sono

    True
    False 

e non

    “True”
     “False” 

In python le espressioni booleane si costruiscono usando: variabili, valori, operatori di confronto

![image](https://user-images.githubusercontent.com/75806093/132943696-66c0480e-6ed1-43c3-938b-94d5cddb1412.png)

Operatori logici:

AND

    per esempio, (x>0) and (x<10) è vera se e solo se le due condizioni sono valide contemporaneamente, cioè se x è più grande di 0 e contemporaneamente minore di 10.

OR

    (x==0) or (x==10) è vera se almeno una delle condizioni è verificata, cioè se x è uguale a 0 oppure a 10

NOT

    L'operatore not nega il valore di un'espressione booleana, trasformando in falsa un'espressione vera e viceversa.
    Così se 5>3 è vera, not(5>3) è falsa.

---

## Lezione 3. Stringhe

### Unit 1 - Proprietà e Dichiarazione

Una stringa possiede un nome ed aggrega più stringhe di un elemento (caratteri) organizzate sequenzialmente:

    A = a b c d ... z

Una stringa possiede un nome ed aggrega più stringhe di un elemento (caratteri) organizzate sequenzialmente:

    A = A[0] A[1] A[2] A[3] ... A[n-1]

La dichiarazione di una stringa avviene contestualmente al suo assegnamento:

    a = 'corso di Informatica'
    a = "corso di Informatica"

Dichiarazione di una stringa: ' ' o " " a nome della variabile che conterrà la stringa ' ' o " " delimitatori della stringa corso di Informatica elementi della stringa.

Anche la stringa vuota è una stringa valida :

    a = ''

La stringa è una sequenza:

```python
a = 'corso di Informatica'
print a
'corso di Informatica'
```

Si può accedere agli elementi tramite un valore intero detto indice

```python
print a[4]
'o'
```

![image](https://user-images.githubusercontent.com/75806093/132944999-bdc1a20a-58ba-4e88-b5a6-dcf50efb3efd.png)

E' possibile utilizzare anche indici negativi per indicare la posizione partendo dal termine della stringa:

```python
a = 'corso di Informatica'
print (a[-1])
'a'
```

-1 indica l'ultimo elemento della stringa

Si può determinare la lunghezza di una stringa tramite l'istruzione len():

```python
print( len(a))
20
```

Gli elementi di una stringa non possono essere modifcati (mutati) successivamente alla sua dichiarazione:

```python
a = 'corso di Informatica'
a[4] = 'i'
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
 in ()
---->  a[4] = 'i'


TypeError: 'str' object does not support item assignment
```

---

### Unit 2 - Manipolazione

E' possibile estrarre porzioni di una stringa sfruttando i suoi indici:
nomeStringa[daDove:aDove]

```python
a = 'corso di Informatica'
print( a[6:8] )
'di'
```

L'indice usato per il termine dello slice deve corrispondere al carattere successivo a quello che si vuole includere nella stringa da estarre, come indicato in rosso nell'immmagine associata.

![image](https://user-images.githubusercontent.com/75806093/132945280-cc6084be-4306-4461-9577-740d2c254232.png)

Si può indicare l'inizio o il termine della stringa omettendo il corrispondente indice. Ad esempio:

```python
a = 'corso di Informatica'
print( a[:5] )
'corso'
```

seleziona tutti i caratteri fino al quinto. Mentre:

```python
print( a[9:] )
'Informatica'
```

seleziona tutti i caratteri da quello di indice 9 al termine della stringa.

Anche nello slicing si possono usare indici negativi:

```python
print( a[-6:-3] )
'mat'
```

Attenzione a non mescolare indici negativi e positivi:

```python
print( a[-3:1] )
''
```

O invertire l'ordine degli elementi da estrarre:

```python
print( a[-1:-5] )
''
```

E' possibile estendere le stringhe tramite concatenazione +:

```python
a = 'corso di Informatica'
a = a + ' ^^'
print(a)
corso di Informatica ^^
```

E' possibile replicare le stringhe tramite l'operatore *:

```python
a = '__^^'
print(a*4)
'__^^__^^__^^__^^'
```

---

### Unit 3 - Metodi

Alcuni metodi che potete utilizzare per le stringhe:

- upper() restituisce la stringa in MAIUSCOLO
- lower() restituisce la stringa in minuscolo
- find(stringToFind) restituisce l’indice del primo carattere della prima occorrenza della stringa cercata o -1 se non viene trovata
- count(subStr) restituisce il numero delle occorrenze di subStr nella stringa
- split([sep]) restituisce la lista delle parole divise da sep all’interno della stringa
- strip([chars]) restituisce una copia della stringa con i caratteri in chars rimossi dall’inizio e dalla fine
- replace(old, new) restituisce una copia della stringa con tutte le occorrenze dei caratteri old sostituiti dai new

.strip()

![image](https://user-images.githubusercontent.com/75806093/132945438-1e13cc45-ffc6-4cec-a5bf-19e974eb4922.png)

.split()

![image](https://user-images.githubusercontent.com/75806093/132945442-765f70b5-7b73-4d44-8827-b269ff2d3a16.png)

.find()

![image](https://user-images.githubusercontent.com/75806093/132945460-60275ded-f095-4d12-a21e-81e540fc926f.png)

.replace()

![image](https://user-images.githubusercontent.com/75806093/132945484-95de1335-3b00-4709-92eb-84e5330fadd5.png)

---

## Lezione 4. Le liste

### Unit 1 - Proprietà e Dichiarazione

Una lista possiede un nome ed aggrega più oggetti organizzati sequenzialmente:

    l = a 'pippo' 6 d ... z

possiede un nome ed aggrega più oggetti organizzati sequenzialmente:

    l = l[0] l[1] l[2] l[3] ... l[n-1]

La lista è una struttura dati complessa di tipo sequenza dinamica ed eterogenea.

l = [7, 3.0 + 5, 'pippo', 2 + 1j]

Dichiarazione lista: [ ]

    l nome della variabile che conterrà la lista
    [ ] delimitatori della lista
    7, 3.0 + 5, 'pippo', 2 + 1j elementi della lista
    , separatore degli elementi
    
La lista è una sequenza:

```python
l = [7, 8.0, 'pippo', 2+1j]
print l
```

[7, 8.0, 'pippo', 2+1j]

Si può accedere agli elementi tramite un valore intero detto indice

```python
print l[3]
(2+1j)
```

![image](https://user-images.githubusercontent.com/75806093/132982563-a1fdf995-59fc-4a80-8ad4-4387e03604e7.png)

Se ne può determinare la lunghezza tramite l'istruzione len()

```python
print(len(l))
4
```

Gli elementi di una lista possono mutare nel tempo:

```python
l = [7, 8.0, 'pippo', 2+1j]
l[2] = 'nuova'
print(l)
```

[7, 8.0, 'nuova', 2+1j]

E' possibile estrarre porzioni di una lista sfruttando i suoi indici: nomeLista[daDove:aDove]

```python
l = [7, 8.0, 'pippo', 2+1j]
```

Ad esempio:

```python
print( l[1:3] )
[8.0, 'pippo']
```

L'indice usato per il termine dello slice deve corrispondere al carattere successivo a quello che si vuole includere nella stringa da estarre.

![image](https://user-images.githubusercontent.com/75806093/132982619-04efc455-c59f-411d-abae-a50f5cfc91b0.png)

---

### Unit 2 - Manipolazione

E' possibile accedere iterativamente agli elementi delle lista tramite un ciclo while:

lista = [7, 3.0 + 5, 'pippo', 2 +1j]

```python
i = 0
while (i < len(lista)):
    print lista[i]
    i = i + 1

7
8.0
pippo
(2+1j)
```

E' possibile estendere una lista tramite concatenazione:

```python
l = [7, 8.0, 'pippo', 2+1j]
l = l + [12345, ]
print(l)
```

[7, 8.0, 'pippo', 2+1j, 12345]

E' possibile eliminare uno o più elementi dalla lista mediante l'istruzione del ed indicandone l'indice:

```python
del lista[i]
```

elimina l'elemento i-esimo dalla lista

```python
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
del lista[5:9]
print(lista)
```

[1, 2, 3, 4, 5, 10, 11, 12]

![image](https://user-images.githubusercontent.com/75806093/132982733-4b0c4a55-3db6-449f-baac-ac65020ba8ad.png)

![image](https://user-images.githubusercontent.com/75806093/132982746-3bafd58c-88b4-44fd-9a3f-92ff619c07a0.png)

![image](https://user-images.githubusercontent.com/75806093/132982766-b64acd89-c531-48c6-9b49-4fc2a896e75e.png)

![image](https://user-images.githubusercontent.com/75806093/132982804-b447b266-9e42-4443-bad0-07f361a55492.png)

![image](https://user-images.githubusercontent.com/75806093/132982812-f9907369-512c-4727-a6ef-7203ea3eb250.png)

---

### Unit 3 - Metodi

Alcuni metodi che potete utilizzare per le liste:

- append(x) aggiunge l'elemento x in coda alla lista
- extend(lista2) aggiunge la lista2 in coda alla lista
- sort() ordina la lista

.append()

![image](https://user-images.githubusercontent.com/75806093/132982859-47e549a6-d0f2-4f29-9965-a408b6e904ae.png)

.extend()

![image](https://user-images.githubusercontent.com/75806093/132982868-89825b56-d8fa-48f6-a0d4-9d9582884fce.png)

.sort()

![image](https://user-images.githubusercontent.com/75806093/132982875-254de8db-8d95-4918-9165-37c3531668e4.png)

---

## Lezione 5. I Dizionari

### Unit 1 - Proprietà e Dichiarazione

Un dizionario possiede un nome ed aggrega più oggetti, identificafibili tramite una chiave, in una mappa:

    d = a 'pippo' 6 d ... z

Un dizionario possiede un nome ed aggrega più oggetti, identificafibili tramite una chiave, in una mappa:

    d = d[chiave1] d[chiave2] d[chiave3] d[chiave4] ... d[chiaveN]

Un dizionario possiede un nome ed aggrega più oggetti, identificafibili tramite una chiave, in una mappa:

    d = { (chiave1, valore1), (chiave2, valore2), (chiave3, valore3), (chiave4, valore4), ..., (chiaveN:c

Il dizionario immagazzina i valori in coppie (chiave, valore)

Un dizionario è una struttura dati complessa di tipo mappa, dinamica ed eterogenea i cui elementi vengono identificati tramite una chiave.

```python
diz = {'a':7, 'b':3.0 + 5, 'c':'pippo', 'd':2 + 1j}
```

Dichiarazione dizionario: { }

- diz ; nome della variabile che conterrà il dizionario
- { } ; delimitatori del dizionario
- 'a':7, 'b':3.0 + 5, 'c':'pippo', 'd':2 + 1j ; coppie chiave:valore contenute nel dizionario
- , ; separatore delle coppie

Il dizionario è una mappa:

```python
d = {'a':7, 'b':8.0, 'c':'pippo', 'd':2+1j}
print d

{'a': 7, 'b': 8.0, 'c': 'pippo', 'd': (2+1j)}
```

Non si può accedere agli elementi tramite un indice

```python
>print d[2]

---------------------------------------------------------------------------
KeyError                                 Traceback (most recent call last)
 in ()
----> print d[2]

KeyError: 2
```

Non si può accedere agli elementi tramite un indice ma tramite una chiave che può essere un valore sia numerico che alfanumerico

```python
print d['b']

8.0
```

Gli elementi (le coppie) di un dizionario non hanno un ordinamento:

```python
diz = {'uno': 'one', 'due': 'two', 'tre': 'three', 'quattro': 'four', 'cinque': 'five'}
print(diz)

{'quattro': 'four', 'cinque': 'five', 'tre': 'three', 'due': 'two', 'uno': 'one'}
```

Se ne può determinare la lunghezza tramite l'istruzione

```python
len()
:
print( len(diz))
4
```

---

### Unit 2 - Manipolazione

Gli elementi di un dizionario possono mutare nel tempo:

```python
diz = {'a':7, 'b':3.0 + 5, 'c':'pippo', 'd':2 + 1j}
diz['c'] = 'nuovo'
print(diz)

{'a': 7, 'c': 'nuovo', 'b': 8.0, 'd': (2+1j)}
```

Poichè un dizionario è una struttura dati di tipo mappa e non una sequenza, non è possibile farne lo slicing

E' possibile aggiungere nuove coppie chiave:valore tramite inserimento diretto:

```python
diz = {'a': 7, 'c': 'pippo', 'b': 8.0, 'd': (2+1j)}

diz['e'] = 'altro'
print diz

[{'a': 7, 'c': 'pippo', 'b': 8.0, 'e': 'altro', 'd': (2+1j)}
```

oppure inserendo interi dizionari tramite il metodo update:

```python
diz = {'a': 7, 'c': 'pippo', 'b': 8.0, 'd': (2+1j)}

d2 = {'a2': 7, 'c2': 'nuovo', 'b2': 8.0, 'd2': (2+1j)}
diz.update(d2)
print(diz)

{'a': 7, 'c': 'pippo', 'b': 8.0, 'e': 'altro', 'd': (2+1j), 'a2': 7, 'b2': 8.0, 'c2': 'nuovo', 'd2': (2+1j)}
```

se due chiavi hanno lo stesso valore, la coppia viene aggiornata con l'ultimo valore inserito

```python
diz = {'a': 7, 'c': 'pippo', 'b': 8.0, 'd': (2+1j)}

diz.update({'c':'pluto', 'd':1e12})
print(diz)

{'a': 7, 'c': 'pluto', 'b': 8.0, 'd': 1000000000000.0}
```

---

### Unit 3 - Metodi

Oltre al metodo visto in precedenza, altri due utili metodi sono:

- keys() che restituisce la lista delle chiavi contenute nel dizionario
- values() che restituisce la lista dei valori contenuti nel dizionario

![image](https://user-images.githubusercontent.com/75806093/132983873-61f39686-3493-44f2-a5b9-2e04295ab5ea.png)

E' possibile verificare se una chiave è già presente nel dizionario tramite l'operatore in, che restituisce un valore booleano legato all'esito del test:

![image](https://user-images.githubusercontent.com/75806093/132983891-189cec64-fc59-40a2-822d-8093ae99b255.png)

Per eliminare una coppia dal dizionario si utilizza l'istruzione del, indicando la chiave della coppia da rimuovere:

del nomeDiz[chiave]

![image](https://user-images.githubusercontent.com/75806093/132983913-7b65e63e-4a70-4b7e-8378-95b0c827a15a.png)

---

## Lezione 6. Iterazioni

### Unit 1 - While

![image](https://user-images.githubusercontent.com/75806093/132992770-fcfa8982-577b-4138-aca2-6551737faaf0.png)

In Python i blocchi di istruzioni si isolano tramite indentazione (4 spazi)

L'iterazione while serve ad eseguire un blocco di istruzioni "fintanto che" la condizione indicata è soddisfatta.

```python
while condizione:
    lista dei comandi
```    

- while ; identificatore del ciclo
- condizione ; è l'espressione booleana che deve essere soddisfatta affinchè il blocco di istruzioni sia eseguito
- : ; identificatore del termine della condizione
- lista dei comandi ;  è il blocco di istruzioni, indentato di 4 spazi, da eseguire an ogni iterazione

Preverifica:

Nel ciclo while la condizione viene verificata sempre prima di eseguire il blocco di istruzioni.

N.B. controllare che la condizione sia soddisfatta prima della prima iterazione altrimenti l'interprete non entra nel ciclo

Nel ciclo while è fondamentale che la variabile coinvolta nella condizione di verifica venga aggiornata durante l’iterazione altrimenti il ciclo non termina.

É possibile utilizzare una variabile per contare il numero di iterazioni svolte:

```python
stringa = ’si’ 
contatore = 0
while stringa == ’si’:
    stringa = input(”vuoi continuare l’iterazione? si/no”) 
    contatore = contatore + 1
print ’Hai eseguito ’, contatore, ’ iterazioni’
```

La variabile che ’conta’ il numero di iterazioni si dice contatore

É possibile sfruttare un contatore per eseguire un numero prefissato di iterazioni:

```python
numIterazioni=input(’inserisci il numero di iterazioni da eseguire ’)

contatore = 0
while contatore 6lt; numIterazioni:
    print ’Hai eseguito ’, contatore, ’ iterazioni’
    contatore = contatore + 1
print ’il contatore vale: ’, contatore
```

E' possibile modificare il contenuto di una variabile tramite i seguenti operatori:

![image](https://user-images.githubusercontent.com/75806093/132992978-e8c352dd-b3fd-4838-ac1f-6845049c0349.png)

Gli operatori di incremento e decremento sono molto utilizzati all'interno dei cicli.

Spesso si utilizzano i cicli per “accumulare” quantità variabili in una variabile detta d’accumulo o accumulatore.

Il calcolo di una media ne è un esempio:

```python
numIterazioni = 5
media = 0
contatore = 0
while contatore < numIterazioni:
    valore=float(input(’inserisci un numero ’))
    media += valore
    contatore += 1
media /= numIterazioni
print ’il valor medio è ’, media
```

I valori sentinella sono valori dello stesso tipo dell’input richiesto all’utente ma sicuramente non parte dell’input atteso e che possono eesere usati per interrompere il ciclo.

```python
media = 0
valore = 0
iterazione = -1
while valore >= 0:
    media += valore
    iterazione +=1
    valore = float(input('inserisci un numero positivo (<0 termina esecuzione)'))

media /= iterazione
print 'il valor medio è ', media
```

In questo caso un un valore negativo inserito dall'utente nella variabile valore "avvisa" che il ciclo deve essere terminato.

---

### Unit 2 - Iteratori e For

Esiste un modo più semplice per la visita sequenziale degli elementi di un dizionario o delle strutture dati sequenziali, ovvero sfruttare gli iteratori for

La sintassi del ciclo for per sfruttare un iteratore e l'accesso agli elementi di un iteratore è la seguente:

```python
for elementoIteratore in iteratore:
    lista comandi
```

dove:

- for ; è l'identificativo della struttura di controllo (ciclo)
- elementoIteratore ; è l'identificativo dell'elemento dell'iteratore in ciascun passo dell'iterazione
- iteratore ; è la sequenza di elementi utilizzati per l'iterazione
- : ; indica che seguirà un blocco di istruzioni
- lista comandi ; è la porzione di codice che viene eseguita ad ogni iterazione del ciclo

Attenzione che il cilco inizia dopo ':' ed il blocco di istruzioni eseguite ad ogni iterazione deve essere indentato di 4 spazi

![image](https://user-images.githubusercontent.com/75806093/132993120-60009089-860a-4849-b218-2fd189887c98.png)

![image](https://user-images.githubusercontent.com/75806093/132993130-939095ad-1294-4963-a3c2-bc16797456d2.png)

![image](https://user-images.githubusercontent.com/75806093/132993143-4de56dc4-514d-460a-b767-905ddedb2007.png)

![image](https://user-images.githubusercontent.com/75806093/132993153-675fff0e-dcf8-4b22-a0dd-5857f47f9438.png)

E' possibile costruire un iteratore per eseguire un numero prefissato di iterazioni tramite il comando range()

```python
iterabile = range(start, stop, step)
```

dove:

- range() ; è l'istruzione che restituisce una lista di interi iterabile
- start ; è il valore iniziale
- iteratore ; è il valore massimo (è l'unico parametro obbligatorio)
- step ; è l'incremento con cui vengono costruiti gli elementi

![image](https://user-images.githubusercontent.com/75806093/132993205-822bad05-cb23-402b-88ec-2c3856e99114.png)

---

## Lezione 7. Le funzioni

### Unit 1 - Le funzioni

La funzione può essere vista come un nome attribuito ad un insieme di istruzioni

- codice (insieme di istruzioni) indipendente dalla parte rimanente del programma
- filosofia: scrivi il codice di una funzione una volta, riutilizzalo più volte

Caratteristiche di una funzione:

- esegue un compito specifico
- la funzione può essere chiamata (invocata,attivata) in diversi punti del programma di cui fa parte come se fosse una singola istruzione

Attraverso il riutilizzo, facilitano la scrittura del codice

- All'interno di uno script aiutano a ridurre la duplicazione del codice
- E' possibile riutilizzare una funzione in uno script diverso da quello in cui (la funzione) è stata scritta
- E' possibile utilizzare funzioni già scritte da altri, senza conoscerne l'implementazione

Migliorano:

- la comprensione del codice
- l'organizzazione
- le operazioni 

In generale

    Output <-- Funzione <-- Parametri (in input)

In Python le funzioni possono essere composte, facendo in modo che il risultato di una funzione possa essere usato come parametro di un'altra

Precisazione: nei linguaggi di programmazione, le subroutine si distinguono in procedure e funzioni

- Procedura (in altri linguaggi): può accettare parametri, ma non restituisce alcun risultato
- Funzione (in altri linguaggi): può accettare parametri, restituisce un risultato

Esempi:

    a=input()           #classificabile come funzione
    print("Messaggio")  #classificabile come procedura

Nell'ultimo esempio, print non restituisce un valore, si occupa solo di stampare un'informazione a video

Ulteriore precisazione: in python non si distingue tra procedure e funzioni, si parla genericamente di funzioni

La creazione di nuove funzioni è una fra le peculiarità più utili di un linguaggio di programmazione

La sintassi per la definizione di una funzione in python è:

```python
def nomeFunzione( parametro1, parametro2, ..., parametroN ):
      istruzione1
      ...
      istruzioneN
```

Le funzioni possono essere definite in qualsiasi punto del programma

Unica condizione: una funzione deve essere definita prima di poter essere usata

Nella definizione uso i parametri formali per dare un nome ai dati che ancora non conosco

```python
def moltiplica(x, y):  # x ed y sono parametri FORMALI
    return x * y  # return comunica il risultato al
                  # programma chiamante e termina
                  # l'esecuzione della funzione
a=10
b=moltiplica(a,20)  # a e 20 sono parametri ATTUALI
print(b)
```

L'interprete Python, di volta in volta, collegherà i valori reali (chiamati parametri attuali) ai parametri formali

E' possibile dichiarare delle variabili all'interno delle funzioni

```python
def moltiplica(x, y): 
     risultato=0 
     risultato = x * y 
     return risultato
```

Al termine della funzione, le variabili dichiarate internamente (per es. risultato) cessano di esistere

E' opportuno dare alle variabili, dichiarate nelle funzioni, nomi diversi dai nomi delle variabili dichiarate nel corpo principale del programma

---

### Unit 2 - Moduli e package

![image](https://user-images.githubusercontent.com/75806093/133048988-ea490cb7-7d53-496a-b78c-8cc6acd3b8c4.png)

![image](https://user-images.githubusercontent.com/75806093/133049176-8b9a3ddc-4e26-4fd1-8c13-34e5d9832c86.png)

Come vengono localizzati i moduli (i file contenenti la definizione delle funzioni) o i pacchetti?

Cosa viene cercato?
Nell'esempio precedente, l'interprete python cerca il file itamat.py (nel file system viene cercato il nome indicato nell'import con l'aggiunta del suffisso .py)

Dove viene cercato itamat.py?
Inizia una ricerca in diverse directory, secondo l'ordine descritto qui di seguito. Non appena viene trovato un file itamat.py, la ricerca termina.

        directory di lavoro corrente (nel ns caso, la directory in cui si trova il file esempiouso.py)
        directory in cui si trovano i moduli e i package della libreria standard di python

Il programma di installazione di python, oltre ad installare l'interprete, installa anche la libreria standard di python, un insieme di package e moduli (pronti per essere utilizzati), ognuno dedicato ad un compito specifico

La libreria standard di Python è molto estesa

Gli elementi della libreria Python permettono di eseguire le più svariate operazioni:

    operazioni matematiche
    gestione di oggetti grafici
    operazioni sul file system
    ...

I moduli della libreria standard possono essere importati anche se non risiedono nella directory di lavoro corrente

```python
import math
```

Per utilizzare una funzione di un modulo dobbiamo specificare il nome del modulo che la contiene e il nome della funzione separati da un punto. Questo formato è chiamato notazione punto.

```python
decibel = math.log10(17.0) # calcola il log naturale
angolo = 1.5
altezza = math.sin(angolo) # calcola il seno di un angolo
```

In aggiunta alla libreria standard, è possibile installare dei pacchetti aggiuntivi

Posso usare un modulo o un package copiandolo nella mia directory di lavoro corrente. In questo modulo, però altri utenti non riuscirebbero ad utilizzarlo

L'installazione manuale di un pacchetto nel computer (per tutti gli utenti) può essere un'operazione complicata

Per questo motivo sono stati introdotti i Package Manager. Il package manager è un software che si occupa di installare pacchetti aggiuntivi, rendendoli disponibili per tutti gli utenti di uno specifico computer

Molti dei package manager esistenti, scaricano pacchetti da fonti accessibili via internet

Esistono diverse fonti di pacchetti aggiuntivi (sia liberamente scaricabili, sia a pagamento).

Una delle più grandi fonti di pacchetti python scaricabili è il Python Package Index. Maggiori dettagli qua: https://pypi.python.org/pypi 

Il contenuto della libreria e il tipo di package manager costituisce la maggior differenza tra le diverse distribuzioni del linguaggio python.

Alcuni riferimenti a 2 tra i package manager più diffusi

Conda, per maggiori informazioni: https://conda.io/docs/

PIP, maggiori informazioni: https://www.w3schools.com/python/python_pip.asp

Quando si richiama una funzione, vengono trasferiti i valori dai parametri attuali ai parametri formali della funzione

Il passaggio di parametri può avvenire in due modalità distinte:

- Passaggio per valore (o per copia): il parametro formale è una copia del parametro attuale se la funzione modifica il contenuto del parametro formale, si modifica la copia e non l'originale
- Passaggio per riferimento: il parametro formale è collegato direttamente al parametro attuale modificando il valore del parametro formale si altera anche il valore del parametro attuale

La differenza si nota quando, all'interno di una funzione, viene modificato un parametro formale

- (nel passaggio per valore) il corrispondente parametro attuale rimane invariato
- (nel passaggio per riferimento) il corrispondente parametro attuale viene modificato

In Python i tipi semplici (int, float, …) sono passati per valore (le funzioni ... lavorano su una copia)

I tipi complessi (liste, dizionari, …) sono invece passati per riferimento (le funzioni ... lavorano sull'originale)

Esiste una categoria intermedia: i tipi complessi non mutabili (es. stringhe, tuple).

    Non possono essere modificati
    Non si pone il problema del passaggio per copia o per valore
    Sono passati per riferimento

![image](https://user-images.githubusercontent.com/75806093/133050818-936579ba-d60d-4703-afdf-cb400bba48af.png)

![image](https://user-images.githubusercontent.com/75806093/133050855-9a8c91af-7f07-4ea7-8eb8-6f72ebaec57d.png)

![image](https://user-images.githubusercontent.com/75806093/133050902-a8a456b4-c8b4-441e-9da5-1dde767e42c1.png)

Variabili locali: variabili create all’interno di una funzione

```python
def stampaUnione(parte1, parte2):
     messaggio = parte1 + parte2
     print(messaggio)
frase1 = "Nel mezzo "
frase2 = "del cammin"
stampaUnione(frase1, frase2)

Nel mezzo del cammin
```

- messaggio è una variabile locale
- parte1 e parte2 sono parametri formali
- I parametri formali sono assimilabili a delle variabili locali
- Le variabili locali esistono solo all'interno della funzione
- Non possono essere usate all'esterno

Introduciamo le variabili globali, si tratta di variabili dichiarate nel corpo principale della funzione. Visibili all’interno delle funzioni, da qui il nome variabili globali

```python
PI=3.14  #variabile globale
def area(r):
   return PI * r**2 #l'elevamento a potenza 
                    #ha la precedenza 
l=2
a=area(l)
print("Un cerchio di raggio %f ha area %f" % (l, a) ) 
```

Se all'interno di una funzione si definisce una variabile con lo stesso nome di una variabile globale, la variabile all'interno della funzione maschererà la variabile globale, per tutta la durata dell'esecuzione della funzione. In altre parole, non potete modificare all'interno di una funzione il valore di una variabile globale

Questo comportamento è voluto, serve per evitare di modificare inavvertitamente variabili globali

Nei parametri formali di una funzione possono essere inseriti anche dei parametri opzionali

![image](https://user-images.githubusercontent.com/75806093/133051456-f22263b4-25d5-4d1d-be38-3baf92020e12.png)

Funzioni senza return restituiscono il valore speciale None

- None è una costante speciale del linguaggio
- None è logicamente equivalente a False

Tutte le funzioni in Python è cose se avessero un return value, anche se nessun return è presente nel codice. Per questo quelle che in altri linguaggi sarebbero considerate procedure, in Python sono comunque classificate come funzioni

Quando vengono restitutiti più valori con l'istruzione return, python costruisce una tupla

---

## Lezione 8. Python Object Oriented

### Unit 1 - Object Oriented Programming

Python da la possibilità di“impacchettare assieme” dati e funzioni (che lavorano sui dati) tra loro

Immaginate di avere aperto un file object. [Maggiori informazioni sui file e sui file object: https://www.html.it/pag/15617/lavorare-con-i-files/]. Senza saperlo, avete avuto a che fare con una classe, come nell'esempio qua sotto:

```python
class file :   #classe file (l’abbiamo usata senza saperlo)
   name='...'           #variabile, memorizza il nome del file
   def readline(…):  #codice per leggere …
      ...
      ...
   def close(…): #chiusura del file
      ..
```

Terminologia: all’interno di una classe, funzioni e variabili vengono chiamati rispettivamente metodi e attributi

![image](https://user-images.githubusercontent.com/75806093/133057370-fb57cb54-cb60-4f14-b1b9-dba0ef3712fe.png)

Che cosa è un oggetto/classe? Un pezzo di software che contiene variabili e metodi

La programmazione orientata agli oggetti utilizza: Incapsulamento.

Il codice è diviso in:

- interfaccia pubblica
- implementazione privata dell'interfaccia
- Polimorfismo. I metodi possono avere comportamenti differenti, in base al contesto
- Ereditarietà. La possibilità di creare delle sottoclassi che modificano/specializzano/estendono il codice contenuto nel genitore

Il costruttore serve per

- Impostare i valori iniziali degli attributi
- Eseguire eventuali lavori preparatori

Attributi dell’oggetto

    sono sempre referenziati utilizzando self
    self è un modo per fare riferimento all’oggetto corrente
    uno stesso attributo di oggetto può avere valori diversi da un oggetto all’altro
    self.i # fa riferimento all’attributo i dell’oggetto corrente

Attributi di classe

    Per far riferimento agli attributi di classe si premette il nome della classe
    esistono anche altre modalità d’accesso

Gli attributi di classe sono condivisi tra tutti gli oggetti

    Settando un valore su un attributo di classe, è come se lo si settasse su tutti gli oggetti istanze delle classi
    Modo per condividere velocemente informazioni tra oggetti
    
Nei linguaggi di programmazione la gestione degli attributi di classe/dell’oggetto è sempre problematica, Python ricorre all’escamotage del riferimento

- attraverso self per gli attributi dell’oggetto
- attraverso il nome della classe per gli attributi di classe

```python
Class CsvReader:
    def __init__(self, fname): # Il costruttore viene richiamato alla creazione dell’oggetto
        self.f=open(fname,'r') # apre il file
    def readRecord(self):
        line = self.f.readline() # legge una linea (fino al segno di a capo)
        if line=='':
            return []
        else:
            line = line.strip('\n')
            records = line.split(';')
            return records
    def __del__(self): # maggiori dettagli in seguito
        self.f.close()
```

Il garbage collector (un compoente dell’interprete python) si occupa di tener traccia dell’uso di oggetti e di eliminare gli oggetti inutilizzati

Il metodo __del__() non viene invocato direttamente dall’utente

Prima di cancellare definitivamente un oggetto il garbage collector richiama il metodo __del__() sull’oggetto stesso

```python
cr = CsvReader('prova.txt')
r = cr.readRecord()
while r!=[]:
    print(r)
    r=cr.readRecord()
```    

---

### Unit 2 - introduzione all'information Hiding

```python
class Animale: #classe padre
   def __init__(self, nome):
      self.nome = nome
   def parla(self):
      print(“”)

class Gatto(Animale): #classe figlia
   def parla(self): #overriding
      print("Miao!”)

class Cane(Animale): #classe figlia
   def parla(self): #overriding
      print("Bau!”)

g = Gatto("Garfield")
g.parla() #Miao!

c = Cane("Rocky")
c.parla() #Bau!
```

La classe Figlia eredita dalla classe Padre tutto, es.:

- il costruttore
- l’attributo self.nome

Overriding: quando una classe Figlia ridefinisce un metodo della classe Padre

Es., il metodo parla()

parla() e' un esempio di polimorfismo. Ha un comportamento diverso a seconda dell’oggetto su cui viene invocato

Una classe può ereditare da più padri class Figlia(Padre1, Padre2, …): 

La figlia eredita tutti i metodi ed attributi delle classi padri 

Conflitto: 2 classi padri offrono un metodo dalle forme identiche (stesso nome, stessa disposizione dei parametri formali)

Criterio di scelta (dall’alto al basso):

    metodo nella classe figlia che fa overriding (se presente)
    la classe padre che appare più a sinistra tra le () nella dichiarazione della classe figlia

Dato di fatto: le modifiche al codice sono frequenti

Ogni volta che modifico una classe devo sempre modificare (tutti) i programmi che la utilizzano?
Ci viene in aiuto l’Encapsulation

```python
class Studente2(): # 1. versione della classe
    def __init__(self, nome):
        self._nome = nome

    def getNome(self): 
        return self._nome
```
```python
class Studente2(): # 2. versione della classe
           # Tutte le modifiche sono "incapsulate" dentro i metodi            # e non sono visibili all'esterno
    def __init__(self, nome):
        self._nome = nome.split(' ’)
    def getNome(self):  
        st=""
        for el in self._nome:
            st=st+el+' '
        return st
s=Studente2("Mario Rossi") #ora, secondo voi ci sono problemi?
print(s.getNome().upper())     
#MARIO ROSSI                
```

In che cosa consiste l’encapsulation? Si espongono dei metodi per accedere ai dati, cioè un’interfaccia. L’interfaccia è progettata per rimanere inalterata nel tempo

Si nascondono le strutture dati e le implementazioni sottostanti

Python che strumenti mette a disposizione per nascondere gli attributi?

Convenzione: non si accede dall’esterno di una classe agli attributi o metodi il cui nome inizia con _ (Usato per indicare attributi che saranno modificati a breve)

E’ una convenzione e come tale può essere disattesa, tuttavia non è saggio scrivere del codice che si basa su attributi che saranno modificati

Esiste un metodo più forte per nascondere gli attributi

Python nasconde attributi o metodi di una classe i cui nomi iniziano con
un _ _ (un doppio _)

![image](https://user-images.githubusercontent.com/75806093/133060166-dbac91c3-e243-4064-948c-e5fe4121bd51.png)

---

### Unit 3 - Eccezioni

Un’eccezione è un evento (spesso un errore) che accade durante l’esecuzione di un programma, che interrompe il normale flusso di esecuzione

Quando in uno script python viene sollevata un’eccezione:

- il programmatore può specificare del codice per gestire un’eccezione
- se il codice riesce a gestire l’eccezione, l’esecuzione del programma può continuare
- se l’eccezione non può essere gestita l’esecuzione dello script viene interrotta

Un’eccezione è rappresentata attraverso un oggetto python

![image](https://user-images.githubusercontent.com/75806093/133061419-b8ff1bde-b49b-4013-8e99-fcdf7f21e7d3.png)

```python
try:
   r1 = n1/d1 #blocco B1
   r2 = n2/d2 #blocco B1
   r3 = n3/d3 #blocco B1
except ZeroDivisionError:
   print("Divisione per 0")    #blocco B2
   print("Controlla i valori") #blocco B2  
print("Fine programma”) #blocco B3
```

Il bloco try ... except (#B1) viene eseguito

    fino alla fine se non vengono sollevate eccezioni
    oppure fino a prima dell'istruzione che genera l'eccezione

Il blocco except (#B2)
    
    non viene esegutio se non vengono sollevate eccezioni
    viene eseguito se se nel blocco try…except (#B1) viene sollevata una eccezione ”ZeroDivisionError”
   
Esempio di sintassi della try...except

```python
try:
   #codice python
except Eccez1:  
   #Codice per gestire l’eccezione 1
except (Eccez2, Eccez3): #più eccezioni vanno messe tra ()
   #Codice per gestire sia Eccezione2 sia Eccezione 3 
else: #opzionale
   #codice eseguito solo se non vengono sollevate eccezioni
```

Se nel blocco try...except vengono sollevate Eccez1, Eccez2, Eccez3, queste vengono gestite nei corrispondenti blocchi except, qualsiasi altra eccezione causa l’interruzione del programma

Le eccezioni sono utili per gestire eventi imprevedibili che accadono nelle interazioni con l’ambiente esterno

![image](https://user-images.githubusercontent.com/75806093/133061915-513c86b1-a3e2-4c60-8712-1ad1e7bf672f.png)

![image](https://user-images.githubusercontent.com/75806093/133061961-a319afaf-83d3-4fce-aa7a-f6398fc54396.png)

---

## Lezione 9. Leggere i dati con Pandas

### Unit 1 - Introduzione a pandas e lettura file

Pandas è una libreria open source che fornisce due funzionalità fondamentali:

- la capacità di leggere un file dati strutturato (ad esempio, in formato CSV)
- la capacità di trattare dati in formato tabellare (DataFrame o Serie)

Anaconda include Pandas, però deve essere importata. Di conseguenza la prima istruzione sarà:

```python
import pandas as pd
```

Adesso la libreria pandas è disponibile come pd

Alcuni formati di file sono più comuni da trovare:

- CSV (comma separated values). I dati sono separati da virgole o da altri caratteri (spazio, punto e virgola)
- XLS. I dati sono memorizzati in un foglio di calcolo di Excel
- JSON. E' un formato pensato per scambiare dati fra computer. Non è semplice da leggere direttamente

Per ognuno di questi formati avremo una istruzione specifica che permette la lettura.

JSON è un formato testuale di dati utilizzato principalmente per lo scambio di dati.

Mentre il formato CSV è pensato per rappresentare dati in formato tabellare, il formato JSON permette di rappresentare dati gerarchici e con schema flessibile.

![image](https://user-images.githubusercontent.com/75806093/133115217-2737b746-2307-4a48-a247-0d81e74d677e.png)

Per leggere un file JSON e importare i dati in un DataFrame bisogna usare l'istruzione read_json che richiede come argomento il nome del file da leggere, oppure l'indirizzo https(s) (URL) del file, nel caso in cui sia disponibile per il download.

```python
incidenti = pd.read_json("https://git.io/fhmXn")
```

![image](https://user-images.githubusercontent.com/75806093/133115406-4c7ca4f5-bded-424a-927b-64a6f7e247f3.png)

Il caso appena mostrato ha scaricato i dati dall'URL indicato. Un'altra possibilità è fornire il percorso completo del file da leggere. Il percorso può essere sia assoluto che parziale.

Le due istruzioni che seguono hanno lo stesso effetto dell'istruzione precedente (la prima usa un percorso assoluto, la seconda un percorso relativo).

```python
incidenti = pd.read_json("/home/utente/python/data/incidenti.json")
incidenti = pd.read_json("data/incidenti.json")
```

I due percorsi sono da intendersi come indicativi, in quanto il percorso reale dipende dalla cartella in cui si sono salvati i dati e da cui si è fatto partire Jupyter.

Inoltre come specificare il percorso dipende dal sistema operativo utilizzato.

In particolare, sebbene Windows normalmente richieda di usare il carattere \ (backslash) per separare le cartelle, in Jupyter bisogna usare il carattere / (sbarra).

Per leggere un foglio di calcolo di Excel, bisogna usare l'istruzione read_excel.

Esattamente come la read_json, bisogna fornire un argomento che è il percorso del file o l'URL del file da importare.

In questo caso ci si attende che la prima riga del file xls contenga i nomi delle colonne.

```python
lavoro = pd.read_excel("http://www2.census.gov/prod2/statcomp/usac/excel/CLF01.xls")
```

![image](https://user-images.githubusercontent.com/75806093/133115717-939af6f3-b8fc-4b00-b93e-6317e4ce4ae8.png)

---

### Unit 2 - Leggere file CSV

Buona parte dei dataset vengono distribuiti in formati CSV perchè sono semplici da produrre e da leggere e si prestano ad essere compressi.

L'istruzione da utilizzare è read_csv di cui possiamo vedere un esempio:

![image](https://user-images.githubusercontent.com/75806093/133117086-ebc120fb-9873-4cd2-abab-57186c79d682.png)

La read_csv è una istruzione centrale in pandas: sarà la modalità principale con cui leggeremo i dati da importare in un DataFrame.

Per questo motivo dedicheremo spazio a descrivere diverse opzioni a disposizione. Ogni volta che vogliamo leggere un nuovo file di dati, dobbiamo capire quali opzioni dobbiamo utilizzare.

![image](https://user-images.githubusercontent.com/75806093/133117290-3ac6fa3f-d6a4-4424-b4c5-f33029856e53.png)

L'opzione names permette di specificare i nomi delle colonne da leggere.

L'opzione permette di specificare la lista dei nomi da utilizzare. Inoltre assume che la prima riga del file contenga dei dati da inserire nel DataFrame.

```python
nani = pd.read_csv("data/7-nani.csv", 
                   names = ['Nome'])   
nani
```

![image](https://user-images.githubusercontent.com/75806093/133117425-5e72fb4a-0d98-428a-91bc-e3ca62b01fcb.png)

Per ottenere una Serie dal file 7-nani.csv dobbiamo usare l'opzione squeeze, che è dedicata allo scopo: se i dati presentano una sola colonna, il risultato è una Serie.

```python
nani = pd.read_csv("data/7-nani.csv",
                   names = ['Nome'], squeeze = True)
``` 

![image](https://user-images.githubusercontent.com/75806093/133117554-24331678-2636-4a63-806e-e968b5385ce5.png)

La virgola è il carattere più utilizzato per separare i campi, ma non è l'unico. Un altro carattere utilizzato spesso il il punto e virgole (;), soprattutto per i file ottenuti esportando da Excel. Questo delimitatore è i default in Italia, perchè la virgola viene utilizzata per separare la parte intera di un numero dalla parte frazionaria (ad esempio 12,345).

L'opzione delimiter (o l'equivalente sep) permettono di specificare il carattere da usare come separatore. Vediamo un esempio.

```python
iscritti = pd.read_csv("data/2009-2013_iscritti.csv", delimiter = ';')
```

Quando il separatore è formato da una sequenza di spazi e/o tabulazione: 

```python
delim_whitespace
```

In alcuni file di dati le prime righe vengono utilizzate per scrivere dei commenti (tipicamente una descrizione dei dati). L'opzione skiprows permette di indicare quante righe del file contengono commenti e devono essere saltate in fase di lettura. Questa opzione normalmente viene utilizzata insieme all'opzione names per indicare i nomi delle colonne.

```python
kidney = pd.read_csv("data/kidney.txt",
                          delim_whitespace = True,
                          skiprows = 17,
```

![image](https://user-images.githubusercontent.com/75806093/133117899-b88d648e-79e2-44bd-b68c-a1f47e04b998.png)

Un'alternativa, nel caso in cui il commento contenga i nomi delle colonne, è l'opzione header, che permette di specificare il numero di riga che contiene i nomi delle colonne.

---

### Unit 3 - Approfondimenti su read_csv

Abbiamo accennato in precedenza al fatto che in Italia (e in Europa) si preferisca utilizzare la virgola per separare la parte intera da quella frazionaria di un numero.

Un'altra differenza fra lo standard americano e quello europeo è nel separatore delle migliaia: in Europa si usa lo spazio oppure il punto (67.891.123), mentre lo standard americano è la virgola (67,891,123).

Per gestire entrambi questi casi, abbiamo rispettivamente le opzioni decimal e thousands. Per quest'ultima opzione, il valore di default è la stringa vuota: di conseguenza l'opzione thousands deve essere utilizzata anche per numeri che usano la virgola come separatore delle migliaia.

```python
gettito = pd.read_csv("data/2009-2013_gettito_contribuzione.csv", 
                           delimiter = ';', decimal = ',')
```

I file di dati di grandi dimensioni presentano due problematiche distinte:

- i tempi di calcolo si allungano;
- le procedure usate da pandas per inferire l'organizzazione dei dati (in particolare i tipi delle colonne) non sono precise.

Ancora una volta, abbiamo alcune opzioni di pandas per limitare questi problemi:

- nrows: specifica il numero di righe del file che devono essere lette;
- low_memory = False: permette a pandas di usare una maggiore quantità di memoria per inferire l'organizzazione dei dati.

Un'altra caratteristica di pandas che lo rende adatto alla gestione di dati di grandi dimensioni è il fatto che riesce a leggere file compressi. Vediamo una lettura di file di grandi dimensioni che non utilizza nessuna delle opzioni indicate e vediamo l'avviso che ci segnala un possibile problema in fase di inferenza dei tipi di dati.

![image](https://user-images.githubusercontent.com/75806093/133120640-cff2b1d5-96bc-4945-9746-1e5e968cde0a.png)

![image](https://user-images.githubusercontent.com/75806093/133120678-5e0145bd-ac45-44f7-81f1-682d9a5b1137.png)

L'opzione nrows è molto utile in fase iniziale di sviluppo, perchè permette di controllare la correttezza del codice su dati facilmente gestibili. Però non può essere usata per fare un'analisi dei dati.

La strategia migliore è usarla solo nelle prime fasi di sviluppo e solo se i dati sono troppo difficoltosi da gestire a causa della loro dimensione.

La lettura di date e orari presenta diverse problematiche. In particolare:

    Oltre agli usuali concetti di data e orario, abbiamo anche il concetto di timestamp (detto anche istante temporale o datetime), che è essenzialmente formato da una data e un orario (ore, minuti, secondi e spesso anche frazione di secondo).
    La data può essere in formato Europeo (giorno/mese/anno) o americano (mese/giorno/anno).
    Il separatore fra giorno, mese, anno non è univoco. Normalmente si usa / o -, ma altri caratteri sono talvolta utilizzati (ad esempio .).
    L'indicazione di un timestamp è precisa solo quando viene specificato anche il fuso orario di riferimento (se il file è ottenuto come output di un programma, il fuso orario di default è UTC che corrisponde al fuso orario di Greenwich).

Tutti questi aspetti contribuiscono a rendere la lettura di date e ore particolamente difficoltosa.

L'opzione parse_dates esplicita quali colonne contengono date (o timestamp).

```python
strutture = pd.read_csv("data/2009-2013_strutture.csv", delimiter = ';',
                             parse_dates = [0] )
```

![image](https://user-images.githubusercontent.com/75806093/133120910-c3f258f9-2cb7-41cf-9c71-6b33a25758f4.png)

Il comportamento di default è però leggere le date in formato americano. Per il formato europeo dobbiamo utilizzare l'opzione dayfirst. Quindi l'istruzione corretta diventa:

```python
strutture = pd.read_csv("data/2009-2013_strutture.csv", delimiter = ';',
                             parse_dates = [0], dayfirst = True )
```

L'utilizzo di valori specifici, detti sentinelle, per rappresentare valori mancanti è piuttosto frequente, ma è dipendente dal contesto. In questi casi è opportuno usare alcune opzioni in fase di lettura:

    na_values: una lista di stringhe che vengono interpretati come valori mancanti
    keep_default_na: un booleano che indica se continuare ad interpretare le stringhe NaN, nan, N/A, null per rappresentare valori mancanti.

Quando queste opzioni vengono utilizzate, è opportuno aggiungere anche verbose = True: in questo modo vengono calcolati il numero di valori mancanti nelle colonne non-numeriche. Ciò permette di controllare che le stringhe che codificano i valori mancanti non abbiano introdotti altri problemi.

La presenza di valori mancanti è un aspetto fondamentale nella lettura dei file di dati: purtroppo ciò viene spesso sottovalutato.

L'encoding è una questione tecnica che indica come caratteri e simboli siano rappresentati dal computer come numero binario (sequenza di 0 e 1).

Purtroppo, l'encoding più utilizzato (ASCII) non permette di rappresentare le lettere accentate ed altri caratteri utilizzati in lingue diverse dall'Inglese. Ciò comporta alcuni problemi nel leggere file di dati con caratteri accentati che possono essere superati solo specificando l'encoding utilizzato nella creazione del file: per quanto riguarda i file con scritte in Italiano, gli encoding normalmente utilizzati sono

iso-8859-1

utf-8

Quando si cerca di leggere un file usando un encoding errato, si incorre in un errore che viene immediatamente segnalato da pandas con un messaggio can't decode byte oppure UnicodeDecodeError. Vediamo adesso un caso in cui è necessario specificare l'encoding.

![image](https://user-images.githubusercontent.com/75806093/133121209-347408d8-479c-46f2-8b80-8b8b30a3f0a6.png)

---

## Lezione 10. Il Dataframe

### Unit 1 - Concetti fondamentali di Dataframe e Series

Una serie è un elenco di valori (una lista) in colonna. La colonna non ha nome.

Ogni Serie ha un indice che identifica ogni riga. l'indice può non essere un numero.

![image](https://user-images.githubusercontent.com/75806093/133221727-a3be5e57-882c-4946-ba81-2a41a386d719.png)

Un DataFrame è una tabella dove ogni colonna ha un nome.

Un DataFrame ha un indice che identifica ogni riga, esattamente come una Serie.

![image](https://user-images.githubusercontent.com/75806093/133221803-d65b547f-4a3c-4fb7-9a46-201f67891070.png)

Diversi metodi sono condivisi da DataFrame e Serie. Ad esempio:

- head mostra le prime righe
- tail mostra le ultime righe
- count mostra il numero di righe con valori non mancanti

head e tail; Entrambi i metodi hanno un argomento opzionale che è il numero di righe da mostrare (ad esempio artisti.head(4)

- shape mostra il numero di righe e colonne
- columns è la lista delle colonne di un DataFrame
- index è l'indice del DataFrame

![image](https://user-images.githubusercontent.com/75806093/133222112-957198c7-6ab2-4a19-984f-d905a8e57eb0.png)

![image](https://user-images.githubusercontent.com/75806093/133222225-00cd463a-ab08-4526-beda-417bf14e6d87.png)

Per estrarre un insieme casuale di righe da un DataFrame, si può usare il metodo sample che vuole il numero di righe da estrarre.

![image](https://user-images.githubusercontent.com/75806093/133222322-4b180540-4adf-4770-9856-7c6c371a2007.png)

Estrarre una colonna equivale a costruire una serie. Notare che la colonna dei dati non ha nome, ma c'è un indice.

![image](https://user-images.githubusercontent.com/75806093/133222442-60649e98-fb2d-4a38-b64c-1033401dff72.png)

Per cancellare una colonna, bisogna usare il comando del. Nell'esempio che segue, cancelleremo la colonna url del DataFrame artisti e mostreremo le colonne rimanenti.

![image](https://user-images.githubusercontent.com/75806093/133222510-929cb14d-9ab7-4a71-9f12-db6c49eb2301.png)

Bisogna fare attenzione all'utilizzo di del. Mentre quasi tutte le operazioni su DataFrame che vedremo creano un nuovo DataFrame, l'operazione del cancella effettivamente la colonna del DataFrame.

Questa operazione non è invertibile. Se si esegue una del per errore, bisogna ricreare il DataFrame.

---

### Unit 2 - L'indice

Di solito l'indice viene utilizzato per identificare ogni riga di un DataFrame (o Serie), ma in realtà ciò non è garantito (a differenza di una chiave in una tabella).

Un indice può essere visto come:

- una lista immutabile;
- un insieme ordinato.

Spesso l'indice è formato da una sequenza di numeri interi consecutivi: in questo caso vedremo che l'indice ha tipo RangeIndex.

![image](https://user-images.githubusercontent.com/75806093/133225129-f27e5c40-f4c3-4c94-9c67-75059b203273.png)

![image](https://user-images.githubusercontent.com/75806093/133225194-cee8f893-aa49-47c6-bc1d-e30b48c201ac.png)

E' possibile estrarre righe sfruttando:

    l'indice implicito (non ha un nome) con la iloc (la i* significa *implicito)
    l'indice esplicito con la loc

Vediamo adesso più in dettaglio il concetto di indice implicito. Un DataFrame può essere visto come una lista di righe. In questo caso l'indice implicito è esattamente l'indice di questa lista: inizia con 0 e termina con il numero di righe meno 1.

Siccome il DataFrame viene visto come una lista, posso accedere a elementi o insiemi di righe usando le espressioni tipiche delle liste, però usando il metodo iloc.

![image](https://user-images.githubusercontent.com/75806093/133225304-fb7c2547-9ba9-4126-8e09-75071092c3f5.png)

L'indice esplicito è invece quello corrispondente al metodo index. In questo modo, usando il metodo loc è possibile estrarre:

- una singola riga
- un insieme di righe (l'insieme viene specificato con una lista

![image](https://user-images.githubusercontent.com/75806093/133225380-cb610756-c00e-44a0-b572-87192532e71c.png)

![image](https://user-images.githubusercontent.com/75806093/133225487-872664cf-cb9e-4ff5-9f70-b8ffd975933c.png)

Quando accediamo a porzioni di liste, una delle modalità più frequenti è lo slice: in questo caso specifichiamo una porzione di DataFrame identificata dal suo inizio e dalla sua fine. L'utilizzo di uno slice con la loc ha due particolarità:

    Per usare la loc con uno slice, è necessario prima ordinare il DataFrame rispetto all'indice, con la sort_index (eventualmente con inplace = True se non desideriamo creare un nuovo DataFrame);
    il risultato includerà entrambi gli estremi indicati nello slice (mentre con l'indice implicito, il risultato di uno slice non include l'estremo finale).

![image](https://user-images.githubusercontent.com/75806093/133225650-4341a76b-22f6-4a22-8dfd-e10c95e5824b.png)

Talvolta abbiamo un DataFrame in cui una colonna è adatta ad essere un indice esplicito migliore di quello di default (l'indice implicito, formato da una sequenza di numeri a partire da 0).

Per trasformare una colonna in indice è necessario assegnare il risultato di set_index ad un nuovo DataFrame. Notare che anche questa operazione crea un nuovo DataFrame.

![image](https://user-images.githubusercontent.com/75806093/133225746-78011d64-ac1b-4575-b9ca-167d6f62bb7c.png)

Leggendo il DataFrame con read_csv o read_json è possibile selezionare una colonna come indice, utilizzando l'opzione index_col.

![image](https://user-images.githubusercontent.com/75806093/133225866-593f634a-11f5-45cb-9d8c-3e35034a8a39.png)

Per alcune operazioni, diventa utile trasformare l'indice in una colonna, ottenendo un nuovo DataFrame. Notare che il risultato di questa operazione è sempre un DataFrame, anche a partire da una Serie.

L'istruzione necessaria è reset_index

![image](https://user-images.githubusercontent.com/75806093/133225944-2904df55-4054-4550-b916-296781365e04.png)

---

### Unit 3 - Fancy indexing e valori mancanti

In precedenza abbiamo visto come estrarre alcune righe da un DataFrame sfruttando l'indice (sia esplicito che implicito). Una modalità più sofisticata per estrarre righe consiste nel fancy indexing dove viene fornito un array booleano di lunghezza pari al numero di righe del DataFrame. L'array booleano viene utilizzato al posto dell'indice e il risultato è formato dalle righe nelle posizioni vere (True dell'array).

![image](https://user-images.githubusercontent.com/75806093/133582950-ed9dcea6-2583-4185-a72a-95512a90dcb7.png)

Il fancy indexing avrebbe utilità molto limitata se dovessimo costruire esplicitamente l'array booleano.

Possiamo costruirlo scrivendo una condizione sui valori. Ciò permette di selezionare con facilità tutte le righe del DataFrame che soddisfano una condizione.

Come esempio, selezioniamo gli artisti che sono donne. Scriviamo inizialmente la condizione che è vera se il valore della colonna gender è True.

```python
artisti['gender'] == 'Female'
```

![image](https://user-images.githubusercontent.com/75806093/133583286-553b017b-7a72-4643-a078-8bd6b79c85a3.png)

Il fatto che dtype vale bool indica che abbiamo effettivamente costruito un array booleano.

Adesso possiamo sfruttare la condizione scritta in precedenza per estrarre le righe interessanti.

Dobbiamo solo usare l'array come se fosse un indice.

![image](https://user-images.githubusercontent.com/75806093/133583336-48ee2e5b-ce8e-4158-9724-94573b7f3ef6.png)

Nell'istruzione dobbiamo scrivere due volte artisti: la prima volta è perchè vogliamo estrarre righe dal DataFrame artisti, la seconda per costruire la condizione.

Non è obbligatorio che il DataFrame coinvolto nella condizione sia lo stesso da cui estrarre le righe.

Le condizioni composte richiedono l'uso di ~ (not), | (or), & (and). Non è possibile utilizzare le parole riservate di Python and, or e not per una questione tecnica.

Inoltre alcune condizioni devono essere racchiuse fra parentesi per evitare problemi di precedenza degli operatori. Per evitare possibili confusioni, si raccomanda di racchiudere sempre le condizioni fra parentesi.

![image](https://user-images.githubusercontent.com/75806093/133583490-35016bfa-ea51-48cd-903c-62e4aab4cc58.png)

In Python i valori mancanti sono rappresentanti con None. In Pandas possono anche essere rappresentati da numpy.nan: in questo caso è necessario importare la libreria numpy.

Inoltre bisogna capire come i valori mancanti sono rappresentati nel dataset, perchè talvolta si preferisce avere un valore (detto sentinella) ritenuto impossibile che rappresenta in realtà il fatto che il valore è mancante. Ad esempio una data nell'anno 9999, oppure una temperatura -999.

Per individuare le righe dove sono presenti valori mancanti esiste la funzione isnull, che può essere combinata con un fancy indexing per estrarre le righe con il valore mancante.

![image](https://user-images.githubusercontent.com/75806093/133583642-1a273e09-ba7d-4d8f-bb3a-b866d1bdf5c4.png)

Normalmente valori mancanti rappresentano un'informazione, sebbe parziale: l'assenza di un dato oppure la non conoscenza di un'informazione. Per questo motivo i valori mancanti vengono mantenuti (anche se bisogna sempre controllare che non siano dovuti ad errori in fase di importazione dei dati).

Nei rari casi in cui si voglia invece rimuovere le righe con valori mancanti si può utilizzare il metodo dropna che verrà spiegato più avanti.

Date o timestamp mancanti

Mentre un numero mancante viene rappresentato dalla stringa NaN (not a number), nel caso di dati di tipo data o timestamp, il valore mancante viene rappresentato da NaT (not a timestamp).

Per creare una nuova colonna a partire da altre colonne è sufficiente scrivere l'operazione fra le singole colonne coinvolte.

![image](https://user-images.githubusercontent.com/75806093/133583807-9e75989e-023f-498d-ac1e-8dd71aed39a6.png)

Bisogna ricordarsi che ogni operazione in cui un operando è mancante ha un risultato che è a sua volta mancante, come è possibile vedere nell'esempio che segue.

![image](https://user-images.githubusercontent.com/75806093/133583868-0fd8bcee-68a9-4302-bfac-7223ed6f5754.png)

Alcuni metodi possono essere applicati ad una colonna di DataFrame o una Serie. Le principali sono:

- mean() calcola il valore medio
- median() calcola il valore mediano
- sum() calcola la somma
- size() calcola il numero di elementi dei gruppi
- count() calcola il numero di elementi non mancanti nei gruppi
- min() calcola il minimo valore di ogni gruppo
- max() calcola il massimo valore di ogni gruppo

![image](https://user-images.githubusercontent.com/75806093/133584027-c037d027-e5c5-482b-8ba8-8d1c9af05d83.png)

![image](https://user-images.githubusercontent.com/75806093/133584106-0e83e396-daba-40f7-8801-171343dd5f35.png)

---

## Lezione 11. Estrarre informazioni da tabelle

### Unit 1 - Operazioni su una colonna

Consideriamo nuovamente il DataFrame degli incidenti.

```python
import pandas as pd
incidenti = pd.read_json("data/incidenti.json")

incidenti.describe()
```

La funzione describe permette di iniziare l'esplorazione del dataset, calcolando alcune statistiche essenziali.

![image](https://user-images.githubusercontent.com/75806093/133587161-d8abbb1e-e513-443a-9925-eb428170f3f1.png)

La presenza di valori mancanti può creare problemi. Per questo motivo possiamo usare dropna per rimuovere tutte le righe che contengono valori mancanti.

![image](https://user-images.githubusercontent.com/75806093/133587238-422b205c-4502-46dc-b90b-3a2216222610.png)

Stiamo però attenti che il nuovo DataFrame potrebbe avere caratteristiche diverse dal DataFrame originale. Andiamo a calcolare il numero medio di Feriti e di Incidenti per i DataFrame incidenti e incidenti_puliti.

![image](https://user-images.githubusercontent.com/75806093/133587301-2fff337f-0524-42d2-9c66-779c78d6f323.png)

Per creare una nuova colonna a partire da altre già esistenti, bisogna scrivere l'espressione corrispondente. Ad esempio, per creare una colonna con il numero di feriti per incidente, bisogna scrivere

```python
incidenti['rapporto'] = incidenti['Feriti'] / incidenti['Incidenti']
```

![image](https://user-images.githubusercontent.com/75806093/133587439-7ee9b5a3-a59b-429c-8c2d-c79a8bb57362.png)

Un caso particolare si ha quando si vuole assegnare lo stesso valore a tutte le righe di un DataFrame. In questo caso assegnamo il valore 0 ad una nuova colonna che chiamiamo prova

![image](https://user-images.githubusercontent.com/75806093/133587494-4dd1cfed-e677-42d3-b291-955d7065700d.png)

Possiamo notare che la colonna Zona contiene numeri con virgola (float). Siccome in realtà Zona è un numero intero, convertiamo il numero usando il metodo astype. Dobbiamo dare un argomento a astype che è un dizionario che associa ad ogni colonna da convertire, il tipo da usare nella conversione.

```python
incidenti_puliti = incidenti_puliti.astype({'Zona': int})
incidenti_puliti.head(3)
```

![image](https://user-images.githubusercontent.com/75806093/133587618-6a125069-5234-4a30-a07b-cd3581e5a2e9.png)

Però, astype richiede che i valori da convertire siano tutti non nulli: per questo motivo abbiamo lavorato su incidenti_puliti, invece che su incidenti.

Cosa succede se si eseguono le stesse operazioni su incidenti?

Il comando

```python
incidenti = incidenti.astype({'Zona': int})
```

genera un errore ValueError, perchè la presenza di valori mancanti rende impossibile l'esecuzione di astype.

Per risolvere il problema, possiamo sfruttare il fatto che incidenti e incidenti_puliti hanno lo stesso indice.

![image](https://user-images.githubusercontent.com/75806093/133587736-ef9ef828-4dc4-4fd8-98b5-b2b2a2ca9670.png)

La nuova colonna aggiunta contiene solo alcune delle righe di incidenti. Ma pandas sfrutta gli indici di entrambi i DataFrame per aggiungere la colonna, mettendo valori mancanti dove non trova un indice corrispondente. Ad esempio, indici_puliti non ha una riga con indice 0.

Se non si vuole passare per un DataFrame intermedio come incidenti_puliti, diventa necessario estendere la chiamata a loc esplicitando anche una selezione delle righe, per invocare astype(int) solo sulle righe in cui la zona non sia mancante. Questo passo permette anche di gestire adeguatamente la zona mancante, che verrà posta a 0.

![image](https://user-images.githubusercontent.com/75806093/133587822-ff2efaac-9e4a-4fc5-bef8-6b0418eff091.png)

Una colonna viene chiamata categoria se i suoi valori permettono di classificare le righe. Adesso andremo a creare una nuova variabile tipo che ha tre valori:

    a se il rapporto fra il numero di feriti e il numero di incidenti è minore di 1.3;
    b se il rapporto è fra 1.3 (incluso) e 1.4 (escluso);
    c se il rapporto è maggiore o uguale a 1.4;

Il modo più semplice, ma più lungo, è simile a quanto fatto in precedenza: per ogni valore possibile di tipo, si selezionano le righe e si cambia il valore solo di tali righe.

![image](https://user-images.githubusercontent.com/75806093/133587929-3925d189-6060-46e5-adda-bd9c694d8732.png)

Per rimuovere una colonna, bisogna usare il comando del.

Bisogna stare attenti perchè è un comando che modifica direttamente il DataFrame, mentre gli altri comandi creano un nuovo DataFrame.

![image](https://user-images.githubusercontent.com/75806093/133587996-00dc47e1-9044-43e1-9f8c-3f777539f609.png)

---

### Unit 2 - Funzioni e raggruppamenti

Alcune funzioni possono essere applicate su una Serie intera. Ad esempio la funzione len permette di ottenere il numero di righe

```python
len(incidenti)
1920
```

Sicuramente più interessanti sono le funzioni che calcolano minimo, massimo o la somma. Queste funzioni sono applicate a Serie.

```python
incidenti['Feriti'].sum()
278952
```
```python
incidenti['Feriti'].min()
22
```

Di particolare rilievo è che eventuali valori mancanti vengono gestiti correttamente (vengono ignorati)

Le stesse funzioni aggregate, se vengono invocate su un DataFrame, vengono applicate su tutte le colonne, incluse quelle che non contengono valori numerici.

Il risultato è sempre una Serie.

![image](https://user-images.githubusercontent.com/75806093/133590052-f00877f1-d423-4e5a-a6fd-033063d7d86f.png)

Talvolta il fatto che più righe condividano uno stesso valore può essere sfruttare per costruire gruppi di righe, che poi possono essere analizzati separatamente.

![image](https://user-images.githubusercontent.com/75806093/133590164-31f5e6e9-65af-419e-b552-cc2199c69fe5.png)

![image](https://user-images.githubusercontent.com/75806093/133590207-03c88f06-cf94-4585-8cb1-4e0973372c9a.png)

Per contare il numero di incidenti, dobbiamo sommare il valore della colonna Incidenti, distinguendo per ogni zona.

In questo caso le righe che hanno Zona mancante non vengono considerate nei raggruppamenti.

![image](https://user-images.githubusercontent.com/75806093/133590272-37924750-f143-430a-8eec-8eb9927267d5.png)

Per estrarre un singolo gruppo si può usare il metodo get_group.

![image](https://user-images.githubusercontent.com/75806093/133590344-1ab96e66-497f-4b15-aacb-071d4a9e5c64.png)

![image](https://user-images.githubusercontent.com/75806093/133590484-5140e9d2-3c7f-4220-926f-e6f32317eaa1.png)

![image](https://user-images.githubusercontent.com/75806093/133590565-e547e946-e8c4-4b31-96b2-ad4820873ce9.png)

![image](https://user-images.githubusercontent.com/75806093/133590605-383bae70-f8fd-442e-b732-0a1bd52c6fa6.png)

![image](https://user-images.githubusercontent.com/75806093/133590634-33c9bc9d-dfcc-4f55-a80d-6c78ad18422f.png)

Ricordiamo che count esclude dal conteggio i valori mancanti, mentre size include i valori mancanti. Andiamo a confrontare i risultati di queste operazioni, considerano solo la colonna Zona, visto che è l'unica a contenere valori mancanti.

Chiaramente ci aspettiamo che count restituisca valori minori di quelli calcolati da size.

![image](https://user-images.githubusercontent.com/75806093/133590809-7b3014a3-da57-483b-99ee-cc3bf127e3da.png)

Possiamo utilizzare più di una colonna per raggruppare, fornendo una lista come argomento della groupby.

![image](https://user-images.githubusercontent.com/75806093/133590846-2117aa2e-cf27-433a-a9c7-150c8fbe20c5.png)

Il comportamento di default è che le variabili indicate nella groupby diventino l'indice della Serie o del DataFrame risultante.

![image](https://user-images.githubusercontent.com/75806093/133590913-16b690f1-3e60-4e69-bdb2-c941382b2ae7.png)

Se invece si vuole che siano nuove colonne del DataFrame risultante, bisogna usare l'opzione as_index

![image](https://user-images.githubusercontent.com/75806093/133590949-4ed01bac-e09e-49b4-a5e1-cadb87c18c1e.png)

---

### Unit 3 - Apply e tabelle pivot

Il metodo apply permette di applicare una qualunque funzione a tutte le righe (o, più raramente, le colonne) di un DataFrame o di una Serie. La funzione riceve direttamente una riga del DataFrame.

Una forma più sofisticata permette di applicare una funzione che riceve in input un intero DataFrame.

![image](https://user-images.githubusercontent.com/75806093/133591855-0ad14831-50cb-4f81-952c-1b720ec9aeb8.png)

La soluzione che abbiamo visto in precedenza per creare la categoria tipo ha due difetti: è fragile (perchè il valore soglia 1.3 compare in due istruzioni diverse, quindi è più probabile scrivere un valore sbagliato) e richiede un'istruzione distinta per ogni valore possibile di tipo.

Quindi prima scriviamo una funzione che riceve in input un numero e calcola il valore della categoria.

```python
def categoria(n):               
    soglie = [('a', 1.3), ('b', 1.4), ('c', None)]
    for (categoria, soglia) in soglie:
        if soglia is None or n < soglia:
            return categoria
```

Poi è possibile applicare la funzione a rapporto

```python
incidenti['tipo'] = incidenti['rapporto'].apply(categoria)
incidenti.head(5)
```

Nelle slide precedenti abbiamo visto due diverse tipologie di utilizzo di apply:

    1. incidenti.apply(calcola_p, axis = 1)
    2. incidenti['rapporto'].apply(categoria)

Nel caso 1 diventa essenziale l'opzione axis = 1 che indica a pandas che la funzione deve essere invocata per ogni riga. In questo caso la funzione calcola_p riceve un argomento che è la riga di un DataFrame. Tecnicamente la riga è un dizionario con chiavi corrispondenti alle colonne del DataFrame.

Nel caso 2 invece la apply viene chiamata su una Serie. In questo caso la funzione categoria riceve un singolo valore in input e la parte axis = 1 non è necessaria.

Un terzo caso prevede invece che la funzione riceva un intero DataFrame

Una tabella pivot viene ottenuta a partire da un DataFrame per riassumere i dati di quest'ultimo. In particolare, in una tabella pivot sono presenti tre elementi:

    un insieme di variabili per guidano il raggruppamento di righe
    una variabile (o un insieme di variabili) che etichetta nuove colonne
    una funzione per aggregare i valori.

![image](https://user-images.githubusercontent.com/75806093/133592172-1ac89aa7-4817-44ba-8d0f-700aede789f1.png)

Talvolta la funzione per aggregare i valori non è la somma, ma la media. In questo caso si può omettere l'opzione aggfunc).

```python
pd.pivot_table(incidenti, index = 'Anno', columns = ['Zona_int'], values = 'Incidenti')
```

![image](https://user-images.githubusercontent.com/75806093/133592337-49f41b9b-1d20-4d92-bf22-015606c563c9.png)

I dati presenti in una tabella pivot possono essere calcolati con una groupby, ma la struttura del DataFrame risultante è diversa. Ogni volta bisogna capire se preferiamo la forma ottenuta con la groupby (poche colonne, tante righe) o la tabella pivot (meno righe, più colonne). Di solito la tabella pivot è più semplice da leggere per una persona, ma più complicata da rielaborare con un programma.

Di particolare interesse è capire chi ha realizzato un valore estremo (per valore estremo si intende un minimo o un massimo). Ad esempio vogliamo sapere in quale anno si sono verificati più incidenti.

Il primo passo è calcolare il numero di incidenti per ogni anno.

![image](https://user-images.githubusercontent.com/75806093/133592449-1e59c6f4-4f3c-43d2-9358-3bc6f5d48fa0.png)

Adesso possiamo calcolare il valore massimo della colonna Incidenti e selezionare le righe che hanno tale valore.

![image](https://user-images.githubusercontent.com/75806093/133592503-4b8ba352-e140-459c-9060-e30273caa238.png)

Un'alternativa più rapida è fornita dai metodi 
idxmax
 e 
idxmin
 che restituiscono il valore dell'indice che realizza il valore estremo. Questo valore può essere utilizzato per estrarre la riga che ci interessa.

![image](https://user-images.githubusercontent.com/75806093/133592673-f9e301a9-2a82-4ef8-81b1-98ce90a3edfa.png)

La soluzione con idxmax è più veloce da scrivere e permette di individuare facilmente l'anno che ci interessa.

Talvolta ci interessa capire chi ha realizzato un massimo all'interno di ogni gruppo. In altre parole, vogliamo isolare non una sola riga, ma una riga per ogni gruppo.

![image](https://user-images.githubusercontent.com/75806093/133592861-80235bd1-adbe-4b60-8db5-06ad86f2ed92.png)

![image](https://user-images.githubusercontent.com/75806093/133592896-11f3e23f-f99a-4fe1-87a3-5de413573e94.png)

![image](https://user-images.githubusercontent.com/75806093/133592968-983ed897-ecb9-4a25-8253-cfe707f56fcf.png)

![image](https://user-images.githubusercontent.com/75806093/133593011-9672abe5-3132-4a3a-b59e-0262d3c151a0.png)

---

## Lezione 12. Gestire Dataframe

### Unit 1 - Fondere DataFrame

Una caratteristica fondamentale dei DataFrame ben formati è che corrispondono a tabelle normalizzate. In particolare ogni cella di un DataFrame corrisponde a ad un singolo valore, non a liste, dizionari o DataFrame.

Di conseguenza i nostri dati potrebbero essere suddivisi in più tabelle (o DataFrame) che sono collegabili sfruttando campi comuni.

![image](https://user-images.githubusercontent.com/75806093/133594452-b9dd2f1f-83bb-4a8b-a186-1aaa5c53fbef.png)

![image](https://user-images.githubusercontent.com/75806093/133594504-f528079e-c94a-4b79-8d82-3d0b2b29eb6f.png)

I dati da leggere per la tabella dei bandi sono particolarmente grandi. Per questo motivo dobbiamo utilizzare l'opzione low_memory=False, altrimenti pandas non riuscirà a calcolare correttamente il tipo di dati contenuto in alcune colonne.

![image](https://user-images.githubusercontent.com/75806093/133594557-f3059b57-b0cc-4eea-a7e2-ac07ffcc1c49.png)

Leggiamo adesso la tabelle degli esiti delle gare.

![image](https://user-images.githubusercontent.com/75806093/133594612-6ffcaabe-83fe-463e-907a-a158687bf829.png)

Il campo id_gara permette di incrociare i dati presenti nei tre DataFrame: l'istruzione per questa operazione è la merge.

![image](https://user-images.githubusercontent.com/75806093/133594683-eab65c5d-536a-4a1d-8b1f-b368befd5a2f.png)

Notiamo che bandi e esiti condividono diversi nomi di colonne: dobbiamo vedere quale è l'effetto. Calcoliamo i nomi condivisi da entrambi i DataFrame.

![image](https://user-images.githubusercontent.com/75806093/133594751-7415c466-1a4d-47d6-80c5-436c35242320.png)

Analizziamo i nomi delle colonne del nuovo DataFrame fusione. Siccome sia bandi che esiti hanno una colonna num_tot_lotti, nel DataFrame fusione si trovano le colonne num_tot_lotti_x (che si riferisce a num_tot_lotti di bandi) e num_tot_lotti_y (che si riferisce a num_tot_lotti di esiti).

![image](https://user-images.githubusercontent.com/75806093/133594811-0da6f9eb-ad1f-47a9-9206-05c02549a24a.png)

Ogni riga del DataFrame fusione consiste di una riga di bandi e una riga di esiti. Le righe di fusione corrispondono a tutte le coppie di righe, una di bandi e una di esiti che hanno stesso valore di id_gara. Analizziamo le righe di fusione con id_gara uguale a 70411.

![image](https://user-images.githubusercontent.com/75806093/133594876-30b85903-76d7-4aff-96ee-633895cc5839.png)

In questo caso, sia bandi che esiti hanno una sola riga con id_gara 70411: di conseguenza anche fusione ha una sola riga con tale id_gara

Controlliamo adesso un altro caso: id_gara uguale a 70517. Ancora una volta calcoliamo quante righe di bandi, esiti, e fusione abbiamo con questo valore di id_gara.

![image](https://user-images.githubusercontent.com/75806093/133594952-ac10540e-2449-453f-a6c3-44a2704d7062.png)

Questo è il caso più frequente: il valore è presente in una sola riga di una tabella, ma in più righe della seconda tabella.

Cerchiamo il valore di id_gara che è presente nel numero massimo di righe di bandi. Questo richiede di utilizzare un raggruppamento e una idxmax. Iniziamo con contare, per ogni valore di id_gara, quante righe di bandi hanno tale valore.

![image](https://user-images.githubusercontent.com/75806093/133595024-7af7f2cb-5c57-40ff-8821-5fd4c575b0ca.png)

---

### Unit 2 - Approfondimenti sulla fusione di DataFrame

Siccome il calcolo della fusione è un'operazione che richiede risorse computazionali, pandas cercherà di svolgere l'operazione nel modo più veloce possibile anche se questo porta ad ottenere un ordine delle righe del risultato non intuitivo.

Talvolta vogliamo invece essere sicuri che le righe del risultato compaiano in un ordine specifico: per questo scopo abbiamo a disposizione l'opzione sort che ordina il risultato rispetto alle colonne specificate nella on.

![image](https://user-images.githubusercontent.com/75806093/133595164-56b3b9a2-007e-4d86-9117-96d6a730b7ec.png)

La procedura merge vista in precedenza sfrutta l'opzione on per indicare quali colonne vengono sfruttate per fondere i DataFrame: queste colonne devono avere lo stesso nome in entrambi i DataFrame.

Se vogliamo fondere gare_no e bandi la stessa procedura non funziona, perchè id_gara è l'indice di gare_no, non una colonna. In questo caso dobbiamo utilizzare l'opzione index_left (o index_right).

![image](https://user-images.githubusercontent.com/75806093/133595256-25c5e02f-60a4-447c-8237-b7ef0f82b0c4.png)

Per fondere due DataFrame sfruttando colonne che hanno nomi diversi, bisogna sfruttare le opzioni left_on e right_on per indicare i due nomi di colonne.

![image](https://user-images.githubusercontent.com/75806093/133595335-e490b36e-f1fb-4616-a922-8ce329115f06.png)

Finora abbiamo fuso DataFrame dove ogni riga del primo DataFrame aveva almeno una riga corrispondente nel secondo DataFrame (e viceversa). 

![image](https://user-images.githubusercontent.com/75806093/133595402-fb7ddc84-1f61-4eca-830d-f43206ca3594.png)

La fusione contiene un numero di righe minore rispetto ai DataFrame di partenza. Ciò è dovuto al fatto che molte righe non trovano una corrispondenza nell'altro DataFrame.

Per garantire che tutte le righe di un DataFrame siano presenti nel risultato della fusione, è necessario utilizzare l'opzione how

![image](https://user-images.githubusercontent.com/75806093/133595449-4e73ede7-8d72-46d9-82f9-db2178d9cfb3.png)

In questo caso il valore 'left' assegnato a how garantisce che tutte le righe del primo DataFrame (bid) siano presenti nella fusione.

Dare il valore outer all'opzione how garantisce che le righe di entrambi i DataFrame siano presenti nella soluzione. Confrontiamo il numero di righe presenti nei vari risultati della fusione.

![image](https://user-images.githubusercontent.com/75806093/133595515-f9a67f4b-3edb-4257-ace9-c3253a5967ba.png)

Per identificare facilmente se una riga della fusione contiene dati del primo DataFrame, del secondo DataFrame, o di entrambi, possiamo usare l'opzione indicator, che crea una nuova colonna _merge riportante questa indicazione.

![image](https://user-images.githubusercontent.com/75806093/133595571-f54fa0d5-ea3c-425d-98a5-f96da54a8251.png)

Per verificare se i DataFrame rispettano le corrispondenze attese, è possibile usare l'opzione validate che prende uno dei seguenti valori:

    1:1 controlla se entrambe le colonne usate per la fusione non presentano valori duplicati;
    1:m controlla se la colonna del primo DataFrame usata per la fusione non presenta valori duplicati;
    m:1 controlla se la colonna del secondo DataFrame usata per la fusione non presenta valori duplicati.

![image](https://user-images.githubusercontent.com/75806093/133595658-095dc50a-1984-4dc2-a091-d3ea6120844d.png)

Adesso vogliamo aggiungere una colonna che contiene la percentuale del numero di incidenti in un certo mese rispetto a tutti quelli dell'anno nella zona di riferimento. Questo calcolo richiede più passi.

Tramite un raggruppamento, possiamo calcolare il numero totale di incidenti per ogni anno e zona.

![image](https://user-images.githubusercontent.com/75806093/133595716-12295935-f491-4d56-9026-3c2d3df738b7.png)

![image](https://user-images.githubusercontent.com/75806093/133595760-49eee5f5-8f69-4f21-8ebe-3fd9690f3eac.png)

Adesso fondiamo i DataFrame

![image](https://user-images.githubusercontent.com/75806093/133595805-cfbc645a-35f0-4c01-88e6-1dbb5d31bf7b.png)

Infine possiamo calcolare la percentuale desiderata.

![image](https://user-images.githubusercontent.com/75806093/133595845-bf003e5a-93f8-4d5c-9b50-3a98fa184d70.png)

---

### Unit 3 - Caso di studio

Spesso è necessario fondere più DataFrame per estrarre informazioni dai dati. Vedremo adesso alcuni casi esemplificativi sui dati relativi al sistema universitario.

Calcoliamo, per ogni Ateneo, il rapporto fra il totale delle spese e il numero totali di studenti iscritti. Solo alcune righe di iscritti riportano il numero totale di studenti iscritte, le altre righe non sono interessanti per questa analisi.

Selezioniamo gli studenti iscritti di ogni Ateneo (quindi le righe dove DESCRIZIONE_ISCRIZIONE è uguale a Totale iscritti).

```python
iscritti_ateneo = iscritti[iscritti['DESCRIZIONE_ISCRIZIONE'] == \
     'Totale iscritti']
iscritti_ateneo.head(4)
```

![image](https://user-images.githubusercontent.com/75806093/133609090-ed48f41d-7d57-449f-beab-42cac6d6b484.png)

Una veloce analisi del nuovo DataFrame (ad esempio guardando l'insieme delle colonne) mostra che esistono 4 tipologie di iscritti e che ogni Ateneo è presente in più righe, una per ogni anno.

Per evitare di avere un'analisi influenzata eccessivamente questo ultimo aspetto (ad esempio, l'università Roma - Link Campus University compare in una sola riga):

    costruiamo una nuova colonna iscritti con il totale degli iscritti;
    calcoliamo il numero medio di iscritti per ogni ateneo.

```python
iscritti_ateneo.loc[:, 'iscritti']=iscritti_ateneo['ISCRITTI_LAUREA'] + 
            iscritti_ateneo['ISCRITTI_DOTTORATO'] + 
            iscritti_ateneo['ISCRITTI_SPECIALIZZAZIONE'] + 
            iscritti_ateneo['ISCRITTI_MASTER_PERFEZIONAMENTO']
```

Adesso possiamo calcolare il numero medio di iscritti per ogni Ateneo

```python
iscritti_medio = iscritti_ateneo.groupby('COD_ATENEO', 
    as_index = False).mean()[['COD_ATENEO', 'iscritti']]
iscritti_medio.head(2)
```

![image](https://user-images.githubusercontent.com/75806093/133609287-873151e3-5807-4aa7-b51b-a2e443e64d0d.png)

Passiamo ad analizzare il DataFrame gettito, a partire dalle sue colonne.

```python
gettito.columns

Index(['ANNO_SOLARE', 'COD_Ateneo', 'NOME_ATENEO', 'CODICE_GETTITO',
       'DESCRIZIONE_GETTITO', 'CONSUNTIVO'],
      dtype='object')
```

Per coerenza con quanto fatto per gli iscritti, andiamo a calcolare per ogni Ateneo, il gettito medio (calcolando la media sugli anni solari), in modo da rendere omogenei i dati su Atenei diversi.

Ciò richiede due passaggio:

    per ogni Ateneo e ogni anno, calcolare il gettito totale
    per ogni Ateneo, calcolare il gettito medio. Questo punto richiede che COD_Ateneo sia una variabile, non parte dell'indice, del DataFrame ottenuto al punto precedente.

```python
gettito_totale = gettito.groupby(['COD_Ateneo', 'ANNO_SOLARE'], 
    as_index = False).sum()[['COD_Ateneo', 'ANNO_SOLARE', 'CONSUNTIVO']]
gettito_medio = gettito_totale.groupby('COD_Ateneo', 
    as_index = False).mean()[['COD_Ateneo', 'CONSUNTIVO']]
gettito_medio.head(2)
```

![image](https://user-images.githubusercontent.com/75806093/133609448-caacf5bd-01d1-40cf-b60f-dbaf432502ee.png)

Per calcolare il rapporto desiderato, dobbiamo fondere i DataFrame. Sul risultato possiamo poi aggiungere la nuova colonna.

```python
gettito_fuso = pd.merge(gettito_medio, iscritti_medio, 
    left_on = 'COD_Ateneo', right_on = 'COD_ATENEO')
gettito_fuso.head()
```

![image](https://user-images.githubusercontent.com/75806093/133609532-d82b2af5-cb33-4146-ba6c-448fa809bbe8.png)

Adesso calcoliamo la colonna rapporto.

```python
fuso['rapporto'] = fuso['CONSUNTIVO'] / fuso['iscritti']
fuso.head(4)
```

![image](https://user-images.githubusercontent.com/75806093/133609585-0eac9e44-4a07-44ac-ad71-c71469838bbd.png)

E' sempre opportuno verificare la correttezza di una merge: in questo caso quella che ha prodotto il DataFrame gettito_fuso.

In particolare, bisogna:

    eseguire la merge con how uguale a outer per verificare che non ci siano atenei non presenti in gettito_fuso
    aggiungere l'opzione validate per verificare che non ci siano atenei presenti in più righe.
    controllare che il risultato di questa nuova merge abbia lo stesso numero di righe di gettito_fuso

```python
completo = pd.merge(gettito_medio, iscritti_medio, 
         left_on = 'COD_Ateneo', right_on = 'COD_ATENEO',
         validate = '1:1',
         how = 'outer')
len(gettito_fuso) == len(completo)

True
```

Il DataFrame gettito_fuso ha il rapporto desiderato ma, nei vari passaggi, abbiamo perso traccia dei nomi degli Atenei (abbiamo solo il codice). Diventa necessaria una nuova fusione per reperire questi dati.

Siccome non abbiamo un DataFrame con i soli nomi degli Atenei, dobbiamo crearlo a partire (ad esempio) dal DataFrame iscritti.

```python
atenei = iscritti[['COD_ATENEO', 'NOME_ATENEO']].drop_duplicates()
atenei.head()
```

![image](https://user-images.githubusercontent.com/75806093/133610001-ed9ede81-8d92-4dd6-91af-721e788f88b0.png)

Controlliamo se esistono due righe riferite allo stesso codice di Ateneo.

```python
atenei.groupby('COD_ATENEO').count().max()


NOME_ATENEO    3
dtype: int64
```

Siccome esiste almeno un Ateneo memorizzato con due nomi diversi, dobbiamo ulteriormente modificare atenei per associare un singolo nome ad ogni codice.

Per associare un singolo nome ad ogni codice possiamo usare la funzione first che estrae la prima riga di ogni gruppo.

```python
atenei_puliti = atenei.groupby('COD_ATENEO').first()
atenei_puliti.head()
```

![image](https://user-images.githubusercontent.com/75806093/133610099-4b7bd2dd-d4fc-4ec4-8b02-85f8887ca7a5.png)

Per associare un singolo nome ad ogni codice possiamo usare la funzione first che estrae la prima riga di ogni gruppo.

Finalmente possiamo fondere atenei_puliti con gettito_fuso e tenere solo le colonne interessanti.

```python
risultato = pd.merge(atenei_puliti, fuso, left_index = True, 
      right_on = 'COD_ATENEO')
del(risultato['COD_Ateneo'])
del(risultato['COD_ATENEO'])
risultato.head()
```

![image](https://user-images.githubusercontent.com/75806093/133610157-a7b4a2c8-58c8-4ca9-8a94-a2c2d2b47b43.png)

Per completare lo studio, andiamo ad identificare gli atenei che hanno rapporto massimo e minimo.

```python
risultato.loc[risultato['rapporto'].idxmax()]

NOME_ATENEO    Bra (CN) - Università di Scienze Gastronomiche
CONSUNTIVO                                        3.92188e+06
iscritti                                                301.2
rapporto                                              13020.8
Name: 3, dtype: object
```
```python
risultato.loc[risultato['rapporto'].idxmin()]


NOME_ATENEO    Lucca - Scuola IMT Alti Studi
CONSUNTIVO                                 0
iscritti                               109.2
rapporto                                   0
Name: 38, dtype: object
```
