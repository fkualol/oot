glabel func_80B1871C
/* 003BC 80B1871C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003C0 80B18720 3C0E80B2 */  lui     $t6, %hi(D_80B18968)       ## $t6 = 80B20000
/* 003C4 80B18724 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003C8 80B18728 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 003CC 80B1872C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 003D0 80B18730 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 003D4 80B18734 25CE8968 */  addiu   $t6, $t6, %lo(D_80B18968)  ## $t6 = 80B18968
/* 003D8 80B18738 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B18968
/* 003DC 80B1873C 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 003E0 80B18740 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 003E4 80B18744 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 003E8 80B18748 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B1896C
/* 003EC 80B1874C AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 003F0 80B18750 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B18970
/* 003F4 80B18754 14A10004 */  bne     $a1, $at, .L80B18768       
/* 003F8 80B18758 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 003FC 80B1875C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00400 80B18760 0C0346BD */  jal     Matrix_MultVec3f              
/* 00404 80B18764 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
.L80B18768:
/* 00408 80B18768 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0040C 80B1876C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00410 80B18770 03E00008 */  jr      $ra                        
/* 00414 80B18774 00000000 */  nop

