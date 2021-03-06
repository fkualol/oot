#include "z_demo_ext.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void DemoExt_Init(DemoExt* this, GlobalContext* globalCtx);
void DemoExt_Destroy(DemoExt* this, GlobalContext* globalCtx);
void DemoExt_Update(DemoExt* this, GlobalContext* globalCtx);
void DemoExt_Draw(DemoExt* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Ext_InitVars = {
    ACTOR_DEMO_EXT,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_FHG,
    sizeof(DemoExt),
    (ActorFunc)DemoExt_Init,
    (ActorFunc)DemoExt_Destroy,
    (ActorFunc)DemoExt_Update,
    (ActorFunc)DemoExt_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/DemoExt_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/DemoExt_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809774D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809774FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809775A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809776D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_8097771C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809778AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/DemoExt_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977944.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/DemoExt_Draw.s")
