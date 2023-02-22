"""
LOGIC GATES
"""

def AND(*args):
    """
    AND gate
    """
    if all(args):
        return 1
    return 0

def OR(*args):
    """
    OR gate
    """
    if any(args):
        return 1
    return 0

def NOT(arg):
    """
    NOT gate
    """
    if arg:
        return 0
    return 1

def NAND(*args):
    """
    NAND gate
    """
    return NOT(AND(*args))

def NOR(*args):
    """
    NOR gate
    """
    return NOT(OR(*args))

def XOR(*args):
    """
    XOR gate
    """
    if sum(args) == 1:
        return 1
    return 0

def mux(a, b, sel):
    """
    Multiplexer
    """
    return OR(AND(a, NOT(sel)), AND(b, sel))


if __name__ == "__main__":
    """
    a = [0, 0, 0, 0, 1, 1, 1, 1]
    b = [0, 0, 1, 1, 0, 0, 1, 1]
    c = [0, 1, 0, 1, 0, 1, 0, 1]

    for A, B, C in zip(a, b, c):
        print(f"AND(NOT({C}),OR(NOT((AND({A},{B}))),AND({A},{C}))) = {AND(NOT(C),OR(NOT(AND(A,B)),AND(A,C)))}")

    print()
    print("Simplified using NAND, NOR, XOR, NOT, AND et OR :")
    for A, B, C in zip(a, b, c):
        print(f"AND(NOT({C}),OR(NAND({A},{B}),AND({A},{C}))) = {AND(NOT(C),OR(NAND(A,B),AND(A,C)))}")
    """
    a = [0, 0, 1, 1]
    b = [0, 1, 0, 1]

    print("With XOR:")
    for A, B in zip(a, b):
        print(f"mux({A},{B},1) = {mux(A,B,1)}")
        print(f"mux({A},{B},0) = {mux(A,B,0)}")

    print("With NOT and NAND:")
    for A, B in zip(a, b):
        print(f"NOT(NAND({A}, {B})) = {OR(AND(NOT(A), B), AND(NOT(B), A))}")
