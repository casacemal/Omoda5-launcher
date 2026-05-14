.class Lcom/chery/media/view/activity/DabAnnounceActivity$2;
.super Ljava/lang/Object;
.source "DabAnnounceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/DabAnnounceActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/DabAnnounceActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/chery/media/view/activity/DabAnnounceActivity$2;->this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity$2;->this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;

    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabAnnounceActivity;->finish()V

    return-void
.end method
