.class public Lcom/chery/media/view/dialog/DialogBase;
.super Landroid/app/Dialog;
.source "DialogBase.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lcom/chery/media/view/dialog/DialogBase;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/dialog/DialogBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/chery/media/view/dialog/DialogBase;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p1, p0, Lcom/chery/media/view/dialog/DialogBase;->context:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 31
    iput-object p1, p0, Lcom/chery/media/view/dialog/DialogBase;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/chery/media/view/dialog/DialogBase;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 5

    .line 36
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 38
    invoke-static {}, Lcom/chery/media/util/PowerWakeLockUse;->getInstance()Lcom/chery/media/util/PowerWakeLockUse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/util/PowerWakeLockUse;->getPowerWakeLock()Lcom/chery/power/PowerWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->checkScreenOff()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/chery/media/view/dialog/DialogBase;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string v4, "[%s] to set screen on"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/chery/media/util/PowerWakeLockUse;->getInstance()Lcom/chery/media/util/PowerWakeLockUse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/util/PowerWakeLockUse;->getPowerWakeLock()Lcom/chery/power/PowerWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->screenOn()V

    .line 42
    :cond_0
    invoke-static {}, Lcom/chery/media/util/PowerWakeLockUse;->getInstance()Lcom/chery/media/util/PowerWakeLockUse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/util/PowerWakeLockUse;->getPowerWakeLock()Lcom/chery/power/PowerWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->isScreenLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/chery/media/view/dialog/DialogBase;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v1, "[%s] to unlock screen"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/chery/media/util/PowerWakeLockUse;->getInstance()Lcom/chery/media/util/PowerWakeLockUse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/util/PowerWakeLockUse;->getPowerWakeLock()Lcom/chery/power/PowerWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->screenUnlock()V

    .line 45
    new-instance v0, Lcom/chery/media/view/dialog/DialogBase$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/dialog/DialogBase$1;-><init>(Lcom/chery/media/view/dialog/DialogBase;)V

    invoke-virtual {p0, v0}, Lcom/chery/media/view/dialog/DialogBase;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void
.end method
