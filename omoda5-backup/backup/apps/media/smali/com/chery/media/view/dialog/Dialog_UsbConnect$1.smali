.class Lcom/chery/media/view/dialog/Dialog_UsbConnect$1;
.super Ljava/lang/Object;
.source "Dialog_UsbConnect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_UsbConnect;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$1;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$1;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->dismiss()V

    return-void
.end method
