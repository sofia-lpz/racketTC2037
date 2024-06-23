def lexerAritmetico(archivo):
    with open(archivo, 'r') as file:
        tokens = []
        for line in file:
            for token in line.split():
                if token in ['+', '-', '*', '/']:
                    tokens.append(('OPERADOR', token))
                elif token.isdigit():
                    tokens.append(('NUMERO', token))
                else:
                    tokens.append(('ERROR', token))
        return tokens