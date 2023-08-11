# Example for pipeline - 2
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/6e696057-7616-4dda-ad99-c738cd7326ee)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/7d2cb710-7a44-48d6-92f9-987e0ae9874b)
Two read ports controlled by rs1 and rs2 (Register source 1 and register source 2) and a write port controlled by rd (register destination). For 16 registers, each of them should be of 4 bit. Also we are assuming that each register is 16 bit wide.
Consider there is a memory consisting of 256 words and each word is of 8 bit. Now the address line/ bits for accessing the memory will be of 8 bits (2^8=256) and read and write data lanes will be of 16 bits as each word length is 16 bit.
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/cad59bb6-97fc-4282-acbb-b69d06b60d2d)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/409cdb9e-6322-4813-8d94-12298cf47104)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/e61688c6-5b53-45d7-a1ae-9601a3cccc31)
Now these opcodes are feeded to alu with func
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/34b22115-ff90-403a-a62c-28fa003c8bea)
Rs1,rs2,rd,func,addr are the inputs
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/a2a28d1e-f56b-4bb4-8e94-52f02b938316)
Applyting diferent clocks to the consecutive stages so that there will be isolation and no race around condition
 ![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/959d4d87-e555-4875-818c-57019d495a08)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/41143f67-bf14-4ce0-b644-f9d593ededaa)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/41496590-1552-472a-858b-f33cdd42008d)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/8a242214-41cd-46b8-a7c7-abfb7aebcf6d)
![image](https://github.com/Diya-Veerbhan/COA/assets/64258231/fb29e09e-2439-4fdc-a691-4a3aad6dc74e)




        
