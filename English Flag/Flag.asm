org 100h
.stack 100h
.model small
.data 

xmin0 dw 3
 xmax0 dw 100
ymin0 dw 3
ymax0 dw 100

xmin1 dw 120
xmax1 dw 3
ymax1 dw 3
ymin1 dw 100

xmin dw 0  
xmax dw 120
ymin dw 00
ymax dw 80

xmin2 dw 2
xmax2 dw 30
ymin2 dw 2
ymax2 dw 100

xmin3 dw 0
xmax3 dw 400
ymin3 dw 0
ymax3 dw 200
  
;line1 dw 30
 line1 dw 34
 line2 dw 38
;line2 dw 34
cross1 dw 1
cross2 dw 20
plus1 dw 38
plus2 dw 42

 

xmin4 dw 3
xmax4 dw 80
ymin4 dw 3
ymax4 dw 110
cut1 dw 100
cut2 dw 100 


.code
proc main
   mov dx,@data
   mov ds,dx 
           
   mov ah,0       
   mov al,12h      
   int 10h  
   
;mov cx ,xmin      
; L1:        
;   mov ah,0ch      
;   mov al,15     
;   mov dx,xmin                  
;   int 10h 
;   inc cx
;   cmp cx ,xmax
;   jle L1 
;   
;mov dx ,ymin  
;mov cx ,xmax
; L2:        
;   mov ah,0ch      
;   mov al,14              
;   mov cx,ymin                  
;   int 10h 
;   inc dx
;   cmp dx ,ymax
;   jle L2
;  
;mov dx, xmin   
;
;
; Level3:        
;   mov ah,0ch      
;   mov al,6       
;   mov dx,ymax                 
;   int 10h 
;   inc cx
;   cmp dx ,cx
;   jle Level3 
;    
; 
 

;//
;   //
  ;
;for_full_blue_box:
lo8:
  add ymin3,1 
 
        
  mov cx,xmin3  
 L5_:        
   mov ah,0ch      
   mov al,1     
   mov dx,ymin3                  
   int 10h 
   inc cx
   cmp cx ,xmax3 
   
   jle L5_
      cmp ymin3,100
  je exit
   ;je level_for\
   jne lo8  
loop lo8 
 

;
; mov bx,10
;
;level_for_cross1: 
;
;;add cross1,2
;MOV dx,ymin0 
; mov cx,xmin0
;;  add cross1,2
;  ;mov cross1,dx
;   ; add dx,cross1
;    
;;inc dx
;add dx,cross1
;  
;  
;     
; L1:        
;   mov ah,0ch      
;   mov al,15     
;  ;add dx,2                  
;   int 10h 
;   inc cx
;   inc dx
;   
;  cmp cx ,xmax0
;  
;   jne L1
;   add cross1,1
;   
; ; cmp cross1,21
;       cmp bx,5 
;   je exit
;   jne level_for_cross1
;   
;   loop level_for_cross1         
; 
;
;              
;level_for\:
;;add ymin0,1
; MOV dx,ymin0
; mov cx,xmin0  
;     
; L1:        
;   mov ah,0ch      
;   mov al,15     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L1
;           
; 
; mov cx,xmin0 
; MOV dx,ymin0 
; add dx,1 
;     
; L2: 
; 
;                  
;   mov ah,0ch      
;   mov al,15     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L2    
;   
;    
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,2 
;      
;  
;
; L3: 
; 
;                  
;   mov ah,0ch      
;   mov al,15    
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L3     
;
;    
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,3 
;      
;  
;
; L5: 
; 
;                  
;   mov ah,0ch      
;   mov al,15     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L5     
;    
;        
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,4 
; L6: 
;                  
;   mov ah,0ch      
;   mov al,15     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L6     
; 
;        
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,5 
;
; L7: 
; 
;                  
;   mov ah,0ch      
;   mov al,15     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L7     
;          
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,6 
;
; L8: 
; 
;                  
;   mov ah,0ch      
;   mov al,4     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L8     
;  
;  
;        
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,7
;
; L9: 
; 
;                  
;   mov ah,0ch      
;   mov al,4     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L9     
;  
;          
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,8 
;
; L10: 
; 
;                  
;   mov ah,0ch      
;   mov al,4     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L10     
;  
;         
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,9 
;
; L11: 
; 
;                  
;   mov ah,0ch      
;   mov al,4     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L11     
;  
;           
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,10
;
; L12: 
; 
;                  
;   mov ah,0ch      
;   mov al,15     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L12
;   
;  
;      
;            
; MOV dx,ymin0 
; mov cx,xmin0 
; 
; add dx,11
;
; L13: 
; 
;                  
;   mov ah,0ch      
;   mov al,15     
;  ; mov dx,xmin0                  
;   int 10h 
;   inc cx
;   inc dx
;   cmp cx ,xmax0
;   jne L13
;
;            
;  
;   level_for/:
;     
;mov cx, xmin1
;mov dx, ymax1
;l_4:
;    
;      
;    mov ah,0ch
;    mov al, 15
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_4 
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,1
;l_5:
;    
;      
;    mov ah,0ch
;    mov al, 15
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_5 
;
;       
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,2
;l_6:
;    
;      
;    mov ah,0ch
;    mov al, 15
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_6 
;
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,3
;l_66:
;    
;      
;    mov ah,0ch
;    mov al, 4
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_66 
;
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,4
;l_7:
;    
;      
;    mov ah,0ch
;    mov al, 4
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_7 
;
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,5
;l_8:
;    
;      
;    mov ah,0ch
;    mov al, 4
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_8 
;
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,6
;l_9:
;    
;      
;    mov ah,0ch
;    mov al, 4
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_9 
;
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,7
;l_10:
;    
;      
;    mov ah,0ch
;    mov al, 4
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_10 
;
;       
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,8
;l_11:
;    
;      
;    mov ah,0ch
;    mov al, 15
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_11 
;
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,9
;l_12:
;    
;      
;    mov ah,0ch
;    mov al, 15
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_12 
;
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,10
;l_13:
;    
;      
;    mov ah,0ch
;    mov al, 15
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_13 
;      
;mov cx, xmin1
;mov dx, ymax1 
;sub cx,11
;l_14:
;    
;      
;    mov ah,0ch
;    mov al, 15
;    int 10h
;    dec cx
;    inc dx
;    cmp dx, ymin1
;    jle l_14 
;;      
;;level_for_plus_]:
; 
;
; lo125:
;add line1,1
;mov dx,ymin2
; 
;  L4:        
;   mov ah,0ch      
;   mov al,15           
;  ; mov cx ,ymax2 
;  mov cx,line1                 
;   int 10h 
;   inc dx
;   cmp dx,ymax2
;   jle L4
;   
;   cmp cx,60
;   je lo123
;   jne lo125
;   loop lo125    
;
;;level_for_plus_-:
;
;lo123:
;   add plus1,1
;  mov cx ,xmin
; 
;;  mov dx,xmin      
; Le1:        
;   mov ah,0ch      
;   mov al,15     
;  mov dx,plus1                 
;   int 10h 
;   inc cx
;   cmp cx,xmax
;   jle Le1    
;   
;   
; cmp dx,64
; je lo124
; jne lo123
; loop lo123 
; 
;  
; 
; 
;lo124:
;   add plus2,1
;  mov cx ,xmin
; 
;  mov dx,xmin      
; Le2:        
;   mov ah,0ch      
;   mov al,4     
;  mov dx,plus2                 
;   int 10h 
;   inc cx
;   cmp cx,xmax
;   jle Le2    
;   
;   
; cmp dx,60
; je lo126
; jne lo124
; loop lo124
; 
; lo126:
; add line2,1
;mov dx,ymin2
; 
;  L_5_:        
;   mov ah,0ch      
;   mov al,4           
;  ; mov cx ,ymax2 
;  mov cx,line2                 
;   int 10h 
;   inc dx
;   cmp dx,ymax2
;   jle L_5_
;   
;   cmp cx,56
;   ;je lo127
;    je lo127
;   jne lo126
;   loop lo126    
;
; 
;
; level_for_cutting_extra_part:
; ;  
; 
; lo127:
; add cut1,1
;mov dx,ymin4
; 
;  L4_:        
;   mov ah,0ch      
;   mov al,1           
;  ; mov cx ,ymax2 
;  mov cx,cut1                 
;   int 10h 
;   inc dx
;   cmp dx,ymax4
;   jne L4_
;   
;   cmp dx,20
;   ;je lo123
;   je exit
;   jne lo127
;   loop lo127    
;
;level_for_cutting_extra_part: 

   mov bx,10
;
;   lo127:
;add cut1,1
;mov dx,ymin4
; dec bx
;  
; 
;  L4_:        
;   mov ah,0ch      
;   mov al,1           
;  ; mov cx ,ymax2 
;  mov cx,cut1                 
;   int 10h 
;   inc dx
;   cmp dx,ymax4
;   jne L4_
;   
;   ;cmp cut1,80
;   ;je exit
;  ; jne lo127
;   ;loop lo127    
;
;  
;   cmp bx,0
;   je exit
;   jne lo127
;   loop lo127
;    exit:
   mov ah,4ch
   int 21h 
    
    
endp main 
end main
    
ret











