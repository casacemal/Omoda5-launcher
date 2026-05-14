.class Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;
.super Ljava/lang/Object;
.source "DabEpgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/activity/DabEpgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateInfo"
.end annotation


# instance fields
.field public day:I

.field public month:I

.field final synthetic this$0:Lcom/chery/media/view/activity/DabEpgActivity;

.field public year:I


# direct methods
.method private constructor <init>(Lcom/chery/media/view/activity/DabEpgActivity;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/media/view/activity/DabEpgActivity;Lcom/chery/media/view/activity/DabEpgActivity$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/DabEpgActivity$DateInfo;-><init>(Lcom/chery/media/view/activity/DabEpgActivity;)V

    return-void
.end method
