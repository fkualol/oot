glabel func_80A01E24
/* 001F4 80A01E24 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 001F8 80A01E28 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 001FC 80A01E2C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00200 80A01E30 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 00204 80A01E34 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00208 80A01E38 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 0020C 80A01E3C 3C0980A0 */  lui     $t1, %hi(func_80A02AA4)    ## $t1 = 80A00000
/* 00210 80A01E40 24190400 */  addiu   $t9, $zero, 0x0400         ## $t9 = 00000400
/* 00214 80A01E44 24081000 */  addiu   $t0, $zero, 0x1000         ## $t0 = 00001000
/* 00218 80A01E48 25292AA4 */  addiu   $t1, $t1, %lo(func_80A02AA4) ## $t1 = 80A02AA4
/* 0021C 80A01E4C A49902AE */  sh      $t9, 0x02AE($a0)           ## 000002AE
/* 00220 80A01E50 A48802B0 */  sh      $t0, 0x02B0($a0)           ## 000002B0
/* 00224 80A01E54 AC8902C8 */  sw      $t1, 0x02C8($a0)           ## 000002C8
/* 00228 80A01E58 E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
/* 0022C 80A01E5C E48202B4 */  swc1    $f2, 0x02B4($a0)           ## 000002B4
/* 00230 80A01E60 03E00008 */  jr      $ra                        
/* 00234 80A01E64 E48802B8 */  swc1    $f8, 0x02B8($a0)           ## 000002B8


