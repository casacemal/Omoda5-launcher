.class public Lcom/chery/media/view/dialog/Dialog_DABAnnounce;
.super Lcom/chery/media/view/dialog/DialogBase;
.source "Dialog_DABAnnounce.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    const-string v1, "SET"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/media/view/dialog/DialogBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->requestWindowFeature(I)Z

    .line 26
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->binding:Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;

    .line 27
    invoke-virtual {p1}, Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->setContentView(Landroid/view/View;)V

    .line 29
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 31
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    or-int/lit16 p3, p3, 0x7d8

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_0
    const/16 p3, 0x320

    .line 33
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p3, 0x1f9

    .line 34
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p3, 0x11

    .line 35
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 36
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 37
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p3, 0x106000d

    invoke-virtual {p1, p3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    if-eqz p2, :cond_1

    .line 41
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->binding:Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->binding:Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogDabAnnounceLayoutBinding;->btnClose:Landroid/widget/ImageView;

    new-instance p2, Lcom/chery/media/view/dialog/Dialog_DABAnnounce$1;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce$1;-><init>(Lcom/chery/media/view/dialog/Dialog_DABAnnounce;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
