import sys, os

def go_up(n, path):
    return path if n == 0 else go_up(n-1, os.path.dirname(path))

DIR = go_up(5, os.path.abspath(__file__))
sys.path.append(DIR)

from logics import *

def circuit(A: ZeroOne, B: ZeroOne, C: ZeroOne):
    notA = NOT(A)
    notB = NOT(B)
    notC = NOT(C)

    notAB = AND(notA, notB)
    notAC = AND(notA, notC)
    notBC = AND(notB, notC)

    or1 = OR(notAB, notAC)
    or2 = OR(notBC, C)

    return OR(or1, or2)


if __name__ == "__main__":
    excepted = [0, 0, 1, 1, 1, 1, 1, 1]

    t = Test(circuit, excepted, 3)
    t.test()
