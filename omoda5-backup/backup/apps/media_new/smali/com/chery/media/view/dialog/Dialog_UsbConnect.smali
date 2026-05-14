.class public Lcom/chery/media/view/dialog/Dialog_UsbConnect;
.super Lcom/chery/media/view/dialog/DialogBase;
.source "Dialog_UsbConnect.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private musicAni:Landroid/animation/ObjectAnimator;

.field private picAni:Landroid/animation/ObjectAnimator;

.field private thisUsbType:I

.field private usbDeviceInfoListener:Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

.field private videoAni:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    const-string v1, "SET"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/chery/media/view/dialog/DialogBase;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->thisUsbType:I

    .line 48
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->handler:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 50
    invoke-virtual {p0, p2}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    .line 53
    invoke-virtual {p2}, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 56
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    or-int/lit16 v0, v0, 0x7d8

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x11

    .line 57
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x320

    .line 58
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x1f9

    .line 59
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 60
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->getWindow()Landroid/view/Window;

    move-result-object p2

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->updateView()V

    .line 65
    iget-object p2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect$1;-><init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object p2, p2, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvTitle1:Landroid/widget/TextView;

    const v0, 0x7f0e00ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance p2, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;

    invoke-direct {p2, p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect$2;-><init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)V

    iput-object p2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->usbDeviceInfoListener:Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

    .line 96
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p2

    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->usbDeviceInfoListener:Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

    invoke-virtual {p2, v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->addUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V

    .line 98
    new-instance p2, Lcom/chery/media/view/dialog/Dialog_UsbConnect$3;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/dialog/Dialog_UsbConnect$3;-><init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect;Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvMusicInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance p2, Lcom/chery/media/view/dialog/Dialog_UsbConnect$4;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/dialog/Dialog_UsbConnect$4;-><init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect;Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvPicInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoPic:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance p2, Lcom/chery/media/view/dialog/Dialog_UsbConnect$5;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/view/dialog/Dialog_UsbConnect$5;-><init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect;Landroid/content/Context;)V

    .line 146
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvVideoInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoVideo:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->thisUsbType:I

    return p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 152
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->usbDeviceInfoListener:Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->removeUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V

    .line 153
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 162
    :cond_2
    invoke-super {p0}, Lcom/chery/media/view/dialog/DialogBase;->dismiss()V

    return-void
.end method

.method public updateView()V
    .locals 13

    .line 166
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->thisUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v0

    .line 167
    iget-boolean v1, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    if-eqz v1, :cond_15

    .line 168
    iget v1, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    const v2, 0x7f0e00af

    const v3, 0x7f07016e

    const/4 v4, -0x1

    const-wide/16 v5, 0xbb8

    const/4 v7, 0x2

    const-string v8, "rotation"

    const v9, 0x7f070172

    const/16 v10, 0x23

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivMusicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivMusicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvMusicInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvMusicInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoMusic:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 179
    :cond_1
    iget v1, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->scanStatus:I

    if-ne v1, v10, :cond_3

    .line 180
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivMusicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivMusicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvMusicInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    const v3, 0x7f0e00b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvMusicInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoMusic:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivMusicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_4

    .line 192
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivMusicIcon:Landroid/widget/ImageView;

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    .line 193
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 194
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 195
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v11}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 196
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->musicAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 201
    :cond_6
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvMusicInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvMusicInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoMusic:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 207
    :goto_0
    iget v1, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->picturesCount:I

    const v2, 0x7f0e00b3

    const v3, 0x7f07016f

    if-lez v1, :cond_8

    .line 208
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_7

    .line 209
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 211
    :cond_7
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivPicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivPicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvPicInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvPicInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 215
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 218
    :cond_8
    iget v1, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->scanStatus:I

    if-ne v1, v10, :cond_a

    .line 219
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_9

    .line 220
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 222
    :cond_9
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivPicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivPicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 224
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvPicInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    const v3, 0x7f0e00b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvPicInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 229
    :cond_a
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivPicIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_b

    .line 231
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivPicIcon:Landroid/widget/ImageView;

    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    .line 232
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 234
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v11}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 235
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    :cond_b
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 238
    :cond_c
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->picAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 240
    :cond_d
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvPicInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvPicInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 246
    :goto_1
    iget v1, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->videosCount:I

    const v2, 0x7f0e00b5

    const v3, 0x7f070170

    if-lez v1, :cond_f

    .line 247
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_e

    .line 248
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 250
    :cond_e
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvVideoInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvVideoInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoVideo:Landroid/widget/ImageView;

    invoke-virtual {p0, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 257
    :cond_f
    iget v0, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->scanStatus:I

    if-ne v0, v10, :cond_11

    .line 258
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_10

    .line 259
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 261
    :cond_10
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvVideoInfo:Landroid/widget/TextView;

    const v1, 0x7f0e00b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvVideoInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 265
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoVideo:Landroid/widget/ImageView;

    invoke-virtual {p0, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 268
    :cond_11
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_12

    .line 270
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivVideoIcon:Landroid/widget/ImageView;

    new-array v1, v7, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    .line 271
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 273
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 274
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    :cond_12
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 277
    :cond_13
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->videoAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 279
    :cond_14
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvVideoInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->tvVideoInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 281
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->binding:Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/DialogUsbConnectLayoutBinding;->ivGotoVideo:Landroid/widget/ImageView;

    invoke-virtual {p0, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 286
    :cond_15
    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->dismiss()V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
