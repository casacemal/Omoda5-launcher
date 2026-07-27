.class public final Lcom/miniaa/launcher/taskview/ActivityViewWrapper;
.super Landroid/view/View;
.source "ActivityViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniaa/launcher/taskview/ActivityViewWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityViewWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityViewWrapper.kt\ncom/miniaa/launcher/taskview/ActivityViewWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 32\u00020\u0001:\u00013B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010&\u001a\u00020\u0015H\u0002J\u0006\u0010\'\u001a\u00020\u000fJ\u000e\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u0011J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010-\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u000200H\u0002J\u0006\u00101\u001a\u00020\u0015J\u0008\u00102\u001a\u0004\u0018\u00010\u0001R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R(\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0017\"\u0004\u0008\"\u0010\u0019R(\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001d\"\u0004\u0008%\u0010\u001f\u00a8\u00064"
    }
    d2 = {
        "Lcom/miniaa/launcher/taskview/ActivityViewWrapper;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "activityView",
        "",
        "activityViewClass",
        "Ljava/lang/Class;",
        "isReady",
        "",
        "pendingPackage",
        "",
        "currentPackage",
        "onReady",
        "Lkotlin/Function0;",
        "",
        "getOnReady",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnReady",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onTaskStarted",
        "Lkotlin/Function1;",
        "getOnTaskStarted",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnTaskStarted",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onTaskRemoved",
        "getOnTaskRemoved",
        "setOnTaskRemoved",
        "onError",
        "getOnError",
        "setOnError",
        "attachCallback",
        "isAvailable",
        "startApp",
        "packageName",
        "tryStartPendingIntentWithOptions",
        "pi",
        "Landroid/app/PendingIntent;",
        "tryStartPendingIntent",
        "tryStartIntent",
        "intent",
        "Landroid/content/Intent;",
        "release",
        "getActivityViewAsView",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/miniaa/launcher/taskview/ActivityViewWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "ActivityViewWrapper"


# instance fields
.field private activityView:Ljava/lang/Object;

.field private activityViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private currentPackage:Ljava/lang/String;

.field private isReady:Z

.field private onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onReady:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onTaskRemoved:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onTaskStarted:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPackage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$F6FOHoW6qKm5hn2aMHCRCkcLR6c(Lcom/miniaa/launcher/taskview/ActivityViewWrapper;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->attachCallback$lambda$2(Lcom/miniaa/launcher/taskview/ActivityViewWrapper;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->Companion:Lcom/miniaa/launcher/taskview/ActivityViewWrapper$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "ActivityViewWrapper"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    :try_start_0
    const-string p2, "android.app.ActivityView"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityViewClass:Ljava/lang/Class;

    .line 54
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 55
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityView:Ljava/lang/Object;

    .line 57
    invoke-direct {p0}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->attachCallback()V

    .line 59
    const-string p1, "ActivityView created successfully"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create ActivityView: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 62
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onError:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final attachCallback()V
    .locals 7

    .line 68
    const-string v0, "ActivityViewWrapper"

    .line 70
    :try_start_0
    const-string v1, "android.app.ActivityView$StateCallback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    .line 74
    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 72
    new-instance v6, Lcom/miniaa/launcher/taskview/ActivityViewWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/miniaa/launcher/taskview/ActivityViewWrapper;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    iget-object v4, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityViewClass:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, "setCallback"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v1, v3, v5

    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 111
    iget-object v3, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityView:Ljava/lang/Object;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "StateCallback attached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 114
    const-string v2, "Failed to attach callback"

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onError:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Callback failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method private static final attachCallback$lambda$2(Lcom/miniaa/launcher/taskview/ActivityViewWrapper;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 76
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "ActivityViewWrapper"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string p3, "onActivityViewDestroyed"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 87
    :cond_0
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-boolean v2, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->isReady:Z

    goto/16 :goto_6

    .line 76
    :sswitch_1
    const-string p3, "onActivityViewReady"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_6

    .line 78
    :cond_1
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->isReady:Z

    .line 80
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onReady:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->pendingPackage:Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 82
    iput-object p2, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->pendingPackage:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->startApp(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 76
    :sswitch_2
    const-string v0, "onTaskCreated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz p3, :cond_4

    .line 91
    invoke-static {p3, v2}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, p2

    :goto_0
    instance-of p3, p1, Ljava/lang/Integer;

    if-eqz p3, :cond_5

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_5
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onTaskCreated: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->currentPackage:Ljava/lang/String;

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onTaskStarted:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_f

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 76
    :sswitch_3
    const-string p0, "onTaskMovedToFront"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_6

    :cond_7
    if-eqz p3, :cond_8

    .line 96
    invoke-static {p3, v2}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_8
    move-object p0, p2

    :goto_2
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_9

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_9
    move-object p0, p2

    :goto_3
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onTaskMovedToFront: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 76
    :sswitch_4
    const-string v0, "onTaskRemovalStarted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    if-eqz p3, :cond_c

    .line 100
    invoke-static {p3, v2}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_c
    move-object p1, p2

    :goto_4
    instance-of p3, p1, Ljava/lang/Integer;

    if-eqz p3, :cond_d

    check-cast p1, Ljava/lang/Integer;

    goto :goto_5

    :cond_d
    move-object p1, p2

    :goto_5
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 101
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onTaskRemovalStarted: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p2, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->currentPackage:Ljava/lang/String;

    .line 103
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onTaskRemoved:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_f
    :goto_6
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x68b29be7 -> :sswitch_4
        -0x3aef33a1 -> :sswitch_3
        -0x3599e5bc -> :sswitch_2
        -0x2af77870 -> :sswitch_1
        0x3eeb8586 -> :sswitch_0
    .end sparse-switch
.end method

.method private final tryStartIntent(Landroid/content/Intent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityViewClass:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 208
    const-string v2, "startActivity"

    const/4 v3, 0x1

    .line 209
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    .line 207
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 211
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityView:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "startActivity(Intent) failed: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityViewWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return v0
.end method

.method private final tryStartPendingIntent(Landroid/app/PendingIntent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityViewClass:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 193
    const-string v2, "startActivity"

    const/4 v3, 0x1

    .line 194
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v4, v0

    .line 192
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 196
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityView:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "startActivity(PI) failed: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityViewWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return v0
.end method

.method private final tryStartPendingIntentWithOptions(Landroid/app/PendingIntent;)Z
    .locals 7

    const/4 v0, 0x0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityViewClass:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 175
    const-string v2, "startActivity"

    const/4 v3, 0x3

    .line 176
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v3, v0

    .line 177
    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 178
    const-class v4, Landroid/app/ActivityOptions;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 174
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 180
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 181
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityView:Ljava/lang/Object;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    filled-new-array {p1, v3, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "startActivity(PI, Intent, AO) failed: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityViewWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final getActivityViewAsView()Landroid/view/View;
    .locals 1

    .line 233
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityView:Ljava/lang/Object;

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getOnError()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onError:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnReady()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onReady:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnTaskRemoved()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onTaskRemoved:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnTaskStarted()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onTaskStarted:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityView:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final release()V
    .locals 5

    .line 221
    const-string v0, "ActivityViewWrapper"

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityViewClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v2, "release"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->activityView:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    const-string p0, "ActivityView released"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 225
    const-string v1, "Failed to release"

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final setOnError(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnReady(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onReady:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnTaskRemoved(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onTaskRemoved:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnTaskStarted(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onTaskStarted:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final startApp(Ljava/lang/String;)V
    .locals 8

    const-string v0, "Cannot launch "

    const-string v1, "Started "

    const-string v2, "All start methods failed for "

    const-string v3, "No launch intent for "

    const-string v4, "packageName"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-boolean v4, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->isReady:Z

    const-string v5, "ActivityViewWrapper"

    if-nez v4, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not ready, queuing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->pendingPackage:Ljava/lang/String;

    return-void

    .line 130
    :cond_0
    iget-object v4, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->currentPackage:Ljava/lang/String;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " already running"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_1
    iput-object p1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->currentPackage:Ljava/lang/String;

    const/4 v4, 0x0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_3

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onError:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    const/high16 v0, 0x10000000

    .line 144
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v7, 0xc000000

    .line 146
    invoke-static {v0, v3, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->tryStartPendingIntentWithOptions(Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 153
    invoke-direct {p0, v0}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->tryStartPendingIntent(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 154
    invoke-direct {p0, v6}, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->tryStartIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 159
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onError:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_5
    iput-object v4, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->currentPackage:Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in ActivityView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error starting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v5, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    iget-object v0, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->onError:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_7
    iput-object v4, p0, Lcom/miniaa/launcher/taskview/ActivityViewWrapper;->currentPackage:Ljava/lang/String;

    :goto_1
    return-void
.end method
