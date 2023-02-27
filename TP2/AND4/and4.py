import sys, os

def go_up(n, path):
    return path if n == 0 else go_up(n-1, os.path.dirname(path))

DIR = go_up(3, os.path.abspath(__file__))
sys.path.append(DIR)

from logics import *
from test import Test

"""
And4
====
|  a   |  b   |  out |
| 0000 | 0000 | ???? |
| 0000 | 1111 | ???? |
| 1111 | 1111 | ???? |
| 1010 | 0101 | ???? |
| 0011 | 0000 | ???? |
| 0001 | 1001 | ???? |
"""
def And4(A: ZeroOne, B: ZeroOne, C: ZeroOne, D: ZeroOne):
    return AND(A), AND(B), AND(C), AND(D)
