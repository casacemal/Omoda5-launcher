.class Lcom/chery/media/view/dialog/Dialog_UsbConnect$2$1;
.super Ljava/lang/Object;
.source "Dialog_UsbConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;->onMountStatusChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2$1;->this$1:Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2$1;->this$1:Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;

    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->dismiss()V

    return-void
.end method
