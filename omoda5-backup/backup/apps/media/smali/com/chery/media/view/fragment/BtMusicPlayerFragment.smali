.class public Lcom/chery/media/view/fragment/BtMusicPlayerFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "BtMusicPlayerFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

.field private mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    const-string v1, "BTA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 138
    sget-object v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->startAnim()V

    .line 142
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 144
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 145
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 146
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 147
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 149
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$UjWT-ME_ChP-O87FCGsLRFklWEQ;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$UjWT-ME_ChP-O87FCGsLRFklWEQ;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$u5TcgoOOTKV5haSXBjZoILCDnso;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$u5TcgoOOTKV5haSXBjZoILCDnso;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$I1eFsVxd0HcJxW7iM5-1i9SSpHs;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$I1eFsVxd0HcJxW7iM5-1i9SSpHs;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->ivSoundEffects:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$6neQ5yIAXhLiEU9H5Xgb8aOTiqQ;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$6neQ5yIAXhLiEU9H5Xgb8aOTiqQ;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->ivDeviceNameBg:Landroid/widget/ImageButton;

    new-instance v1, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$mvBJJiFXhabDm1Cvo9wsGbbeHgc;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$mvBJJiFXhabDm1Cvo9wsGbbeHgc;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->ivRetract:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$BrmgDwE8JEhIqprfdoeD-uwzesM;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$BrmgDwE8JEhIqprfdoeD-uwzesM;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 122
    sget-object v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/MediaActivity;

    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/BtMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    .line 126
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$mkylSO7n8BWj3v9zlMQ_wDgZs1o;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$mkylSO7n8BWj3v9zlMQ_wDgZs1o;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 127
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$oFWy_iZaiH_RyOAeu8FMYuqPrLs;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$oFWy_iZaiH_RyOAeu8FMYuqPrLs;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 128
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicPosition()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$XePU3_4Uo_0CHcVDWG2bm-iUv5M;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$XePU3_4Uo_0CHcVDWG2bm-iUv5M;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 129
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getPlaybackState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$ZpyS84-Ah-XrYbGYdtHq82woSsc;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$ZpyS84-Ah-XrYbGYdtHq82woSsc;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 130
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getConnectedDevice()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$DlNxjyIXrvbvlnw_LkerYBQZJuE;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$BtMusicPlayerFragment$DlNxjyIXrvbvlnw_LkerYBQZJuE;-><init>(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v0, "initViewModel: MediaActivity NULL"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$DlNxjyIXrvbvlnw_LkerYBQZJuE(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->updateDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$XePU3_4Uo_0CHcVDWG2bm-iUv5M(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->updateMusicPosition(I)V

    return-void
.end method

.method public static synthetic lambda$ZpyS84-Ah-XrYbGYdtHq82woSsc(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->updatePlaybackState(Z)V

    return-void
.end method

.method public static synthetic lambda$mkylSO7n8BWj3v9zlMQ_wDgZs1o(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->updateBtMusicState(Z)V

    return-void
.end method

.method public static synthetic lambda$oFWy_iZaiH_RyOAeu8FMYuqPrLs(Lcom/chery/media/view/fragment/BtMusicPlayerFragment;Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->updateMusicInfo(Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/BtMusicPlayerFragment;
    .locals 3

    .line 66
    new-instance v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 68
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 69
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private requestBtMusicAudioFocus(Z)V
    .locals 3

    .line 256
    sget-object v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBtMusicAudioFocus   isPlay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {p1}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->requestBtMusicAudioFocus()Z

    :cond_0
    return-void
.end method

.method private updateBtMusicState(Z)V
    .locals 3

    .line 192
    sget-object v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBtMusicState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chery/media/view/activity/MediaActivity;

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 197
    invoke-static {p0, p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 200
    :cond_0
    sget-object p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string p1, "updateBtMusicState: MediaActivity NULL"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMusicInfo(Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;)V
    .locals 3

    .line 210
    sget-object v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateMusicInfo"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_1
    iget-object v0, p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->artist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->artist:Ljava/lang/String;

    const-string v1, "<unknown>"

    .line 218
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 219
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicDuration:Landroid/widget/TextView;

    iget p1, p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->duration:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMusicPosition(I)V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    const/4 v1, 0x0

    if-lez p1, :cond_1

    .line 229
    iget-object v2, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicTime:Landroid/widget/TextView;

    int-to-long v3, p1

    invoke-static {v3, v4}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    .line 230
    iget v2, v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->duration:I

    if-lez v2, :cond_0

    .line 231
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    mul-int/lit16 p1, p1, 0x3e8

    iget v0, v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->duration:I

    div-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicTime:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method private updatePlaybackState(Z)V
    .locals 3

    .line 244
    sget-object v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlaybackState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f0700fe

    goto :goto_0

    :cond_0
    const v1, 0x7f0700fd

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_1

    .line 248
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->startAnim()V

    goto :goto_1

    .line 251
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->pauseAnim()V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$BtMusicPlayerFragment(Landroid/view/View;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->playPause()V

    return-void
.end method

.method public synthetic lambda$initView$1$BtMusicPlayerFragment(Landroid/view/View;)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->previous()V

    return-void
.end method

.method public synthetic lambda$initView$2$BtMusicPlayerFragment(Landroid/view/View;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->next()V

    return-void
.end method

.method public synthetic lambda$initView$3$BtMusicPlayerFragment(Landroid/view/View;)V
    .locals 6

    .line 160
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/chery/common/PageManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getContext()Landroid/content/Context;

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

    const-string v3, "com.chery.setting.ACTION_OPEN_SYSTEM_SETTING"

    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initView$4$BtMusicPlayerFragment(Landroid/view/View;)V
    .locals 6

    .line 172
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v0, Lcom/chery/common/PageManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v1, "com.chery.settings"

    const-string v2, "com.chery.settings.view.settings.activity.SettingsActivity"

    const-string v3, "com.chery.setting.ACTION_OPEN_SYSTEM_SETTING"

    const-string v4, "SettingMenuID"

    const-string v5, "1"

    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initView$5$BtMusicPlayerFragment(Landroid/view/View;)V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 186
    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mParam1:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mParam2:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 88
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0042

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0041

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    .line 94
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 118
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBinding:Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->cancelAnim()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 108
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->requestBtMusicAudioFocus()Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->initViewModel()V

    .line 101
    invoke-direct {p0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->initView()V

    return-void
.end method
