import sys, os

def go_up(n, path):
    return path if n == 0 else go_up(n-1, os.path.dirname(path))

DIR = go_up(5, os.path.abspath(__file__))
sys.path.append(DIR)

from logics import *
from test import Test

"""
/*
|   a   |   b   |   c   |  out  |  out2 |
|   0   |   0   |   0   |   0   |   1   | !A!B!C
|   0   |   0   |   1   |   0   |   0   |
|   0   |   1   |   0   |   1   |   1   | !AB!C
|   0   |   1   |   1   |   1   |   0   |
|   1   |   0   |   0   |   1   |   1   | A!B!C
|   1   |   0   |   1   |   1   |   0   |
|   1   |   1   |   0   |   1   |   1   | AB!C
|   1   |   1   |   1   |   1   |   0   |

FN1 = A!B!C + !ABC
FN2 = A!B!C + !AB!C + !A!B!C + AB!C
*/
"""
def circuit(A: ZeroOne, B: ZeroOne, C: ZeroOne):
    """"""
    return (NOT(OR(AND(NOT(A), AND(NOT(B), NOT(C))), AND(NOT(A), AND(NOT(B), C)))),
        OR(OR(AND(A,AND(NOT(B), NOT(C))),AND(NOT(A),AND(B, NOT(C)))),OR(AND(NOT(A),AND(NOT(B), NOT(C))),AND(A,AND(B, NOT(C))))))



if __name__ == "__main__":
    excepted = [
        (0, 1),
        (0, 0),
        (1, 1),
        (1, 0),
        (1, 1),
        (1, 0),
        (1, 1),
        (1, 0)
    ]

    t = Test(circuit, excepted, 3)
    t.test()
