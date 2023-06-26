.global _start
_start:
    @ int i;
    MOV R0, #0

    @ int nums[10]={2,4,6,8,10,12,14,16,18,20};
    MOV R11, #0x20000000 @ R11 = base address

    @ i=0
    MOV R1, #2
    STR R1, [R11, R0] @ num[i]=2

    ADD R0, R0, #4 @ i++ => i=2
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=4

    ADD R0, R0, #4 @ i++ => i=3
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=6

    ADD R0, R0, #4 @ i++ => i=4
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=8

    ADD R0, R0, #4 @ i++ => i=5
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=8

    ADD R0, R0, #4 @ i++ => i=6
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=12

    ADD R0, R0, #4 @ i++ => i=6
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=14

    ADD R0, R0, #4 @ i++ => i=7
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=16

    ADD R0, R0, #4 @ i++ => i=8
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=18

    ADD R0, R0, #4 @ i++ => i=9
    ADD R1, R1, #2
    STR R1, [R11, R0] @ num[i]=20

    @ for(i=0;i<10;i++)
    ADD R0, R0, #4 @ i++ => i=10
    MOV R1, R0 @ R1 = size(nums) = 10

    MOV R0, #0 @ i=0

    FOR: 
        CMP R0, R1 @ i<10 ?
        BGE END_FOR @ if not, end for
        LDR R2, [R11, R0] @ R2 = num[i]
        ASR R2, R2, #1 @ num[i]/2
        STR R2, [R11, R0] @ num[i]=num[i]/2
        ADD R0, R0, #4 @ i++
        B FOR @ continue for
    END_FOR:

    @ EXIT CODE
    MOV R7, #1
    SWI 0