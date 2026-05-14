.class Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4$1;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4$1;->this$2:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4$1;->this$2:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2902(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/view/dialog/Dialog_SingleText;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    return-void
.end method
