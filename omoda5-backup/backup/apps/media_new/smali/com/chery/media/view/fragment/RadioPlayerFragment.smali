.class public Lcom/chery/media/view/fragment/RadioPlayerFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "RadioPlayerFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

.field private currentBandObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannelObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;"
        }
    .end annotation
.end field

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field private handler:Landroid/os/Handler;

.field private hasDab:Z

.field private listObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentChannel:Ljava/lang/Integer;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private playingStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private radioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;"
        }
    .end annotation
.end field

.field private radioListAdapter:Lcom/chery/media/view/adapter/RadioListAdapter;

.field private radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

.field private tunerAreaeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tunerStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-class v0, Lcom/chery/media/view/fragment/RadioPlayerFragment;

    const-string v1, "TUNER"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioList:Ljava/util/List;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    .line 415
    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$20;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->currentChannelObserver:Landroidx/lifecycle/Observer;

    .line 449
    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment$21;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$21;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->currentBandObserver:Landroidx/lifecycle/Observer;

    .line 464
    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->listObserver:Landroidx/lifecycle/Observer;

    .line 490
    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment$23;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$23;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->tunerStateObserver:Landroidx/lifecycle/Observer;

    .line 524
    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment$24;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$24;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->playingStateObserver:Landroidx/lifecycle/Observer;

    .line 542
    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment$25;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$25;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->tunerAreaeObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/viewmodel/RadioViewModel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Ljava/lang/Integer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->mCurrentChannel:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/chery/media/view/fragment/RadioPlayerFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->mCurrentChannel:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->updateCurrentPlayingItemPosition()V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/view/adapter/RadioListAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioListAdapter:Lcom/chery/media/view/adapter/RadioListAdapter;

    return-object p0
.end method

.method private initView()V
    .locals 6

    .line 160
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->hasDAB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    .line 161
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivRadioSwitch:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vRadioSwitchAm:Landroid/view/View;

    iget-boolean v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vRadioSwitchFm:Landroid/view/View;

    iget-boolean v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivDabRadioSwitch:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vDabRadioSwitchAm:Landroid/view/View;

    iget-boolean v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vDabRadioSwitchFm:Landroid/view/View;

    iget-boolean v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vDabRadioSwitchDab:Landroid/view/View;

    iget-boolean v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->hasDab:Z

    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivRetract:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivRetract:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/RadioPlayerFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$1;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/RadioPlayerFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$2;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/RadioPlayerFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$3;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/RadioPlayerFragment$4;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$4;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/RadioPlayerFragment$5;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$5;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/RadioPlayerFragment$6;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$6;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/RadioPlayerFragment$7;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$7;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 232
    new-instance v0, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FM 108.0 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e00bf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x3c

    invoke-direct {v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v4, 0x9

    const/16 v5, 0x12

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 234
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v3, 0xc

    invoke-interface {v0, v2, v4, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 235
    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivRadioSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vDabRadioSwitchDab:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$8;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$8;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vDabRadioSwitchFm:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$9;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$9;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vDabRadioSwitchAm:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$10;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$10;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vRadioSwitchFm:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$11;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->vRadioSwitchAm:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$12;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->arcScaleview:Lcom/chery/media/view/component/ArcScaleView;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$13;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/ArcScaleView;->setOnValueChangedListener(Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;)V

    .line 312
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivScan:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$14;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$14;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 321
    new-instance v0, Lcom/chery/media/view/adapter/RadioListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/adapter/RadioListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioListAdapter:Lcom/chery/media/view/adapter/RadioListAdapter;

    .line 323
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioListAdapter:Lcom/chery/media/view/adapter/RadioListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 324
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$15;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$15;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 340
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$16;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$16;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioListAdapter:Lcom/chery/media/view/adapter/RadioListAdapter;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$17;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$17;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/RadioListAdapter;->setItemClickListener(Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$18;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$18;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivSoundEffects:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/RadioPlayerFragment$19;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$19;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->arcScaleview:Lcom/chery/media/view/component/ArcScaleView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/RadioViewModel;->getArea()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/ArcScaleView;->setRadioRegion(I)V

    .line 395
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioListAdapter:Lcom/chery/media/view/adapter/RadioListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/RadioViewModel;->getArea()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/RadioListAdapter;->setRegion(I)V

    .line 397
    invoke-direct {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->updateCurrentPlayingItemPosition()V

    .line 398
    invoke-direct {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->updateListMask()V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 401
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/RadioViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    .line 402
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getCurrentChannel()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->currentChannelObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 403
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getCurrentBand()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->currentBandObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 404
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getRadioList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->listObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 405
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getTunerState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->tunerStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 406
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->playingStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 407
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getArea()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->tunerAreaeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 408
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/RadioPlayerFragment;
    .locals 3

    .line 92
    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;-><init>()V

    .line 93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 94
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 95
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateCurrentPlayingItemPosition()V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getScrollState()I

    move-result v0

    if-nez v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 554
    :goto_0
    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 555
    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/RadioDef;

    iget v2, v2, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iget-object v3, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->mCurrentChannel:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 556
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 569
    iget-object v1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 571
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->initViewModel()V

    .line 114
    invoke-direct {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->initView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->mParam1:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->mParam2:Ljava/lang/String;

    .line 107
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 138
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0051

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0050

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    .line 144
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 151
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->cancelAnim()V

    .line 152
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivRadioScan:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 154
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioListAdapter:Lcom/chery/media/view/adapter/RadioListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/RadioListAdapter;->setData(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 156
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->rvRadioList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 130
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onPause()V

    .line 131
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/RadioViewModel;->cancel()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/RadioViewModel;->requestAudioFocus()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 412
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
