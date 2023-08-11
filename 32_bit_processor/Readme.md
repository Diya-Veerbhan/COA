# Design and Verification of a 32-bit RISC architecture based pipelined processor 

## Introduction
* It is a 32-bit processor, i.e. can operate on 32-bits of data at a time
* Registers : 
  - 32, 32-bit general purpose registers(GPR,) R0 to R31
  - A special purpose 32-bit program counter (PC)
* No flag registers
* Addressing modes : Register, Immediate,  Register Indexed
* Assuming memory word size is 32 bits (word addressable)
* The instructions can be classified into three groups :
  - R-type(Register), I-type(Immediate), and J-type (Jump)
  - In instruction encoding, 32 bits are divided into several fields of fixed length
* Five pipeline stages
  - IF : Instruction Fetch
  - ID : Instruction Decode
  - EX : Execution
  - MEM : Memory Address
  - WB :Register write back
    
  
