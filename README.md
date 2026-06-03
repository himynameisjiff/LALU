# LALU

16-Bit ALU. 

Created in Logism, then converted to Verilog.
Synthesized into GDS II file using Openlane 2.

Can view GDS files at https://gds-viewer.tinytapeout.com


ISA and LALU design created by Mr. Mueller.

## Instruction Set

Instruction word is 8 bits.

### Register-format instructions

Bit layout: `[7:6] = Rd`, `[5:4] = Rs` (or `val`), `[3:0] = opcode`

| Instruction | [7:6] | [5:4] | [3:0] | Format       | Description           |
|-------------|-------|-------|-------|--------------|-----------------------|
| add         | Rd    | Rs    | 0010  | `add Rd,Rs`  | Rd = Rd + Rs          |
| sub         | Rd    | Rs    | 0011  | `sub Rd,Rs`  | Rd = Rd - Rs          |
| ldi         | Rd    | val   | 1110  | `ldi Rd,val` | Rd = val              |
| ld          | Rd    | Rs    | 1111  | `ld Rd,Rs`   | Rd = data[RsVal]      |
| mov         | Rd    | Rs    | 0110  | `mv Rd,Rs`   | Rd = Rs               |
| st          | Rd    | Rs    | 1011  | `st Rd,Rs`   | data[RsVal] = Rd      |
| nop         | 00    | 00    | 0110  | `nop`        | changes nothing (mov R0,R0) |

### Jump-format instructions

Bit layout: `[7:2] = target PC`, `[1:0] = opcode`

| Instruction | [7:2]     | [1:0] | Format       | Description           |
|-------------|-----------|-------|--------------|-----------------------|
| jump        | target PC | 00    | `jmp label`  | PC = target PC        |
| jumpNeg     | target PC | 01    | `jmpn label` | if r < 0, PC = target PC |