# Description
A static CMOS design for a 32-bit Synchronous Counter.

# Block Diagram
<img src="https://github.com/marz-dax/vlsi/blob/6cd62cad940a8cac1cf2198a5b74773eb9adaa86/32bit-synchronous-counter/block_diagram.png" width="300">

# Layout
<img src="https://github.com/marz-dax/vlsi/blob/0a782dc5c4bb4918802cada855b1a4897bc27fcf/32bit-synchronous-counter/32bit-counter/layout/32bit_counter.png">

# Design Hierarchy
```
32bit counter 
|-- 4bit counter 
|   |-- 1bit counter (x4)
|   |   |-- half adder
|   |   |   |-- xor
|   |   |   |   |-- and (x3)
|   |   |   |   |   |-- nand
|   |   |   |   |   `-- inv
|   |   |   |   `-- inv (x2)
|   |   |   `-- and
|   |   `-- dff
|   |       |-- latch rs (x2)
|   |       |-- nand
|   |       `-- inv
`-- 28bit counter en
    `-- 4bit counter en (x7)
        |-- 4bit counter
        `-- and (x2)
```
# Cell Directory
```
32bit-synchronous-counter
|-- 32bit counter
|-- level-1-building-blocks
|   |-- inv
|   |-- latch rs
|   `-- nand
|-- level-2-building-blocks
|   |-- and
|   |-- dff rs
|   `-- xor
`-- modules
    |-- 1bit counter
    |-- 4bit counter
    |-- 4bit counter en
    |-- 28bit counter en
    `-- half adder
```
Each cell dir contains three subfolders. The dff rs example is shown below.

./schematic - the schematic for the cell
<img src="https://github.com/marz-dax/vlsi/blob/9b70f35cc4d050923784c4ef987978c03c02c48a/32bit-synchronous-counter/level-2-building-blocks/dff-rs/schematic/dff_sch.png">

./layout - the layout and GDS file
<img src="https://github.com/marz-dax/vlsi/blob/9b70f35cc4d050923784c4ef987978c03c02c48a/32bit-synchronous-counter/level-2-building-blocks/dff-rs/layout/dff_rs.PNG">

./hspice - the SPICE deck and waveform
<img src="https://github.com/marz-dax/vlsi/blob/9b70f35cc4d050923784c4ef987978c03c02c48a/32bit-synchronous-counter/level-2-building-blocks/dff-rs/hspice/dff_rs_waveform.png">
