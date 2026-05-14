.class public Lcom/chery/media/model/service/UtilsService;
.super Landroid/app/Service;
.source "UtilsService.java"


# instance fields
.field private stub:Lcom/chery/media/IUtilsServiceAidlInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    new-instance v0, Lcom/chery/media/model/service/UtilsService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/UtilsService$1;-><init>(Lcom/chery/media/model/service/UtilsService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UtilsService;->stub:Lcom/chery/media/IUtilsServiceAidlInterface$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/service/UtilsService;->stub:Lcom/chery/media/IUtilsServiceAidlInterface$Stub;

    return-object p0
.end method
