'''Datos del dueño de un perro
(DNI, nombre, apellido, teléfono y dirección)'''

#01
Dueno = [28957346, "Juan", "Perez", 4789689, "Belgrano 101"]
# Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000
if Dueno[0] > 26000000 : print(Dueno[3]) 

#02
Dueno2 = [23546987, "Maria", "Perez", 4789689,  "Pueyrredon  811"]
# Recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido
for i in range(len(Dueno2)):
    if i != 0 and i != 2 :
        print(Dueno2[i])

'''Datos de un perro de nuestra base de datos
(Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño)'''

#03
Perro = [13, "Puppy", "12/12/2012", "Macho", 123]
# Modificar la fecha de nacimiento por 13/12/2012
Perro[2] = "13/12/2022"
# Reemplazar “dni del dueño” por 28957346
Perro[3] = 28957346

#04
Perro2= [14, "Fido", "12/12/2012", "Macho", 23546987]
Perro2.reverse()
# Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero
for item in Perro2 :
    print(item)

'''Montos de atención en pesos por diferentes
servicios/consultas de la mascota “Puppy”'''

#05
Historial = (2350, 5960, 23000, 1000, 8900)
# Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”
montoGastadoPuppy = 0
for item in Historial:
    montoGastadoPuppy += item
# Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”
if montoGastadoPuppy < 30_000:
    print(montoGastadoPuppy)
else:
    print("Gastos por encima del presupuestado")

'''Montos de atención en pesos por diferentes
servicios/consultas de la mascota “Frida”'''

#06
Historial2 = (23500, 5960, 2300, 10200, 8900)
# Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”
montoGastadoFrida = cantidadGastosAltos = 0
def GastosAltos(item):
    if item > 5000:
        return 1
    else: return 0
# Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla
for item in Historial2:
    montoGastadoFrida += item
    cantidadGastosAltos += GastosAltos(item)
else:
    print(montoGastadoFrida)
    print(cantidadGastosAltos)

'''Montos de atención en pesos por diferentes
servicios/consultas de la mascota “Lennon”'''

#07
Historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426)
# Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla
montoGastadoLennon = 0
for item in Historial3:
    montoGastadoLennon += item
else:
    promedioGastoLennon = montoGastadoLennon / len(Historial3)
print(promedioGastoLennon)
# Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”
if promedioGastoLennon > 4500 :
    print("Se ha excedido del gasto promedio para su mascota")

'''Montos de atención en pesos por diferentes
servicios/consultas de la mascota “Olivia”'''

#08
Historial4 = (7510, 7960, 76180, 800, 4100)
# Crea una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla
def menorGastoOlivia(Historial4):
    ValorMinimo=Historial4[0]
    for i in range(1,len(Historial4)):
        if Historial4[i] < ValorMinimo: ValorMinimo=Historial4[i]
    return ValorMinimo
print(menorGastoOlivia(Historial4))

'''Montos de atención en pesos por diferentes
servicios/consultas de la mascota “Toto”'''

#09
Historial5 = (8520, 9510, 7530, 3570, 1590)
# Crear una función para determinar el valor máximo de atención gastada en “Toto”
def mayorGastoToto(Historial5):
    ValorMaximo=Historial5[0]
    for i in range(1,len(Historial5)):
        if Historial5[i] > ValorMaximo: ValorMaximo=Historial5[i]
    return ValorMaximo
print(mayorGastoToto(Historial5))

#10
Clientes = ["Juan", "Mario", "Ariel", "Josefina", "Marianella"]
# Ordenarla alfabéticamente y mostrarla por pantalla
Clientes.sort()
print(Clientes)