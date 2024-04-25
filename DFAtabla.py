tabla = [[0,1], [0,2], [2,2]]
dict = {'a':0, 'b':1}

def reconoce(w):
    estado = 0 
    for c in w:
        if c in 'ab$':
            if c == '$':
                if estado == 2:
                    return True
                else:
                    return False
            estado = tabla[estado][dict[c]]
        else:
            return False

