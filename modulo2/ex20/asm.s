.section .data
 .global g
 .global i
 .global j

.section .text
  .global f
  .global f2
  .global f3
  .global f4

f:
    # prologue
    pushl %ebp
    movl %esp,%ebp

    movl i, %ebx
    movl j, %ecx

    cmpl %ebx, %ecx
    je equalf

    addl %ebx, %ecx
    movl %ecx, %eax
    
    jmp fim

equalf:
    subl %ecx, %ebx
    movl %ebx, %eax

    jmp fim

f2:
    # prologue
    pushl %ebp
    movl %esp, %ebp

    movl i, %eax
    movl j, %ebx

    cmpl %ebx, %eax
    jle f2inc

    inc %ebx
    mul %ebx

    jmp fim

f2inc:
    inc %eax
    mul %ebx

    jmp fim

f3:
    # prologue
    pushl %ebp
    movl %esp, %ebp

    movl i, %eax
    movl j, %ebx
    movl i, %ecx

    cmpl %ebx, %eax
    jge f3inc
    jl f3other

    jmp fim

f3inc:
    add %ebx, %eax
    inc %ecx
    div %ecx

    jmp fim

f3other:
    mul %ebx

    addl %ecx, %ebx
    addl $2, %ebx

    div %ebx
    jmp fim

fim: # fim
    # epilogue
    movl %ebp, %esp
    popl %ebp

    ret