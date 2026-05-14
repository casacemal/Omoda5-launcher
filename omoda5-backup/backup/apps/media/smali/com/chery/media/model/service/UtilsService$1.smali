.class Lcom/chery/media/model/service/UtilsService$1;
.super Lcom/chery/media/IUtilsServiceAidlInterface$Stub;
.source "UtilsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/service/UtilsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/UtilsService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/UtilsService;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/chery/media/model/service/UtilsService$1;->this$0:Lcom/chery/media/model/service/UtilsService;

    invoke-direct {p0}, Lcom/chery/media/IUtilsServiceAidlInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-static {p1, p2}, Lcom/chery/media/util/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
