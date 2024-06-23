#Sofia Moreno 
#A01028251

states = {
    'START': 0,
    'REAL': 1,
    'ENTERO': 2,
    'VARIABLE': 3
    
}


def lexerAritmetico(archivo):
    with open(archivo, 'r') as f:
        lines = f.readlines()

    for line in lines:
        pos = 0
        token = ''
        while pos < len(line):
            if line[pos].isdigit() or (token and line[pos] in 'eE'):
                while pos < len(line) and (line[pos].isdigit() or line[pos] == '.' or 
                                           ((line[pos] in '+-' and token[-1] in 'eE') or 
                                            (line[pos] in 'eE' and token and token[-1].isdigit()))):
                    token += line[pos]
                    pos += 1
                if '.' in token or 'e' in token or 'E' in token:
                    print(token, 'REAL')
                else:
                    print(token, 'ENTERO')
                token = ''
            elif line[pos].isalpha() or line[pos] == '_':
                while pos < len(line) and (line[pos].isalnum() or line[pos] == '_'):
                    token += line[pos]
                    pos += 1
                print(token, 'VARIABLE')
                token = ''
            elif line[pos] == '+':
                print('+', 'SUMA')
                pos += 1
            elif line[pos] == '-':
                print('-', 'RESTA')
                pos += 1
            elif line[pos] == '*':
                print('*', 'MULT')
                pos += 1
            elif line[pos] == '/':
                if pos + 1 < len(line) and line[pos + 1] == '/':
                    print(line[pos:].strip(), 'COMENTARIO')
                    break
                else:
                    print('/', 'DIVISION')
                    pos += 1
            elif line[pos] == '^':
                print('^', 'POTENCIA')
                pos += 1
            elif line[pos] == '(':
                print('(', 'PAR ABEIRTO')
                pos += 1
            elif line[pos] == ')':
                print(')', 'PAR CERRADO')
                pos += 1
            elif line[pos] == '=':
                print('=', 'ASIGNACION')
                pos += 1
            else:
                pos += 1

lexerAritmetico("expresiones.txt")