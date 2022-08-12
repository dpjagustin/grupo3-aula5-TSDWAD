#1
Dueno = [28957346,"Juan", "Perez", 4789689, "Belgrano 101" ]
if Dueno[0] > 26000000 :
    print(Dueno[3]) 

#2
Dueno2 = [23546987, "Maria", "Perez", 4789689,  "Pueyrredon  811"]
for i in range (len(Dueno2)):
    if i != 0 and i != 2:   
        print(Dueno2[i])
    
#3 
Perro = [13,  "Puppy",  12/12/2012 , "Macho", 123]
Perro[2] = 13/12/2022
Perro[3] =  28957346

#4
Perro2= [14,  "Fido",  "12/12/2012" , "Macho", 23546987]
Perro2.reverse()
for item in Perro2  :
    print(item)

#5
Historial = (2350, 5960, 23000, 1000, 8900)
montoGastadoPuppy=0
for item in Historial:
    montoGastadoPuppy += item
if montoGastadoPuppy < 30000:
    print(montoGastadoPuppy)
else :
    print("Gastos por encima del presupuestado")

#6
Historial2= ( 23500, 5960, 2300, 10200, 8900)
montoGastadoFrida=0
cantidadGastosAltos=0
for item in Historial2:
    montoGastadoFrida += item
    if item > 5000:
        cantidadGastosAltos +=1
print(montoGastadoFrida)
print(cantidadGastosAltos)


#7
import statistics
Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)
montoGastadoLennon=0
promedioGastoLennon= (statistics.mean(Historial3))
print(promedioGastoLennon)
if promedioGastoLennon >4500 :
    print("Se ha excedido del gasto promedio para su mascota")


#8
Historial4 = (7510, 7960, 76180, 800, 4100)
menorGastoOlivia = min (Historial4)
print(menorGastoOlivia)    


#9
Historial5 = ( 8520, 9510, 7530, 3570, 1590)
mayorGastoToto = max(Historial5)
print(mayorGastoToto)

#10

Clientes = [ "Juan",  "Mario",  "Ariel",  "Josefina",  "Marianella"]
Clientes.sort()
print(Clientes)






