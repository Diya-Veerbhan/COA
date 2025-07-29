# Computer Organization and Architecture

## Computer architecture 
 covers high level design and functional behavior of a computer system, mostly from the 
 point of view of a programmer 
 including the Instruction Set Architecture (or ISA), addressing modes, logic design, and implementation

## Computer Organization
how components are connected and work together to execute program
how hardware components are implemented to support the architecture.

##
Issues with computer : REliability, compatability with multiple OS and hw cfg, shared memory, 
multiple threads (multi taksing and multiple progrmming), handling bugs and errors, shared memory, disk access,
power consumption, security, performance

## Assembly language
to write a program using alphanumeric mnemonic codes, instead of numeric code for a set of instructions 
Pros
 - Execution of code is efficient
 - Low-level operations can be performed
 - High control over Hardware

Cons
 - More Complex
 - More time consuming
- Lack of Portability

## High-Level Language
 to write a program in a language that resembles English words
Pros
 - Increase Readability
 - Portability
 - Faster Development
Cons
 - Slower Execution
 - Memory Usage
 - Less Control Over Hardware

## Addressing modes 
techniques used by the CPU to identify where data needed for an operation stored

### 2 addressing modes in 8086
1) Addressing modes for data
2) Addressing modes for branch

An assembly language instruction consist of 2 parts : Opcode and Operand

Memory address contains 2 parts : 
 - Starting address of memory segment.
 - Effective address or Offset: An offset is determined by adding any combination of three address elements:
    displacement, base and index.
-- Displacement: It is an 8 bit or 16 bit immediate value given in the instruction.
-- Base: Contents of base register, BX (Base Register)or BP (Base Pointer Register).
-- Index: Content of index register SI (Source Index Register) or DI (Destination Index Register).

## Types of addressing modes 
1. Implied mode  : 
   data is the part of instruction. Zero address instruction are designed with implied addressing mode.
   Opcode Data

2. Immediate addressing mode: data is present in address field of instruction
  Opcode Address(-> Data stored)

3. Register mode
  Opcode REgister (->Stores effective address -> data stored at this address)

4. Auto Indexed (increment mode)
   Effective address of the operand is the contents of a register specified in the instruction.
   After accessing the operand, the contents of this register are automatically incremented to
   point to the next consecutive memory location.(R1)+. Here one register reference, one memory
   reference and one ALU operation is required to access the data. Example:
  Usefule for arrays

Add R1, (R2)+  // OR
R1 = R1 +M[R2]
R2 = R2 + d 
 
5. Auto indexed ( decrement mode)
Effective address of the operand is the contents of a register specified in the instruction.
Before accessing the operand, the contents of this register are automatically decremented to point to
the previous consecutive memory location. -(R1)Here one register reference,
one memory reference and one ALU operation is required to access the data. Example:  
Add R1,-(R2)   //OR
R2 = R2-d
R1 = R1 + M[R2]

Auto decrement mode is same as  auto increment mode. Both can also be used to
implement a stack as push and pop
 Auto increment and Auto decrement modes are useful for implementing “Last-In-First-Out” data structures.


6. Direct addressing/ Absolute addressing Mode (symbol [ ])
ADD AL,[0301]   //add the contents of offset address 0301 to AL

7. Indirect addressing Mode (symbol @ or () )
