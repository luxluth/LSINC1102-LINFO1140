"""
LOGIC GATES
===========
A collection of logic gates and combinational circuits.
"""


from typing import Literal, Tuple
from colors import Colors as C

ZeroOne = Literal[0, 1]
ZeroOneTuple = Tuple[ZeroOne, ZeroOne]

def AND(*args: ZeroOneTuple):
    """
    AND gate
    ========
    ### Example
    >>> AND(0, 0)
    0
    >>> AND(0, 1)
    0
    >>> AND(1, 0)
    0
    >>> AND(1, 1)
    1
    """
    if all(args):
        return 1
    return 0

def OR(*args: ZeroOneTuple):
    """
    OR gate
    =======
    ### Example
    >>> OR(0, 0)
    0
    >>> OR(0, 1)
    1
    >>> OR(1, 0)
    1
    >>> OR(1, 1)
    1
    """
    if any(args):
        return 1
    return 0

def NOT(arg: ZeroOne):
    """
    NOT gate
    ========
    ### Example
    >>> NOT(0)
    1
    >>> NOT(1)
    0
    """
    if arg:
        return 0
    return 1

def NAND(*args: ZeroOneTuple):
    """
    NAND gate
    =========
    ### Example
    >>> NAND(0, 0)
    1
    >>> NAND(0, 1)
    1
    >>> NAND(1, 0)
    1
    >>> NAND(1, 1)
    0
    """
    return NOT(AND(*args))

def NOR(*args: ZeroOneTuple):
    """
    NOR gate
    ========
    ### Example
    >>> NOR(0, 0)
    1
    >>> NOR(0, 1)
    0
    >>> NOR(1, 0)
    0
    >>> NOR(1, 1)
    0
    """
    return NOT(OR(*args))

def XOR(*args: ZeroOneTuple):
    """
    XOR gate
    ========
    ### Example
    >>> XOR(0, 0)
    0
    >>> XOR(0, 1)
    1
    >>> XOR(1, 0)
    1
    >>> XOR(1, 1)
    0
    """
    if sum(args) == 1:
        return 1
    return 0

def MUX(a: ZeroOne, b: ZeroOne, sel: ZeroOne):
    """
    Multiplexer
    ===========
    ### Example
    >>> MUX(0, 0, 0)
    0
    >>> MUX(0, 0, 1)
    0
    >>> MUX(0, 1, 0)
    0
    >>> MUX(0, 1, 1)
    1
    >>> MUX(1, 0, 0)
    1
    >>> MUX(1, 0, 1)
    0
    >>> MUX(1, 1, 0)
    1
    >>> MUX(1, 1, 1)
    1
    """
    return OR(AND(a, NOT(sel)), AND(b, sel))

def DMUX(a: ZeroOne, sel: ZeroOne):
    """
    Demultiplexer
    =============
    ### Example
    >>> DMUX(0, 0)
    (0, 0)
    >>> DMUX(0, 1)
    (0, 0)
    >>> DMUX(1, 0)
    (1, 0)
    >>> DMUX(1, 1)
    (0, 1)
    """
    return AND(a, NOT(sel)), AND(a, sel)

class Test:
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
        print("┌"+"─"*38+"┐")
        print(f"│ Testing {C.BOLD}{self.func.__name__:<29}{C.END}│")
        print("├"+"─"*38+"┤")
        for i, inp in enumerate(self.inputs):
            if self.func(*inp) != self.expected[i]:
                print(f"│{C.RED}{C.BOLD}FAILED{C.END}  {inp} -> {self.func(*inp)} != {self.expected[i]:<12}│")
                failed += 1
            else:
                print(f"│{C.GREEN}{C.BOLD}PASSED{C.END}  {inp} -> {self.func(*inp):<17}│")
        print("├"+"─"*38+"┤")
        if failed == 0:
            print(f"│{C.GREEN}{C.BOLD}All test cases passed{C.END:<21}│")
            print("└" + "─"*38 + "┘")
            return True
        else:
            print(f"│{C.BOLD}{C.RED}{failed} test cases failed{C.END:<23}│")
            print("└" + "─"*38 + "┘")
            return False

    def __repr__(self):
        return f"Test({self.func.__name__}, {self.expected}, {self.number_of_inputs})"

    def __str__(self):
        inputs = "\n".join([str(i) for i in self.inputs])
        return f"Test({self.func.__name__}, {self.expected}, {self.number_of_inputs})\nInputs:\n{inputs}"

if __name__ == "__main__":
    import sys
    if sys.argv[-1] == "test":
        import doctest
        doctest.testmod()
    else:
        a = [0, 0, 1, 1]
        b = [0, 1, 0, 1]

        print("With XOR:")
        for A, B in zip(a, b):
            print(f"mux({A},{B},1) = {MUX(A,B,1)}")
            print(f"mux({A},{B},0) = {MUX(A,B,0)}")

        print("With NOT and NAND:")
        for A, B in zip(a, b):
            print(f"OR(AND(NOT({A}), {B}), AND(NOT({B}), {A})) = {OR(AND(NOT(A), B), AND(NOT(B), A))}")
