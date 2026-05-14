.class public Lcom/chery/media/view/dialog/Dialog_SingleText;
.super Lcom/chery/media/view/dialog/DialogBase;
.source "Dialog_SingleText.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;

.field private handler:Landroid/os/Handler;

.field private runDismiss:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/chery/media/view/dialog/Dialog_SingleText;

    const-string v1, "SET"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/dialog/Dialog_SingleText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/chery/media/view/dialog/DialogBase;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->handler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->binding:Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;

    .line 38
    invoke-virtual {p1}, Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->setContentView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 41
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    or-int/lit16 v0, v0, 0x7d8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x11

    .line 42
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 43
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 44
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    if-eqz p2, :cond_0

    .line 49
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->binding:Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;->tvTips:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/chery/media/view/dialog/Dialog_SingleText;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->runDismiss:Ljava/lang/Runnable;

    return-object p1
.end method

.method private setDismissDelay(I)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->runDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->runDismiss:Ljava/lang/Runnable;

    :cond_0
    if-lez p1, :cond_1

    .line 75
    new-instance v0, Lcom/chery/media/view/dialog/Dialog_SingleText$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/dialog/Dialog_SingleText$1;-><init>(Lcom/chery/media/view/dialog/Dialog_SingleText;)V

    iput-object v0, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->runDismiss:Ljava/lang/Runnable;

    .line 82
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->handler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public show(I)V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/chery/media/view/dialog/DialogBase;->show()V

    .line 55
    invoke-direct {p0, p1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->setDismissDelay(I)V

    return-void
.end method

.method public showText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    return-void
.end method

.method public showText(Ljava/lang/String;I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_SingleText;->binding:Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogSingleTextLayoutBinding;->tvTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->show()V

    .line 65
    invoke-direct {p0, p2}, Lcom/chery/media/view/dialog/Dialog_SingleText;->setDismissDelay(I)V

    return-void
.end method
