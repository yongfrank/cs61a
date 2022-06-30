from itertools import tee
from urllib.request import urlopen

shakspeare = urlopen('http://composingprograms.com/shakespeare.txt')
words = set(shakspeare.read().decode().split())

shakes = open('/Users/yongfrank/Developer/cs61a/week1/shakespeare.txt')
text = shakes.read().split()
print(text[:25])

print(text.count(','))
print({w for w in words if w == w[::-1] and len(w) > 4})
print({w for w in words if w[::-1] in words and len(w) > 6})