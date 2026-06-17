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


## Writing and Running Your Own Program

### 1. Instruction encoding

Every instruction is one 8-bit byte. There are two formats.

**Register format** — `[7:6] = Rd`, `[5:4] = Rs` (or `val`), `[3:0] = opcode`:

| Instr | opcode `[3:0]` | Effect              |
|-------|----------------|---------------------|
| add   | `0010`         | Rd = Rd + Rs        |
| sub   | `0011`         | Rd = Rd - Rs        |
| ldi   | `1110`         | Rd = val (0–3 only)  |
| ld    | `1111`         | Rd = data[Rs]       |
| mov   | `0110`         | Rd = Rs             |
| st    | `1011`         | data[Rs] = Rd       |

**Jump format** — `[7:2] = target PC`, `[1:0] = opcode`:

| Instr | opcode `[1:0]` | Effect                          |
|-------|----------------|---------------------------------|
| jmp   | `00`           | PC = target                     |
| jmpn  | `01`           | if last result < 0, PC = target |

**Special bytes:**

- `nop`  = `0x06`  (`mov R0,R0`)
- `halt` = `0xF6`  (`mov R3,R3`) — stops the CPU

### 2. Important Notes
- **There is a 2-cycle fetch/decode latency.** A register write lands ~2 cycles after its instruction is fetched. This also means the two instructions after a taken branch are still fetched
- **Memory is 64 words.** Instruction memory is 64 × 8-bit; data memory is 64 × 16-bit. The 64 can be changed to your necessity in the testbench

### 3. Assemble

Write your program in assembly, then assemble it to hex with the assembler script:

```bash
python3 assembler.py
```

It prints a "Program Memory" block, one hex byte per line.

### 4. Load into program.hex

Copy the assembler's output into `tb/program.hex`, one 2-digit hex byte per line:

```
6E
BE
62
...
F6
F6
F6
```

(Optional) To preload data memory, put 16-bit words — four hex digits each, one per line — into `tb/data.hex`. Leave it empty to start with all-zero data memory.

### 5. Run the simulation

From the repository root:

```bash
iverilog -g2012 -s tb_run -o simv rtl/*.v tb/tb_run.sv
vvp simv
```

The testbench loads the program, runs until `Halt` asserts, then prints a per-instruction trace, the final register values, the cycle count, and a dump of data memory `[0..63]` The dump can be removed by commenting it out in tb_run.sv. This is recommended for longer programs, it serves as more of a debug tool. View the waveform with `gtkwave run.vcd` <- Doesn't work on MacOS currently, trying to debug>.

Example output tail:

```
HALT asserted -- program completed in 36 cycles.
FINAL: r0=0037 r1=0059 r2=0009 r3=0001
=== Data memory [0..63] ===
  [00] 0001 0002 0003 0005 0008 000d 0015 0022
  [08] 0037 0059 0000 ...
```