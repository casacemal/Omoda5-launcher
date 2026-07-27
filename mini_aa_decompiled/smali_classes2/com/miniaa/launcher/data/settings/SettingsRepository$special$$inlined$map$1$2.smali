.class public final Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 SettingsRepository.kt\ncom/miniaa/launcher/data/settings/SettingsRepository\n*L\n1#1,49:1\n50#2:50\n70#3,24:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;

    iget v3, v2, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;-><init>(Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 0
    iget v4, v2, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 50
    move-object v1, v2

    check-cast v1, Lkotlin/coroutines/Continuation;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/datastore/preferences/core/Preferences;

    .line 51
    new-instance v4, Lcom/miniaa/launcher/data/settings/LauncherSettings;

    .line 52
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getLEFT_PANEL_WEIGHT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_1

    :cond_3
    const v6, 0x3ed70a3d    # 0.42f

    :goto_1
    move v7, v6

    .line 53
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getBACKGROUND_URI()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 54
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getBACKGROUND_OPACITY()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_2

    :cond_4
    const v6, 0x3e99999a    # 0.3f

    :goto_2
    move v9, v6

    .line 55
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getBACKGROUND_COLOR()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_3

    :cond_5
    const-wide v10, 0xff000000L

    .line 56
    :goto_3
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getDEFAULT_MUSIC_APP()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    .line 57
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getGRID_COLUMNS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    :cond_6
    const/4 v6, 0x4

    :goto_4
    move v13, v6

    .line 58
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getGRID_ROWS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v15, v6

    goto :goto_5

    :cond_7
    const/4 v15, 0x3

    .line 59
    :goto_5
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getGEOCODE_DISTANCE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_6

    :cond_8
    const/16 v6, 0x12c

    :goto_6
    move/from16 v16, v6

    .line 60
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getGEOCODE_INTERVAL()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_7

    :cond_9
    const/16 v6, 0xf

    :goto_7
    move/from16 v17, v6

    .line 61
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getSHOW_LOCATION()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    const-string v14, "true"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    .line 62
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getSPEED_THRESHOLD()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v19, v6

    goto :goto_8

    :cond_a
    const/16 v19, 0x3

    .line 63
    :goto_8
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getWEATHER_CARD_OPACITY()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_9

    :cond_b
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_9
    move/from16 v20, v6

    .line 64
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getUSE_IMPERIAL()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    .line 65
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getSPEED_UNIT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    const-string v5, "mph"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 66
    sget-object v6, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getTEMP_UNIT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v30, v3

    const-string v3, "f"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    .line 67
    sget-object v3, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v3}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getTRIP_RECORDING()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    .line 68
    sget-object v3, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v3}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getGEOCODER_TYPE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_c

    const-string v3, "android"

    :cond_c
    move-object/from16 v24, v3

    .line 69
    sget-object v3, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v3}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getCOMPACT_WEATHER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v25

    .line 70
    sget-object v3, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v3}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getSHOW_TRIP_INFO()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "false"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/16 v26, 0x1

    xor-int/lit8 v3, v3, 0x1

    .line 71
    sget-object v27, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    move-object/from16 p0, v0

    invoke-virtual/range {v27 .. v27}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getSHOW_IDLE_ANIMATION()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v27, v0, 0x1

    .line 72
    sget-object v0, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getSHOW_MIC()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v28

    .line 73
    sget-object v0, Lcom/miniaa/launcher/data/settings/SettingsKeys;->INSTANCE:Lcom/miniaa/launcher/data/settings/SettingsKeys;

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/settings/SettingsKeys;->getDEFAULT_PIP_APP()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object v6, v4

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v5

    move/from16 v26, v3

    .line 51
    invoke-direct/range {v6 .. v29}, Lcom/miniaa/launcher/data/settings/LauncherSettings;-><init>(FLjava/lang/String;FJLjava/lang/String;IIIIZIFZZZZLjava/lang/String;ZZZZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 50
    iput v0, v2, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_d

    return-object v1

    .line 49
    :cond_d
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
