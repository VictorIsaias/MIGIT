
print("Calculador de una sola variable")
print("-------------------------------------------------")
print("(1) Suma"), print("(2) Resta"),print("(3) Multiplicacion"), print("(4) Division"), print("(5) Division entera")
print("(6) Modulacion"), print("(7) Exponente")
print("-------------------------------------------------")
print("Elige una opcion")

num = 0

num = int(input())
if num == 1:
    num = float(input(""))
    num += float(input(str(num) + " + "))
    print("Resultado = " + str(num))
elif num == 2:
    num = float(input(""))
    num -= float(input(str(num) + " - "))
    print("Resultado = " + str(num))
elif num == 3:
    num = float(input(""))
    num *= float(input(str(num) + " * "))
    print("Resultado = " + str(num))
elif num == 4:
    num = float(input(""))
    num /= float(input(str(num) + " / "))
    print("Resultado = " + str(num))
elif num == 5:
    num = float(input(""))
    num //= float(input(str(num) + " // "))
    print("Resultado = " + str(num))
elif num == 6:
    num = float(input(""))
    num %= float(input(str(num) + " % "))
    print("Resultado = " + str(num))
elif num == 7:
    num = float(input(""))
    num **= float(input(str(num) + " ** "))
    print("Resultado = " + str(num))
else:
    print("Ingresa un valor valido")
