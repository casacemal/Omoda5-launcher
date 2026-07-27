.class public final Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->StatusBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZZZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "ctx",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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


# instance fields
.field final synthetic $dateText$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $timeText$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;->$timeText$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;->$dateText$delegate:Landroidx/compose/runtime/MutableState;

    .line 130
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;->$timeText$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$getCurrentTime()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$StatusBar$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;->$dateText$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$getCurrentDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$StatusBar$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method
