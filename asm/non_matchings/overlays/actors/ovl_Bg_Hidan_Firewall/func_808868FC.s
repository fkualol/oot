glabel func_808868FC
/* 0029C 808868FC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 002A0 80886900 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002A4 80886904 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002A8 80886908 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 002AC 8088690C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002B0 80886910 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 002B4 80886914 0C00B6F4 */  jal     func_8002DBD0              
/* 002B8 80886918 24460024 */  addiu   $a2, $v0, 0x0024           ## $a2 = 00000024
/* 002BC 8088691C 3C01C28C */  lui     $at, 0xC28C                ## $at = C28C0000
/* 002C0 80886920 44810000 */  mtc1    $at, $f0                   ## $f0 = -70.00
/* 002C4 80886924 C7A20030 */  lwc1    $f2, 0x0030($sp)           
/* 002C8 80886928 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 002CC 8088692C 4600103C */  c.lt.s  $f2, $f0                   
/* 002D0 80886930 00000000 */  nop
/* 002D4 80886934 45020004 */  bc1fl   .L80886948                 
/* 002D8 80886938 44816000 */  mtc1    $at, $f12                  ## $f12 = 70.00
/* 002DC 8088693C 1000000B */  beq     $zero, $zero, .L8088696C   
/* 002E0 80886940 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 002E4 80886944 44816000 */  mtc1    $at, $f12                  ## $f12 = 70.00
.L80886948:
/* 002E8 80886948 00000000 */  nop
/* 002EC 8088694C 4602603C */  c.lt.s  $f12, $f2                  
/* 002F0 80886950 00000000 */  nop
/* 002F4 80886954 45020004 */  bc1fl   .L80886968                 
/* 002F8 80886958 46001006 */  mov.s   $f0, $f2                   
/* 002FC 8088695C 10000002 */  beq     $zero, $zero, .L80886968   
/* 00300 80886960 46006006 */  mov.s   $f0, $f12                  
/* 00304 80886964 46001006 */  mov.s   $f0, $f2                   
.L80886968:
/* 00308 80886968 E7A00030 */  swc1    $f0, 0x0030($sp)           
.L8088696C:
/* 0030C 8088696C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00310 80886970 C7A60038 */  lwc1    $f6, 0x0038($sp)           
/* 00314 80886974 54400013 */  bnel    $v0, $zero, .L808869C4     
/* 00318 80886978 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 0031C 8088697C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00320 80886980 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00324 80886984 4606203C */  c.lt.s  $f4, $f6                   
/* 00328 80886988 00000000 */  nop
/* 0032C 8088698C 45020008 */  bc1fl   .L808869B0                 
/* 00330 80886990 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 00334 80886994 3C01C1C8 */  lui     $at, 0xC1C8                ## $at = C1C80000
/* 00338 80886998 44814000 */  mtc1    $at, $f8                   ## $f8 = -25.00
/* 0033C 8088699C 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00340 808869A0 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 00344 808869A4 1000000C */  beq     $zero, $zero, .L808869D8   
/* 00348 808869A8 A60E001C */  sh      $t6, 0x001C($s0)           ## 0000001C
/* 0034C 808869AC 44815000 */  mtc1    $at, $f10                  ## $f10 = -25.00
.L808869B0:
/* 00350 808869B0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00354 808869B4 E7AA0038 */  swc1    $f10, 0x0038($sp)          
/* 00358 808869B8 10000007 */  beq     $zero, $zero, .L808869D8   
/* 0035C 808869BC A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 00360 808869C0 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
.L808869C4:
/* 00364 808869C4 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00368 808869C8 44812000 */  mtc1    $at, $f4                   ## $f4 = 25.00
/* 0036C 808869CC 468084A0 */  cvt.s.w $f18, $f16                 
/* 00370 808869D0 46049182 */  mul.s   $f6, $f18, $f4             
/* 00374 808869D4 E7A60038 */  swc1    $f6, 0x0038($sp)           
.L808869D8:
/* 00378 808869D8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0037C 808869DC 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00380 808869E0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00384 808869E4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00388 808869E8 E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 0038C 808869EC C7AA0030 */  lwc1    $f10, 0x0030($sp)          
/* 00390 808869F0 C7A20028 */  lwc1    $f2, 0x0028($sp)           
/* 00394 808869F4 C7A40038 */  lwc1    $f4, 0x0038($sp)           
/* 00398 808869F8 46005402 */  mul.s   $f16, $f10, $f0            
/* 0039C 808869FC C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 003A0 80886A00 46022182 */  mul.s   $f6, $f4, $f2              
/* 003A4 80886A04 46104480 */  add.s   $f18, $f8, $f16            
/* 003A8 80886A08 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 003AC 80886A0C 46069280 */  add.s   $f10, $f18, $f6            
/* 003B0 80886A10 4600520D */  trunc.w.s $f8, $f10                  
/* 003B4 80886A14 44194000 */  mfc1    $t9, $f8                   
/* 003B8 80886A18 00000000 */  nop
/* 003BC 80886A1C A619019A */  sh      $t9, 0x019A($s0)           ## 0000019A
/* 003C0 80886A20 C7A40030 */  lwc1    $f4, 0x0030($sp)           
/* 003C4 80886A24 C7AA0038 */  lwc1    $f10, 0x0038($sp)          
/* 003C8 80886A28 46022482 */  mul.s   $f18, $f4, $f2             
/* 003CC 80886A2C 46128181 */  sub.s   $f6, $f16, $f18            
/* 003D0 80886A30 46005202 */  mul.s   $f8, $f10, $f0             
/* 003D4 80886A34 46083100 */  add.s   $f4, $f6, $f8              
/* 003D8 80886A38 4600240D */  trunc.w.s $f16, $f4                  
/* 003DC 80886A3C 44098000 */  mfc1    $t1, $f16                  
/* 003E0 80886A40 00000000 */  nop
/* 003E4 80886A44 A609019E */  sh      $t1, 0x019E($s0)           ## 0000019E
/* 003E8 80886A48 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003EC 80886A4C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003F0 80886A50 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 003F4 80886A54 03E00008 */  jr      $ra                        
/* 003F8 80886A58 00000000 */  nop

