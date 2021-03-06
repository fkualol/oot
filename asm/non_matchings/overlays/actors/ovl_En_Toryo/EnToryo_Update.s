glabel EnToryo_Update
/* 00808 80B20978 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0080C 80B2097C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00810 80B20980 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00814 80B20984 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00818 80B20988 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 0081C 80B2098C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00820 80B20990 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 00824 80B20994 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 00828 80B20998 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 0082C 80B2099C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00830 80B209A0 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00834 80B209A4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00838 80B209A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0083C 80B209AC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00840 80B209B0 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00844 80B209B4 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00848 80B209B8 00812821 */  addu    $a1, $a0, $at              
/* 0084C 80B209BC 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00850 80B209C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00854 80B209C4 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00858 80B209C8 0320F809 */  jalr    $ra, $t9                   
/* 0085C 80B209CC 00000000 */  nop
/* 00860 80B209D0 960201E8 */  lhu     $v0, 0x01E8($s0)           ## 000001E8
/* 00864 80B209D4 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 00868 80B209D8 30580008 */  andi    $t8, $v0, 0x0008           ## $t8 = 00000000
/* 0086C 80B209DC 5300002E */  beql    $t8, $zero, .L80B20A98     
/* 00870 80B209E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00874 80B209E4 C4640038 */  lwc1    $f4, 0x0038($v1)           ## 00000038
/* 00878 80B209E8 30480010 */  andi    $t0, $v0, 0x0010           ## $t0 = 00000000
/* 0087C 80B209EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00880 80B209F0 E6040204 */  swc1    $f4, 0x0204($s0)           ## 00000204
/* 00884 80B209F4 C466003C */  lwc1    $f6, 0x003C($v1)           ## 0000003C
/* 00888 80B209F8 260501EC */  addiu   $a1, $s0, 0x01EC           ## $a1 = 000001EC
/* 0088C 80B209FC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00890 80B20A00 E6060208 */  swc1    $f6, 0x0208($s0)           ## 00000208
/* 00894 80B20A04 C4680040 */  lwc1    $f8, 0x0040($v1)           ## 00000040
/* 00898 80B20A08 11000005 */  beq     $t0, $zero, .L80B20A20     
/* 0089C 80B20A0C E608020C */  swc1    $f8, 0x020C($s0)           ## 0000020C
/* 008A0 80B20A10 0C00D285 */  jal     func_80034A14              
/* 008A4 80B20A14 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 008A8 80B20A18 1000001F */  beq     $zero, $zero, .L80B20A98   
/* 008AC 80B20A1C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B20A20:
/* 008B0 80B20A20 8609008A */  lh      $t1, 0x008A($s0)           ## 0000008A
/* 008B4 80B20A24 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 008B8 80B20A28 3C0180B2 */  lui     $at, %hi(D_80B20CD0)       ## $at = 80B20000
/* 008BC 80B20A2C C4300CD0 */  lwc1    $f16, %lo(D_80B20CD0)($at) 
/* 008C0 80B20A30 012A5823 */  subu    $t3, $t1, $t2              
/* 008C4 80B20A34 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 008C8 80B20A38 3C0180B2 */  lui     $at, %hi(D_80B20CD4)       ## $at = 80B20000
/* 008CC 80B20A3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008D0 80B20A40 46805020 */  cvt.s.w $f0, $f10                  
/* 008D4 80B20A44 260501EC */  addiu   $a1, $s0, 0x01EC           ## $a1 = 000001EC
/* 008D8 80B20A48 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 008DC 80B20A4C 4610003C */  c.lt.s  $f0, $f16                  
/* 008E0 80B20A50 00000000 */  nop
/* 008E4 80B20A54 4500000D */  bc1f    .L80B20A8C                 
/* 008E8 80B20A58 00000000 */  nop
/* 008EC 80B20A5C C4320CD4 */  lwc1    $f18, %lo(D_80B20CD4)($at) 
/* 008F0 80B20A60 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 008F4 80B20A64 4600903C */  c.lt.s  $f18, $f0                  
/* 008F8 80B20A68 00000000 */  nop
/* 008FC 80B20A6C 45000007 */  bc1f    .L80B20A8C                 
/* 00900 80B20A70 00000000 */  nop
/* 00904 80B20A74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00908 80B20A78 260501EC */  addiu   $a1, $s0, 0x01EC           ## $a1 = 000001EC
/* 0090C 80B20A7C 0C00D285 */  jal     func_80034A14              
/* 00910 80B20A80 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00914 80B20A84 10000004 */  beq     $zero, $zero, .L80B20A98   
/* 00918 80B20A88 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B20A8C:
/* 0091C 80B20A8C 0C00D285 */  jal     func_80034A14              
/* 00920 80B20A90 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00924 80B20A94 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B20A98:
/* 00928 80B20A98 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0092C 80B20A9C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00930 80B20AA0 03E00008 */  jr      $ra                        
/* 00934 80B20AA4 00000000 */  nop


