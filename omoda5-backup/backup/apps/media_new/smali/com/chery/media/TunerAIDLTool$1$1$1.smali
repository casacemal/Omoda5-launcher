.class Lcom/chery/media/TunerAIDLTool$1$1$1;
.super Ljava/lang/Object;
.source "TunerAIDLTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/TunerAIDLTool$1$1;->regionCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/chery/media/TunerAIDLTool$1$1;

.field final synthetic val$region:I


# direct methods
.method constructor <init>(Lcom/chery/media/TunerAIDLTool$1$1;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/chery/media/TunerAIDLTool$1$1$1;->this$2:Lcom/chery/media/TunerAIDLTool$1$1;

    iput p2, p0, Lcom/chery/media/TunerAIDLTool$1$1$1;->val$region:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/chery/media/TunerAIDLTool$1$1$1;->this$2:Lcom/chery/media/TunerAIDLTool$1$1;

    iget-object v0, v0, Lcom/chery/media/TunerAIDLTool$1$1;->this$1:Lcom/chery/media/TunerAIDLTool$1;

    iget-object v0, v0, Lcom/chery/media/TunerAIDLTool$1;->this$0:Lcom/chery/media/TunerAIDLTool;

    invoke-static {v0}, Lcom/chery/media/TunerAIDLTool;->access$300(Lcom/chery/media/TunerAIDLTool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/TunerAIDLTool$Listener;

    .line 84
    iget v2, p0, Lcom/chery/media/TunerAIDLTool$1$1$1;->val$region:I

    invoke-interface {v1, v2}, Lcom/chery/media/TunerAIDLTool$Listener;->regionCallback(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
