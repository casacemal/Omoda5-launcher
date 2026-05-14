.class Lcom/chery/media/view/dialog/DialogBase$1;
.super Ljava/lang/Object;
.source "DialogBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/DialogBase;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/DialogBase;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/DialogBase;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/chery/media/view/dialog/DialogBase$1;->this$0:Lcom/chery/media/view/dialog/DialogBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/chery/media/view/dialog/DialogBase;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/chery/media/view/dialog/DialogBase$1;->this$0:Lcom/chery/media/view/dialog/DialogBase;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "[%s] restore to lock screen"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/chery/media/util/PowerWakeLockUse;->getInstance()Lcom/chery/media/util/PowerWakeLockUse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/util/PowerWakeLockUse;->getPowerWakeLock()Lcom/chery/power/PowerWakeLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/power/PowerWakeLock;->screenLock()V

    return-void
.end method
