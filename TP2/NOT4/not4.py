import sys, os

def go_up(n, path):
    return path if n == 0 else go_up(n-1, os.path.dirname(path))

DIR = go_up(3, os.path.abspath(__file__))
sys.path.append(DIR)

from logics import *
from test import Test

"""
Not4
====
|  in  | out  |
| 0000 | ???? |
| 1111 | ???? |
| 1010 | ???? |
| 0011 | ???? |
| 0001 | ???? |
"""
def not4(A: ZeroOne, B: ZeroOne, C: ZeroOne, D: ZeroOne):
    return NOT(A), NOT(B), NOT(C), NOT(D)


if __name__ == "__main__":
    excepted = [
        (1, 1, 1, 1),
        (1, 1, 1, 0),
        (1, 1, 0, 1),
        (1, 1, 0, 0),
        (1, 0, 1, 1),
        (1, 0, 1, 0),
        (1, 0, 0, 1),
        (1, 0, 0, 0),
        (0, 1, 1, 1),
        (0, 1, 1, 0),
        (0, 1, 0, 1),
        (0, 1, 0, 0),
        (0, 0, 1, 1),
        (0, 0, 1, 0),
        (0, 0, 0, 1),
        (0, 0, 0, 0),
    ]

    t = Test(not4, excepted, 4)
    t.test()
