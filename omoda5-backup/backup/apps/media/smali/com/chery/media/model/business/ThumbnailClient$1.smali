.class Lcom/chery/media/model/business/ThumbnailClient$1;
.super Ljava/lang/Object;
.source "ThumbnailClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/ThumbnailClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/ThumbnailClient;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/ThumbnailClient;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/chery/media/model/business/ThumbnailClient$1;->this$0:Lcom/chery/media/model/business/ThumbnailClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/chery/media/model/business/ThumbnailClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailClient$1;->this$0:Lcom/chery/media/model/business/ThumbnailClient;

    invoke-static {p2}, Lcom/chery/media/IThumbnailServiceAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/media/IThumbnailServiceAidlInterface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/ThumbnailClient;->access$102(Lcom/chery/media/model/business/ThumbnailClient;Lcom/chery/media/IThumbnailServiceAidlInterface;)Lcom/chery/media/IThumbnailServiceAidlInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/chery/media/model/business/ThumbnailClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailClient$1;->this$0:Lcom/chery/media/model/business/ThumbnailClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/media/model/business/ThumbnailClient;->access$102(Lcom/chery/media/model/business/ThumbnailClient;Lcom/chery/media/IThumbnailServiceAidlInterface;)Lcom/chery/media/IThumbnailServiceAidlInterface;

    return-void
.end method
