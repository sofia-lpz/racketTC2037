import re
# sustituye enteros por "aaa"

pattern = r'\d+' # \d+ significa uno o más dígitos

string = '123 hola mundo cruel etc etc 456'
repl = 'aaa' 

result = re.sub(pattern, repl, string, count=0, flags=0)

print(result)