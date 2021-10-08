#!/usr/bin/env python3

"""
Dummy Brainfuck interpreter just in case.
"""

import sys

MEM_SIZE = 30000
CELL_LIM = 256

prog = open(sys.argv[1]).read()
brkt = {}

i = 0
while i < len(prog):
    if prog[i] == '[':
        q = 1
        j = i
        while q > 0:
            j += 1
            if j >= len(prog):
                print('Unmatched [')
                sys.exit(1)
            if prog[j] == '[': q += 1
            if prog[j] == ']': q -= 1
        brkt[i] = j
        brkt[j] = i
    elif prog[i] == ']' and not i in brkt.keys():
        print('Unmatched ]')
        sys.exit(1)
    i += 1

a = [0 for i in range(MEM_SIZE)]
p = 0
i = 0
while i < len(prog):
    if prog[i] == '+':   a[p] = (a[p] + 1) % CELL_LIM
    elif prog[i] == '-': a[p] = (a[p] + CELL_LIM - 1) % CELL_LIM
    elif prog[i] == '.': sys.stdout.write(chr(a[p]))
    elif prog[i] == ',':
        c = sys.stdin.read(1)
        if len(c) == 0:
            a[p] = 0
        else:
            a[p] = ord(c) % 256
    elif prog[i] == '>': p = (p + 1) % MEM_SIZE
    elif prog[i] == '<': p = (p + MEM_SIZE - 1) % MEM_SIZE
    elif prog[i] == '[' and a[p] == 0: i = brkt[i]
    elif prog[i] == ']' and a[p] != 0: i = brkt[i]
    i += 1
