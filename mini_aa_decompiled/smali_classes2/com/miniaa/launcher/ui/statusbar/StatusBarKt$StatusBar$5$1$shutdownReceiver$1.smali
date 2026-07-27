.class public final Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$shutdownReceiver$1;
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
        "com/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$shutdownReceiver$1",
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
.field final synthetic $tripTracker:Lcom/miniaa/launcher/data/trip/TripTracker;


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/data/trip/TripTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$shutdownReceiver$1;->$tripTracker:Lcom/miniaa/launcher/data/trip/TripTracker;

    .line 139
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$shutdownReceiver$1;->$tripTracker:Lcom/miniaa/launcher/data/trip/TripTracker;

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/trip/TripTracker;->saveOnShutdown()V

    return-void
.end method
