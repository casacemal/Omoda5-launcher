.class public Lcom/chery/media/view/dialog/Dialog_DabReserveHint;
.super Lcom/chery/media/view/dialog/DialogBase;
.source "Dialog_DabReserveHint.java"


# instance fields
.field private binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private confirmClickListener:Landroid/view/View$OnClickListener;

.field private dialogDismissRunnable:Ljava/lang/Runnable;

.field private dialogDismissTimeout:I

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Lcom/chery/media/view/dialog/DialogBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->confirmClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->cancelClickListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0xa

    .line 24
    iput v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissTimeout:I

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->handler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;

    invoke-direct {v0, p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;-><init>(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)V

    iput-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    .line 33
    invoke-virtual {v1}, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 37
    iget p3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    or-int/lit16 p3, p3, 0x7d8

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_0
    const/16 p3, 0x2ec

    .line 39
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p3, 0x146

    .line 40
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p3, 0x11

    .line 41
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 42
    iget p3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p3, p3, 0x2

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->getWindow()Landroid/view/Window;

    move-result-object p3

    const v1, 0x106000d

    invoke-virtual {p3, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    if-eqz p2, :cond_1

    .line 47
    iget-object p3, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    iget-object p3, p3, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->tvHintLine1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 51
    iget-object p2, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f05002d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object p2, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 53
    iget-object p2, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->tvTitle:Landroid/widget/TextView;

    new-instance p3, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$1;

    invoke-direct {p3, p0, p1}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$1;-><init>(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->btnConfirm:Landroid/widget/ImageView;

    new-instance p2, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$2;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$2;-><init>(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->btnCancel:Landroid/widget/ImageView;

    new-instance p2, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$3;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$3;-><init>(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->confirmClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissTimeout:I

    return p0
.end method

.method static synthetic access$202(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissTimeout:I

    return p1
.end method

.method static synthetic access$210(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)I
    .locals 2

    .line 20
    iget v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissTimeout:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissTimeout:I

    return v0
.end method

.method static synthetic access$300(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Ljava/lang/Runnable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/chery/media/view/dialog/DialogBase;->dismiss()V

    .line 113
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCancelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setConfirmClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->confirmClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSeconds(I)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->binding:Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogDabReserveHintLayoutBinding;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0e0065

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    const/16 v0, 0xa

    .line 105
    iput v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissTimeout:I

    .line 106
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dialogDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    invoke-super {p0}, Lcom/chery/media/view/dialog/DialogBase;->show()V

    return-void
.end method
