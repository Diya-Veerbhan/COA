# 32-bit processor overview
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/b1ab780e-197e-4607-8a7b-6afd5e95a277)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/bd901c7c-46ae-4bbd-9c43-e62c5c56fbc3)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/6f5f75c4-3252-4797-b7fa-1aa8f1b1aa61)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/3e76a6f4-da27-414f-b3df-e09457f5fd27)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/0442dcb5-ce86-410a-a683-424d8f7968b8)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/37c06437-3bdc-41ff-a239-a38f0adcf11d)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/2f668afd-2314-4532-86b8-e80f5b79964c)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/c42bb4e1-043c-4406-8624-1142751f955b)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/3b7b40e9-11ba-4c9d-9861-a7c5446a1d06)
This label will be having any data, that value will be added to the contents of program counter and then program counter will be pointing to that new address
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/1ca72211-62fc-4311-a5b8-5d5be56f29a8)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/e97cbee0-7af4-472e-85b0-cf0818a7573b)
Initially while fetching, you wont be knowing which kind of instruction is this, only after decoding you will be knowing. So by default you will prefetch the data from both registers and then later discard the other register if not needed.
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/803329bc-265e-4b7c-bd69-b3559739f1c1)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/bc740c78-24ae-475b-9910-f4e63f4ef54c)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/e9ef1789-25f6-41b1-af38-4ee6f8406100)
For byte Addressable memory, i.e. each byte will be having a separate address we need to add value 4 (2^4=32) in the address to access the next address. But in our case, for simplicity we have kept it word addressable i.e. each word consist of 32 bits and each word will be having a unique address.
The NPC is the temporary location where we are storing the the incremented value of the PC because  we won’t be knowing whether the next instruction is branch or jump
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/f58c3ff5-cda8-47c2-8fbd-b7d827a884f9)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/2deab437-cd13-4aba-9373-e11d60b36c71)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/ea76f8c6-1741-438f-9097-f836a8f665ab)
In order to do the sign extension of the 16 bit immediate number to 32 bit ; for 2’s complement [if msb is 0 of 16 bit number then positive else negative]16-bit it is easy, you simply have to replicate the 16th bit (sign bit) to the all empty 16 bits before it. This doesn’t change the value.
(IR15)16 ## IR15..0 :Here ## implies concatenation, IR15 implies the 16th bit (signed bit) that has been replicated 16 times 
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/c52bc3fb-b437-442a-b77b-b74a0af65f0c)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/3ce98682-f653-4819-a6c1-8ae64860a1a6)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/435bd487-1e78-419e-bf2c-c409f4df0411)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/afaf5831-0c0a-4527-9ce1-445ece144044)
LMD is  Load Memory Data, another temporary register. For the load operation, the address of the memory will be stored in ALUOut, so you have to do a read operation and load the content of the address into LMD
For store instruction, the data will be written in one of the register so you have to write the data of that register into the memory address.
For Branch instruction, if the condition is true then the new address is loaded into PC else the NPC value is transferred to the PC 
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/941cc2f0-844d-45b8-8d91-addbc7507916)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/be556936-3c2f-407a-b0bc-756ef3537651)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/65d702ec-0aa8-4eca-835b-909692ca7c25)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/de4716db-0d32-4446-ab79-326c0d8b5f6b)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/fe3f8b91-2fe3-4f70-b4ac-a7fcb600129f)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/8f86153c-04a3-444c-aa01-49c6dec91855)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/38b8f92d-44c7-4430-9fec-f1c2341711f3)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/8df2f982-61c9-4f35-93b6-6624e7d9921f)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/e05bbd54-4585-4a30-b9c3-bf59c1734087)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/7472ae32-3436-4e8b-a0e0-eadf2ed23087)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/5b80e673-498f-44e7-8b16-7a38496cb0f0)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/737b8dcf-900b-4d46-8541-0eddadc02770)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/ddf8d1c9-29ac-4e64-bcc2-72d50fa657e7)
In non-pipelined structure, we were updating the NPC but here we are updating both PC and NPC because there will be multiple instructions coming in, so we have to have updated values of PC and NPC.
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/bbfc0176-d945-4b6e-a6da-038a7e53fa0e)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/6691be2b-6e4e-4408-95a3-e996769c30c4)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/4c14a81a-d861-4b77-bfd5-d6dfc7178487)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/ddd7101c-93c8-4251-9554-ff8b999cd141)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/25711d12-4593-44a0-bf45-1fefc0cfcb34)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/0bb7a760-956b-45cd-a562-444a09a10968)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/fef0b15e-0fe2-4d29-b90d-6a4430c9328c)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/042b15a4-b867-4450-a5f2-8d6f55a436c4)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/60974f23-265c-4f6f-9af2-24ad949baf3e)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/abaff025-aeef-4684-b304-3c1193eea487)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/95e83142-4dad-465e-9cd6-db567b7920f7)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/2dcf035f-2259-4805-8b58-31e01fa906cd)
Here we have two extra variables, so that if they are set then no memory and register write will be happening for the following cycles
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/b474eaa0-6ab4-4484-b335-3f3a0ab6c1dc)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/9d9f811e-eb47-4c67-af83-97f3edfbaa5c)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/389e7d4c-d2fb-47ab-a584-be82cd1ffd6b)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/768c7683-bede-4dd0-8bc5-0245b9b66a1b)











