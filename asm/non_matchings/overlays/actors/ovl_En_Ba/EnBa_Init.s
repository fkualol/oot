glabel EnBa_Init
/* 00008 809B6358 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0000C 809B635C 3C0E809C */  lui     $t6, %hi(D_809B80E4)       ## $t6 = 809C0000
/* 00010 809B6360 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00014 809B6364 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00018 809B6368 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0001C 809B636C 25CE80E4 */  addiu   $t6, $t6, %lo(D_809B80E4)  ## $t6 = 809B80E4
/* 00020 809B6370 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809B80E4
/* 00024 809B6374 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFF0
/* 00028 809B6378 3C05809C */  lui     $a1, %hi(D_809B80F0)       ## $a1 = 809C0000
/* 0002C 809B637C AD180000 */  sw      $t8, 0x0000($t0)           ## FFFFFFF0
/* 00030 809B6380 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809B80E8
/* 00034 809B6384 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00038 809B6388 24A580F0 */  addiu   $a1, $a1, %lo(D_809B80F0)  ## $a1 = 809B80F0
/* 0003C 809B638C AD0F0004 */  sw      $t7, 0x0004($t0)           ## FFFFFFF4
/* 00040 809B6390 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809B80EC
/* 00044 809B6394 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00048 809B6398 AD180008 */  sw      $t8, 0x0008($t0)           ## FFFFFFF8
/* 0004C 809B639C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00050 809B63A0 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00054 809B63A4 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00058 809B63A8 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 0005C 809B63AC 44810000 */  mtc1    $at, $f0                   ## $f0 = 32.00
/* 00060 809B63B0 46062200 */  add.s   $f8, $f4, $f6              
/* 00064 809B63B4 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFF0
/* 00068 809B63B8 2403000D */  addiu   $v1, $zero, 0x000D         ## $v1 = 0000000D
/* 0006C 809B63BC 26070024 */  addiu   $a3, $s0, 0x0024           ## $a3 = 00000024
/* 00070 809B63C0 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00074 809B63C4 2406C000 */  addiu   $a2, $zero, 0xC000         ## $a2 = FFFFC000
/* 00078 809B63C8 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 0007C 809B63CC 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
.L809B63D0:
/* 00080 809B63D0 00640019 */  multu   $v1, $a0                   
/* 00084 809B63D4 8D0A0000 */  lw      $t2, 0x0000($t0)           ## FFFFFFF0
/* 00088 809B63D8 246F0001 */  addiu   $t7, $v1, 0x0001           ## $t7 = 0000000E
/* 0008C 809B63DC 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 00090 809B63E0 00000000 */  nop
/* 00094 809B63E4 468084A0 */  cvt.s.w $f18, $f16                 
/* 00098 809B63E8 0000C812 */  mflo    $t9                        
/* 0009C 809B63EC 02191021 */  addu    $v0, $s0, $t9              
/* 000A0 809B63F0 AC4A0200 */  sw      $t2, 0x0200($v0)           ## 00000200
/* 000A4 809B63F4 00650019 */  multu   $v1, $a1                   
/* 000A8 809B63F8 8D090004 */  lw      $t1, 0x0004($t0)           ## FFFFFFF4
/* 000AC 809B63FC 46009102 */  mul.s   $f4, $f18, $f0             
/* 000B0 809B6400 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 0000000C
/* 000B4 809B6404 AC490204 */  sw      $t1, 0x0204($v0)           ## 00000204
/* 000B8 809B6408 8D0A0008 */  lw      $t2, 0x0008($t0)           ## FFFFFFF8
/* 000BC 809B640C 00031C00 */  sll     $v1, $v1, 16               
/* 000C0 809B6410 00031C03 */  sra     $v1, $v1, 16               
/* 000C4 809B6414 AC4A0208 */  sw      $t2, 0x0208($v0)           ## 00000208
/* 000C8 809B6418 00005812 */  mflo    $t3                        
/* 000CC 809B641C 020B6021 */  addu    $t4, $s0, $t3              
/* 000D0 809B6420 A58602A8 */  sh      $a2, 0x02A8($t4)           ## 000002A8
/* 000D4 809B6424 8CEE0000 */  lw      $t6, 0x0000($a3)           ## 00000024
/* 000D8 809B6428 AC4E0158 */  sw      $t6, 0x0158($v0)           ## 00000158
/* 000DC 809B642C 8CED0004 */  lw      $t5, 0x0004($a3)           ## 00000028
/* 000E0 809B6430 AC4D015C */  sw      $t5, 0x015C($v0)           ## 0000015C
/* 000E4 809B6434 8CEE0008 */  lw      $t6, 0x0008($a3)           ## 0000002C
/* 000E8 809B6438 AC4E0160 */  sw      $t6, 0x0160($v0)           ## 00000160
/* 000EC 809B643C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 000F0 809B6440 46045181 */  sub.s   $f6, $f10, $f4             
/* 000F4 809B6444 0461FFE2 */  bgez    $v1, .L809B63D0            
/* 000F8 809B6448 E446015C */  swc1    $f6, 0x015C($v0)           ## 0000015C
/* 000FC 809B644C 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00100 809B6450 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00104 809B6454 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 00108 809B6458 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 0010C 809B645C A60C001C */  sh      $t4, 0x001C($s0)           ## 0000001C
/* 00110 809B6460 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 00114 809B6464 00194A03 */  sra     $t1, $t9,  8               
/* 00118 809B6468 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000000
/* 0011C 809B646C 29A10003 */  slti    $at, $t5, 0x0003           
/* 00120 809B6470 A218001F */  sb      $t8, 0x001F($s0)           ## 0000001F
/* 00124 809B6474 10200027 */  beq     $at, $zero, .L809B6514     
/* 00128 809B6478 A60A0154 */  sh      $t2, 0x0154($s0)           ## 00000154
/* 0012C 809B647C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00130 809B6480 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00134 809B6484 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00138 809B6488 10400005 */  beq     $v0, $zero, .L809B64A0     
/* 0013C 809B648C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00140 809B6490 0C00B55C */  jal     Actor_Kill
              
/* 00144 809B6494 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00148 809B6498 10000025 */  beq     $zero, $zero, .L809B6530   
/* 0014C 809B649C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809B64A0:
/* 00150 809B64A0 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00154 809B64A4 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00158 809B64A8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0015C 809B64AC 0C00AC78 */  jal     ActorShape_Init
              
/* 00160 809B64B0 3C074240 */  lui     $a3, 0x4240                ## $a3 = 42400000
/* 00164 809B64B4 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00168 809B64B8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 0016C 809B64BC 0C00B58B */  jal     Actor_SetScale
              
/* 00170 809B64C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00174 809B64C4 0C26D95A */  jal     func_809B6568              
/* 00178 809B64C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0017C 809B64CC 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00180 809B64D0 240F00FE */  addiu   $t7, $zero, 0x00FE         ## $t7 = 000000FE
/* 00184 809B64D4 A20E00AF */  sb      $t6, 0x00AF($s0)           ## 000000AF
/* 00188 809B64D8 A20F00AE */  sb      $t7, 0x00AE($s0)           ## 000000AE
/* 0018C 809B64DC 26050320 */  addiu   $a1, $s0, 0x0320           ## $a1 = 00000320
/* 00190 809B64E0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00194 809B64E4 0C016EFE */  jal     func_8005BBF8              
/* 00198 809B64E8 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 0019C 809B64EC 3C07809C */  lui     $a3, %hi(D_809B80D4)       ## $a3 = 809C0000
/* 001A0 809B64F0 26180340 */  addiu   $t8, $s0, 0x0340           ## $t8 = 00000340
/* 001A4 809B64F4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 001A8 809B64F8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 001AC 809B64FC 24E780D4 */  addiu   $a3, $a3, %lo(D_809B80D4)  ## $a3 = 809B80D4
/* 001B0 809B6500 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 001B4 809B6504 0C017014 */  jal     func_8005C050              
/* 001B8 809B6508 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001BC 809B650C 10000008 */  beq     $zero, $zero, .L809B6530   
/* 001C0 809B6510 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809B6514:
/* 001C4 809B6514 3C053CAC */  lui     $a1, 0x3CAC                ## $a1 = 3CAC0000
/* 001C8 809B6518 34A50831 */  ori     $a1, $a1, 0x0831           ## $a1 = 3CAC0831
/* 001CC 809B651C 0C00B58B */  jal     Actor_SetScale
              
/* 001D0 809B6520 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001D4 809B6524 0C26DA75 */  jal     func_809B69D4              
/* 001D8 809B6528 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001DC 809B652C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809B6530:
/* 001E0 809B6530 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 001E4 809B6534 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 001E8 809B6538 03E00008 */  jr      $ra                        
/* 001EC 809B653C 00000000 */  nop


