# Introduction to Risc-V assembly programming using Ripes (https://github.com/mortbopet/Ripes)
# for MYY505 - Computer Architecture
# Aris Efthymiou
# Department of Computer Engineering, University of Ioannina

        .data   

matric: 

        .word 5481  # my A.M.  
                    
matricplus1:
        .word 0   

var1:
        .word 1

array:
        .word 10, 9, 8, 7, 6, 5, 4, 3, 2, 1 
                 
var2:
        .byte -1

str1:
        .string "This is a string" 
        
        .text   
      
        la         a0, matric      
                                   
        la         a1, var1        
        la         a2, array       
                                   
        la         a3, var2       

prog:   
        li         s0, matric    # Changing to matric instead of 10    
                                 # Get matric instead of 10 into register s0. li - load immediate
        
        lw         s1, 0(a1)       
        add        s1, s1,   s0   
        sw         s1, 4(a0)       
        
        sw         s0, 0xc(a2)     
                                  
                                     
        addi       t1, a2,   0x10  
                                  
        sw         t1, 0(a1)       
                                  
        
        lb         s2, 0(a3)       
        lbu        s3, 0(a3)       
        
exit: 
        addi       a7, zero, 10  
        ecall                     # we are outa here.
        
###############################################################################

