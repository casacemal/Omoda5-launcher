.class Lcom/chery/media/view/activity/DabEpgActivity$9;
.super Ljava/lang/Object;
.source "DabEpgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/activity/DabEpgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/DabEpgActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/DabEpgActivity;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$9;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity$9;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {v0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$400(Lcom/chery/media/view/activity/DabEpgActivity;)V

    .line 251
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity$9;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {v0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$000(Lcom/chery/media/view/activity/DabEpgActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$9;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$800(Lcom/chery/media/view/activity/DabEpgActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
