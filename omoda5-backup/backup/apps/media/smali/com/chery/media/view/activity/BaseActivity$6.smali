.class Lcom/chery/media/view/activity/BaseActivity$6;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/BaseActivity;->backward()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/BaseActivity;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/chery/media/view/activity/BaseActivity$6;->this$0:Lcom/chery/media/view/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/chery/media/view/activity/BaseActivity$6;->this$0:Lcom/chery/media/view/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/chery/media/view/activity/BaseActivity;->backward()V

    return-void
.end method
