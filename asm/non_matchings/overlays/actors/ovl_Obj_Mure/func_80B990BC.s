glabel func_80B990BC
/* 0061C 80B990BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00620 80B990C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00624 80B990C4 84820154 */  lh      $v0, 0x0154($a0)           ## 00000154
/* 00628 80B990C8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0062C 80B990CC 10400005 */  beq     $v0, $zero, .L80B990E4     
/* 00630 80B990D0 00000000 */  nop
/* 00634 80B990D4 10410007 */  beq     $v0, $at, .L80B990F4       
/* 00638 80B990D8 00000000 */  nop
/* 0063C 80B990DC 10000008 */  beq     $zero, $zero, .L80B99100   
/* 00640 80B990E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B990E4:
/* 00644 80B990E4 0C2E6346 */  jal     func_80B98D18              
/* 00648 80B990E8 00000000 */  nop
/* 0064C 80B990EC 10000004 */  beq     $zero, $zero, .L80B99100   
/* 00650 80B990F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B990F4:
/* 00654 80B990F4 0C2E63CE */  jal     func_80B98F38              
/* 00658 80B990F8 00000000 */  nop
/* 0065C 80B990FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B99100:
/* 00660 80B99100 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00664 80B99104 03E00008 */  jr      $ra                        
/* 00668 80B99108 00000000 */  nop


