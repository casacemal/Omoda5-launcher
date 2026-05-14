.class Lcom/chery/media/view/activity/DabEpgActivity$4;
.super Ljava/lang/Object;
.source "DabEpgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/DabEpgActivity;->initView()V
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

    .line 117
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$4;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$4;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->finish()V

    return-void
.end method
