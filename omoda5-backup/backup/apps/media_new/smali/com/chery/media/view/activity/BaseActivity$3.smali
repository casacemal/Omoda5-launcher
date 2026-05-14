.class Lcom/chery/media/view/activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/BaseActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/BaseActivity;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/BaseActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/chery/media/view/activity/BaseActivity$3;->this$0:Lcom/chery/media/view/activity/BaseActivity;

    iput-object p2, p0, Lcom/chery/media/view/activity/BaseActivity$3;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/chery/media/view/activity/BaseActivity$3;->this$0:Lcom/chery/media/view/activity/BaseActivity;

    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity$3;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p0}, Lcom/chery/media/view/activity/BaseActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
