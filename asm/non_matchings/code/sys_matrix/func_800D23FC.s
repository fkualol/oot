glabel func_800D23FC
/* B4959C 800D23FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B495A0 800D2400 AFA60048 */  sw    $a2, 0x48($sp)
/* B495A4 800D2404 30C600FF */  andi  $a2, $a2, 0xff
/* B495A8 800D2408 F7B40018 */  sdc1  $f20, 0x18($sp)
/* B495AC 800D240C 24010001 */  li    $at, 1
/* B495B0 800D2410 46006506 */  mov.s $f20, $f12
/* B495B4 800D2414 AFBF003C */  sw    $ra, 0x3c($sp)
/* B495B8 800D2418 AFB00038 */  sw    $s0, 0x38($sp)
/* B495BC 800D241C F7BA0030 */  sdc1  $f26, 0x30($sp)
/* B495C0 800D2420 F7B80028 */  sdc1  $f24, 0x28($sp)
/* B495C4 800D2424 14C100A4 */  bne   $a2, $at, .L800D26B8
/* B495C8 800D2428 F7B60020 */   sdc1  $f22, 0x20($sp)
/* B495CC 800D242C 44802000 */  mtc1  $zero, $f4
/* B495D0 800D2430 3C108017 */  lui   $s0, %hi(sCurrentMatrix)
/* B495D4 800D2434 46046032 */  c.eq.s $f12, $f4
/* B495D8 800D2438 00000000 */  nop   
/* B495DC 800D243C 45030100 */  bc1tl .L800D2840
/* B495E0 800D2440 8FBF003C */   lw    $ra, 0x3c($sp)
/* B495E4 800D2444 8E10A7C4 */  lw    $s0, %lo(sCurrentMatrix)($s0)
/* B495E8 800D2448 0C0400A4 */  jal   sinf
/* B495EC 800D244C AFA50044 */   sw    $a1, 0x44($sp)
/* B495F0 800D2450 46000686 */  mov.s $f26, $f0
/* B495F4 800D2454 0C041184 */  jal   cosf
/* B495F8 800D2458 4600A306 */   mov.s $f12, $f20
/* B495FC 800D245C 8FA50044 */  lw    $a1, 0x44($sp)
/* B49600 800D2460 C60E0000 */  lwc1  $f14, ($s0)
/* B49604 800D2464 C6020010 */  lwc1  $f2, 0x10($s0)
/* B49608 800D2468 C4B40000 */  lwc1  $f20, ($a1)
/* B4960C 800D246C C4B60004 */  lwc1  $f22, 4($a1)
/* B49610 800D2470 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B49614 800D2474 460EA202 */  mul.s $f8, $f20, $f14
/* B49618 800D2478 44813000 */  mtc1  $at, $f6
/* B4961C 800D247C C60C0020 */  lwc1  $f12, 0x20($s0)
/* B49620 800D2480 4602B282 */  mul.s $f10, $f22, $f2
/* B49624 800D2484 C4B80008 */  lwc1  $f24, 8($a1)
/* B49628 800D2488 46003401 */  sub.s $f16, $f6, $f0
/* B4962C 800D248C 460CC182 */  mul.s $f6, $f24, $f12
/* B49630 800D2490 460A4100 */  add.s $f4, $f8, $f10
/* B49634 800D2494 46062200 */  add.s $f8, $f4, $f6
/* B49638 800D2498 46104482 */  mul.s $f18, $f8, $f16
/* B4963C 800D249C 00000000 */  nop   
/* B49640 800D24A0 46007282 */  mul.s $f10, $f14, $f0
/* B49644 800D24A4 00000000 */  nop   
/* B49648 800D24A8 4612A102 */  mul.s $f4, $f20, $f18
/* B4964C 800D24AC 46045180 */  add.s $f6, $f10, $f4
/* B49650 800D24B0 46181202 */  mul.s $f8, $f2, $f24
/* B49654 800D24B4 00000000 */  nop   
/* B49658 800D24B8 46166282 */  mul.s $f10, $f12, $f22
/* B4965C 800D24BC 460A4101 */  sub.s $f4, $f8, $f10
/* B49660 800D24C0 4604D202 */  mul.s $f8, $f26, $f4
/* B49664 800D24C4 46083280 */  add.s $f10, $f6, $f8
/* B49668 800D24C8 46001102 */  mul.s $f4, $f2, $f0
/* B4966C 800D24CC E60A0000 */  swc1  $f10, ($s0)
/* B49670 800D24D0 C4A60004 */  lwc1  $f6, 4($a1)
/* B49674 800D24D4 46123202 */  mul.s $f8, $f6, $f18
/* B49678 800D24D8 C4A60000 */  lwc1  $f6, ($a1)
/* B4967C 800D24DC 46082280 */  add.s $f10, $f4, $f8
/* B49680 800D24E0 46066102 */  mul.s $f4, $f12, $f6
/* B49684 800D24E4 C4A80008 */  lwc1  $f8, 8($a1)
/* B49688 800D24E8 46087182 */  mul.s $f6, $f14, $f8
/* B4968C 800D24EC 46062201 */  sub.s $f8, $f4, $f6
/* B49690 800D24F0 4608D102 */  mul.s $f4, $f26, $f8
/* B49694 800D24F4 46045180 */  add.s $f6, $f10, $f4
/* B49698 800D24F8 46006202 */  mul.s $f8, $f12, $f0
/* B4969C 800D24FC C60C0024 */  lwc1  $f12, 0x24($s0)
/* B496A0 800D2500 E6060010 */  swc1  $f6, 0x10($s0)
/* B496A4 800D2504 C4AA0008 */  lwc1  $f10, 8($a1)
/* B496A8 800D2508 46125102 */  mul.s $f4, $f10, $f18
/* B496AC 800D250C C4AA0004 */  lwc1  $f10, 4($a1)
/* B496B0 800D2510 46044180 */  add.s $f6, $f8, $f4
/* B496B4 800D2514 460A7202 */  mul.s $f8, $f14, $f10
/* B496B8 800D2518 C4A40000 */  lwc1  $f4, ($a1)
/* B496BC 800D251C C60E0004 */  lwc1  $f14, 4($s0)
/* B496C0 800D2520 46041282 */  mul.s $f10, $f2, $f4
/* B496C4 800D2524 C6020014 */  lwc1  $f2, 0x14($s0)
/* B496C8 800D2528 460A4101 */  sub.s $f4, $f8, $f10
/* B496CC 800D252C 4604D202 */  mul.s $f8, $f26, $f4
/* B496D0 800D2530 46083280 */  add.s $f10, $f6, $f8
/* B496D4 800D2534 E60A0020 */  swc1  $f10, 0x20($s0)
/* B496D8 800D2538 C4B40000 */  lwc1  $f20, ($a1)
/* B496DC 800D253C C4B60004 */  lwc1  $f22, 4($a1)
/* B496E0 800D2540 C4B80008 */  lwc1  $f24, 8($a1)
/* B496E4 800D2544 460EA102 */  mul.s $f4, $f20, $f14
/* B496E8 800D2548 00000000 */  nop   
/* B496EC 800D254C 4602B182 */  mul.s $f6, $f22, $f2
/* B496F0 800D2550 46062200 */  add.s $f8, $f4, $f6
/* B496F4 800D2554 460CC282 */  mul.s $f10, $f24, $f12
/* B496F8 800D2558 460A4100 */  add.s $f4, $f8, $f10
/* B496FC 800D255C 46102482 */  mul.s $f18, $f4, $f16
/* B49700 800D2560 00000000 */  nop   
/* B49704 800D2564 46007182 */  mul.s $f6, $f14, $f0
/* B49708 800D2568 00000000 */  nop   
/* B4970C 800D256C 4612A202 */  mul.s $f8, $f20, $f18
/* B49710 800D2570 46083280 */  add.s $f10, $f6, $f8
/* B49714 800D2574 46181102 */  mul.s $f4, $f2, $f24
/* B49718 800D2578 00000000 */  nop   
/* B4971C 800D257C 46166182 */  mul.s $f6, $f12, $f22
/* B49720 800D2580 46062201 */  sub.s $f8, $f4, $f6
/* B49724 800D2584 4608D102 */  mul.s $f4, $f26, $f8
/* B49728 800D2588 46045180 */  add.s $f6, $f10, $f4
/* B4972C 800D258C 46001202 */  mul.s $f8, $f2, $f0
/* B49730 800D2590 E6060004 */  swc1  $f6, 4($s0)
/* B49734 800D2594 C4AA0004 */  lwc1  $f10, 4($a1)
/* B49738 800D2598 46125102 */  mul.s $f4, $f10, $f18
/* B4973C 800D259C C4AA0000 */  lwc1  $f10, ($a1)
/* B49740 800D25A0 46044180 */  add.s $f6, $f8, $f4
/* B49744 800D25A4 460A6202 */  mul.s $f8, $f12, $f10
/* B49748 800D25A8 C4A40008 */  lwc1  $f4, 8($a1)
/* B4974C 800D25AC 46047282 */  mul.s $f10, $f14, $f4
/* B49750 800D25B0 460A4101 */  sub.s $f4, $f8, $f10
/* B49754 800D25B4 4604D202 */  mul.s $f8, $f26, $f4
/* B49758 800D25B8 46083280 */  add.s $f10, $f6, $f8
/* B4975C 800D25BC 46006102 */  mul.s $f4, $f12, $f0
/* B49760 800D25C0 C60C0028 */  lwc1  $f12, 0x28($s0)
/* B49764 800D25C4 E60A0014 */  swc1  $f10, 0x14($s0)
/* B49768 800D25C8 C4A60008 */  lwc1  $f6, 8($a1)
/* B4976C 800D25CC 46123202 */  mul.s $f8, $f6, $f18
/* B49770 800D25D0 C4A60004 */  lwc1  $f6, 4($a1)
/* B49774 800D25D4 46082280 */  add.s $f10, $f4, $f8
/* B49778 800D25D8 46067102 */  mul.s $f4, $f14, $f6
/* B4977C 800D25DC C4A80000 */  lwc1  $f8, ($a1)
/* B49780 800D25E0 C60E0008 */  lwc1  $f14, 8($s0)
/* B49784 800D25E4 46081182 */  mul.s $f6, $f2, $f8
/* B49788 800D25E8 C6020018 */  lwc1  $f2, 0x18($s0)
/* B4978C 800D25EC 46062201 */  sub.s $f8, $f4, $f6
/* B49790 800D25F0 4608D102 */  mul.s $f4, $f26, $f8
/* B49794 800D25F4 46045180 */  add.s $f6, $f10, $f4
/* B49798 800D25F8 E6060024 */  swc1  $f6, 0x24($s0)
/* B4979C 800D25FC C4B40000 */  lwc1  $f20, ($a1)
/* B497A0 800D2600 C4B60004 */  lwc1  $f22, 4($a1)
/* B497A4 800D2604 C4B80008 */  lwc1  $f24, 8($a1)
/* B497A8 800D2608 460EA202 */  mul.s $f8, $f20, $f14
/* B497AC 800D260C 00000000 */  nop   
/* B497B0 800D2610 4602B282 */  mul.s $f10, $f22, $f2
/* B497B4 800D2614 460A4100 */  add.s $f4, $f8, $f10
/* B497B8 800D2618 460CC182 */  mul.s $f6, $f24, $f12
/* B497BC 800D261C 46062200 */  add.s $f8, $f4, $f6
/* B497C0 800D2620 46104482 */  mul.s $f18, $f8, $f16
/* B497C4 800D2624 00000000 */  nop   
/* B497C8 800D2628 46007282 */  mul.s $f10, $f14, $f0
/* B497CC 800D262C 00000000 */  nop   
/* B497D0 800D2630 4612A102 */  mul.s $f4, $f20, $f18
/* B497D4 800D2634 46045180 */  add.s $f6, $f10, $f4
/* B497D8 800D2638 46181202 */  mul.s $f8, $f2, $f24
/* B497DC 800D263C 00000000 */  nop   
/* B497E0 800D2640 46166282 */  mul.s $f10, $f12, $f22
/* B497E4 800D2644 460A4101 */  sub.s $f4, $f8, $f10
/* B497E8 800D2648 4604D202 */  mul.s $f8, $f26, $f4
/* B497EC 800D264C 46083280 */  add.s $f10, $f6, $f8
/* B497F0 800D2650 46001102 */  mul.s $f4, $f2, $f0
/* B497F4 800D2654 E60A0008 */  swc1  $f10, 8($s0)
/* B497F8 800D2658 C4A60004 */  lwc1  $f6, 4($a1)
/* B497FC 800D265C 46123202 */  mul.s $f8, $f6, $f18
/* B49800 800D2660 C4A60000 */  lwc1  $f6, ($a1)
/* B49804 800D2664 46082280 */  add.s $f10, $f4, $f8
/* B49808 800D2668 46066102 */  mul.s $f4, $f12, $f6
/* B4980C 800D266C C4A80008 */  lwc1  $f8, 8($a1)
/* B49810 800D2670 46087182 */  mul.s $f6, $f14, $f8
/* B49814 800D2674 46062201 */  sub.s $f8, $f4, $f6
/* B49818 800D2678 4608D102 */  mul.s $f4, $f26, $f8
/* B4981C 800D267C 46045180 */  add.s $f6, $f10, $f4
/* B49820 800D2680 46006202 */  mul.s $f8, $f12, $f0
/* B49824 800D2684 E6060018 */  swc1  $f6, 0x18($s0)
/* B49828 800D2688 C4AA0008 */  lwc1  $f10, 8($a1)
/* B4982C 800D268C 46125102 */  mul.s $f4, $f10, $f18
/* B49830 800D2690 C4AA0004 */  lwc1  $f10, 4($a1)
/* B49834 800D2694 46044180 */  add.s $f6, $f8, $f4
/* B49838 800D2698 460A7202 */  mul.s $f8, $f14, $f10
/* B4983C 800D269C C4A40000 */  lwc1  $f4, ($a1)
/* B49840 800D26A0 46041282 */  mul.s $f10, $f2, $f4
/* B49844 800D26A4 460A4101 */  sub.s $f4, $f8, $f10
/* B49848 800D26A8 4604D202 */  mul.s $f8, $f26, $f4
/* B4984C 800D26AC 46083280 */  add.s $f10, $f6, $f8
/* B49850 800D26B0 10000062 */  b     .L800D283C
/* B49854 800D26B4 E60A0028 */   swc1  $f10, 0x28($s0)
.L800D26B8:
/* B49858 800D26B8 44802000 */  mtc1  $zero, $f4
/* B4985C 800D26BC 3C108017 */  lui   $s0, %hi(sCurrentMatrix)
/* B49860 800D26C0 8E10A7C4 */  lw    $s0, %lo(sCurrentMatrix)($s0)
/* B49864 800D26C4 4604A032 */  c.eq.s $f20, $f4
/* B49868 800D26C8 00000000 */  nop   
/* B4986C 800D26CC 45030049 */  bc1tl .L800D27F4
/* B49870 800D26D0 44800000 */   mtc1  $zero, $f0
/* B49874 800D26D4 4600A306 */  mov.s $f12, $f20
/* B49878 800D26D8 0C0400A4 */  jal   sinf
/* B4987C 800D26DC AFA50044 */   sw    $a1, 0x44($sp)
/* B49880 800D26E0 46000686 */  mov.s $f26, $f0
/* B49884 800D26E4 0C041184 */  jal   cosf
/* B49888 800D26E8 4600A306 */   mov.s $f12, $f20
/* B4988C 800D26EC 8FA50044 */  lw    $a1, 0x44($sp)
/* B49890 800D26F0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B49894 800D26F4 44819000 */  mtc1  $at, $f18
/* B49898 800D26F8 C4B40000 */  lwc1  $f20, ($a1)
/* B4989C 800D26FC 46009401 */  sub.s $f16, $f18, $f0
/* B498A0 800D2700 4614A182 */  mul.s $f6, $f20, $f20
/* B498A4 800D2704 00000000 */  nop   
/* B498A8 800D2708 46103202 */  mul.s $f8, $f6, $f16
/* B498AC 800D270C 46004280 */  add.s $f10, $f8, $f0
/* B498B0 800D2710 E60A0000 */  swc1  $f10, ($s0)
/* B498B4 800D2714 C4B60004 */  lwc1  $f22, 4($a1)
/* B498B8 800D2718 4616B102 */  mul.s $f4, $f22, $f22
/* B498BC 800D271C 00000000 */  nop   
/* B498C0 800D2720 46102182 */  mul.s $f6, $f4, $f16
/* B498C4 800D2724 46003200 */  add.s $f8, $f6, $f0
/* B498C8 800D2728 E6080014 */  swc1  $f8, 0x14($s0)
/* B498CC 800D272C C4B80008 */  lwc1  $f24, 8($a1)
/* B498D0 800D2730 4618C282 */  mul.s $f10, $f24, $f24
/* B498D4 800D2734 00000000 */  nop   
/* B498D8 800D2738 46105102 */  mul.s $f4, $f10, $f16
/* B498DC 800D273C 46002180 */  add.s $f6, $f4, $f0
/* B498E0 800D2740 44800000 */  mtc1  $zero, $f0
/* B498E4 800D2744 E6060028 */  swc1  $f6, 0x28($s0)
/* B498E8 800D2748 C4A80000 */  lwc1  $f8, ($a1)
/* B498EC 800D274C C4A40004 */  lwc1  $f4, 4($a1)
/* B498F0 800D2750 C4A60008 */  lwc1  $f6, 8($a1)
/* B498F4 800D2754 46104282 */  mul.s $f10, $f8, $f16
/* B498F8 800D2758 00000000 */  nop   
/* B498FC 800D275C 46045082 */  mul.s $f2, $f10, $f4
/* B49900 800D2760 00000000 */  nop   
/* B49904 800D2764 461A3302 */  mul.s $f12, $f6, $f26
/* B49908 800D2768 460C1200 */  add.s $f8, $f2, $f12
/* B4990C 800D276C 460C1281 */  sub.s $f10, $f2, $f12
/* B49910 800D2770 E6080004 */  swc1  $f8, 4($s0)
/* B49914 800D2774 E60A0010 */  swc1  $f10, 0x10($s0)
/* B49918 800D2778 C4A40000 */  lwc1  $f4, ($a1)
/* B4991C 800D277C C4A80008 */  lwc1  $f8, 8($a1)
/* B49920 800D2780 C4AA0004 */  lwc1  $f10, 4($a1)
/* B49924 800D2784 46102182 */  mul.s $f6, $f4, $f16
/* B49928 800D2788 00000000 */  nop   
/* B4992C 800D278C 46083082 */  mul.s $f2, $f6, $f8
/* B49930 800D2790 00000000 */  nop   
/* B49934 800D2794 461A5302 */  mul.s $f12, $f10, $f26
/* B49938 800D2798 460C1101 */  sub.s $f4, $f2, $f12
/* B4993C 800D279C 460C1180 */  add.s $f6, $f2, $f12
/* B49940 800D27A0 E6040008 */  swc1  $f4, 8($s0)
/* B49944 800D27A4 E6060020 */  swc1  $f6, 0x20($s0)
/* B49948 800D27A8 C4A80004 */  lwc1  $f8, 4($a1)
/* B4994C 800D27AC C4A40008 */  lwc1  $f4, 8($a1)
/* B49950 800D27B0 C4A60000 */  lwc1  $f6, ($a1)
/* B49954 800D27B4 46104282 */  mul.s $f10, $f8, $f16
/* B49958 800D27B8 E612003C */  swc1  $f18, 0x3c($s0)
/* B4995C 800D27BC E600000C */  swc1  $f0, 0xc($s0)
/* B49960 800D27C0 E600001C */  swc1  $f0, 0x1c($s0)
/* B49964 800D27C4 E600002C */  swc1  $f0, 0x2c($s0)
/* B49968 800D27C8 E6000030 */  swc1  $f0, 0x30($s0)
/* B4996C 800D27CC E6000034 */  swc1  $f0, 0x34($s0)
/* B49970 800D27D0 46045082 */  mul.s $f2, $f10, $f4
/* B49974 800D27D4 E6000038 */  swc1  $f0, 0x38($s0)
/* B49978 800D27D8 461A3302 */  mul.s $f12, $f6, $f26
/* B4997C 800D27DC 460C1200 */  add.s $f8, $f2, $f12
/* B49980 800D27E0 460C1281 */  sub.s $f10, $f2, $f12
/* B49984 800D27E4 E6080018 */  swc1  $f8, 0x18($s0)
/* B49988 800D27E8 10000014 */  b     .L800D283C
/* B4998C 800D27EC E60A0024 */   swc1  $f10, 0x24($s0)
/* B49990 800D27F0 44800000 */  mtc1  $zero, $f0
.L800D27F4:
/* B49994 800D27F4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B49998 800D27F8 44819000 */  mtc1  $at, $f18
/* B4999C 800D27FC E6000004 */  swc1  $f0, 4($s0)
/* B499A0 800D2800 E6000008 */  swc1  $f0, 8($s0)
/* B499A4 800D2804 E600000C */  swc1  $f0, 0xc($s0)
/* B499A8 800D2808 E6000010 */  swc1  $f0, 0x10($s0)
/* B499AC 800D280C E6000018 */  swc1  $f0, 0x18($s0)
/* B499B0 800D2810 E600001C */  swc1  $f0, 0x1c($s0)
/* B499B4 800D2814 E6000020 */  swc1  $f0, 0x20($s0)
/* B499B8 800D2818 E6000024 */  swc1  $f0, 0x24($s0)
/* B499BC 800D281C E600002C */  swc1  $f0, 0x2c($s0)
/* B499C0 800D2820 E6000030 */  swc1  $f0, 0x30($s0)
/* B499C4 800D2824 E6000034 */  swc1  $f0, 0x34($s0)
/* B499C8 800D2828 E6000038 */  swc1  $f0, 0x38($s0)
/* B499CC 800D282C E6120000 */  swc1  $f18, ($s0)
/* B499D0 800D2830 E6120014 */  swc1  $f18, 0x14($s0)
/* B499D4 800D2834 E6120028 */  swc1  $f18, 0x28($s0)
/* B499D8 800D2838 E612003C */  swc1  $f18, 0x3c($s0)
.L800D283C:
/* B499DC 800D283C 8FBF003C */  lw    $ra, 0x3c($sp)
.L800D2840:
/* B499E0 800D2840 D7B40018 */  ldc1  $f20, 0x18($sp)
/* B499E4 800D2844 D7B60020 */  ldc1  $f22, 0x20($sp)
/* B499E8 800D2848 D7B80028 */  ldc1  $f24, 0x28($sp)
/* B499EC 800D284C D7BA0030 */  ldc1  $f26, 0x30($sp)
/* B499F0 800D2850 8FB00038 */  lw    $s0, 0x38($sp)
/* B499F4 800D2854 03E00008 */  jr    $ra
/* B499F8 800D2858 27BD0040 */   addiu $sp, $sp, 0x40