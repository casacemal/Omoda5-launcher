.class Lcom/chery/media/view/dialog/Dialog_DABAnnounce$1;
.super Ljava/lang/Object;
.source "Dialog_DABAnnounce.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_DABAnnounce;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_DABAnnounce;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_DABAnnounce;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABAnnounce$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DABAnnounce$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->dismiss()V

    return-void
.end method
