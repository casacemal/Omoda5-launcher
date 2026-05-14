.class Lcom/chery/media/view/dialog/Dialog_DABOption$2;
.super Ljava/lang/Object;
.source "Dialog_DABOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_DABOption;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_DABOption;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_DABOption;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABOption$2;->this$0:Lcom/chery/media/view/dialog/Dialog_DABOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DABOption$2;->this$0:Lcom/chery/media/view/dialog/Dialog_DABOption;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->dismiss()V

    return-void
.end method
