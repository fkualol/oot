glabel func_80065134
/* ADC2D4 80065134 AFA40000 */  sw    $a0, ($sp)
/* ADC2D8 80065138 94AF0010 */  lhu   $t7, 0x10($a1)
/* ADC2DC 8006513C 94CE0002 */  lhu   $t6, 2($a2)
/* ADC2E0 80065140 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* ADC2E4 80065144 15CF0022 */  bne   $t6, $t7, .L800651D0
/* ADC2E8 80065148 00000000 */   nop   
/* ADC2EC 8006514C 90D80006 */  lbu   $t8, 6($a2)
/* ADC2F0 80065150 3C013CB4 */  li    $at, 0x3CB40000 # 0.000000
/* ADC2F4 80065154 44810000 */  mtc1  $at, $f0
/* ADC2F8 80065158 44982000 */  mtc1  $t8, $f4
/* ADC2FC 8006515C 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* ADC300 80065160 07010005 */  bgez  $t8, .L80065178
/* ADC304 80065164 468021A0 */   cvt.s.w $f6, $f4
/* ADC308 80065168 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* ADC30C 8006516C 44814000 */  mtc1  $at, $f8
/* ADC310 80065170 00000000 */  nop   
/* ADC314 80065174 46083180 */  add.s $f6, $f6, $f8
.L80065178:
/* ADC318 80065178 90C80007 */  lbu   $t0, 7($a2)
/* ADC31C 8006517C 3C014270 */  li    $at, 0x42700000 # 0.000000
/* ADC320 80065180 44815000 */  mtc1  $at, $f10
/* ADC324 80065184 25090001 */  addiu $t1, $t0, 1
/* ADC328 80065188 44894000 */  mtc1  $t1, $f8
/* ADC32C 8006518C 460A3402 */  mul.s $f16, $f6, $f10
/* ADC330 80065190 468041A0 */  cvt.s.w $f6, $f8
/* ADC334 80065194 46008483 */  div.s $f18, $f16, $f0
/* ADC338 80065198 46003283 */  div.s $f10, $f6, $f0
/* ADC33C 8006519C 4600910D */  trunc.w.s $f4, $f18
/* ADC340 800651A0 44022000 */  mfc1  $v0, $f4
/* ADC344 800651A4 00000000 */  nop   
/* ADC348 800651A8 00021400 */  sll   $v0, $v0, 0x10
/* ADC34C 800651AC 00021403 */  sra   $v0, $v0, 0x10
/* ADC350 800651B0 4600540D */  trunc.w.s $f16, $f10
/* ADC354 800651B4 44038000 */  mfc1  $v1, $f16
/* ADC358 800651B8 00000000 */  nop   
/* ADC35C 800651BC 00031C00 */  sll   $v1, $v1, 0x10
/* ADC360 800651C0 00031C03 */  sra   $v1, $v1, 0x10
/* ADC364 800651C4 00432021 */  addu  $a0, $v0, $v1
/* ADC368 800651C8 A4A4000C */  sh    $a0, 0xc($a1)
/* ADC36C 800651CC A4A4141A */  sh    $a0, 0x141a($a1)
.L800651D0:
/* ADC370 800651D0 03E00008 */  jr    $ra
/* ADC374 800651D4 00000000 */   nop   

