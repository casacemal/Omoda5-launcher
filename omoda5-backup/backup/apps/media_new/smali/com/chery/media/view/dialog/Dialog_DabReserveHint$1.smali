.class Lcom/chery/media/view/dialog/Dialog_DabReserveHint$1;
.super Ljava/lang/Object;
.source "Dialog_DabReserveHint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_DabReserveHint;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;Landroid/content/Context;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    iput-object p2, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 56
    new-instance v0, Lcom/chery/common/PageManager;

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v1, "com.chery.media"

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    const-string v3, "com.chery.media.ACTION_OPEN"

    const-string v4, "MediaPageId"

    const-string v5, "PAGE_DAB_PLAYER"

    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-static {v0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$000(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-static {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$000(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
