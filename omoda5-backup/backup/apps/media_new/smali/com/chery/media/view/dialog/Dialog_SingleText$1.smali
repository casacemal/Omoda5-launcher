.class Lcom/chery/media/view/dialog/Dialog_SingleText$1;
.super Ljava/lang/Object;
.source "Dialog_SingleText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_SingleText;->setDismissDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_SingleText;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_SingleText;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_SingleText$1;->this$0:Lcom/chery/media/view/dialog/Dialog_SingleText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_SingleText$1;->this$0:Lcom/chery/media/view/dialog/Dialog_SingleText;

    invoke-virtual {v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->dismiss()V

    .line 79
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_SingleText$1;->this$0:Lcom/chery/media/view/dialog/Dialog_SingleText;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->access$002(Lcom/chery/media/view/dialog/Dialog_SingleText;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
