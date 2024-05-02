import re
# sustituye enteros por "aaa"

pattern = r'\d+' # \d+ significa uno o más dígitos

string = '123 hola mundo cruel etc etc 456'
repl = 'aaa' 

a = re.sub(pattern, repl, string, count=0, flags=0)

print(a)

# Funcion que recibe un token y lo sustituye por su representacion en html con color

def sustituye(objeto):
    return '<font color="red">' + objeto.group(0) + '</font>'

b = re.sub(pattern, sustituye, string)

print(b)

# escribe el resultado en un archivo html

f2 = open('resultadoRojo.html', 'w')
f2.write(b)
f2.close()