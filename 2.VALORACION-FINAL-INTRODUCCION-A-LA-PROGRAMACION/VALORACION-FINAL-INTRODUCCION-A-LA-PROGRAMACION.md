### 1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:

    28957346,  Juan,  Perez, 4789689,  Belgrano 101

  Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección). Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.

  ```py
Dueno = [28957346,"Juan", "Perez", 4789689, "Belgrano 101" ]

if Dueno[0] > 26000000 :
    print(Dueno[3]) 


  ```

### 2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:

           23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”

 que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección) 


 ```py
Dueno2 = [23546987, "Maria", "Perez", 4789689,  "Pueyrredon  811"]

for i in range (len(Dueno2)):
    if i != 0 and i != 2:   
        print(Dueno2[i])
```

### 3)  Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

  13,  Puppy,  12/12/2012 , Macho, 123

Que se corresponde con los datos de un perro de nuestra base de datos (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño). Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .


```py
Perro = [13,  "Puppy",  12/12/2012 , "Macho", 123]
Perro[2] = 13/12/2022
Perro[3] =  28957346

```

### 4)      Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:

      14,  Fido,  12/12/2012 , Macho, 23546987

Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.


```py
Perro2= [14,  "Fido",  "12/12/2012" , "Macho", 23546987]
Perro2.reverse()

for item in Perro2  :
    print(item)


```

### 5)      Crear una tupla en Python con el nombre de “Historial” la cual contenga los siguientes valores:

          2350, 5960, 23000, 1000, 8900

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”. Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”. Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”.


```py
Historial = (2350, 5960, 23000, 1000, 8900)
montoGastadoPuppy=0
for item in Historial:
    montoGastadoPuppy += item
if montoGastadoPuppy < 30000:
    print(montoGastadoPuppy)
else :
    print("Gastos por encima del presupuestado")
```
### 6)       Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores:

          23500, 5960, 2300, 10200, 8900

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”. Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”. Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla.


```py
Historial2= ( 23500, 5960, 2300, 10200, 8900)
montoGastadoFrida=0
cantidadGastosAltos=0
for item in Historial2:
    montoGastadoFrida += item
    if item > 5000:
        cantidadGastosAltos +=1


print(montoGastadoFrida)
print(cantidadGastosAltos)
```

### 7)  Crear una tupla en Python con el nombre de “Historial3” la cual contenga los siguientes valores:

          9530, 4120, 4580, 1500, 890,7516,426

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Lennon”. Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla. Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”.

```py
import statistics
Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)
montoGastadoLennon=0
promedioGastoLennon= (statistics.mean(Historial3))
print(promedioGastoLennon)
if promedioGastoLennon >4500 :
    print("Se ha excedido del gasto promedio para su mascota")
```

### 8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:

          7510, 7960, 76180, 800, 4100

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.

```py
Historial4 = (7510, 7960, 76180, 800, 4100)
menorGastoOlivia = min (Historial4)
print(menorGastoOlivia)  
```

### 9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:

          8520, 9510, 7530, 3570, 1590

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. Crear una función para determinar el valor máximo de atención gastada en “Toto”.

```py
Historial5 = ( 8520, 9510, 7530, 3570, 1590)
mayorGastoToto = max(Historial5)
print(mayorGastoToto)
```

### 10) Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros.

          Juan,  Mario,  Ariel,  Josefina,  Marianella.

Ordenarla alfabéticamente y mostrarla por pantalla.

```
Clientes = [ "Juan",  "Mario",  "Ariel",  "Josefina",  "Marianella"]
Clientes.sort()

print(Clientes)

```
      
  


