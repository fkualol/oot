glabel func_80B32804
/* 00574 80B32804 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00578 80B32808 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0057C 80B3280C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00580 80B32810 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00584 80B32814 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00588 80B32818 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0058C 80B3281C C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 00590 80B32820 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00594 80B32824 260E0024 */  addiu   $t6, $s0, 0x0024           ## $t6 = 00000024
/* 00598 80B32828 46062200 */  add.s   $f8, $f4, $f6              
/* 0059C 80B3282C 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 005A0 80B32830 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 005A4 80B32834 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFF8
/* 005A8 80B32838 E4880028 */  swc1    $f8, 0x0028($a0)           ## 00000028
/* 005AC 80B3283C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 005B0 80B32840 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 005B4 80B32844 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 005B8 80B32848 0C00F269 */  jal     func_8003C9A4              
/* 005BC 80B3284C AFA4002C */  sw      $a0, 0x002C($sp)           
/* 005C0 80B32850 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 005C4 80B32854 8E060024 */  lw      $a2, 0x0024($s0)           ## 00000024
/* 005C8 80B32858 8E07002C */  lw      $a3, 0x002C($s0)           ## 0000002C
/* 005CC 80B3285C 260F000C */  addiu   $t7, $s0, 0x000C           ## $t7 = 0000000C
/* 005D0 80B32860 27B80034 */  addiu   $t8, $sp, 0x0034           ## $t8 = FFFFFFFC
/* 005D4 80B32864 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 005D8 80B32868 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 005DC 80B3286C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 005E0 80B32870 0C010891 */  jal     func_80042244              
/* 005E4 80B32874 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 005E8 80B32878 10400009 */  beq     $v0, $zero, .L80B328A0     
/* 005EC 80B3287C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 005F0 80B32880 C60A000C */  lwc1    $f10, 0x000C($s0)          ## 0000000C
/* 005F4 80B32884 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 005F8 80B32888 C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 005FC 80B3288C 46105081 */  sub.s   $f2, $f10, $f16            
/* 00600 80B32890 4600103E */  c.le.s  $f2, $f0                   
/* 00604 80B32894 00000000 */  nop
/* 00608 80B32898 45020006 */  bc1fl   .L80B328B4                 
/* 0060C 80B3289C E602000C */  swc1    $f2, 0x000C($s0)           ## 0000000C
.L80B328A0:
/* 00610 80B328A0 0C00B55C */  jal     Actor_Kill
              
/* 00614 80B328A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00618 80B328A8 1000000B */  beq     $zero, $zero, .L80B328D8   
/* 0061C 80B328AC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00620 80B328B0 E602000C */  swc1    $f2, 0x000C($s0)           ## 0000000C
.L80B328B4:
/* 00624 80B328B4 C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
/* 00628 80B328B8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0062C 80B328BC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00630 80B328C0 46009100 */  add.s   $f4, $f18, $f0             
/* 00634 80B328C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00638 80B328C8 46062202 */  mul.s   $f8, $f4, $f6              
/* 0063C 80B328CC 0C2CC8E1 */  jal     func_80B32384              
/* 00640 80B328D0 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00644 80B328D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B328D8:
/* 00648 80B328D8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0064C 80B328DC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00650 80B328E0 03E00008 */  jr      $ra                        
/* 00654 80B328E4 00000000 */  nop

