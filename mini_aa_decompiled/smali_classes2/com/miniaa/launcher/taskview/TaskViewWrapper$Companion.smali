.class public final Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;
.super Ljava/lang/Object;
.source "TaskViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniaa/launcher/taskview/TaskViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskViewWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskViewWrapper.kt\ncom/miniaa/launcher/taskview/TaskViewWrapper$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,482:1\n13402#2:483\n11158#2:484\n11493#2,3:485\n13403#2:488\n3829#2:489\n4344#2,2:490\n11158#2:493\n11493#2,3:494\n13402#2:498\n11158#2:499\n11493#2,3:500\n13403#2:503\n3829#2:504\n4344#2,2:505\n11158#2:508\n11493#2,3:509\n1863#3:492\n1864#3:497\n1863#3:507\n1864#3:512\n*S KotlinDebug\n*F\n+ 1 TaskViewWrapper.kt\ncom/miniaa/launcher/taskview/TaskViewWrapper$Companion\n*L\n103#1:483\n104#1:484\n104#1:485,3\n103#1:488\n107#1:489\n107#1:490,2\n109#1:493\n109#1:494,3\n129#1:498\n130#1:499\n130#1:500,3\n129#1:503\n133#1:504\n133#1:505,2\n136#1:508\n136#1:509,3\n108#1:492\n108#1:497\n135#1:507\n135#1:512\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0008\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "TASKVIEW_CLASSES",
        "",
        "findTaskViewClass",
        "Ljava/lang/Class;",
        "isSupported",
        "",
        "isAnyEmbeddingSupported",
        "diagnose",
        "context",
        "Landroid/content/Context;",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;-><init>()V

    return-void
.end method

.method private static final diagnose$log(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    const-string v0, "TaskViewWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final diagnose(Landroid/content/Context;)Ljava/lang/String;
    .locals 25

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 86
    const-string v1, "=== TaskView Diagnostics ==="

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 89
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 90
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Build: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 91
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Product: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 92
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Board: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "System UID (1000): "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 95
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 98
    const-string v2, "--- TaskView Classes ---"

    invoke-static {v0, v2}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/miniaa/launcher/taskview/TaskViewWrapper;->access$getTASKVIEW_CLASSES$cp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ")"

    const-string v7, "("

    const-string v8, "  method: "

    const-string v9, "  constructor: "

    const-string v10, "getMethods(...)"

    const-string v11, "getConstructors(...)"

    const-string v12, " \u2014 FOUND"

    const-string v13, "\u2713 "

    const-string v14, " \u2014 not found"

    const-string v15, "\u2717 "

    const-string v3, "getParameterTypes(...)"

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 101
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v2

    .line 102
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .line 483
    array-length v11, v2

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_2

    aget-object v13, v2, v12

    check-cast v13, Ljava/lang/reflect/Constructor;

    .line 104
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, [Ljava/lang/Object;

    move-object/from16 v17, v2

    .line 484
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v18, v11

    array-length v11, v13

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 485
    array-length v11, v13
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v11, :cond_1

    :try_start_2
    aget-object v20, v13, v1

    .line 486
    check-cast v20, Ljava/lang/Class;

    move/from16 v21, v11

    .line 104
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 486
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v21

    goto :goto_3

    .line 487
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v17

    move/from16 v11, v18

    move-object/from16 v1, v19

    goto :goto_2

    :cond_2
    move-object/from16 v19, v1

    .line 106
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 490
    array-length v9, v1

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_4

    aget-object v11, v1, v10

    move-object v12, v11

    check-cast v12, Ljava/lang/reflect/Method;

    .line 107
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 490
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 491
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 489
    check-cast v2, Ljava/lang/Iterable;

    .line 492
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 109
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .line 493
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 494
    array-length v10, v2

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_5

    aget-object v12, v2, v11

    .line 495
    check-cast v12, Ljava/lang/Class;

    .line 109
    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    .line 495
    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 496
    :cond_5
    check-cast v9, Ljava/util/List;

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v0, v2}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_0
    move-object/from16 v19, v1

    goto :goto_7

    :catch_1
    move-object/from16 v19, v1

    move-object/from16 v16, v2

    .line 112
    :catch_2
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v2, v16

    move-object/from16 v1, v19

    goto/16 :goto_1

    .line 116
    :cond_7
    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 117
    const-string v2, "--- Alternative APIs ---"

    invoke-static {v0, v2}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 119
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "com.android.wm.shell.ShellTaskOrganizer"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 120
    const-string v4, "android.window.TaskOrganizer"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 121
    const-string v4, "android.app.ActivityView"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x3

    .line 122
    const-string v16, "android.app.ActivityView$StateCallback"

    aput-object v16, v2, v4

    .line 118
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    :try_start_3
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v16, v2

    .line 127
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 128
    move-object v2, v4

    check-cast v2, Ljava/lang/CharSequence;

    const-string v17, "ActivityView"
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v18, v12

    :try_start_5
    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v19, v1

    move-object/from16 p0, v14

    const/4 v1, 0x0

    const/4 v14, 0x2

    :try_start_6
    invoke-static {v2, v12, v1, v14, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 129
    invoke-virtual {v5}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .line 498
    array-length v12, v2

    move v13, v1

    :goto_9
    if-ge v13, v12, :cond_9

    aget-object v20, v2, v13

    check-cast v20, Ljava/lang/reflect/Constructor;

    .line 130
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    .line 499
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v21, v2

    array-length v2, v1

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .line 500
    array-length v2, v1
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v22, v11

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v2, :cond_8

    :try_start_7
    aget-object v23, v1, v11

    .line 501
    check-cast v23, Ljava/lang/Class;

    move-object/from16 v24, v1

    .line 130
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v24

    goto :goto_a

    .line 502
    :cond_8
    check-cast v14, Ljava/util/List;

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v21

    move-object/from16 v11, v22

    const/4 v1, 0x0

    const/4 v14, 0x2

    goto :goto_9

    :cond_9
    move-object/from16 v22, v11

    .line 132
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    .line 504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 505
    array-length v11, v1

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_b

    aget-object v13, v1, v12

    move-object v14, v13

    check-cast v14, Ljava/lang/reflect/Method;

    .line 133
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 505
    invoke-interface {v2, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 506
    :cond_b
    check-cast v2, Ljava/util/List;

    .line 504
    check-cast v2, Ljava/lang/Iterable;

    const/16 v1, 0x14

    .line 134
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 507
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 136
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .line 508
    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v2

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    .line 509
    array-length v12, v2

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v12, :cond_c

    aget-object v14, v2, v13

    .line 510
    check-cast v14, Ljava/lang/Class;

    .line 136
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    .line 510
    invoke-interface {v11, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 511
    :cond_c
    check-cast v11, Ljava/util/List;

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v0, v2}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_c

    :cond_d
    move-object/from16 v14, p0

    goto :goto_11

    :cond_e
    move v5, v14

    move-object/from16 v2, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v1, v19

    move-object/from16 v14, p0

    goto/16 :goto_8

    :catch_3
    move-object/from16 v22, v11

    goto :goto_10

    :catch_4
    move-object/from16 v19, v1

    move-object/from16 v22, v11

    goto :goto_f

    :catch_5
    move-object/from16 v19, v1

    goto :goto_e

    :catch_6
    move-object/from16 v19, v1

    move-object/from16 v16, v2

    :goto_e
    move-object/from16 v22, v11

    move-object/from16 v18, v12

    :goto_f
    move-object/from16 v17, v13

    move-object/from16 p0, v14

    .line 140
    :catch_7
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    move-object v14, v2

    :goto_11
    move-object/from16 v2, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v1, v19

    move-object/from16 v11, v22

    const/4 v5, 0x2

    goto/16 :goto_8

    .line 144
    :cond_f
    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 145
    const-string v1, "=== End Diagnostics ==="

    invoke-static {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose$log(Ljava/util/List;Ljava/lang/String;)V

    .line 147
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string v0, "\n"

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final findTaskViewClass()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 43
    const-string p0, "Found TaskView: "

    invoke-static {}, Lcom/miniaa/launcher/taskview/TaskViewWrapper;->access$getTASKVIEW_CLASSES$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "TaskViewWrapper"

    const-string v3, "Embed"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v5, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/miniaa/launcher/util/FileLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 50
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_0
    const-string p0, "No TaskView class found on this device"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object p0, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    invoke-static {}, Lcom/miniaa/launcher/taskview/TaskViewWrapper;->access$getTASKVIEW_CLASSES$cp()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No TaskView class found. Tried: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/miniaa/launcher/util/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_1
    const-string p0, "android.app.ActivityView"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    sget-object p0, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    const-string v0, "ActivityView found (fallback)"

    invoke-virtual {p0, v3, v0}, Lcom/miniaa/launcher/util/FileLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 60
    :catch_1
    sget-object p0, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    const-string v0, "ActivityView also not found"

    invoke-virtual {p0, v3, v0}, Lcom/miniaa/launcher/util/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAnyEmbeddingSupported()Z
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->isSupported()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->Companion:Lcom/miniaa/launcher/taskview/ActivityViewWrapper$Companion;

    invoke-virtual {p0}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper$Companion;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSupported()Z
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->findTaskViewClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
