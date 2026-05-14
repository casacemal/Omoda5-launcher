.class Lcom/chery/media/model/business/VrMediaBusiness$1$1;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VrMediaBusiness$1;->onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/VrMediaBusiness$1;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrMediaBusiness$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/VrMediaBusiness$1;

    iput-object p2, p0, Lcom/chery/media/model/business/VrMediaBusiness$1$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/chery/media/model/business/VrMediaBusiness$1$1;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/chery/media/model/business/VrMediaBusiness$1$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/VrMediaBusiness$1;

    iget-object v0, v0, Lcom/chery/media/model/business/VrMediaBusiness$1;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    iget-object v1, p0, Lcom/chery/media/model/business/VrMediaBusiness$1$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/chery/media/model/business/VrMediaBusiness$1$1;->val$value:Ljava/lang/String;

    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$1$1;->val$id:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/chery/media/model/business/VrMediaBusiness;->access$000(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
