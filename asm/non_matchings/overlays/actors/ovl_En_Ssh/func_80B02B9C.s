glabel func_80B02B9C
/* 0092C 80B02B9C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00930 80B02BA0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00934 80B02BA4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00938 80B02BA8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0093C 80B02BAC 8482052C */  lh      $v0, 0x052C($a0)           ## 0000052C
/* 00940 80B02BB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00944 80B02BB4 10400002 */  beq     $v0, $zero, .L80B02BC0     
/* 00948 80B02BB8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0094C 80B02BBC A48E052C */  sh      $t6, 0x052C($a0)           ## 0000052C
.L80B02BC0:
/* 00950 80B02BC0 8602052A */  lh      $v0, 0x052A($s0)           ## 0000052A
/* 00954 80B02BC4 14400003 */  bne     $v0, $zero, .L80B02BD4     
/* 00958 80B02BC8 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 0095C 80B02BCC 10000004 */  beq     $zero, $zero, .L80B02BE0   
/* 00960 80B02BD0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B02BD4:
/* 00964 80B02BD4 A60F052A */  sh      $t7, 0x052A($s0)           ## 0000052A
/* 00968 80B02BD8 8602052A */  lh      $v0, 0x052A($s0)           ## 0000052A
/* 0096C 80B02BDC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80B02BE0:
/* 00970 80B02BE0 50600012 */  beql    $v1, $zero, .L80B02C2C     
/* 00974 80B02BE4 86090536 */  lh      $t1, 0x0536($s0)           ## 00000536
/* 00978 80B02BE8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0097C 80B02BEC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00980 80B02BF0 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00984 80B02BF4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00988 80B02BF8 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 0098C 80B02BFC 3C0180B0 */  lui     $at, %hi(D_80B045F4)       ## $at = 80B00000
/* 00990 80B02C00 C43045F4 */  lwc1    $f16, %lo(D_80B045F4)($at) 
/* 00994 80B02C04 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00998 80B02C08 46083283 */  div.s   $f10, $f6, $f8             
/* 0099C 80B02C0C 468021A0 */  cvt.s.w $f6, $f4                   
/* 009A0 80B02C10 460A8482 */  mul.s   $f18, $f16, $f10           
/* 009A4 80B02C14 46123200 */  add.s   $f8, $f6, $f18             
/* 009A8 80B02C18 4600440D */  trunc.w.s $f16, $f8                  
/* 009AC 80B02C1C 44088000 */  mfc1    $t0, $f16                  
/* 009B0 80B02C20 1000000D */  beq     $zero, $zero, .L80B02C58   
/* 009B4 80B02C24 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 009B8 80B02C28 86090536 */  lh      $t1, 0x0536($s0)           ## 00000536
.L80B02C2C:
/* 009BC 80B02C2C 5520000B */  bnel    $t1, $zero, .L80B02C5C     
/* 009C0 80B02C30 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 009C4 80B02C34 860A0532 */  lh      $t2, 0x0532($s0)           ## 00000532
/* 009C8 80B02C38 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 009CC 80B02C3C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 009D0 80B02C40 15400005 */  bne     $t2, $zero, .L80B02C58     
/* 009D4 80B02C44 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 009D8 80B02C48 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 009DC 80B02C4C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 009E0 80B02C50 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 009E4 80B02C54 AFAB0010 */  sw      $t3, 0x0010($sp)           
.L80B02C58:
/* 009E8 80B02C58 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
.L80B02C5C:
/* 009EC 80B02C5C A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 009F0 80B02C60 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 009F4 80B02C64 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 009F8 80B02C68 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 009FC 80B02C6C 03E00008 */  jr      $ra                        
/* 00A00 80B02C70 00000000 */  nop

