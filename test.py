"""
test.py
=======

Test boolean functions.
"""
import sys

from colors import Colors as C
from logics import ZeroOne
from utils import print_bottom_line, print_middle_line, print_top_line, lprint
from lang import Dictionary as D

l = D()
class Test:
    """
    Test
    ====
    A simple class to test boolean functions.

    args:
    -----
    #### `func`
        function - The function to test.
    #### `expected`
        `list[ZeroOne]` - The expected output of the function.
    #### `number_of_inputs`
        `int` - The number of inputs of the function. Default: 2.
    """
    def __init__(self, func, expected: list[ZeroOne], number_of_inputs: int=2):
        self.func = func
        self.expected = expected
        self.number_of_inputs = number_of_inputs
        self.inputs = None
        self.genarate_inputs()

    def genarate_inputs(self):
        self.inputs = []
        for i in range(2**self.number_of_inputs):
            self.inputs.append([int(j) for j in bin(i)[2:].zfill(self.number_of_inputs)])

    def test(self):
        failed = 0
        tests = len(self.inputs)
        print_top_line()
        title = l.get("T_TITLE")
        ps = l.get("T_PASS")
        fl = l.get("T_FAIL")
        end_ps = l.get("T_END_PASS")
        end_fl = l.get("T_END_FAIL")
        lprint(f"{title} {C.BOLD}{self.func.__name__}(){C.END}", -1)
        print_middle_line()
        for i, inp in enumerate(self.inputs):
            if self.func(*inp) != self.expected[i]:
                lprint(f"{C.RED}{C.BOLD}{fl.upper()}{C.END}  {inp} -> {self.func(*inp)} != {self.expected[i]}", -1)
                failed += 1
            else:
                lprint(f"{C.GREEN}{C.BOLD}{ps.upper()}{C.END}  {inp} -> {self.func(*inp)}", -1)
        print_middle_line()
        if failed == 0:
            lprint(f"{C.GREEN}{C.BOLD}({tests}/{tests}){C.END} {end_ps}", -1)
            print_bottom_line()
            sys.exit(0)
        else:
            lprint(f"{C.RED}({C.BOLD}{failed}/{tests}){C.END} {end_fl}", -1)
            print_bottom_line()
            sys.exit(1)

    def __repr__(self):
        return f"Test({self.func.__name__}, {self.expected}, {self.number_of_inputs})"

    def __str__(self):
        inputs = "\n".join([str(i) for i in self.inputs])
        return f"Test({self.func.__name__}, {self.expected}, {self.number_of_inputs})\nInputs:\n{inputs}"
