.class Lcom/chery/media/view/activity/DabEpgActivity$8;
.super Ljava/lang/Object;
.source "DabEpgActivity.java"

# interfaces
.implements Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;


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

    .line 230
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$8;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allListChanged()V
    .locals 0

    return-void
.end method

.method public favorInfoChanged()V
    .locals 0

    return-void
.end method

.method public programInfoListChanged()V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$8;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$400(Lcom/chery/media/view/activity/DabEpgActivity;)V

    return-void
.end method
