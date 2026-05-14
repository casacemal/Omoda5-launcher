.class public Lcom/chery/media/view/dialog/Dialog_DABOption;
.super Lcom/chery/media/view/dialog/DialogBase;
.source "Dialog_DABOption.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;

.field private confirmClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/chery/media/view/dialog/Dialog_DABOption;

    const-string v1, "SET"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/dialog/Dialog_DABOption;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/media/view/dialog/DialogBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABOption;->confirmClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_DABOption;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABOption;->binding:Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;

    .line 28
    invoke-virtual {p1}, Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_DABOption;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 32
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    or-int/lit16 p2, p2, 0x7d8

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_0
    const/16 p2, 0x320

    .line 34
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p2, 0x19c

    .line 35
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x11

    .line 36
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 37
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 38
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 41
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABOption;->binding:Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;->btnOption:Lcom/chery/media/view/component/SlideSwitch;

    new-instance p2, Lcom/chery/media/view/dialog/Dialog_DABOption$1;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_DABOption$1;-><init>(Lcom/chery/media/view/dialog/Dialog_DABOption;)V

    invoke-virtual {p1, p2}, Lcom/chery/media/view/component/SlideSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABOption;->binding:Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;->btnClose:Landroid/widget/ImageView;

    new-instance p2, Lcom/chery/media/view/dialog/Dialog_DABOption$2;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_DABOption$2;-><init>(Lcom/chery/media/view/dialog/Dialog_DABOption;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/dialog/Dialog_DABOption;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DABOption;->confirmClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public setConfirmClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABOption;->confirmClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DABOption;->binding:Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/DialogDabOptionLayoutBinding;->btnOption:Lcom/chery/media/view/component/SlideSwitch;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/component/SlideSwitch;->setSelected(Z)V

    return-void
.end method
