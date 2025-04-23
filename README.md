# NanoRISC-V

|Type|Name|Code|Describe| len |
|-|-|-|-|-|
| W | ADD | 00_000_(Rx) | Rx = R1 + R2 | 8 |
| W | SUB | 00_001_(Rx) | Rx = R1 - R2 | 8 |
| W | SLL | 00_010_(Rx) | Rx = R1 << R2 | 8 |
| W | SLR | 00_011_(Rx) | Rx = R1 >> R2 | 8 |
| W | SLT | 00_100_(Rx) | Rx = R1 < R2 | 8 |
| W | XOR | 00_101_(Rx) | Rx = R1 ^ R2 | 8 |
| W | OR  | 00_110_(Rx) | Rx = R1 \| R2 | 8 |
| W | AND | 00_111_(Rx) | Rx = R1 & R2 | 8 |
|-|-|-|-|-|
| I | LOAD | 1_(imm) | R7 = imm | 128 |
|-|-|-|-|-|
| M | LW | 01_000_(Rx) | Rx = mem(R5, R6, R7, R8) | 8 |
| M | SW | 01_001_(Rx) | mem(R5, R6, R7, R8) = Rx | 8 |
| J | JAL |  01010000 | (R1, R2, R3, R4) = PC + 1, PC += (R5, R6, R7, R8) | 1 |
| J | BJAL | 01010001 | (R1, R2, R3, R4) = PC + 1, PC += (R5, R6, R7, R8) | 1 |
| S | --- | 0101_(7-3) | --- | 6 |
| U | --- | 011_XXXXX | --- | 32 |
