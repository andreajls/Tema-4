# PAC·: Automatització amb make.
### **Compilant un Hola Món.**

En primer lloc, he creat una carpeta anomedana Tema 4 on putjare tots els meus treballs.

Per a fer la pràctica d'Hola Món he creat un fitxer anomenat "hola.c" i he inclos les intruccions al programa.

Primer s'ha de executar el comandament:

~~~
- gcc hola.c -o hola
~~~

per a que ens cree el fitxer executacle acabat en .o. Després, per a compilar-lo, executem el comandament:

~~~
- gcc -Wall -g hola.c -o hola
~~~

Per a evitar aquests pasos i compilar amb make hem de seguir uns sencills pasos.

Primer hem de crear un fitxer anomenat **Makefile** i he afegit:

> hola: hola.c hola.o
	gcc -Wall -g hola.c hola.o -o hola

> .PHONY: clean
clean:
	rm -rf *.o

amb açò al executar "make hola" et crea directament l'executable .o.

### **Compilant Calcula.**

Per a fer la pràctica de calcula, he creat un fitxer anomenat "calcula.c" i he inclos les intruccions al programa.

En aquesta pràctica utilitzarem una llibrería creada per nosaltres amb l'extensió .h on s'incloura les definicions de les funcions que anem a utilitzar.

També hem de crear un altre fitxer anomenat calc.c. Aquest és un fitxer d'implementació i és el que realitza l'implementació de les funcions.

Per a compilar-lo de forma manual com hem fet avanç hem de executar els mateix comandos:

~~~
-gcc -c calc.c -o calc.o
-gcc calc.o calcula.c -o calcula
~~~

La segona opció és compilar amb make. Per a fer això, primer crearem el fitxer **Makefile** i li introduirem totes les accions que volem que s'executen.

Finalment, executem **make calcula** i vorem com es crea l'executable automàticament.