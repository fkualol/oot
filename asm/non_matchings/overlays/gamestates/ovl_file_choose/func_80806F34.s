glabel func_80806F34
/* 031F4 80806F34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 031F8 80806F38 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 031FC 80806F3C AFB20020 */  sw      $s2, 0x0020($sp)           
/* 03200 80806F40 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 03204 80806F44 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03208 80806F48 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0320C 80806F4C 8C840000 */  lw      $a0, 0x0000($a0)           ## 00000000
/* 03210 80806F50 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 03214 80806F54 0C031A73 */  jal     Graph_Alloc
              
/* 03218 80806F58 24051040 */  addiu   $a1, $zero, 0x1040         ## $a1 = 00001040
/* 0321C 80806F5C 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 03220 80806F60 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 03224 80806F64 3C0D8081 */  lui     $t5, %hi(D_80812544)       ## $t5 = 80810000
/* 03228 80806F68 00270821 */  addu    $at, $at, $a3              
/* 0322C 80806F6C AC22C9EC */  sw      $v0, -0x3614($at)          ## 0001C9EC
/* 03230 80806F70 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03234 80806F74 34218000 */  ori     $at, $at, 0x8000           ## $at = 00018000
/* 03238 80806F78 24110026 */  addiu   $s1, $zero, 0x0026         ## $s1 = 00000026
/* 0323C 80806F7C 25AD2544 */  addiu   $t5, $t5, %lo(D_80812544)  ## $t5 = 80812544
/* 03240 80806F80 00005025 */  or      $t2, $zero, $zero          ## $t2 = 00000000
/* 03244 80806F84 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 03248 80806F88 00005825 */  or      $t3, $zero, $zero          ## $t3 = 00000000
/* 0324C 80806F8C 241000FF */  addiu   $s0, $zero, 0x00FF         ## $s0 = 000000FF
/* 03250 80806F90 241F0200 */  addiu   $ra, $zero, 0x0200         ## $ra = 00000200
/* 03254 80806F94 00E11821 */  addu    $v1, $a3, $at              
.L80806F98:
/* 03258 80806F98 2408FFA0 */  addiu   $t0, $zero, 0xFFA0         ## $t0 = FFFFFFA0
/* 0325C 80806F9C 00004825 */  or      $t1, $zero, $zero          ## $t1 = 00000000
/* 03260 80806FA0 262CFFF4 */  addiu   $t4, $s1, 0xFFF4           ## $t4 = 0000001A
.L80806FA4:
/* 03264 80806FA4 000A7040 */  sll     $t6, $t2,  1               
/* 03268 80806FA8 01AE3021 */  addu    $a2, $t5, $t6              
/* 0326C 80806FAC 84CF0000 */  lh      $t7, 0x0000($a2)           ## 00000000
/* 03270 80806FB0 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 03274 80806FB4 000B1100 */  sll     $v0, $t3,  4               
/* 03278 80806FB8 01E82821 */  addu    $a1, $t7, $t0              
/* 0327C 80806FBC 00052C00 */  sll     $a1, $a1, 16               
/* 03280 80806FC0 00052C03 */  sra     $a1, $a1, 16               
/* 03284 80806FC4 0302C821 */  addu    $t9, $t8, $v0              
/* 03288 80806FC8 A7250020 */  sh      $a1, 0x0020($t9)           ## 00000020
/* 0328C 80806FCC 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 03290 80806FD0 25290001 */  addiu   $t1, $t1, 0x0001           ## $t1 = 00000001
/* 03294 80806FD4 00094C00 */  sll     $t1, $t1, 16               
/* 03298 80806FD8 01C27821 */  addu    $t7, $t6, $v0              
/* 0329C 80806FDC A5E50000 */  sh      $a1, 0x0000($t7)           ## 00000000
/* 032A0 80806FE0 84D80000 */  lh      $t8, 0x0000($a2)           ## 00000000
/* 032A4 80806FE4 8C7949EC */  lw      $t9, 0x49EC($v1)           ## 000049EC
/* 032A8 80806FE8 00094C03 */  sra     $t1, $t1, 16               
/* 032AC 80806FEC 03082821 */  addu    $a1, $t8, $t0              
/* 032B0 80806FF0 24A5000C */  addiu   $a1, $a1, 0x000C           ## $a1 = 0000000C
/* 032B4 80806FF4 00052C00 */  sll     $a1, $a1, 16               
/* 032B8 80806FF8 00052C03 */  sra     $a1, $a1, 16               
/* 032BC 80806FFC 03227021 */  addu    $t6, $t9, $v0              
/* 032C0 80807000 A5C50030 */  sh      $a1, 0x0030($t6)           ## 00000030
/* 032C4 80807004 8C6F49EC */  lw      $t7, 0x49EC($v1)           ## 000049EC
/* 032C8 80807008 256B0004 */  addiu   $t3, $t3, 0x0004           ## $t3 = 00000004
/* 032CC 8080700C 254A0001 */  addiu   $t2, $t2, 0x0001           ## $t2 = 00000001
/* 032D0 80807010 01E2C021 */  addu    $t8, $t7, $v0              
/* 032D4 80807014 A7050010 */  sh      $a1, 0x0010($t8)           ## 00000010
/* 032D8 80807018 8C7949EC */  lw      $t9, 0x49EC($v1)           ## 000049EC
/* 032DC 8080701C 25080010 */  addiu   $t0, $t0, 0x0010           ## $t0 = FFFFFFB0
/* 032E0 80807020 000A5400 */  sll     $t2, $t2, 16               
/* 032E4 80807024 03227021 */  addu    $t6, $t9, $v0              
/* 032E8 80807028 A5D10012 */  sh      $s1, 0x0012($t6)           ## 00000012
/* 032EC 8080702C 8C6F49EC */  lw      $t7, 0x49EC($v1)           ## 000049EC
/* 032F0 80807030 000B5C00 */  sll     $t3, $t3, 16               
/* 032F4 80807034 2921000D */  slti    $at, $t1, 0x000D           
/* 032F8 80807038 01E22021 */  addu    $a0, $t7, $v0              
/* 032FC 8080703C 84980012 */  lh      $t8, 0x0012($a0)           ## 00000012
/* 03300 80807040 00084400 */  sll     $t0, $t0, 16               
/* 03304 80807044 000B5C03 */  sra     $t3, $t3, 16               
/* 03308 80807048 A4980002 */  sh      $t8, 0x0002($a0)           ## 00000002
/* 0330C 8080704C 8C7949EC */  lw      $t9, 0x49EC($v1)           ## 000049EC
/* 03310 80807050 000A5403 */  sra     $t2, $t2, 16               
/* 03314 80807054 00084403 */  sra     $t0, $t0, 16               
/* 03318 80807058 03227021 */  addu    $t6, $t9, $v0              
/* 0331C 8080705C A5CC0032 */  sh      $t4, 0x0032($t6)           ## 00000032
/* 03320 80807060 8C6F49EC */  lw      $t7, 0x49EC($v1)           ## 000049EC
/* 03324 80807064 01E2C021 */  addu    $t8, $t7, $v0              
/* 03328 80807068 A70C0022 */  sh      $t4, 0x0022($t8)           ## 00000022
/* 0332C 8080706C 8C7949EC */  lw      $t9, 0x49EC($v1)           ## 000049EC
/* 03330 80807070 03227021 */  addu    $t6, $t9, $v0              
/* 03334 80807074 A5C00034 */  sh      $zero, 0x0034($t6)         ## 00000034
/* 03338 80807078 8C6F49EC */  lw      $t7, 0x49EC($v1)           ## 000049EC
/* 0333C 8080707C 01E22021 */  addu    $a0, $t7, $v0              
/* 03340 80807080 84850034 */  lh      $a1, 0x0034($a0)           ## 00000034
/* 03344 80807084 A4850024 */  sh      $a1, 0x0024($a0)           ## 00000024
/* 03348 80807088 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 0334C 8080708C 0302C821 */  addu    $t9, $t8, $v0              
/* 03350 80807090 A7250014 */  sh      $a1, 0x0014($t9)           ## 00000014
/* 03354 80807094 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 03358 80807098 01C27821 */  addu    $t7, $t6, $v0              
/* 0335C 8080709C A5E50004 */  sh      $a1, 0x0004($t7)           ## 00000004
/* 03360 808070A0 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 03364 808070A4 0302C821 */  addu    $t9, $t8, $v0              
/* 03368 808070A8 A7200036 */  sh      $zero, 0x0036($t9)         ## 00000036
/* 0336C 808070AC 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 03370 808070B0 01C22021 */  addu    $a0, $t6, $v0              
/* 03374 808070B4 94850036 */  lhu     $a1, 0x0036($a0)           ## 00000036
/* 03378 808070B8 A4850026 */  sh      $a1, 0x0026($a0)           ## 00000026
/* 0337C 808070BC 8C6F49EC */  lw      $t7, 0x49EC($v1)           ## 000049EC
/* 03380 808070C0 01E2C021 */  addu    $t8, $t7, $v0              
/* 03384 808070C4 A7050016 */  sh      $a1, 0x0016($t8)           ## 00000016
/* 03388 808070C8 8C7949EC */  lw      $t9, 0x49EC($v1)           ## 000049EC
/* 0338C 808070CC 03227021 */  addu    $t6, $t9, $v0              
/* 03390 808070D0 A5C50006 */  sh      $a1, 0x0006($t6)           ## 00000006
/* 03394 808070D4 8C6F49EC */  lw      $t7, 0x49EC($v1)           ## 000049EC
/* 03398 808070D8 01E2C021 */  addu    $t8, $t7, $v0              
/* 0339C 808070DC A7000028 */  sh      $zero, 0x0028($t8)         ## 00000028
/* 033A0 808070E0 8C7949EC */  lw      $t9, 0x49EC($v1)           ## 000049EC
/* 033A4 808070E4 03222021 */  addu    $a0, $t9, $v0              
/* 033A8 808070E8 84850028 */  lh      $a1, 0x0028($a0)           ## 00000028
/* 033AC 808070EC A485001A */  sh      $a1, 0x001A($a0)           ## 0000001A
/* 033B0 808070F0 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 033B4 808070F4 01C27821 */  addu    $t7, $t6, $v0              
/* 033B8 808070F8 A5E5000A */  sh      $a1, 0x000A($t7)           ## 0000000A
/* 033BC 808070FC 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 033C0 80807100 0302C821 */  addu    $t9, $t8, $v0              
/* 033C4 80807104 A7250008 */  sh      $a1, 0x0008($t9)           ## 00000008
/* 033C8 80807108 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 033CC 8080710C 01C27821 */  addu    $t7, $t6, $v0              
/* 033D0 80807110 A5FF003A */  sh      $ra, 0x003A($t7)           ## 0000003A
/* 033D4 80807114 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 033D8 80807118 03022021 */  addu    $a0, $t8, $v0              
/* 033DC 8080711C 8485003A */  lh      $a1, 0x003A($a0)           ## 0000003A
/* 033E0 80807120 A4850038 */  sh      $a1, 0x0038($a0)           ## 00000038
/* 033E4 80807124 8C7949EC */  lw      $t9, 0x49EC($v1)           ## 000049EC
/* 033E8 80807128 03227021 */  addu    $t6, $t9, $v0              
/* 033EC 8080712C A5C5002A */  sh      $a1, 0x002A($t6)           ## 0000002A
/* 033F0 80807130 8C6F49EC */  lw      $t7, 0x49EC($v1)           ## 000049EC
/* 033F4 80807134 01E2C021 */  addu    $t8, $t7, $v0              
/* 033F8 80807138 A7050018 */  sh      $a1, 0x0018($t8)           ## 00000018
/* 033FC 8080713C 8C7949EC */  lw      $t9, 0x49EC($v1)           ## 000049EC
/* 03400 80807140 03227021 */  addu    $t6, $t9, $v0              
/* 03404 80807144 A1D0003F */  sb      $s0, 0x003F($t6)           ## 0000003F
/* 03408 80807148 8C6F49EC */  lw      $t7, 0x49EC($v1)           ## 000049EC
/* 0340C 8080714C 01E22021 */  addu    $a0, $t7, $v0              
/* 03410 80807150 9086003F */  lbu     $a2, 0x003F($a0)           ## 0000003F
/* 03414 80807154 A086002F */  sb      $a2, 0x002F($a0)           ## 0000002F
/* 03418 80807158 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 0341C 8080715C 0302C821 */  addu    $t9, $t8, $v0              
/* 03420 80807160 A326001F */  sb      $a2, 0x001F($t9)           ## 0000001F
/* 03424 80807164 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 03428 80807168 01C27821 */  addu    $t7, $t6, $v0              
/* 0342C 8080716C A1E6000F */  sb      $a2, 0x000F($t7)           ## 0000000F
/* 03430 80807170 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 03434 80807174 0302C821 */  addu    $t9, $t8, $v0              
/* 03438 80807178 A326003E */  sb      $a2, 0x003E($t9)           ## 0000003E
/* 0343C 8080717C 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 03440 80807180 01C27821 */  addu    $t7, $t6, $v0              
/* 03444 80807184 A1E6002E */  sb      $a2, 0x002E($t7)           ## 0000002E
/* 03448 80807188 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 0344C 8080718C 0302C821 */  addu    $t9, $t8, $v0              
/* 03450 80807190 A326001E */  sb      $a2, 0x001E($t9)           ## 0000001E
/* 03454 80807194 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 03458 80807198 01C27821 */  addu    $t7, $t6, $v0              
/* 0345C 8080719C A1E6000E */  sb      $a2, 0x000E($t7)           ## 0000000E
/* 03460 808071A0 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 03464 808071A4 0302C821 */  addu    $t9, $t8, $v0              
/* 03468 808071A8 A326003D */  sb      $a2, 0x003D($t9)           ## 0000003D
/* 0346C 808071AC 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 03470 808071B0 01C27821 */  addu    $t7, $t6, $v0              
/* 03474 808071B4 A1E6002D */  sb      $a2, 0x002D($t7)           ## 0000002D
/* 03478 808071B8 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 0347C 808071BC 0302C821 */  addu    $t9, $t8, $v0              
/* 03480 808071C0 A326001D */  sb      $a2, 0x001D($t9)           ## 0000001D
/* 03484 808071C4 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 03488 808071C8 01C27821 */  addu    $t7, $t6, $v0              
/* 0348C 808071CC A1E6000D */  sb      $a2, 0x000D($t7)           ## 0000000D
/* 03490 808071D0 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 03494 808071D4 0302C821 */  addu    $t9, $t8, $v0              
/* 03498 808071D8 A326003C */  sb      $a2, 0x003C($t9)           ## 0000003C
/* 0349C 808071DC 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 034A0 808071E0 01C27821 */  addu    $t7, $t6, $v0              
/* 034A4 808071E4 A1E6002C */  sb      $a2, 0x002C($t7)           ## 0000002C
/* 034A8 808071E8 8C7849EC */  lw      $t8, 0x49EC($v1)           ## 000049EC
/* 034AC 808071EC 0302C821 */  addu    $t9, $t8, $v0              
/* 034B0 808071F0 A326001C */  sb      $a2, 0x001C($t9)           ## 0000001C
/* 034B4 808071F4 8C6E49EC */  lw      $t6, 0x49EC($v1)           ## 000049EC
/* 034B8 808071F8 01C27821 */  addu    $t7, $t6, $v0              
/* 034BC 808071FC 1420FF69 */  bne     $at, $zero, .L80806FA4     
/* 034C0 80807200 A1E6000C */  sb      $a2, 0x000C($t7)           ## 0000000C
/* 034C4 80807204 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 034C8 80807208 00129400 */  sll     $s2, $s2, 16               
/* 034CC 8080720C 00129403 */  sra     $s2, $s2, 16               
/* 034D0 80807210 2631FFF0 */  addiu   $s1, $s1, 0xFFF0           ## $s1 = 00000016
/* 034D4 80807214 2A410005 */  slti    $at, $s2, 0x0005           
/* 034D8 80807218 00118C00 */  sll     $s1, $s1, 16               
/* 034DC 8080721C 1420FF5E */  bne     $at, $zero, .L80806F98     
/* 034E0 80807220 00118C03 */  sra     $s1, $s1, 16               
/* 034E4 80807224 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 034E8 80807228 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 034EC 8080722C 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 034F0 80807230 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 034F4 80807234 03E00008 */  jr      $ra                        
/* 034F8 80807238 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


