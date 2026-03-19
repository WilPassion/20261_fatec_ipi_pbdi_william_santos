import calculadora

def menu():
    while True:
        print("\n1. Somar")
        print("2. Subtrair")
        print("3. Multiplicar")
        print("4. Dividir")
        print("0. Sair")

        opcao = input("Escolha: ")

        if opcao == "0":
            break

        if opcao == "1":
            a = float(input("Digite o primeiro número: "))
            b = float(input("Digite o segundo número: "))
            print(calculadora.somar(a, b))

        if opcao == "2":
            a = float(input("Digite o primeiro número: "))
            b = float(input("Digite o segundo número: "))
            print(calculadora.subtrair(a, b))

        if opcao == "3":
            a = float(input("Digite o primeiro número: "))
            b = float(input("Digite o segundo número: "))
            print(calculadora.multiplicar(a, b))

        if opcao == "4":
            a = float(input("Digite o primeiro número: "))
            b = float(input("Digite o segundo número: "))
            print(calculadora.dividir(a, b))

menu()