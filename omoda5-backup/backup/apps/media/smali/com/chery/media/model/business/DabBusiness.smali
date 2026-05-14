.class public Lcom/chery/media/model/business/DabBusiness;
.super Ljava/lang/Object;
.source "DabBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;,
        Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;
    }
.end annotation


# static fields
.field private static final ACTIVITY_ANNOUNCE:Ljava/lang/String; = "com.chery.media.view.activity.DabAnnounceActivity"

.field private static final ACTIVITY_EPG:Ljava/lang/String; = "com.chery.media.view.activity.DabEpgActivity"

.field private static final ACTIVITY_LIST:Ljava/lang/String; = "com.chery.media.view.activity.DabListActivity"

.field public static final ANNOUNCEMENT_TYPE_ALARM:I = 0x0

.field public static final ANNOUNCEMENT_TYPE_AREA_WEATHER_FLASH:I = 0xa

.field public static final ANNOUNCEMENT_TYPE_EVENT_ANNOUNCEMENT:I = 0x1

.field public static final ANNOUNCEMENT_TYPE_FINANCIAL_REPORT:I = 0x9

.field public static final ANNOUNCEMENT_TYPE_NEWS_FLASH:I = 0x8

.field public static final ANNOUNCEMENT_TYPE_PROGRAM_INFORMATION:I = 0x5

.field public static final ANNOUNCEMENT_TYPE_ROAD_TRAFFIC_FLASH:I = 0x2

.field public static final ANNOUNCEMENT_TYPE_SPECIAL_EVENT:I = 0x3

.field public static final ANNOUNCEMENT_TYPE_SPORT_REPORT:I = 0x7

.field public static final ANNOUNCEMENT_TYPE_TRANSPORT_FLASH:I = 0x4

.field public static final ANNOUNCEMENT_TYPE_WARNING_OR_SERVICE:I = 0x6

.field private static final DAB_BER_ACTION:Ljava/lang/String; = "dab_ber_action"

.field private static final DAB_BER_EXPONENT:Ljava/lang/String; = "dab_ber_exponent"

.field private static final DAB_BER_SIGNIFICANT:Ljava/lang/String; = "dab_ber_significant"

.field private static final DAB_BER_VALID_FLAG:Ljava/lang/String; = "dab_ber_valid_flag"

.field private static final DAB_CURRENT_FREQ:Ljava/lang/String; = "dab_current_freq"

.field private static final DAB_PLAYING_STATE:Ljava/lang/String; = "dab_playing_state"

.field public static final LAST_LIST_PAGE_ALL:I = 0x0

.field public static final LAST_LIST_PAGE_ENSEMBLE:I = 0x1

.field public static final LAST_LIST_PAGE_FAVOR:I = 0x3

.field public static final LAST_LIST_PAGE_PTY:I = 0x2

.field public static final LIST_TYPE_ALL:I = 0x0

.field public static final LIST_TYPE_ENSEMBLE:I = 0x1

.field public static final LIST_TYPE_FAVOR:I = 0x3

.field public static final LIST_TYPE_PTY:I = 0x2

.field private static final MAX_FAVOR_SIZE:I = 0x14

.field public static final MSG_HIDE_DIALOG:I = 0x1

.field public static final MSG_SHOW_DIALOG:I = 0x0

.field private static final SAVE_ALL_LIST:Ljava/lang/String; = "save_all_list"

.field private static final SAVE_ANNOUNCE_SWITCH:Ljava/lang/String; = "save_announce_switch"

.field private static final SAVE_CUR_DAB_INFO:Ljava/lang/String; = "save_cur_dab_info"

.field private static final SAVE_CUR_PLAY_LIST_NAME:Ljava/lang/String; = "save_cur_play_list_name"

.field private static final SAVE_CUR_PLAY_LIST_TYPE:Ljava/lang/String; = "save_cur_play_list_type"

.field private static final SAVE_DAB_OPTION:Ljava/lang/String; = "save_dab_option"

.field private static final SAVE_FAVOR_LIST:Ljava/lang/String; = "save_favor_list"

.field private static final SAVE_FIRST_TIME_USED:Ljava/lang/String; = "save_first_time_used"

.field private static final SAVE_PROGRAM_INFO_LIST:Ljava/lang/String; = "save_program_info_list"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/DabBusiness;


# instance fields
.field private announceList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabAnnounceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field announcementSwitch:I

.field private audioFocus:I

.field private audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioManager:Landroid/media/AudioManager;

.field private avmActive:Z

.field berExponent:I

.field berSignificant:I

.field berValidFlag:I

.field private checkReserveRunnable:Ljava/lang/Runnable;

.field comparator:Ljava/util/Comparator;

.field private context:Landroid/content/Context;

.field curDabInfo:Lcom/chery/media/model/business/DabInfo;

.field private curIndex:I

.field private curPlayInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private curPlayList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private curPlayListName:Ljava/lang/String;

.field private curPlayListType:I

.field private curTime:Lsw/com/dabdrmradio/DabEPGTime;

.field dabAllList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dabOption:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field dabProgramInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field dabReserveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dialogDabAnnounce:Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

.field private dialogDabReserveHint:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

.field favorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private firstReceiveTime:Z

.field private handler:Landroid/os/Handler;

.field private lastListPage:I

.field mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lsw/com/dabdrmradio/IAIDLDabService;

.field private mbPlayStatusRecover:Z

.field private notifyCallLister:Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;

.field private playImage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lsw/com/dabdrmradio/DabImage;",
            ">;"
        }
    .end annotation
.end field

.field private playLabel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field playList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private playingState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private runSaveRestoreInfo:Ljava/lang/Runnable;

.field private scanState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-class v0, Lcom/chery/media/model/business/DabBusiness;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/chery/media/model/business/DabBusiness;->mbPlayStatusRecover:Z

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->mCallbacks:Ljava/util/List;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    .line 115
    new-instance v2, Lcom/chery/media/model/business/DabInfo;

    invoke-direct {v2}, Lcom/chery/media/model/business/DabInfo;-><init>()V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->dabReserveList:Ljava/util/List;

    .line 122
    new-instance v2, Lsw/com/dabdrmradio/DabEPGTime;

    invoke-direct {v2}, Lsw/com/dabdrmradio/DabEPGTime;-><init>()V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    const/4 v2, 0x0

    .line 124
    iput v2, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    const-string v3, ""

    .line 125
    iput-object v3, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListName:Ljava/lang/String;

    .line 128
    iput v2, p0, Lcom/chery/media/model/business/DabBusiness;->lastListPage:I

    .line 129
    iput v1, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    .line 136
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playingState:Landroidx/lifecycle/MutableLiveData;

    .line 138
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayList:Landroidx/lifecycle/MutableLiveData;

    .line 140
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayInfo:Landroidx/lifecycle/MutableLiveData;

    .line 142
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playLabel:Landroidx/lifecycle/MutableLiveData;

    .line 144
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playImage:Landroidx/lifecycle/MutableLiveData;

    .line 146
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->announceList:Landroidx/lifecycle/MutableLiveData;

    .line 148
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->scanState:Landroidx/lifecycle/MutableLiveData;

    .line 150
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabOption:Landroidx/lifecycle/MutableLiveData;

    .line 167
    iput v0, p0, Lcom/chery/media/model/business/DabBusiness;->curIndex:I

    .line 168
    iput-boolean v2, p0, Lcom/chery/media/model/business/DabBusiness;->avmActive:Z

    .line 170
    iput-boolean v2, p0, Lcom/chery/media/model/business/DabBusiness;->firstReceiveTime:Z

    .line 180
    iput v2, p0, Lcom/chery/media/model/business/DabBusiness;->berValidFlag:I

    .line 181
    iput v2, p0, Lcom/chery/media/model/business/DabBusiness;->berSignificant:I

    .line 182
    iput v2, p0, Lcom/chery/media/model/business/DabBusiness;->berExponent:I

    .line 1509
    new-instance v0, Lcom/chery/media/model/business/-$$Lambda$DabBusiness$WeMRhfgoA_2DMszcpy87STv4BSI;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/-$$Lambda$DabBusiness$WeMRhfgoA_2DMszcpy87STv4BSI;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1537
    new-instance v0, Lcom/chery/media/model/business/DabBusiness$20;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/DabBusiness$20;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1795
    new-instance v0, Lcom/chery/media/model/business/DabBusiness$21;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/DabBusiness$21;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->checkReserveRunnable:Ljava/lang/Runnable;

    .line 1927
    new-instance v0, Lcom/chery/media/model/business/DabBusiness$23;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/DabBusiness$23;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->comparator:Ljava/util/Comparator;

    .line 1956
    new-instance v0, Lcom/chery/media/model/business/DabBusiness$24;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/DabBusiness$24;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    .line 192
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string v0, "DABBusiness()"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/DabBusiness;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->setAvmActive(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->recoverSource()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/model/business/DabBusiness;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    return p0
.end method

.method static synthetic access$1100(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->playLabel:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveAnnounceSwitch()V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateAnnounceList()V

    return-void
.end method

.method static synthetic access$1400(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->playImage:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/chery/media/model/business/DabBusiness;)Lcom/chery/media/view/dialog/Dialog_DABAnnounce;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dialogDabAnnounce:Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/view/dialog/Dialog_DABAnnounce;)Lcom/chery/media/view/dialog/Dialog_DABAnnounce;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->dialogDabAnnounce:Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->sendDABBroadcast()V

    return-void
.end method

.method static synthetic access$1700(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabOption:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/chery/media/model/business/DabBusiness;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->saveDabOption(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/chery/media/model/business/DabBusiness;Lsw/com/dabdrmradio/DabEPGTime;)Lsw/com/dabdrmradio/DabEPGTime;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    return-object p1
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/DabBusiness;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->printCurTime()V

    return-void
.end method

.method static synthetic access$2100(Lcom/chery/media/model/business/DabBusiness;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/chery/media/model/business/DabBusiness;->firstReceiveTime:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/chery/media/model/business/DabBusiness;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/chery/media/model/business/DabBusiness;->firstReceiveTime:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveProgramInfoList()V

    return-void
.end method

.method static synthetic access$2300(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyAllListChanged()V

    return-void
.end method

.method static synthetic access$2400(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyProgramListChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateReservedList()V

    return-void
.end method

.method static synthetic access$2600(Lcom/chery/media/model/business/DabBusiness;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->isDabOnTop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabProgramInfo;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->isCurDabInfo(Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabProgramInfo;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/DabBusiness;->showReverseHintDialog(Lcom/chery/media/model/business/DabProgramInfo;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/chery/media/model/business/DabBusiness;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->checkReserveRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/DabBusiness;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/chery/media/model/business/DabBusiness;)Lcom/chery/media/view/dialog/Dialog_DabReserveHint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dialogDabReserveHint:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/chery/media/model/business/DabBusiness;I)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->getAnnounceName1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/DabBusiness;)Lsw/com/dabdrmradio/IAIDLDabService;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mService:Lsw/com/dabdrmradio/IAIDLDabService;

    return-object p0
.end method

.method static synthetic access$502(Lcom/chery/media/model/business/DabBusiness;Lsw/com/dabdrmradio/IAIDLDabService;)Lsw/com/dabdrmradio/IAIDLDabService;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->mService:Lsw/com/dabdrmradio/IAIDLDabService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/DabBusiness;)Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->notifyCallLister:Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;

    return-object p0
.end method

.method static synthetic access$602(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;)Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->notifyCallLister:Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;

    return-object p1
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->parseServiceInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->parseServiceList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->scanState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private canShowReverseDialog()Z
    .locals 3

    .line 1912
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canShowReverseDialog, btPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chery/btphone/BtCallManager;->get()Lcom/chery/btphone/BtCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/btphone/BtCallManager;->hasAnyCalls()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", avm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/chery/media/model/business/DabBusiness;->avmActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    invoke-static {}, Lcom/chery/btphone/BtCallManager;->get()Lcom/chery/btphone/BtCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/btphone/BtCallManager;->hasAnyCalls()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/chery/media/model/business/DabBusiness;->avmActive:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getAnnounceName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 1472
    :pswitch_0
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0029

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1470
    :pswitch_1
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1468
    :pswitch_2
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1466
    :pswitch_3
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0030

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1464
    :pswitch_4
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0033

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1462
    :pswitch_5
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1460
    :pswitch_6
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0031

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1458
    :pswitch_7
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1456
    :pswitch_8
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1454
    :pswitch_9
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1452
    :pswitch_a
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0028

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAnnounceName1(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 1502
    :pswitch_0
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1500
    :pswitch_1
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0030

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1498
    :pswitch_2
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1496
    :pswitch_3
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1494
    :pswitch_4
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1492
    :pswitch_5
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0029

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1490
    :pswitch_6
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1488
    :pswitch_7
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0033

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1486
    :pswitch_8
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0031

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1484
    :pswitch_9
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e002e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1482
    :pswitch_a
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0028

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAnnounceSwitch(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 1080
    :pswitch_0
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0x5

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 1090
    :pswitch_1
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0xa

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 1078
    :pswitch_2
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 1088
    :pswitch_3
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 1076
    :pswitch_4
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0x3

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    move v0, v1

    :cond_4
    return v0

    .line 1086
    :pswitch_5
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0x8

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 1074
    :pswitch_6
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0x2

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_6

    move v0, v1

    :cond_6
    return v0

    .line 1084
    :pswitch_7
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0x7

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 1072
    :pswitch_8
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/2addr p0, v1

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_8

    move v0, v1

    :cond_8
    return v0

    .line 1082
    :pswitch_9
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_9

    move v0, v1

    :cond_9
    return v0

    .line 1070
    :pswitch_a
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_a

    move v0, v1

    :cond_a
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/chery/media/model/business/DabBusiness;
    .locals 1

    .line 185
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->instance:Lcom/chery/media/model/business/DabBusiness;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/chery/media/model/business/DabBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/DabBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/DabBusiness;->instance:Lcom/chery/media/model/business/DabBusiness;

    .line 188
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->instance:Lcom/chery/media/model/business/DabBusiness;

    return-object v0
.end method

.method private initAllList()V
    .locals 3

    .line 1201
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v1, "save_all_list"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1202
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1206
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1208
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/DabBusiness$6;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/DabBusiness$6;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/DabBusiness$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1210
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1211
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1215
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initAnnounceSwitch()V
    .locals 3

    .line 1421
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v1, "save_announce_switch"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1422
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1428
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1430
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/DabBusiness$19;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/DabBusiness$19;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/DabBusiness$19;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1435
    :goto_0
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateAnnounceList()V

    return-void

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 1423
    iput v0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    .line 1424
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateAnnounceList()V

    return-void
.end method

.method private initCurDabInfo()V
    .locals 3

    .line 1274
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v1, "save_cur_dab_info"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1275
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1279
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1281
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/DabBusiness$10;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/DabBusiness$10;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/DabBusiness$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    if-eqz v0, :cond_1

    .line 1283
    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    .line 1284
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    .line 1285
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayInfo:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1286
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateCurIndex()V

    .line 1287
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyCurDabInfoChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1291
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initCurPlayListType()V
    .locals 4

    .line 1314
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v1, "save_cur_play_list_type"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 1315
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v2, "save_cur_play_list_name"

    invoke-static {v1, v2}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v0, :cond_1

    .line 1316
    array-length v2, v0

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-gtz v2, :cond_0

    goto :goto_1

    .line 1321
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 1322
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1324
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/chery/media/model/business/DabBusiness$12;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/DabBusiness$12;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v3}, Lcom/chery/media/model/business/DabBusiness$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    .line 1325
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/DabBusiness$13;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/DabBusiness$13;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/DabBusiness$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListName:Ljava/lang/String;

    .line 1326
    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    invoke-virtual {p0, v1, v0}, Lcom/chery/media/model/business/DabBusiness;->setCurPlayType(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1329
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/4 v0, 0x0

    const-string v1, ""

    .line 1317
    invoke-virtual {p0, v0, v1}, Lcom/chery/media/model/business/DabBusiness;->setCurPlayType(ILjava/lang/String;)V

    return-void
.end method

.method private initCurTime()V
    .locals 4

    .line 1983
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1984
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lsw/com/dabdrmradio/DabEPGTime;->setEPGTimeYear(I)V

    .line 1985
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lsw/com/dabdrmradio/DabEPGTime;->setEPGTimeMonth(B)V

    .line 1986
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lsw/com/dabdrmradio/DabEPGTime;->setEPGTimeDay(B)V

    .line 1987
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lsw/com/dabdrmradio/DabEPGTime;->setEPGTimeHour(B)V

    .line 1988
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lsw/com/dabdrmradio/DabEPGTime;->setEPGTimeMinute(B)V

    .line 1989
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lsw/com/dabdrmradio/DabEPGTime;->setEPGTimeSecond(B)V

    .line 1990
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->printCurTime()V

    return-void
.end method

.method private initDabOption()V
    .locals 4

    .line 1402
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v1, "save_dab_option"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1403
    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_1

    .line 1408
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 1411
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/chery/media/model/business/DabBusiness$18;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/DabBusiness$18;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v3}, Lcom/chery/media/model/business/DabBusiness$18;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1416
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabOption:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 1404
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabOption:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private initFavorList()V
    .locals 3

    .line 1220
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v1, "save_favor_list"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1221
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1225
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1227
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/DabBusiness$7;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/DabBusiness$7;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/DabBusiness$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1230
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1231
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 1232
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/chery/media/model/business/DabInfo;->isFavor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private initProgramInfoList()V
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v1, "save_program_info_list"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1367
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1371
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1373
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/DabBusiness$16;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/DabBusiness$16;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/DabBusiness$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1375
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1376
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1382
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateReservedList()V

    :cond_2
    :goto_1
    return-void
.end method

.method private isCurDabInfo(Lcom/chery/media/model/business/DabProgramInfo;)Z
    .locals 3

    .line 1861
    iget v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->ensembleId:I

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v1, v1, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->serviceId:I

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v1, v1, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/chery/media/model/business/DabProgramInfo;->scIds:I

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget p0, p0, Lcom/chery/media/model/business/DabInfo;->scIds:I

    and-int/lit8 p0, p0, 0xf

    if-ne p1, p0, :cond_0

    .line 1864
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string p1, "isCurDabInfo true"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDabOnTop()Z
    .locals 4

    .line 1830
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/avn/tools/activity/ActivityUtils;->getTopActivityComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1835
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.chery.media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1839
    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1840
    invoke-static {}, Lcom/chery/media/view/activity/MediaActivity;->getInstance()Lcom/chery/media/view/activity/MediaActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1842
    invoke-virtual {v1}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1844
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v1, v1, Lcom/chery/media/view/fragment/DabPlayerFragment;

    if-eqz v1, :cond_2

    return v2

    .line 1851
    :cond_2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.chery.media.view.activity.DabEpgActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1852
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.chery.media.view.activity.DabListActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1853
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.chery.media.view.activity.DabAnnounceActivity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method private notifyAllListChanged()V
    .locals 1

    .line 1768
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    .line 1769
    invoke-interface {v0}, Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;->allListChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyCurDabInfoChanged()V
    .locals 3

    .line 1780
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    .line 1781
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-interface {v1, v2}, Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;->curDabInfoChanged(Lcom/chery/media/model/business/DabInfo;)V

    goto :goto_0

    .line 1783
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->sendDABBroadcast()V

    return-void
.end method

.method private notifyFavorInfoChanged()V
    .locals 1

    .line 1762
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    .line 1763
    invoke-interface {v0}, Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;->favorInfoChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyProgramListChanged()V
    .locals 1

    .line 1774
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    .line 1775
    invoke-interface {v0}, Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;->programInfoListChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseServiceInfo(Ljava/lang/String;)V
    .locals 5

    .line 1099
    :try_start_0
    new-instance v0, Lcom/chery/media/model/business/DabInfo;

    invoke-direct {v0}, Lcom/chery/media/model/business/DabInfo;-><init>()V

    .line 1100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "state"

    .line 1101
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1102
    sget-object v2, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseServiceInfo, state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "freq"

    .line 1107
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/chery/media/model/business/DabInfo;->freq:I

    const-string p1, "ensemble_id"

    .line 1108
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    const-string p1, "ensemble_name"

    .line 1109
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/chery/media/model/business/DabInfo;->ensembleName:Ljava/lang/String;

    const-string p1, "service_id"

    .line 1110
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    const-string p1, "service_name"

    .line 1111
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    const-string p1, "service_pty"

    .line 1112
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/chery/media/model/business/DabInfo;->servicePty:I

    const-string p1, "component_id"

    .line 1113
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/chery/media/model/business/DabInfo;->componentId:I

    const-string p1, "component_name"

    .line 1114
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/chery/media/model/business/DabInfo;->componentName:Ljava/lang/String;

    const-string p1, "component_type"

    .line 1115
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/chery/media/model/business/DabInfo;->componentType:I

    const-string p1, "sc_ids"

    .line 1116
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/chery/media/model/business/DabInfo;->scIds:I

    .line 1117
    sget-object p1, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseServiceInfo, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/chery/media/model/business/DabInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    .line 1119
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveCurDabInfo()V

    .line 1120
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1121
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateCurIndex()V

    .line 1122
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyCurDabInfoChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1124
    sget-object p1, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private parseServiceList(Ljava/lang/String;)V
    .locals 6

    .line 1131
    :try_start_0
    new-instance v0, Lcom/chery/media/model/business/DabInfo;

    invoke-direct {v0}, Lcom/chery/media/model/business/DabInfo;-><init>()V

    .line 1132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "total_num"

    .line 1133
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1134
    sget-object v2, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseServiceList, totalNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 1136
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1137
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveAllList()V

    .line 1138
    iget p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/chery/media/model/business/DabBusiness;->setCurPlayType(ILjava/lang/String;)V

    .line 1139
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyAllListChanged()V

    return-void

    :cond_0
    const-string v2, "cur_num"

    .line 1143
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1146
    iget-object v4, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_1
    const-string v4, "freq"

    .line 1149
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/chery/media/model/business/DabInfo;->freq:I

    const-string v4, "ensemble_id"

    .line 1150
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    const-string v4, "ensemble_name"

    .line 1151
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/chery/media/model/business/DabInfo;->ensembleName:Ljava/lang/String;

    const-string v4, "service_id"

    .line 1152
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    const-string v4, "service_name"

    .line 1153
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    const-string v4, "service_pty"

    .line 1154
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/chery/media/model/business/DabInfo;->servicePty:I

    const-string v4, "component_id"

    .line 1155
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/chery/media/model/business/DabInfo;->componentId:I

    const-string v4, "component_name"

    .line 1156
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/chery/media/model/business/DabInfo;->componentName:Ljava/lang/String;

    const-string v4, "component_type"

    .line 1157
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/chery/media/model/business/DabInfo;->componentType:I

    const-string v4, "sc_ids"

    .line 1158
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/chery/media/model/business/DabInfo;->scIds:I

    .line 1159
    sget-object v1, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseServiceList, info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/chery/media/model/business/DabInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    const/4 v1, 0x0

    .line 1162
    iget-object v4, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chery/media/model/business/DabInfo;

    .line 1163
    invoke-virtual {v5, v0}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-nez v3, :cond_4

    .line 1169
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-ne v2, p1, :cond_5

    .line 1174
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveAllList()V

    .line 1175
    iget p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/chery/media/model/business/DabBusiness;->setCurPlayType(ILjava/lang/String;)V

    .line 1176
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyAllListChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1179
    sget-object p1, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private printCurTime()V
    .locals 3

    .line 1994
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printCurTime, year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {v2}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1995
    invoke-virtual {v2}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMonth()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", day: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1996
    invoke-virtual {v2}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeDay()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1997
    invoke-virtual {v2}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1998
    invoke-virtual {v2}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", second: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1999
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeSecond()B

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1994
    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recoverSource()V
    .locals 5

    .line 1939
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result v0

    .line 1940
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getLastSource()I

    move-result v1

    .line 1941
    sget-object v2, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init recover dab currentSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",lastSource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 1946
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->requestAudioFocus()Z

    :cond_1
    return-void
.end method

.method private saveAllList()V
    .locals 4

    .line 1185
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    new-instance v1, Lcom/chery/media/model/business/DabBusiness$5;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/model/business/DabBusiness$5;-><init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1197
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveAnnounceSwitch()V
    .locals 4

    .line 1334
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    new-instance v1, Lcom/chery/media/model/business/DabBusiness$14;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/model/business/DabBusiness$14;-><init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1346
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveCurDabInfo()V
    .locals 4

    .line 1258
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    new-instance v1, Lcom/chery/media/model/business/DabBusiness$9;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/model/business/DabBusiness$9;-><init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1270
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveCurPlayListType()V
    .locals 3

    .line 1296
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    new-instance v2, Lcom/chery/media/model/business/DabBusiness$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/chery/media/model/business/DabBusiness$11;-><init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1310
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveDabOption(Z)V
    .locals 3

    .line 1386
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1387
    new-instance v0, Lcom/chery/media/model/business/DabBusiness$17;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/model/business/DabBusiness$17;-><init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1398
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveFavorList()V
    .locals 4

    .line 1242
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    new-instance v1, Lcom/chery/media/model/business/DabBusiness$8;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/model/business/DabBusiness$8;-><init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1254
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveProgramInfoList()V
    .locals 4

    .line 1350
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    new-instance v1, Lcom/chery/media/model/business/DabBusiness$15;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/model/business/DabBusiness$15;-><init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1362
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendDABBroadcast()V
    .locals 3

    .line 2003
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2007
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDABBroadcast: freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->freq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", berValidFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chery/media/model/business/DabBusiness;->berValidFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", berSignificant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chery/media/model/business/DabBusiness;->berSignificant:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", berExponent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chery/media/model/business/DabBusiness;->berExponent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2007
    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "dab_ber_action"

    .line 2015
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 2016
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2017
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "dab_playing_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2018
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v1, v1, Lcom/chery/media/model/business/DabInfo;->freq:I

    const-string v2, "dab_current_freq"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2019
    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->berValidFlag:I

    const-string v2, "dab_ber_valid_flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2020
    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->berSignificant:I

    const-string v2, "dab_ber_significant"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2021
    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->berExponent:I

    const-string v2, "dab_ber_exponent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2022
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAvmActive(Z)V
    .locals 3

    .line 1920
    iget-boolean v0, p0, Lcom/chery/media/model/business/DabBusiness;->avmActive:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1923
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvmActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iput-boolean p1, p0, Lcom/chery/media/model/business/DabBusiness;->avmActive:Z

    return-void
.end method

.method private setMute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1889
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getMute()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1890
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string p1, "setMute true"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->setMute(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1892
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getMute()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1893
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string p1, "setMute false"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->setMute(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showReverseHintDialog(Lcom/chery/media/model/business/DabProgramInfo;Z)V
    .locals 4

    .line 1872
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->canShowReverseDialog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1876
    :cond_0
    new-instance v0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/chery/media/model/business/DabProgramInfo;->programName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->dialogDabReserveHint:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    .line 1877
    new-instance p2, Lcom/chery/media/model/business/DabBusiness$22;

    invoke-direct {p2, p0, p1}, Lcom/chery/media/model/business/DabBusiness$22;-><init>(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabProgramInfo;)V

    invoke-virtual {v0, p2}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->setConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 1884
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dialogDabReserveHint:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->show()V

    .line 1885
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8ddd\u79bb\u8282\u76ee\u5f00\u59cb\u8fd8\u67091\u5206\u949f: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/chery/media/model/business/DabProgramInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAnnounceList()V
    .locals 4

    .line 1439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 1441
    new-instance v2, Lcom/chery/media/model/business/DabAnnounceInfo;

    invoke-direct {v2}, Lcom/chery/media/model/business/DabAnnounceInfo;-><init>()V

    .line 1442
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->getAnnounceName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chery/media/model/business/DabAnnounceInfo;->announceName:Ljava/lang/String;

    .line 1443
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->getAnnounceSwitch(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/chery/media/model/business/DabAnnounceInfo;->announceSwitchOn:Z

    .line 1444
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1446
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->announceList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private updateCurIndex()V
    .locals 3

    const/4 v0, 0x0

    .line 1899
    :goto_0
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1900
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    iget v1, v1, Lcom/chery/media/model/business/DabInfo;->freq:I

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->freq:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    .line 1901
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    iget v1, v1, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    .line 1902
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    iget v1, v1, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    .line 1903
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    iget v1, v1, Lcom/chery/media/model/business/DabInfo;->componentId:I

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v2, v2, Lcom/chery/media/model/business/DabInfo;->componentId:I

    if-ne v1, v2, :cond_0

    .line 1904
    iput v0, p0, Lcom/chery/media/model/business/DabBusiness;->curIndex:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1908
    iput v0, p0, Lcom/chery/media/model/business/DabBusiness;->curIndex:I

    return-void
.end method

.method private updateReservedList()V
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->dabReserveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1788
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabProgramInfo;

    .line 1789
    iget-boolean v2, v1, Lcom/chery/media/model/business/DabProgramInfo;->hasReserved:Z

    if-eqz v2, :cond_0

    .line 1790
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->dabReserveList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addFavor(Lcom/chery/media/model/business/DabInfo;)V
    .locals 5

    .line 419
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFavor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 422
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string p1, "addFavor dabInfo is null"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string p1, "addFavor is already favor"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    const/16 v2, 0xbb8

    if-lt v0, v1, :cond_2

    .line 432
    new-instance p1, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p1, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    .line 437
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v1, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v3, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const v4, 0x7f0e00be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    .line 439
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveFavorList()V

    .line 442
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabInfo;

    .line 443
    invoke-virtual {v2, p1}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 444
    iput-boolean v0, v2, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    .line 450
    :cond_4
    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 451
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 452
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 453
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayList:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 454
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateCurIndex()V

    goto :goto_0

    .line 456
    :cond_5
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabInfo;

    .line 457
    invoke-virtual {v2, p1}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 458
    iput-boolean v0, v2, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    .line 459
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayList:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 460
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateCurIndex()V

    .line 466
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyFavorInfoChanged()V

    return-void
.end method

.method public addReserve(Lcom/chery/media/model/business/DabProgramInfo;)V
    .locals 3

    .line 926
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addReserve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/chery/media/model/business/DabProgramInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 927
    :goto_0
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 928
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabProgramInfo;

    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/DabProgramInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/DabProgramInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->hasReserved:Z

    .line 930
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveProgramInfoList()V

    .line 931
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyProgramListChanged()V

    .line 932
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateReservedList()V

    .line 933
    new-instance p1, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public cancelFavor(Lcom/chery/media/model/business/DabInfo;)V
    .locals 4

    .line 475
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFavor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 478
    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 480
    new-instance v0, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    .line 481
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveFavorList()V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 488
    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    iput-boolean v2, v1, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    .line 495
    :cond_3
    iget v0, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 496
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 497
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayList:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 499
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateCurIndex()V

    goto :goto_0

    .line 501
    :cond_4
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 502
    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 503
    iput-boolean v2, v1, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    .line 504
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayList:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 505
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateCurIndex()V

    .line 511
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyFavorInfoChanged()V

    return-void
.end method

.method public getALLList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllEnsembleName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 755
    iget-object v2, v1, Lcom/chery/media/model/business/DabInfo;->ensembleName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    iget-object v1, v1, Lcom/chery/media/model/business/DabInfo;->ensembleName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllPtyId()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 785
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 786
    iget v2, v1, Lcom/chery/media/model/business/DabInfo;->servicePty:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    iget v1, v1, Lcom/chery/media/model/business/DabInfo;->servicePty:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAnnounceList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabAnnounceInfo;",
            ">;>;"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateAnnounceList()V

    .line 355
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->announceList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getCurPlayInfo()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayInfo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getCurPlayList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;>;"
        }
    .end annotation

    .line 333
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getCurTimeSeconds()J
    .locals 8

    .line 1972
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1973
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeYear()I

    move-result v1

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1974
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMonth()B

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1975
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeDay()B

    move-result v3

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1976
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v4

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1977
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result v5

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->curTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1978
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeSecond()B

    move-result v6

    move-object v0, v7

    .line 1973
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1979
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getDabListByEnsembleName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 770
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 771
    iget-object v2, v1, Lcom/chery/media/model/business/DabInfo;->ensembleName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDabListByPty(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 869
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 870
    iget v2, v1, Lcom/chery/media/model/business/DabInfo;->servicePty:I

    if-ne v2, p1, :cond_0

    .line 871
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDabOption()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->dabOption:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getDabProgramInfoList(IIIIII)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabProgramInfo;",
            ">;"
        }
    .end annotation

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 911
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabProgramInfo;

    .line 912
    iget v3, v2, Lcom/chery/media/model/business/DabProgramInfo;->ensembleId:I

    if-ne v3, p1, :cond_0

    iget v3, v2, Lcom/chery/media/model/business/DabProgramInfo;->serviceId:I

    const v4, 0xffff

    and-int/2addr v4, p2

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/chery/media/model/business/DabProgramInfo;->scIds:I

    and-int/lit8 v4, p3, 0xf

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 915
    invoke-virtual {v3}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeYear()I

    move-result v3

    if-ne v3, p4, :cond_0

    iget-object v3, v2, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 916
    invoke-virtual {v3}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMonth()B

    move-result v3

    if-ne v3, p5, :cond_0

    iget-object v3, v2, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 917
    invoke-virtual {v3}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeDay()B

    move-result v3

    if-ne v3, p6, :cond_0

    .line 918
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 921
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getFavorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLastListPage()I
    .locals 0

    .line 314
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->lastListPage:I

    return p0
.end method

.method public getPlayImage()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lsw/com/dabdrmradio/DabImage;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->playImage:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPlayLabel()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->playLabel:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPlayingState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->playingState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPtyName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 854
    :pswitch_0
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0042

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 852
    :pswitch_1
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0047

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 850
    :pswitch_2
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0050

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 848
    :pswitch_3
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e004d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 846
    :pswitch_4
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e003f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 844
    :pswitch_5
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0049

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 842
    :pswitch_6
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e004a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 840
    :pswitch_7
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e005a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 838
    :pswitch_8
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0052

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 836
    :pswitch_9
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0054

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 834
    :pswitch_a
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0058

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 832
    :pswitch_b
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e003e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 830
    :pswitch_c
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0046

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 828
    :pswitch_d
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e005c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 826
    :pswitch_e
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0051

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 824
    :pswitch_f
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0057

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 822
    :pswitch_10
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e004b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 820
    :pswitch_11
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0044

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 818
    :pswitch_12
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0055

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 816
    :pswitch_13
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0053

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 814
    :pswitch_14
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e005b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 812
    :pswitch_15
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0056

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 810
    :pswitch_16
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0040

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 808
    :pswitch_17
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0043

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 806
    :pswitch_18
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0045

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 804
    :pswitch_19
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0059

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 802
    :pswitch_1a
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0048

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 800
    :pswitch_1b
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0041

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 798
    :pswitch_1c
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e004e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 796
    :pswitch_1d
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e004f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScanState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->scanState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .line 196
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioManager:Landroid/media/AudioManager;

    .line 199
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chery/btphone/BtCallManager;->init(Landroid/content/Context;)Lcom/chery/btphone/BtCallManager;

    .line 200
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->initAllList()V

    .line 201
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->initFavorList()V

    .line 202
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->initCurDabInfo()V

    .line 203
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->initCurPlayListType()V

    .line 204
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->initAnnounceSwitch()V

    .line 205
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->initProgramInfoList()V

    .line 206
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->initDabOption()V

    .line 207
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->initCurTime()V

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    .line 209
    invoke-direct {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->setMute(Z)V

    .line 210
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->scanState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_car_source_type"

    const/4 v2, 0x3

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 215
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 216
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 215
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 217
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.sw.dabdrmRadio"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "sw.com.dabdrmradio"

    const-string v4, "sw.com.dabdrmradio.AIDLService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 226
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->recoverSource()V

    .line 228
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->checkReserveRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    new-instance p1, Lcom/chery/media/model/business/DabBusiness$1;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/DabBusiness$1;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addAvmEngineListener(Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;)V

    .line 276
    new-instance p1, Lcom/chery/media/model/business/DabBusiness$2;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/DabBusiness$2;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    return-void
.end method

.method public isCurPlayingProgram(Lcom/chery/media/model/business/DabProgramInfo;)Z
    .locals 11

    .line 982
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 983
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getCurTimeSeconds()J

    move-result-wide v8

    .line 985
    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeYear()I

    move-result v1

    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 986
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMonth()B

    move-result p0

    const/4 v10, 0x1

    add-int/lit8 v2, p0, -0x1

    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 987
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeDay()B

    move-result v3

    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 988
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v4

    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 989
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    .line 985
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 991
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long p0, v8, v0

    if-ltz p0, :cond_0

    .line 993
    iget p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->duration:I

    mul-int/lit8 p0, p0, 0x3c

    int-to-long p0, p0

    add-long/2addr v0, p0

    cmp-long p0, v8, v0

    if-gez p0, :cond_0

    return v10

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFavor(Lcom/chery/media/model/business/DabInfo;)Z
    .locals 1

    .line 521
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    .line 522
    invoke-virtual {v0, p1}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isFirstTimeUsed()Z
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const-string v1, "save_first_time_used"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 879
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 885
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/DabBusiness$3;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/DabBusiness$3;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/DabBusiness$3;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 888
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isProgramInvalid(Lcom/chery/media/model/business/DabProgramInfo;)Z
    .locals 9

    .line 1029
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1031
    iget-object v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeYear()I

    move-result v1

    iget-object v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1032
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMonth()B

    move-result v0

    const/4 v8, 0x1

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1033
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeDay()B

    move-result v3

    iget-object v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1034
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v4

    iget-object p1, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1035
    invoke-virtual {p1}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    .line 1031
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1037
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1039
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getCurTimeSeconds()J

    move-result-wide p0

    const-wide/32 v2, 0x15180

    add-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    return v8

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isProgramStartInOneMinute(Lcom/chery/media/model/business/DabProgramInfo;)Z
    .locals 11

    .line 1005
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1006
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getCurTimeSeconds()J

    move-result-wide v8

    .line 1008
    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeYear()I

    move-result v1

    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1009
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMonth()B

    move-result p0

    const/4 v10, 0x1

    add-int/lit8 v2, p0, -0x1

    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1010
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeDay()B

    move-result v3

    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1011
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v4

    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1012
    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    .line 1008
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1014
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    cmp-long v0, v8, p0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3c

    sub-long/2addr p0, v0

    cmp-long p0, v8, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1017
    :cond_1
    :goto_0
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string p1, "isProgramStartInOneMinute  true"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public isReservedExpired(Lcom/chery/media/model/business/DabProgramInfo;)Z
    .locals 9

    .line 961
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 962
    iget-object v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeYear()I

    move-result v1

    iget-object v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 963
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMonth()B

    move-result v0

    const/4 v8, 0x1

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 964
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeDay()B

    move-result v3

    iget-object v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 965
    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v4

    iget-object p1, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 966
    invoke-virtual {p1}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    .line 962
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 968
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 970
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getCurTimeSeconds()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    return v8

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$DabBusiness(I)V
    .locals 5

    .line 1510
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onAudioFocusChange %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, -0x2

    .line 1530
    iput p1, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    .line 1531
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/chery/media/model/business/DabBusiness;->mbPlayStatusRecover:Z

    .line 1532
    invoke-virtual {p0, v4}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    goto :goto_0

    .line 1516
    :cond_0
    iput v1, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    .line 1517
    iget-boolean p1, p0, Lcom/chery/media/model/business/DabBusiness;->mbPlayStatusRecover:Z

    if-nez p1, :cond_1

    .line 1518
    iput-boolean v1, p0, Lcom/chery/media/model/business/DabBusiness;->mbPlayStatusRecover:Z

    .line 1519
    invoke-virtual {p0, v4}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    goto :goto_0

    .line 1521
    :cond_1
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    goto :goto_0

    .line 1525
    :cond_2
    iput v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    .line 1526
    invoke-virtual {p0, v4}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    .line 1527
    iput-boolean v1, p0, Lcom/chery/media/model/business/DabBusiness;->mbPlayStatusRecover:Z

    :goto_0
    return-void
.end method

.method public playChannel(Lcom/chery/media/model/business/DabInfo;)V
    .locals 7

    .line 596
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->setMute(Z)V

    if-eqz p1, :cond_5

    .line 598
    iget v1, p1, Lcom/chery/media/model/business/DabInfo;->freq:I

    if-nez v1, :cond_0

    goto :goto_2

    .line 602
    :cond_0
    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->requestAudioFocus()Z

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->mService:Lsw/com/dabdrmradio/IAIDLDabService;

    if-eqz v1, :cond_2

    .line 609
    :try_start_0
    iget v3, p1, Lcom/chery/media/model/business/DabInfo;->freq:I

    iget v4, p1, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    iget v5, p1, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    iget v6, p1, Lcom/chery/media/model/business/DabInfo;->componentId:I

    invoke-interface {v1, v3, v4, v5, v6}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabServiceComponentSelectPlay(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 612
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 616
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/DabInfo;

    .line 617
    invoke-virtual {v3, p1}, Lcom/chery/media/model/business/DabInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    iput-boolean v2, v3, Lcom/chery/media/model/business/DabInfo;->isPlaying:Z

    goto :goto_1

    .line 620
    :cond_3
    iput-boolean v0, v3, Lcom/chery/media/model/business/DabInfo;->isPlaying:Z

    goto :goto_1

    .line 623
    :cond_4
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    .line 624
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveCurDabInfo()V

    .line 625
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayInfo:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 626
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateCurIndex()V

    .line 627
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyCurDabInfoChanged()V

    .line 628
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public playDabProgram(Lcom/chery/media/model/business/DabProgramInfo;)V
    .locals 5

    .line 1056
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playDabProgram: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/chery/media/model/business/DabProgramInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 1058
    iget v2, p1, Lcom/chery/media/model/business/DabProgramInfo;->ensembleId:I

    iget v3, v1, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/chery/media/model/business/DabProgramInfo;->serviceId:I

    iget v3, v1, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    const v4, 0xffff

    and-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/chery/media/model/business/DabProgramInfo;->scIds:I

    iget v3, v1, Lcom/chery/media/model/business/DabInfo;->scIds:I

    and-int/lit8 v3, v3, 0xf

    if-ne v2, v3, :cond_0

    .line 1061
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    :cond_1
    return-void
.end method

.method public playNext()V
    .locals 3

    .line 721
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string v1, "playNext"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 723
    iget v0, p0, Lcom/chery/media/model/business/DabBusiness;->curIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    goto :goto_0

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 726
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    iget v1, p0, Lcom/chery/media/model/business/DabBusiness;->curIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public playPause()V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    :goto_0
    return-void
.end method

.method public playPrevious()V
    .locals 2

    .line 734
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string v1, "playPrevious"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 736
    iget v0, p0, Lcom/chery/media/model/business/DabBusiness;->curIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 739
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    goto :goto_0

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeReserve(Lcom/chery/media/model/business/DabProgramInfo;)V
    .locals 3

    .line 940
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeReserve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/chery/media/model/business/DabProgramInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 941
    :goto_0
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 942
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabProgramInfo;

    invoke-virtual {v2, p1}, Lcom/chery/media/model/business/DabProgramInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/DabProgramInfo;

    iput-boolean v0, p1, Lcom/chery/media/model/business/DabProgramInfo;->hasReserved:Z

    .line 944
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->notifyProgramListChanged()V

    .line 945
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateReservedList()V

    .line 946
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveProgramInfoList()V

    .line 947
    new-instance p1, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->context:Landroid/content/Context;

    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public requestAudioFocus()Z
    .locals 4

    .line 372
    iget v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 373
    sget-object p0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string v0, "requestAudioFocus, already has focus"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    iput v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    .line 378
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAudioFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    .line 380
    iget p0, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public setAnnouncementTypeSwitch(IZ)V
    .locals 3

    .line 666
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnnouncementTypeSwitch, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget v0, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p2, :cond_0

    or-int/lit8 p1, v1, 0x20

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, 0xdf

    :goto_0
    move v1, p1

    goto/16 :goto_2

    :pswitch_1
    if-eqz p2, :cond_1

    or-int/lit8 p1, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit16 p1, v0, 0xfb

    :goto_1
    move v0, p1

    goto :goto_2

    :pswitch_2
    if-eqz p2, :cond_2

    or-int/lit8 p1, v1, 0x10

    goto :goto_0

    :cond_2
    and-int/lit16 p1, v1, 0xef

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    or-int/lit8 p1, v0, 0x2

    goto :goto_1

    :cond_3
    and-int/lit16 p1, v0, 0xfd

    goto :goto_1

    :pswitch_4
    if-eqz p2, :cond_4

    or-int/lit8 p1, v1, 0x8

    goto :goto_0

    :cond_4
    and-int/lit16 p1, v1, 0xf7

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_5

    or-int/lit8 p1, v0, 0x1

    goto :goto_1

    :cond_5
    and-int/lit16 p1, v0, 0xfe

    goto :goto_1

    :pswitch_6
    if-eqz p2, :cond_6

    or-int/lit8 p1, v1, 0x4

    goto :goto_0

    :cond_6
    and-int/lit16 p1, v1, 0xfb

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_7

    or-int/lit16 p1, v1, 0x80

    goto :goto_0

    :cond_7
    and-int/lit8 p1, v1, 0x7f

    goto :goto_0

    :pswitch_8
    if-eqz p2, :cond_8

    or-int/lit8 p1, v1, 0x2

    goto :goto_0

    :cond_8
    and-int/lit16 p1, v1, 0xfd

    goto :goto_0

    :pswitch_9
    if-eqz p2, :cond_9

    or-int/lit8 p1, v1, 0x40

    goto :goto_0

    :cond_9
    and-int/lit16 p1, v1, 0xbf

    goto :goto_0

    :pswitch_a
    if-eqz p2, :cond_a

    or-int/lit8 p1, v1, 0x1

    goto :goto_0

    :cond_a
    and-int/lit16 p1, v1, 0xfe

    goto :goto_0

    :goto_2
    shl-int/lit8 p1, v0, 0x8

    add-int/2addr p1, v1

    .line 707
    iput p1, p0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    .line 708
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveAnnounceSwitch()V

    .line 709
    sget-object p2, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnnouncementTypeSwitch, switchValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateAnnounceList()V

    .line 711
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mService:Lsw/com/dabdrmradio/IAIDLDabService;

    if-eqz p0, :cond_b

    .line 713
    :try_start_0
    invoke-interface {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabAnnouncementSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 715
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurPlayType(ILjava/lang/String;)V
    .locals 3

    .line 553
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurPlayType, listType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListType:I

    .line 555
    iput-object p2, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayListName:Ljava/lang/String;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 580
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    iget-object p2, p0, Lcom/chery/media/model/business/DabBusiness;->favorList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 571
    :cond_1
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 572
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    .line 573
    iget v1, v0, Lcom/chery/media/model/business/DabInfo;->servicePty:I

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->getPtyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
    :cond_3
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 564
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    .line 565
    iget-object v1, v0, Lcom/chery/media/model/business/DabInfo;->ensembleName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 566
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 559
    :cond_5
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 560
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    iget-object p2, p0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 585
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->curPlayList:Landroidx/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/chery/media/model/business/DabBusiness;->playList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 586
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->updateCurIndex()V

    .line 587
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->saveCurPlayListType()V

    return-void
.end method

.method public setDabOption(Z)V
    .locals 0

    .line 1046
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mService:Lsw/com/dabdrmradio/IAIDLDabService;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1048
    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabLinkingOption(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1050
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setFirstTimeUsedFalse()V
    .locals 4

    .line 894
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 895
    new-instance v1, Lcom/chery/media/model/business/DabBusiness$4;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/model/business/DabBusiness$4;-><init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chery/media/model/business/DabBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 906
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLastListPage(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/chery/media/model/business/DabBusiness;->lastListPage:I

    return-void
.end method

.method public setPlayStateByVr(Z)V
    .locals 3

    .line 1952
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayStateByVr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iput-boolean p1, p0, Lcom/chery/media/model/business/DabBusiness;->mbPlayStatusRecover:Z

    return-void
.end method

.method public setPlayingState(Z)V
    .locals 3

    .line 392
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayingState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playingState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness;->playingState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 396
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->setMute(Z)V

    .line 397
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result p1

    .line 398
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->setGroupMute(IZI)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness;->audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    .line 403
    iget p1, p0, Lcom/chery/media/model/business/DabBusiness;->audioFocus:I

    if-ne p1, v0, :cond_1

    .line 404
    invoke-direct {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->setMute(Z)V

    goto :goto_0

    .line 406
    :cond_1
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->setMute(Z)V

    .line 410
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/chery/media/model/business/DabBusiness;->sendDABBroadcast()V

    return-void
.end method

.method public startScan()V
    .locals 2

    .line 635
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string v1, "startScan"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mService:Lsw/com/dabdrmradio/IAIDLDabService;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 638
    :try_start_0
    invoke-interface {p0, v0}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabScanStart(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 640
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopScan()V
    .locals 2

    .line 649
    sget-object v0, Lcom/chery/media/model/business/DabBusiness;->TAG:Ljava/lang/String;

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->mService:Lsw/com/dabdrmradio/IAIDLDabService;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 652
    :try_start_0
    invoke-interface {p0, v0}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabScanStart(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 654
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
