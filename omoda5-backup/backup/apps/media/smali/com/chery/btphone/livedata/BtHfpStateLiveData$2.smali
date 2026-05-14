.class Lcom/chery/btphone/livedata/BtHfpStateLiveData$2;
.super Landroid/content/BroadcastReceiver;
.source "BtHfpStateLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/btphone/livedata/BtHfpStateLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/btphone/livedata/BtHfpStateLiveData;


# direct methods
.method constructor <init>(Lcom/chery/btphone/livedata/BtHfpStateLiveData;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData$2;->this$0:Lcom/chery/btphone/livedata/BtHfpStateLiveData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData$2;->this$0:Lcom/chery/btphone/livedata/BtHfpStateLiveData;

    invoke-static {p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->access$100(Lcom/chery/btphone/livedata/BtHfpStateLiveData;)V

    return-void
.end method
