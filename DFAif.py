# programa para implementar un reconocedor usando if
# para el lenguaje L = {a^nb^m$ | n,m >= 0}

def reconoce(w):
    estado = 0
    for c in w:
        if estado == 0:
            if c == 'a':
                estado = 0
            elif c == 'b':
                estado = 1
            else:
                return False
        elif estado == 1:
            if c == 'a':
                estado = 0
            elif c == 'b':
                estado = 2
            else: 
                return False
        elif estado == 2:
            if c == '$':
                return True
            else:
                if c == 'a':
                    estado = 2
                elif c == 'b':
                    estado = 2
                else:
                    return False

print (reconoce("bb$"))
