.class public final Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;
.super Ljava/lang/Object;
.source "WeatherWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeatherWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeatherWidget.kt\ncom/miniaa/launcher/ui/weather/WeatherWidgetKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,196:1\n149#2:197\n149#2:198\n81#3:199\n*S KotlinDebug\n*F\n+ 1 WeatherWidget.kt\ncom/miniaa/launcher/ui/weather/WeatherWidgetKt\n*L\n48#1:197\n49#1:198\n41#1:199\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u001a5\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0000\u00a8\u0006\u0011\u00b2\u0006\n\u0010\u0012\u001a\u00020\u0013X\u008a\u0084\u0002"
    }
    d2 = {
        "WeatherWidget",
        "",
        "viewModel",
        "Lcom/miniaa/launcher/ui/weather/WeatherViewModel;",
        "cardBackground",
        "Landroidx/compose/ui/graphics/Color;",
        "useImperial",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "WeatherWidget-sW7UJKQ",
        "(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "weatherIconRes",
        "",
        "condition",
        "",
        "iconCode",
        "app_systemRelease",
        "state",
        "Lcom/miniaa/launcher/data/weather/WeatherState;"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$UQhAdVo-zxn-vSV1MwDQD8vXQfg(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;->WeatherWidget_sW7UJKQ$lambda$1(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final WeatherWidget-sW7UJKQ(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v6, p6

    const-string v0, "viewModel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x56909864

    move-object/from16 v2, p5

    .line 40
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p7, 0x1

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    or-int/lit8 v3, v6, 0x6

    goto :goto_2

    :cond_0
    and-int/lit8 v3, v6, 0x6

    if-nez v3, :cond_3

    and-int/lit8 v3, v6, 0x8

    if-nez v3, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v3, v6

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    and-int/lit8 v5, p7, 0x2

    const/16 v7, 0x20

    if-eqz v5, :cond_4

    or-int/lit8 v3, v3, 0x30

    goto :goto_4

    :cond_4
    and-int/lit8 v8, v6, 0x30

    if-nez v8, :cond_6

    move-wide/from16 v8, p1

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v7

    goto :goto_3

    :cond_5
    const/16 v10, 0x10

    :goto_3
    or-int/2addr v3, v10

    goto :goto_5

    :cond_6
    :goto_4
    move-wide/from16 v8, p1

    :goto_5
    and-int/lit8 v10, p7, 0x4

    if-eqz v10, :cond_7

    or-int/lit16 v3, v3, 0x180

    goto :goto_7

    :cond_7
    and-int/lit16 v11, v6, 0x180

    if-nez v11, :cond_9

    move/from16 v11, p3

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_6

    :cond_8
    const/16 v12, 0x80

    :goto_6
    or-int/2addr v3, v12

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v11, p3

    :goto_8
    and-int/lit8 v12, p7, 0x8

    if-eqz v12, :cond_a

    or-int/lit16 v3, v3, 0xc00

    goto :goto_a

    :cond_a
    and-int/lit16 v13, v6, 0xc00

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x800

    goto :goto_9

    :cond_b
    const/16 v14, 0x400

    :goto_9
    or-int/2addr v3, v14

    goto :goto_b

    :cond_c
    :goto_a
    move-object/from16 v13, p4

    :goto_b
    and-int/lit16 v14, v3, 0x493

    const/16 v15, 0x492

    if-ne v14, v15, :cond_e

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_c

    .line 148
    :cond_d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v4, v11

    move-object v5, v13

    goto/16 :goto_10

    :cond_e
    :goto_c
    if-eqz v5, :cond_f

    const-wide v8, 0xff303134L

    .line 37
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v14

    const/16 v20, 0xe

    const/16 v21, 0x0

    const v16, 0x3e4ccccd    # 0.2f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v8

    :cond_f
    move-wide/from16 v19, v8

    const/4 v5, 0x0

    if-eqz v10, :cond_10

    move/from16 v21, v5

    goto :goto_d

    :cond_10
    move/from16 v21, v11

    :goto_d
    if-eqz v12, :cond_11

    .line 39
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    move-object v12, v8

    goto :goto_e

    :cond_11
    move-object v12, v13

    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v8, -0x1

    const-string v9, "com.miniaa.launcher.ui.weather.WeatherWidget (WeatherWidget.kt:39)"

    .line 40
    invoke-static {v0, v3, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 41
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->getWeather()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-static {v0, v3, v2, v5, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;->WeatherWidget_sW7UJKQ$lambda$0(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherState;->getTemperature()I

    move-result v3

    if-eqz v21, :cond_13

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v7

    .line 43
    :cond_13
    invoke-static {v0}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;->WeatherWidget_sW7UJKQ$lambda$0(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miniaa/launcher/data/weather/WeatherState;->getTempHigh()I

    move-result v5

    if-eqz v21, :cond_14

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v7

    :cond_14
    if-eqz v21, :cond_15

    .line 44
    invoke-static {v0}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;->WeatherWidget_sW7UJKQ$lambda$0(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miniaa/launcher/data/weather/WeatherState;->getTempLow()I

    move-result v9

    mul-int/lit8 v9, v9, 0x9

    div-int/lit8 v9, v9, 0x5

    add-int/2addr v9, v7

    goto :goto_f

    :cond_15
    invoke-static {v0}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;->WeatherWidget_sW7UJKQ$lambda$0(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miniaa/launcher/data/weather/WeatherState;->getTempLow()I

    move-result v9

    :goto_f
    const/16 v7, 0xc

    int-to-float v7, v7

    .line 197
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    int-to-float v4, v4

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 48
    invoke-static {v12, v10, v4, v11, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v7, 0x14

    int-to-float v7, v7

    .line 198
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 49
    invoke-static {v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v4, v7}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-wide/from16 v14, v19

    .line 50
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 51
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v4

    .line 52
    new-instance v10, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$WeatherWidget$1;

    invoke-direct {v10, v0, v5, v9, v3}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$WeatherWidget$1;-><init>(Landroidx/compose/runtime/State;III)V

    const/16 v0, 0x36

    const v3, 0x4669ed3a

    invoke-static {v3, v8, v10, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function3;

    const/16 v0, 0xc30

    const/4 v13, 0x4

    const/4 v9, 0x0

    move-object v8, v4

    move-object v11, v2

    move-object v3, v12

    move v12, v0

    .line 46
    invoke-static/range {v7 .. v13}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_16
    move-object v5, v3

    move-wide/from16 v8, v19

    move/from16 v4, v21

    .line 148
    :goto_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_17

    new-instance v11, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object/from16 v1, p0

    move-wide v2, v8

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;-><init>(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;II)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_17
    return-void
.end method

.method private static final WeatherWidget_sW7UJKQ$lambda$0(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/weather/WeatherState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/miniaa/launcher/data/weather/WeatherState;",
            ">;)",
            "Lcom/miniaa/launcher/data/weather/WeatherState;"
        }
    .end annotation

    .line 199
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/data/weather/WeatherState;

    return-object p0
.end method

.method private static final WeatherWidget_sW7UJKQ$lambda$1(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9

    or-int/lit8 v0, p5, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p7

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;->WeatherWidget-sW7UJKQ(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$WeatherWidget_sW7UJKQ$lambda$0(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/weather/WeatherState;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;->WeatherWidget_sW7UJKQ$lambda$0(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object p0

    return-object p0
.end method

.method public static final weatherIconRes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, "condition"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    const-string v0, "01d"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_sunny:I

    goto/16 :goto_2

    .line 158
    :cond_0
    const-string v0, "01n"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_clear_night:I

    goto/16 :goto_2

    .line 159
    :cond_1
    const-string v0, "02d"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_mostly_sunny:I

    goto/16 :goto_2

    .line 160
    :cond_2
    const-string v0, "02n"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_mostly_clear_night:I

    goto/16 :goto_2

    .line 161
    :cond_3
    const-string v0, "03d"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_partly_cloudy:I

    goto/16 :goto_2

    .line 162
    :cond_4
    const-string v0, "03n"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_partly_cloudy_night:I

    goto/16 :goto_2

    .line 163
    :cond_5
    const-string v0, "04"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_cloudy:I

    goto/16 :goto_2

    .line 164
    :cond_6
    const-string v0, "09"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_showers_rain:I

    goto/16 :goto_2

    .line 165
    :cond_7
    const-string v0, "10d"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_scattered_showers_day:I

    goto/16 :goto_2

    .line 166
    :cond_8
    const-string v0, "10n"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_scattered_showers_night:I

    goto/16 :goto_2

    .line 167
    :cond_9
    const-string v0, "11d"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_isolated_scattered_tstorms_day:I

    goto/16 :goto_2

    .line 168
    :cond_a
    const-string v0, "11n"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_isolated_scattered_tstorms_night:I

    goto/16 :goto_2

    .line 169
    :cond_b
    const-string v0, "13"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_snow_showers_snow:I

    goto/16 :goto_2

    .line 170
    :cond_c
    const-string v0, "50"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_haze_fog_dust_smoke:I

    goto/16 :goto_2

    .line 173
    :cond_d
    check-cast p0, Ljava/lang/CharSequence;

    const-string p1, "Clear"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_sunny:I

    goto/16 :goto_2

    .line 174
    :cond_e
    const-string p1, "Cloud"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_cloudy:I

    goto/16 :goto_2

    .line 175
    :cond_f
    const-string p1, "Overcast"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_mostly_cloudy_day:I

    goto/16 :goto_2

    .line 176
    :cond_10
    const-string p1, "Drizzle"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_drizzle:I

    goto/16 :goto_2

    .line 177
    :cond_11
    const-string p1, "Rain"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_showers_rain:I

    goto/16 :goto_2

    .line 178
    :cond_12
    const-string p1, "Heavy rain"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_heavy_rain:I

    goto/16 :goto_2

    .line 179
    :cond_13
    const-string p1, "Thunderstorm"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_14

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_strong_tstorms:I

    goto/16 :goto_2

    .line 180
    :cond_14
    const-string p1, "Snow"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_15

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_snow_showers_snow:I

    goto/16 :goto_2

    .line 181
    :cond_15
    const-string p1, "Heavy snow"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_heavy_snow:I

    goto/16 :goto_2

    .line 182
    :cond_16
    const-string p1, "Blizzard"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_17

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_blizzard:I

    goto/16 :goto_2

    .line 183
    :cond_17
    const-string p1, "Sleet"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 184
    const-string p1, "Hail"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_1

    .line 185
    :cond_18
    const-string p1, "Flurries"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_19

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_flurries:I

    goto :goto_2

    .line 186
    :cond_19
    const-string p1, "Mist"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 187
    const-string p1, "Fog"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 188
    const-string p1, "Haze"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 189
    const-string p1, "Smoke"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_0

    .line 190
    :cond_1a
    const-string p1, "Tornado"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_tornado:I

    goto :goto_2

    .line 191
    :cond_1b
    const-string p1, "Wintry"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_1c

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_wintry_mix_rain_snow:I

    goto :goto_2

    .line 192
    :cond_1c
    const-string p1, "Blowing snow"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_1d

    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_blowing_snow:I

    goto :goto_2

    .line 193
    :cond_1d
    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_partly_cloudy:I

    goto :goto_2

    .line 189
    :cond_1e
    :goto_0
    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_haze_fog_dust_smoke:I

    goto :goto_2

    .line 184
    :cond_1f
    :goto_1
    sget p0, Lcom/miniaa/launcher/R$drawable;->weather_sleet_hail:I

    :goto_2
    return p0
.end method
