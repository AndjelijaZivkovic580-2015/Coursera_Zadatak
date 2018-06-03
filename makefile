all: README.md

 
README.md: guessinggame.sh
	echo "Operativni sistemi" > README.md
	echo "\n guessinggame.sh" >> README.md
	echo -n "\n Datum kreiranja: " >> README.md
	date >> README.md
	echo -n "\n Broj linija koda: " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
rm README.md