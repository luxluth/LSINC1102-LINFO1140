import sys, os

def go_up(n, path):
    return path if n == 0 else go_up(n-1, os.path.dirname(path))

DIR = go_up(5, os.path.abspath(__file__))
sys.path.append(DIR)

from logics import *
from test import Test

"""
/*
|   a   |   b   |   c   |  out  |
|   0   |   0   |   0   |   0   |
|   0   |   0   |   1   |   0   |
|   0   |   1   |   0   |   1   | !AB!C
|   0   |   1   |   1   |   1   | !ABC
|   1   |   0   |   0   |   1   | A!B!C
|   1   |   0   |   1   |   1   | A!BC
|   1   |   1   |   0   |   1   | AB!C
|   1   |   1   |   1   |   1   | ABC

FN = !AB!C + !ABC + A!B!C + A!BC + AB!C + ABC
   = !A!B!C + AB + AC + A!C
*/
"""
def circuit(A: ZeroOne, B: ZeroOne, C: ZeroOne):
    notA = NOT(A)
    notB = NOT(B)
    notC = NOT(C)

    argOne = AND(notA, AND(notB, notC))
    argTwo = AND(A, B)
    argThree = AND(A, C)
    argFour = AND(notA, notC)

    return OR(argOne, OR(argTwo, OR(argThree, argFour)))

if __name__ == "__main__":
    excepted = [0, 0, 1, 1, 1, 1, 1, 1]

    t = Test(circuit, excepted, 3)
    t.test()
