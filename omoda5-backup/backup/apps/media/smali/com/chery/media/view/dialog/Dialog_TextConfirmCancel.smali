.class public Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;
.super Lcom/chery/media/view/dialog/DialogBase;
.source "Dialog_TextConfirmCancel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private confirmClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-class v0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    const-string v1, "SET"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/chery/media/view/dialog/DialogBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->confirmClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->cancelClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->binding:Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;

    .line 31
    invoke-virtual {p1}, Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 35
    iget p5, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    or-int/lit16 p5, p5, 0x7d8

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_0
    const/16 p5, 0x2ec

    .line 37
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p5, 0x146

    .line 38
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p5, 0x11

    .line 39
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 40
    iget p5, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p5, p5, 0x2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 41
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->getWindow()Landroid/view/Window;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 42
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p5, 0x106000d

    invoke-virtual {p1, p5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    if-eqz p2, :cond_1

    .line 45
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->binding:Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 48
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->binding:Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 51
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->binding:Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_3
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->binding:Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;->btnConfirm:Landroid/widget/ImageView;

    new-instance p2, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$1;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$1;-><init>(Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->binding:Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogTextConfirmCancelLayoutBinding;->btnCancel:Landroid/widget/ImageView;

    new-instance p2, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$2;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$2;-><init>(Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->confirmClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public setCancelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setConfirmClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->confirmClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
