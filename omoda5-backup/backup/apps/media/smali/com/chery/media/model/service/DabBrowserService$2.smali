.class Lcom/chery/media/model/service/DabBrowserService$2;
.super Ljava/lang/Object;
.source "DabBrowserService.java"

# interfaces
.implements Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/DabBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/DabBrowserService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/DabBrowserService;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/chery/media/model/service/DabBrowserService$2;->this$0:Lcom/chery/media/model/service/DabBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allListChanged()V
    .locals 0

    return-void
.end method

.method public curDabInfoChanged(Lcom/chery/media/model/business/DabInfo;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/chery/media/model/service/DabBrowserService$2;->this$0:Lcom/chery/media/model/service/DabBrowserService;

    iget-object p1, p1, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/chery/media/model/service/DabBrowserService;->access$102(Lcom/chery/media/model/service/DabBrowserService;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    iget-object p0, p0, Lcom/chery/media/model/service/DabBrowserService$2;->this$0:Lcom/chery/media/model/service/DabBrowserService;

    invoke-static {p0}, Lcom/chery/media/model/service/DabBrowserService;->access$100(Lcom/chery/media/model/service/DabBrowserService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/chery/media/model/service/DabBrowserService;->access$200(Lcom/chery/media/model/service/DabBrowserService;Ljava/lang/String;)V

    return-void
.end method

.method public favorInfoChanged()V
    .locals 0

    return-void
.end method
