.class Lcom/chery/media/view/activity/MediaActivity$8;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/MediaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/MediaActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$8;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$8;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p1}, Lcom/chery/media/view/activity/MediaActivity;->access$000(Lcom/chery/media/view/activity/MediaActivity;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$8;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/MediaActivity;->access$300(Lcom/chery/media/view/activity/MediaActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity$8;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
