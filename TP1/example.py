import sys
sys.path.append('..')

from logics import *

a = [0, 0, 0, 0, 1, 1, 1, 1]
b = [0, 0, 1, 1, 0, 0, 1, 1]
c = [0, 1, 0, 1, 0, 1, 0, 1]

for A, B, C in zip(a, b, c):
    print(f"AND(NOT({C}),OR(NOT((AND({A},{B}))),AND({A},{C}))) = {AND(NOT(C),OR(NOT(AND(A,B)),AND(A,C)))}")

print()
print("Simplified using NAND:")
for A, B, C in zip(a, b, c):
    print(f"AND(NOT({C}),OR(NAND({A},{B}),AND({A},{C}))) = {AND(NOT(C),OR(NAND(A,B),AND(A,C)))}")
