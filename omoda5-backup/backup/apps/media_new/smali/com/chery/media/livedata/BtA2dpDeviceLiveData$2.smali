.class Lcom/chery/media/livedata/BtA2dpDeviceLiveData$2;
.super Landroid/content/BroadcastReceiver;
.source "BtA2dpDeviceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/livedata/BtA2dpDeviceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/livedata/BtA2dpDeviceLiveData;


# direct methods
.method constructor <init>(Lcom/chery/media/livedata/BtA2dpDeviceLiveData;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$2;->this$0:Lcom/chery/media/livedata/BtA2dpDeviceLiveData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$2;->this$0:Lcom/chery/media/livedata/BtA2dpDeviceLiveData;

    invoke-virtual {p0}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->updateName()V

    return-void
.end method
