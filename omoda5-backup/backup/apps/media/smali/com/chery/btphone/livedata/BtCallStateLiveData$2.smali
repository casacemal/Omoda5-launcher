.class Lcom/chery/btphone/livedata/BtCallStateLiveData$2;
.super Landroid/content/BroadcastReceiver;
.source "BtCallStateLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/btphone/livedata/BtCallStateLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/btphone/livedata/BtCallStateLiveData;


# direct methods
.method constructor <init>(Lcom/chery/btphone/livedata/BtCallStateLiveData;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData$2;->this$0:Lcom/chery/btphone/livedata/BtCallStateLiveData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData$2;->this$0:Lcom/chery/btphone/livedata/BtCallStateLiveData;

    invoke-static {p0}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->access$100(Lcom/chery/btphone/livedata/BtCallStateLiveData;)V

    return-void
.end method
