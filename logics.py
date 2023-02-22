"""
LOGIC GATES
===========
A collection of logic gates and combinational circuits.
"""

def AND(*args):
    """
    AND gate
    ========
    ### Example
    >>> AND(0, 0) == 0
    >>> AND(0, 1) == 0
    >>> AND(1, 0) == 0
    >>> AND(1, 1) == 1
    """
    if all(args):
        return 1
    return 0

def OR(*args):
    """
    OR gate
    =======
    ### Example
    >>> OR(0, 0) == 0
    >>> OR(0, 1) == 1
    >>> OR(1, 0) == 1
    >>> OR(1, 1) == 1
    """
    if any(args):
        return 1
    return 0

def NOT(arg):
    """
    NOT gate
    ========
    ### Example
    >>> NOT(0) == 1
    >>> NOT(1) == 0
    """
    if arg:
        return 0
    return 1

def NAND(*args):
    """
    NAND gate
    =========
    ### Example
    >>> NAND(0, 0) == 1
    >>> NAND(0, 1) == 1
    >>> NAND(1, 0) == 1
    >>> NAND(1, 1) == 0
    """
    return NOT(AND(*args))

def NOR(*args):
    """
    NOR gate
    ========
    ### Example
    >>> NOR(0, 0) == 1
    >>> NOR(0, 1) == 0
    >>> NOR(1, 0) == 0
    >>> NOR(1, 1) == 0
    """
    return NOT(OR(*args))

def XOR(*args):
    """
    XOR gate
    ========
    ### Example
    >>> XOR(0, 0) == 0
    >>> XOR(0, 1) == 1
    >>> XOR(1, 0) == 1
    >>> XOR(1, 1) == 0
    """
    if sum(args) == 1:
        return 1
    return 0

def MUX(a, b, sel):
    """
    Multiplexer
    ===========
    ### Example
    >>> MUX(0, 0, 0) == 0
    >>> MUX(0, 0, 1) == 0
    >>> MUX(0, 1, 0) == 0
    >>> MUX(0, 1, 1) == 1
    >>> MUX(1, 0, 0) == 1
    >>> MUX(1, 0, 1) == 0
    >>> MUX(1, 1, 0) == 1
    >>> MUX(1, 1, 1) == 1
    """
    return OR(AND(a, NOT(sel)), AND(b, sel))

def DMUX(a, sel):
    """
    Demultiplexer
    =============
    ### Example
    >>> DMUX(0, 0) == (0, 0)
    >>> DMUX(0, 1) == (0, 0)
    >>> DMUX(1, 0) == (1, 0)
    >>> DMUX(1, 1) == (0, 1)
    """
    return AND(a, NOT(sel)), AND(a, sel)

if __name__ == "__main__":
    a = [0, 0, 1, 1]
    b = [0, 1, 0, 1]

    print("With XOR:")
    for A, B in zip(a, b):
        print(f"mux({A},{B},1) = {MUX(A,B,1)}")
        print(f"mux({A},{B},0) = {MUX(A,B,0)}")

    print("With NOT and NAND:")
    for A, B in zip(a, b):
        print(f"NOT(NAND({A}, {B})) = {OR(AND(NOT(A), B), AND(NOT(B), A))}")
