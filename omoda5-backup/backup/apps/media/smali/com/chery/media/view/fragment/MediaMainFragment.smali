.class public Lcom/chery/media/view/fragment/MediaMainFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "MediaMainFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field private localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

.field private mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

.field private radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

.field private usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

.field private usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/MediaMainFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateCurrentPlayingIconVisible()V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateCurrentPlayingIconAnim()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/BtMusicViewModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/MediaMainFragment;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateUsbMusicIcon(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/MediaMainFragment;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateUsbMusicCount(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/MediaViewModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateLocalMusicIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateLocalMusicCount()V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateRadioPlaybackState()V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/DabViewModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/RadioViewModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    return-object p0
.end method

.method private initView()V
    .locals 5

    .line 242
    sget-object v0, Lcom/chery/media/view/fragment/MediaMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivRadio:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivRadio:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$12;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$12;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivRadioPlaypause:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 258
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateRadioPlaybackState()V

    .line 259
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivRadioPlaypause:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/MediaMainFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$13;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivBtMusic:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/MediaMainFragment$14;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$14;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvBtConnect:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/MediaMainFragment$15;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$15;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivBtMusicPlaypause:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/MediaMainFragment$16;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$16;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, v0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateUsbMusicIcon(I)V

    .line 309
    invoke-direct {p0, v0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateUsbMusicCount(I)V

    .line 310
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.citos.setting.theme.mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 312
    iget-object v3, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicCount:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicCountSuffix:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v3, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicCount:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v3, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicCountSuffix:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    :goto_0
    iget-object v3, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivUsb1Music:Landroid/widget/ImageView;

    new-instance v4, Lcom/chery/media/view/fragment/MediaMainFragment$17;

    invoke-direct {v4, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$17;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateLocalMusicIcon()V

    .line 336
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateLocalMusicCount()V

    if-nez v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicCountSuffix:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicCount:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicCountSuffix:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    :goto_1
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivLocalMusic:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/MediaMainFragment$18;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$18;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateCurrentPlayingIconVisible()V

    .line 359
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateCurrentPlayingIconAnim()V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 132
    sget-object v0, Lcom/chery/media/view/fragment/MediaMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/MediaViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/MediaViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

    .line 135
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$1;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 143
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    .line 144
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$2;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->observeUsbMountStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 150
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$3;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->observeUsbScanStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 158
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    .line 159
    new-instance v1, Lcom/chery/media/view/fragment/MediaMainFragment$4;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$4;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 167
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    new-instance v1, Lcom/chery/media/view/fragment/MediaMainFragment$5;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$5;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlayingStateDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 176
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    .line 177
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getLocalMusics()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$6;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$6;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 184
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$7;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$7;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 192
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$8;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$8;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 201
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/BtMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    .line 202
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$xuGlEAXkmiLR5uhi0n3_VMdxxZI;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$xuGlEAXkmiLR5uhi0n3_VMdxxZI;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 203
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getConnectedDevice()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$-lHN6TrkMo8kcOg9S27Ll7C0bxc;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$-lHN6TrkMo8kcOg9S27Ll7C0bxc;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 204
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getPlaybackState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$D4YEcNT18cNKtT2p2zpDr2MM9uI;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$MediaMainFragment$D4YEcNT18cNKtT2p2zpDr2MM9uI;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 205
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$9;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$9;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 214
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/RadioViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    .line 215
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$10;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$10;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 227
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 228
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/MediaMainFragment$11;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/MediaMainFragment$11;-><init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic lambda$-lHN6TrkMo8kcOg9S27Ll7C0bxc(Lcom/chery/media/view/fragment/MediaMainFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateBtMusicDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$D4YEcNT18cNKtT2p2zpDr2MM9uI(Lcom/chery/media/view/fragment/MediaMainFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateBtPlaybackState(Z)V

    return-void
.end method

.method public static synthetic lambda$xuGlEAXkmiLR5uhi0n3_VMdxxZI(Lcom/chery/media/view/fragment/MediaMainFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateBtMusicState(Z)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;
    .locals 3

    .line 83
    new-instance v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/MediaMainFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 85
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 86
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/MediaMainFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateBtMusicDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvBtDeviceName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateBtMusicState(Z)V
    .locals 3

    .line 405
    sget-object v0, Lcom/chery/media/view/fragment/MediaMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBtMusicState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivBtMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvBtMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/chery/media/view/component/MarqueeTextView;->setEnabled(Z)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvBtConnect:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivBtMusicPlaypause:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvBtDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvBtConnect:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivBtMusicPlaypause:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvBtDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    :goto_0
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateCurrentPlayingIconVisible()V

    return-void
.end method

.method private updateBtPlaybackState(Z)V
    .locals 3

    .line 426
    sget-object v0, Lcom/chery/media/view/fragment/MediaMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBtPlaybackState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivBtMusicPlaypause:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0700e0

    goto :goto_0

    :cond_0
    const p1, 0x7f0700df

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 430
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->updateCurrentPlayingIconAnim()V

    :cond_1
    return-void
.end method

.method private updateCurrentPlayingIconAnim()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 550
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 551
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    .line 552
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto/16 :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto/16 :goto_0

    .line 545
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto/16 :goto_0

    .line 533
    :cond_2
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->isPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto/16 :goto_0

    .line 537
    :cond_3
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto/16 :goto_0

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getPlaybackState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 526
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_0

    .line 529
    :cond_5
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_0

    .line 504
    :cond_6
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 505
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 506
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_0

    .line 508
    :cond_7
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_0

    .line 512
    :cond_8
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    goto :goto_0

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 518
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->startAnim()V

    goto :goto_0

    .line 521
    :cond_a
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->pauseAnim()V

    :goto_0
    return-void
.end method

.method private updateCurrentPlayingIconVisible()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 495
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto/16 :goto_2

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto/16 :goto_2

    .line 488
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto/16 :goto_2

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v1, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 478
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto :goto_2

    .line 458
    :cond_4
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mBtMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    .line 460
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 461
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto :goto_1

    .line 464
    :cond_5
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 466
    :goto_1
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 467
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    goto :goto_2

    .line 452
    :cond_6
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v2}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    .line 455
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0, v3}, Lcom/chery/media/view/component/PlayIconAnim;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateLocalMusicCount()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getLocalMusics()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 399
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "(%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicCountSuffix:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLocalMusicIcon()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getLocalMusics()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 391
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivLocalMusic:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 392
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 393
    iget-object v1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 394
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvLocalMusicCountSuffix:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private updateRadioPlaybackState()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0700df

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivRadioPlaypause:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 437
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivRadioPlaypause:Landroid/widget/ImageView;

    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 442
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivRadioPlaypause:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private updateUsbMusicCount(I)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {v0, p1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "(%d)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicCount:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicCountSuffix:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateUsbMusicIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {v0, p1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->ivUsb1Music:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 367
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 369
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->tvUsb1MusicCountSuffix:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mParam1:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->mParam2:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 104
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b004b

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentMediaMainBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentMediaMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b004a

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentMediaMainBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentMediaMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    .line 110
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentMediaMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 125
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anRadioPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    .line 126
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anBtMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    .line 127
    iget-object v0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anUsb1MusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    .line 128
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment;->binding:Lcom/chery/media/databinding/FragmentMediaMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentMediaMainBinding;->anLocalMusicPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->cancelAnim()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->initViewModel()V

    .line 118
    invoke-direct {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->initView()V

    return-void
.end method
