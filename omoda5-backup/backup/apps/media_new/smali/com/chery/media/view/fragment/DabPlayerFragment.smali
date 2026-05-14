.class public Lcom/chery/media/view/fragment/DabPlayerFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "DabPlayerFragment.java"


# static fields
.field private static final MSG_ALL_LIST_CHANGED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

.field private callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

.field private curDabInfo:Lcom/chery/media/model/business/DabInfo;

.field private curPlayInfoObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private curPlayListObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private dabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dabOptionObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private dabPlayListAdapter:Lcom/chery/media/view/adapter/DABPlayListAdapter;

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field dialogDabOption:Lcom/chery/media/view/dialog/Dialog_DABOption;

.field private handler:Landroid/os/Handler;

.field private isShowShortLabel:Z

.field private mHandler:Landroid/os/Handler;

.field private playImageObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lsw/com/dabdrmradio/DabImage;",
            ">;"
        }
    .end annotation
.end field

.field private playLabelObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playingStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

.field private scanStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Lcom/chery/media/view/fragment/DabPlayerFragment;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/DabPlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/chery/media/model/business/DabInfo;

    invoke-direct {v0}, Lcom/chery/media/model/business/DabInfo;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->isShowShortLabel:Z

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dialogDabOption:Lcom/chery/media/view/dialog/Dialog_DABOption;

    .line 381
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$18;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$18;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->playingStateObserver:Landroidx/lifecycle/Observer;

    .line 398
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$19;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curPlayListObserver:Landroidx/lifecycle/Observer;

    .line 410
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$20;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curPlayInfoObserver:Landroidx/lifecycle/Observer;

    .line 422
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$21;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$21;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->playLabelObserver:Landroidx/lifecycle/Observer;

    .line 433
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$22;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$22;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->playImageObserver:Landroidx/lifecycle/Observer;

    .line 458
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$23;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$23;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->scanStateObserver:Landroidx/lifecycle/Observer;

    .line 465
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$24;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$24;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabOptionObserver:Landroidx/lifecycle/Observer;

    .line 505
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$25;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$25;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    .line 588
    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$26;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$26;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/chery/media/view/fragment/DabPlayerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/view/adapter/DABPlayListAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabPlayListAdapter:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->updateCurrentPlayingItemPosition()V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/model/business/DabInfo;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/chery/media/view/fragment/DabPlayerFragment;Lcom/chery/media/model/business/DabInfo;)Lcom/chery/media/model/business/DabInfo;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/chery/media/view/fragment/DabPlayerFragment;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->updateScanState(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/chery/media/view/fragment/DabPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->updateIconStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/RadioViewModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    return-object p0
.end method

.method static synthetic access$302(Lcom/chery/media/view/fragment/DabPlayerFragment;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->isShowShortLabel:Z

    return p1
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->updateLabelBtn()V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->resetShortLabelWidth()V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->resetLongLabelWidth()V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/DabPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->updateListMask()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->updateIconStatus()V

    .line 134
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivRetract:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivRetract:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$pKBXVbojYMQndwfzJTY7ENmvCGk;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$pKBXVbojYMQndwfzJTY7ENmvCGk;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$G_Rxi5Jf6ZAtzGQWvFzJ9ha4d4I;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$G_Rxi5Jf6ZAtzGQWvFzJ9ha4d4I;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    sget-object v2, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$_RIpRFC8mByZNbKSoZYy4rvjaIU;->INSTANCE:Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$_RIpRFC8mByZNbKSoZYy4rvjaIU;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/DabPlayerFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$1;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/DabPlayerFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$2;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/DabPlayerFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$3;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/DabPlayerFragment$4;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$4;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivRadioSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->vDabSwitchFm:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$5;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$5;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->vDabSwitchAm:Landroid/view/View;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$6;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$6;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivListBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$7;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$7;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivEpg:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$8;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$8;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivTa:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$9;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$9;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivSetting:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$10;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$10;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivLabelOpen:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$11;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivLabelClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$12;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$13;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 281
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelLong:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$14;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$14;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 291
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 292
    new-instance v0, Lcom/chery/media/view/adapter/DABPlayListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/adapter/DABPlayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabPlayListAdapter:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    .line 294
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabPlayListAdapter:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 295
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->sbDabListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->llDabListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$15;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$15;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 306
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$16;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$16;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 318
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabPlayListAdapter:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$17;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$17;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->setItemClickListener(Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$PTYmCn_dJabNnnCyLgq_9M3M6mQ;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$PTYmCn_dJabNnnCyLgq_9M3M6mQ;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivSoundEffects:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$AmoSdNGf8oEKuVBKIGRPNwK2F5A;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$AmoSdNGf8oEKuVBKIGRPNwK2F5A;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->updateCurrentPlayingItemPosition()V

    .line 355
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->updateListMask()V

    .line 357
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->isFirstTimeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->startScan()V

    .line 359
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->setFirstTimeUsedFalse()V

    :cond_0
    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 363
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 364
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->playingStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 365
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getCurPlayList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curPlayListObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 366
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curPlayInfoObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 367
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayLabel()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->playLabelObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 368
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayImage()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->playImageObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 369
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getScanState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->scanStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 370
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getDabOption()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabOptionObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 371
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/DabViewModel;->addCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    .line 373
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/RadioViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    return-void
.end method

.method static synthetic lambda$initView$2(Landroid/view/View;)Z
    .locals 1

    .line 145
    sget-object p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->TAG:Ljava/lang/String;

    const-string v0, "Player Playpause onLongClick"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private resetLongLabelWidth()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelLong:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelLong:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    .line 546
    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelLong:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 547
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayLabel()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayLabel()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v0, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 550
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelLong:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private resetShortLabelWidth()V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    .line 535
    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 536
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayLabel()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayLabel()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v0, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 539
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateCurrentPlayingItemPosition()V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getScrollState()I

    move-result v0

    if-nez v0, :cond_1

    .line 476
    sget-object v0, Lcom/chery/media/view/fragment/DabPlayerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dabList.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v2}, Lcom/chery/media/viewmodel/DabViewModel;->getCurPlayList()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 478
    :goto_0
    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->freq:I

    iget-object v3, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v3, v3, Lcom/chery/media/model/business/DabInfo;->freq:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    .line 480
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    iget-object v3, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v3, v3, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    .line 481
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    iget-object v3, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v3, v3, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    .line 482
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->componentId:I

    iget-object v3, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v3, v3, Lcom/chery/media/model/business/DabInfo;->componentId:I

    if-ne v2, v3, :cond_0

    .line 483
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

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

.method private updateIconStatus()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getALLList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 576
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivSoundEffects:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 577
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivEpg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 578
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivListBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivSoundEffects:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivEpg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 583
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivListBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateLabelBtn()V
    .locals 2

    .line 518
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->isShowShortLabel:Z

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 524
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 525
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivLabelOpen:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 527
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivLabelOpen:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 498
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 501
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateScanState(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 556
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvDabEmptyList:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivDabScan:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvDabScaning:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010026

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 560
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 561
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 562
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivDabScan:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 563
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    goto :goto_0

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivDabScan:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 566
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivDabScan:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvDabScaning:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p1, v0}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    .line 569
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvDabEmptyList:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$DabPlayerFragment(Landroid/view/View;)V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 138
    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$1$DabPlayerFragment(Landroid/view/View;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->playPause()V

    return-void
.end method

.method public synthetic lambda$initView$3$DabPlayerFragment(Landroid/view/View;)V
    .locals 0

    .line 338
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/DabViewModel;->cancelFavor(Lcom/chery/media/model/business/DabInfo;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget-object p1, p1, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 342
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/DabViewModel;->addFavor(Lcom/chery/media/model/business/DabInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$initView$4$DabPlayerFragment(Landroid/view/View;)V
    .locals 6

    .line 347
    new-instance v0, Lcom/chery/common/PageManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string p0, "SettingMenuID"

    const-string p1, "is_finish_self"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v4

    const-string p0, "8"

    const-string p1, "1"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v5

    const-string v1, "com.chery.settings"

    const-string v2, "com.chery.settings.view.settings.activity.SettingsActivity"

    const-string v3, "com.chery.media.ACTION_OPEN"

    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->initViewModel()V

    .line 88
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->initView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 110
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0045

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0044

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    .line 116
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 123
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->cancelAnim()V

    .line 124
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivDabScan:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 126
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/DabViewModel;->removeCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    .line 127
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabPlayListAdapter:Lcom/chery/media/view/adapter/DABPlayListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->setData(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 129
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->rvDabList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->requestAudioFocus()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 377
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
