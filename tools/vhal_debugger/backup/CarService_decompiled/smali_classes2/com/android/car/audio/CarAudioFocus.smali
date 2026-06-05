.class public Lcom/android/car/audio/CarAudioFocus;
.super Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
.source "CarAudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/audio/CarAudioFocus$FocusEntry;,
        Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final INTERACTION_CONCURRENT:I = 0x2

.field static final INTERACTION_DELAY:I = 0x3

.field static final INTERACTION_EXCLUSIVE:I = 0x1

.field static final INTERACTION_REJECT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarAudioFocus"

.field private static sInteractionMatrix:[[I

.field private static sPriorityMatrix:[[I


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private mCarAudioService:Lcom/android/car/audio/CarAudioService;

.field private final mFocusHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/audio/CarAudioFocus$FocusEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusLosers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/audio/CarAudioFocus$FocusEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    nop

    .line 60
    const/16 v0, 0x9

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-array v2, v0, [I

    fill-array-data v2, :array_6

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-array v2, v0, [I

    fill-array-data v2, :array_7

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-array v2, v0, [I

    fill-array-data v2, :array_8

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sput-object v1, Lcom/android/car/audio/CarAudioFocus;->sInteractionMatrix:[[I

    .line 156
    const/16 v1, 0xb

    new-array v2, v1, [[I

    new-array v12, v1, [I

    fill-array-data v12, :array_9

    aput-object v12, v2, v3

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_c

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_d

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_e

    aput-object v3, v2, v8

    new-array v3, v1, [I

    fill-array-data v3, :array_f

    aput-object v3, v2, v9

    new-array v3, v1, [I

    fill-array-data v3, :array_10

    aput-object v3, v2, v10

    new-array v3, v1, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v11

    new-array v3, v1, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v0

    const/16 v0, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_13

    aput-object v1, v2, v0

    sput-object v2, Lcom/android/car/audio/CarAudioFocus;->sPriorityMatrix:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x2
        0x0
        0x2
        0x1
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x2
        0x0
        0x2
        0x2
        0x2
        0x2
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x2
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x2
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x2
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x2
        0x3
        0x3
        0x2
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x1
        0x0
        0x0
        0x0
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x1
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x1
        0x1
        0x0
        0x1
        0x0
        0x3
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x3
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x1
        0x1
        0x3
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method constructor <init>(Landroid/media/AudioManager;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 229
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;-><init>()V

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    .line 230
    iput-object p1, p0, Lcom/android/car/audio/CarAudioFocus;->mAudioManager:Landroid/media/AudioManager;

    .line 231
    iput-object p2, p0, Lcom/android/car/audio/CarAudioFocus;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/audio/CarAudioFocus;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioFocus;

    .line 35
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private canLossTransient(Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;)Z
    .locals 2
    .param p1, "old"    # Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .param p2, "req"    # Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 243
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->MEDIA:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->SCREEN_SAVER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->VR:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->INCOMING_PROMPT:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ENHANCED_SIRI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->E_CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    if-ne p2, v0, :cond_1

    .line 251
    return v1

    .line 253
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 247
    :cond_2
    :goto_0
    return v1
.end method

.method private dispatchFocusGained(Landroid/media/AudioFocusInfo;)I
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 873
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/car/audio/CarAudioFocus;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/AudioManager;->dispatchAudioFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    .line 877
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v1, p1}, Lcom/android/car/audio/CarAudioService;->requestAudioDSPSource(Landroid/media/AudioFocusInfo;)V

    .line 878
    if-eq v0, v2, :cond_0

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure to signal gain of audio focus with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarAudioFocus"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    return v0
.end method

.method private static focusEventToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "focusEvent"    # I

    .line 972
    const/4 v0, -0x3

    if-eq p0, v0, :cond_6

    const/4 v0, -0x2

    if-eq p0, v0, :cond_5

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 978
    :cond_0
    const-string v0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object v0

    .line 980
    :cond_1
    const-string v0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object v0

    .line 976
    :cond_2
    const-string v0, "GAIN_TRANSIENT"

    return-object v0

    .line 974
    :cond_3
    const-string v0, "GAIN"

    return-object v0

    .line 982
    :cond_4
    const-string v0, "LOSS"

    return-object v0

    .line 984
    :cond_5
    const-string v0, "LOSS_TRANSIENT"

    return-object v0

    .line 986
    :cond_6
    const-string v0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object v0
.end method

.method private getAudioFocusListForUid(ILjava/util/HashMap;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/audio/CarAudioFocus$FocusEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 914
    .local p2, "mapToQuery":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v0, "matchingInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 916
    .local v2, "clientId":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    iget-object v3, v3, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 917
    .local v3, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v3}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 918
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    .end local v2    # "clientId":Ljava/lang/String;
    .end local v3    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    goto :goto_0

    .line 921
    :cond_1
    return-object v0
.end method

.method private getPriorityType(Landroid/media/AudioAttributes;)Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .locals 5
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 91
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->MEDIA:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 92
    .local v0, "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "key_car_source_type"

    if-eq v2, v3, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    const/16 v3, 0xb

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_7

    const/16 v3, 0x10

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e5

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e7

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->POWER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 145
    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->SCREEN_SAVER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 148
    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->VR:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 108
    if-eqz v1, :cond_c

    .line 109
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3

    .line 114
    goto :goto_0

    .line 111
    :cond_3
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->INCOMING_PROMPT:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 112
    goto :goto_0

    .line 119
    :cond_4
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->VR:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 120
    if-eqz v1, :cond_c

    .line 121
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_5

    .line 126
    goto :goto_0

    .line 123
    :cond_5
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ENHANCED_SIRI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 124
    goto :goto_0

    .line 138
    :cond_6
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->RINGTONE:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 139
    goto :goto_0

    .line 132
    :cond_7
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->NAVI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 133
    goto :goto_0

    .line 141
    :cond_8
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->E_CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 142
    goto :goto_0

    .line 135
    :cond_9
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 136
    goto :goto_0

    .line 95
    :cond_a
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->MEDIA:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 96
    if-eqz v1, :cond_c

    .line 97
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_b

    .line 102
    goto :goto_0

    .line 99
    :cond_b
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ENGINEERING_MODE:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 153
    :cond_c
    :goto_0
    return-object v0
.end method

.method private removeFocusEntry(Landroid/media/AudioFocusInfo;)Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .locals 4
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFocusEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarAudioFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 819
    .local v0, "deadEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    if-nez v0, :cond_0

    .line 820
    iget-object v2, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 821
    if-nez v0, :cond_0

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio focus abandoned by unrecognized client id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    return-object v0
.end method

.method private removeFocusEntryAndRestoreUnblockedWaiters(Lcom/android/car/audio/CarAudioFocus$FocusEntry;)V
    .locals 4
    .param p1, "deadEntry"    # Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 840
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    iget-object v1, p1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v0, v1}, Lcom/android/car/audio/CarAudioService;->releaseAudioDSPSource(Landroid/media/AudioFocusInfo;)V

    .line 841
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 842
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 843
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 846
    .local v1, "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    iget-object v2, v1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    iget-object v2, v1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring unblocked entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarAudioFocus"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 855
    iget-object v2, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    iget-object v2, v1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-direct {p0, v2}, Lcom/android/car/audio/CarAudioFocus;->dispatchFocusGained(Landroid/media/AudioFocusInfo;)I

    .line 860
    .end local v1    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_0
    goto :goto_0

    .line 861
    :cond_1
    iget-object v1, p1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 862
    iget-object v1, p1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 864
    :cond_2
    return-void
.end method

.method private sendFocusLoss(Lcom/android/car/audio/CarAudioFocus$FocusEntry;I)V
    .locals 4
    .param p1, "loser"    # Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .param p2, "lossType"    # I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendFocusLoss ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/audio/CarAudioFocus;->focusEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p1}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v1, "CarAudioFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, -0x3

    if-eq p2, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    iget-object v2, p1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v0, v2}, Lcom/android/car/audio/CarAudioService;->releaseAudioDSPSource(Landroid/media/AudioFocusInfo;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p1, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioFocus;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v0, v2, p2, v3}, Landroid/media/AudioManager;->dispatchAudioFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    .line 263
    .local v0, "result":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal loss of audio focus with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 958
    :try_start_0
    const-string v0, "%s*CarAudioFocus*\n"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 960
    const-string v0, "%s\tCurrent Focus Holders:\n"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 961
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 962
    .local v2, "clientId":Ljava/lang/String;
    const-string v5, "%s\t\t%s\n"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v2, v4, v1

    invoke-virtual {p2, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 963
    nop

    .end local v2    # "clientId":Ljava/lang/String;
    goto :goto_0

    .line 965
    .end local p0    # "this":Lcom/android/car/audio/CarAudioFocus;
    :cond_0
    const-string v0, "%s\tTransient Focus Losers:\n"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 966
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 967
    .restart local v2    # "clientId":Ljava/lang/String;
    const-string v5, "%s\t\t%s\n"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v2, v6, v1

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    nop

    .end local v2    # "clientId":Ljava/lang/String;
    goto :goto_1

    .line 969
    :cond_1
    monitor-exit p0

    return-void

    .line 957
    .end local p1    # "indent":Ljava/lang/String;
    .end local p2    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method evaluateFocusRequest(Landroid/media/AudioFocusInfo;)I
    .locals 18
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 533
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v2

    invoke-static {v2}, Lcom/android/car/audio/CarAudioFocus;->focusEventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request for client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    const-string v2, "CarAudioFocus"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    nop

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 544
    .local v1, "permanent":Z
    :goto_0
    nop

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 549
    .local v5, "allowDucking":Z
    :goto_1
    iget-object v6, v0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v7

    .line 549
    invoke-virtual {v6, v7}, Lcom/android/car/audio/CarAudioService;->getContextForUsage(I)I

    move-result v6

    .line 555
    .local v6, "requestedContext":I
    const/4 v7, 0x0

    .line 556
    .local v7, "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    const/4 v8, 0x0

    .line 561
    .local v8, "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    const-string v9, "Scanning focus holders..."

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v9, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    iget-object v10, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, " on same listener."

    const-string v13, " - cannot request focus for "

    const-string v14, " has already requested focus for "

    const-string v15, "Client "

    const-string v3, "Bad interaction matrix value - rejecting"

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 564
    .local v11, "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v8

    .end local v8    # "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .local v16, "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    const-string v8, "Evaluating focus holder: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v4, 0x7

    if-ne v6, v4, :cond_2

    iget-object v4, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 572
    invoke-virtual {v4}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_2

    .line 574
    const/4 v2, 0x0

    return v2

    .line 579
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v8}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 580
    iget v3, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAudioContext:I

    if-ne v3, v6, :cond_3

    .line 584
    const-string v3, "Replacing accepted request from same client"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    move-object v7, v11

    .line 586
    move-object/from16 v8, v16

    const/4 v3, 0x1

    goto :goto_2

    .line 589
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 590
    invoke-virtual {v4}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v2, 0x0

    return v2

    .line 598
    :cond_4
    sget-object v4, Lcom/android/car/audio/CarAudioFocus;->sInteractionMatrix:[[I

    iget v8, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAudioContext:I

    aget-object v4, v4, v8

    aget v4, v4, v6

    if-eqz v4, :cond_9

    const/4 v8, 0x1

    if-eq v4, v8, :cond_7

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    .line 620
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v2, 0x0

    return v2

    .line 613
    :cond_5
    if-eqz v5, :cond_6

    .line 614
    invoke-virtual {v11}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->wantsPauseInsteadOfDucking()Z

    move-result v3

    if-nez v3, :cond_6

    .line 615
    invoke-virtual {v11}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->receivesDuckEvents()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 616
    :cond_6
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 604
    :cond_7
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    nop

    .line 623
    .end local v11    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_8
    :goto_3
    move-object/from16 v8, v16

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 601
    .restart local v11    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_9
    const/4 v2, 0x0

    return v2

    .line 624
    .end local v11    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .end local v16    # "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .restart local v8    # "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_a
    move-object/from16 v16, v8

    .end local v8    # "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .restart local v16    # "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    const-string v4, "Scanning those who\'ve already lost focus..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v4, "blocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    iget-object v8, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v10, v16

    .end local v16    # "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .local v10, "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 627
    .restart local v11    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    move-object/from16 v16, v8

    iget-object v8, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v8}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v8, 0x7

    if-ne v6, v8, :cond_b

    iget-object v8, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 632
    invoke-virtual {v8}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v8

    move-object/from16 v17, v9

    const/4 v9, 0x4

    .end local v9    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .local v17, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    if-ne v8, v9, :cond_c

    .line 634
    const/4 v2, 0x0

    return v2

    .line 631
    .end local v17    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .restart local v9    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    :cond_b
    move-object/from16 v17, v9

    const/4 v9, 0x4

    .line 639
    .end local v9    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .restart local v17    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v9}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 640
    iget v8, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAudioContext:I

    if-ne v8, v6, :cond_d

    .line 645
    const-string v8, "Replacing pending request from same client"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object v10, v11

    .line 647
    move-object/from16 v8, v16

    move-object/from16 v9, v17

    goto :goto_4

    .line 650
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 651
    invoke-virtual {v8}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v2, 0x0

    return v2

    .line 659
    :cond_e
    sget-object v8, Lcom/android/car/audio/CarAudioFocus;->sInteractionMatrix:[[I

    iget v9, v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAudioContext:I

    aget-object v8, v8, v9

    aget v8, v8, v6

    if-eqz v8, :cond_13

    const/4 v9, 0x1

    if-eq v8, v9, :cond_11

    const/4 v9, 0x2

    if-eq v8, v9, :cond_f

    .line 681
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v2, 0x0

    return v2

    .line 673
    :cond_f
    if-eqz v5, :cond_10

    .line 674
    invoke-virtual {v11}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->wantsPauseInsteadOfDucking()Z

    move-result v8

    if-nez v8, :cond_10

    .line 675
    invoke-virtual {v11}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->receivesDuckEvents()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 677
    :cond_10
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 666
    :cond_11
    const/4 v9, 0x2

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    nop

    .line 684
    .end local v11    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_12
    :goto_5
    move-object/from16 v8, v16

    move-object/from16 v9, v17

    goto/16 :goto_4

    .line 663
    .restart local v11    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_13
    const/4 v2, 0x0

    return v2

    .line 688
    .end local v11    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .end local v17    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .restart local v9    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    :cond_14
    move-object/from16 v17, v9

    .end local v9    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .restart local v17    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    new-instance v3, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    move-object/from16 v8, p1

    invoke-direct {v3, v0, v8, v6}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;-><init>(Lcom/android/car/audio/CarAudioFocus;Landroid/media/AudioFocusInfo;I)V

    .line 692
    .local v3, "newEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v9, "permanentlyLost":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    if-eqz v7, :cond_15

    .line 695
    iget-object v11, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_15
    if-eqz v10, :cond_16

    .line 699
    iget-object v11, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 708
    .local v12, "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    nop

    .line 710
    if-eqz v1, :cond_17

    .line 712
    const/4 v13, -0x1

    invoke-direct {v0, v12, v13}, Lcom/android/car/audio/CarAudioFocus;->sendFocusLoss(Lcom/android/car/audio/CarAudioFocus$FocusEntry;I)V

    .line 713
    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mReceivedLossTransientCanDuck:Z

    .line 714
    iget-object v13, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    iget-object v14, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v14}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 715
    .local v13, "deadEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    nop

    .line 716
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    .end local v13    # "deadEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    const/4 v13, 0x0

    goto :goto_8

    .line 718
    :cond_17
    if-nez v5, :cond_18

    iget-boolean v13, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mReceivedLossTransientCanDuck:Z

    if-eqz v13, :cond_18

    .line 720
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Converting duckable loss to non-duckable for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v12}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 720
    invoke-static {v2, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v13, -0x2

    invoke-direct {v0, v12, v13}, Lcom/android/car/audio/CarAudioFocus;->sendFocusLoss(Lcom/android/car/audio/CarAudioFocus$FocusEntry;I)V

    .line 723
    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mReceivedLossTransientCanDuck:Z

    goto :goto_7

    .line 718
    :cond_18
    const/4 v13, 0x0

    .line 726
    :goto_7
    iget-object v14, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    .end local v12    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :goto_8
    goto :goto_6

    .line 731
    :cond_19
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 733
    .restart local v12    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    nop

    .line 736
    if-eqz v1, :cond_1a

    .line 737
    const/4 v13, -0x1

    .local v13, "lossType":I
    goto :goto_a

    .line 738
    .end local v13    # "lossType":I
    :cond_1a
    if-eqz v5, :cond_1b

    invoke-virtual {v12}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->receivesDuckEvents()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 739
    const/4 v13, -0x3

    .line 740
    .restart local v13    # "lossType":I
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mReceivedLossTransientCanDuck:Z

    goto :goto_a

    .line 742
    .end local v13    # "lossType":I
    :cond_1b
    const/4 v13, -0x2

    .line 744
    .restart local v13    # "lossType":I
    :goto_a
    invoke-direct {v0, v12, v13}, Lcom/android/car/audio/CarAudioFocus;->sendFocusLoss(Lcom/android/car/audio/CarAudioFocus$FocusEntry;I)V

    .line 747
    iget-object v14, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    iget-object v15, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v15}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    if-eqz v1, :cond_1c

    .line 750
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 754
    :cond_1c
    iget-object v14, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    iget-object v15, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v15}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v14, v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    .end local v12    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .end local v13    # "lossType":I
    :goto_b
    goto :goto_9

    .line 764
    :cond_1d
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 765
    .restart local v12    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cleaning up entry "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-direct {v0, v12}, Lcom/android/car/audio/CarAudioFocus;->removeFocusEntryAndRestoreUnblockedWaiters(Lcom/android/car/audio/CarAudioFocus$FocusEntry;)V

    .line 767
    .end local v12    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    goto :goto_c

    .line 770
    :cond_1e
    iget-object v11, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v11, "AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v2, 0x1

    return v2
.end method

.method evaluateFocusRequestT19C(Landroid/media/AudioFocusInfo;)I
    .locals 23
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evaluating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v3

    invoke-static {v3}, Lcom/android/car/audio/CarAudioFocus;->focusEventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " request for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " usage ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v3, "CarAudioFocus"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v4, 0x1

    const/16 v5, 0x3e6

    if-ne v2, v5, :cond_0

    .line 277
    iget-object v2, v0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v2, v1}, Lcom/android/car/audio/CarAudioService;->requestAudioDSPSource(Landroid/media/AudioFocusInfo;)V

    .line 278
    return v4

    .line 287
    :cond_0
    nop

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 289
    .local v2, "permanent":Z
    :goto_0
    nop

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 292
    .local v6, "allowDucking":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_3

    .line 294
    const/4 v6, 0x1

    .line 298
    :cond_3
    iget-object v8, v0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v9

    .line 298
    invoke-virtual {v8, v9}, Lcom/android/car/audio/CarAudioService;->getContextForUsage(I)I

    move-result v8

    .line 300
    .local v8, "requestedContext":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/car/audio/CarAudioFocus;->getPriorityType(Landroid/media/AudioAttributes;)Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    move-result-object v9

    .line 304
    .local v9, "requestedPriorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    const/4 v10, 0x0

    .line 305
    .local v10, "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    const/4 v11, 0x0

    .line 306
    .local v11, "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v12, "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    const-string v13, "Scanning focus holders..."

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v13, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    iget-object v14, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v7, " on same listener."

    const-string v5, " - cannot request focus for "

    const-string v4, " has already requested focus for "

    move-object/from16 v16, v11

    .end local v11    # "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .local v16, "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    const-string v11, "Client "

    move/from16 v17, v6

    .end local v6    # "allowDucking":Z
    .local v17, "allowDucking":Z
    const-string v6, "the higher priority source is running, reject!"

    move/from16 v18, v2

    .end local v2    # "permanent":Z
    .local v18, "permanent":Z
    const-string v2, "Bad interaction matrix value - rejecting"

    move-object/from16 v19, v10

    .end local v10    # "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .local v19, "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 314
    .local v15, "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v14

    const-string v14, "Evaluating focus holder: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v15, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v14}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 319
    iget v2, v15, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAudioContext:I

    if-ne v2, v8, :cond_4

    .line 323
    const-string v2, "request from same client"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v2, 0x1

    return v2

    .line 327
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 328
    invoke-virtual {v4}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v2, 0x0

    return v2

    .line 334
    :cond_5
    iget-object v4, v15, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v4}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/car/audio/CarAudioFocus;->getPriorityType(Landroid/media/AudioAttributes;)Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    move-result-object v4

    .line 336
    .local v4, "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    sget-object v5, Lcom/android/car/audio/CarAudioFocus;->sPriorityMatrix:[[I

    invoke-virtual {v9}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ordinal()I

    move-result v7

    aget-object v5, v5, v7

    invoke-virtual {v4}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eqz v5, :cond_b

    const/4 v7, 0x1

    if-eq v5, v7, :cond_9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 360
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v2, 0x0

    return v2

    .line 357
    :cond_6
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    goto :goto_3

    .line 352
    :cond_7
    invoke-virtual {v15}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->wantsPauseInsteadOfDucking()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v15}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->receivesDuckEvents()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 353
    :cond_8
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 343
    :cond_9
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    nop

    .line 363
    .end local v4    # "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .end local v15    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_a
    :goto_3
    move-object/from16 v11, v16

    move/from16 v6, v17

    move/from16 v2, v18

    move-object/from16 v10, v19

    move-object/from16 v14, v20

    const/4 v4, 0x1

    const/4 v7, 0x3

    goto/16 :goto_2

    .line 339
    .restart local v4    # "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .restart local v15    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_b
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v2, 0x0

    return v2

    .line 364
    .end local v4    # "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .end local v15    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_c
    const-string v10, "Scanning those who\'ve already lost focus..."

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v10, "blocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    iget-object v14, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object/from16 v15, v16

    .end local v16    # "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .local v15, "replacedBlockedEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    check-cast v14, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 367
    .local v14, "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    move-object/from16 v16, v12

    .end local v12    # "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .local v16, "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    iget-object v12, v14, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v12}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v13

    .end local v13    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .local v21, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    iget-object v13, v14, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v13}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 372
    iget v12, v14, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAudioContext:I

    if-ne v12, v8, :cond_d

    .line 377
    const-string v12, "Replacing pending request from same client"

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object v15, v14

    .line 379
    move-object/from16 v12, v16

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    goto :goto_4

    .line 382
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    .line 383
    invoke-virtual {v4}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v2, 0x0

    return v2

    .line 390
    :cond_e
    iget-object v12, v14, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v12}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/car/audio/CarAudioFocus;->getPriorityType(Landroid/media/AudioAttributes;)Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    move-result-object v12

    .line 392
    .local v12, "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    sget-object v13, Lcom/android/car/audio/CarAudioFocus;->sPriorityMatrix:[[I

    invoke-virtual {v9}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ordinal()I

    move-result v22

    aget-object v13, v13, v22

    invoke-virtual {v12}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ordinal()I

    move-result v22

    aget v13, v13, v22

    if-eqz v13, :cond_14

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-eq v13, v4, :cond_12

    const/4 v4, 0x2

    if-eq v13, v4, :cond_10

    const/4 v4, 0x3

    if-eq v13, v4, :cond_f

    .line 416
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v2, 0x0

    return v2

    .line 414
    :cond_f
    goto :goto_5

    .line 407
    :cond_10
    const/4 v4, 0x3

    invoke-virtual {v14}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->wantsPauseInsteadOfDucking()Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v14}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->receivesDuckEvents()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 409
    :cond_11
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 400
    :cond_12
    const/4 v4, 0x3

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    nop

    .line 419
    .end local v12    # "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .end local v14    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_13
    :goto_5
    move-object/from16 v12, v16

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v4, v22

    goto/16 :goto_4

    .line 396
    .restart local v12    # "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .restart local v14    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_14
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v2, 0x0

    return v2

    .line 422
    .end local v14    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .end local v16    # "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .end local v21    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .local v12, "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .restart local v13    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    :cond_15
    move-object/from16 v16, v12

    move-object/from16 v21, v13

    .end local v12    # "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .end local v13    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .restart local v16    # "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .restart local v21    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    new-instance v2, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    invoke-direct {v2, v0, v1, v8}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;-><init>(Lcom/android/car/audio/CarAudioFocus;Landroid/media/AudioFocusInfo;I)V

    .line 426
    .local v2, "newEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v4, "permanentlyLost":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    if-eqz v19, :cond_16

    .line 429
    iget-object v5, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual/range {v19 .. v19}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    move-object/from16 v5, v19

    .end local v19    # "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .local v5, "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 428
    .end local v5    # "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .restart local v19    # "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :cond_16
    move-object/from16 v5, v19

    .line 432
    .end local v19    # "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .restart local v5    # "replacedCurrentEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :goto_6
    if-eqz v15, :cond_17

    .line 433
    iget-object v6, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    invoke-virtual {v15}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v11, -0x1

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 442
    .local v7, "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    nop

    .line 444
    if-eqz v18, :cond_18

    .line 446
    invoke-direct {v0, v7, v11}, Lcom/android/car/audio/CarAudioFocus;->sendFocusLoss(Lcom/android/car/audio/CarAudioFocus$FocusEntry;I)V

    .line 447
    const/4 v11, 0x0

    iput-boolean v11, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mReceivedLossTransientCanDuck:Z

    .line 448
    iget-object v11, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    iget-object v12, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v12}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 449
    .local v11, "deadEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    nop

    .line 450
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v11    # "deadEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    const/4 v12, 0x0

    goto :goto_9

    .line 452
    :cond_18
    if-nez v17, :cond_19

    iget-boolean v11, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mReceivedLossTransientCanDuck:Z

    if-eqz v11, :cond_19

    .line 454
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Converting duckable loss to non-duckable for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 454
    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v11, -0x2

    invoke-direct {v0, v7, v11}, Lcom/android/car/audio/CarAudioFocus;->sendFocusLoss(Lcom/android/car/audio/CarAudioFocus$FocusEntry;I)V

    .line 457
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mReceivedLossTransientCanDuck:Z

    goto :goto_8

    .line 452
    :cond_19
    const/4 v12, 0x0

    .line 460
    :goto_8
    iget-object v11, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v7    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    :goto_9
    goto :goto_7

    .line 465
    :cond_1a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 467
    .restart local v7    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    nop

    .line 469
    iget-object v12, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v12}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/car/audio/CarAudioFocus;->getPriorityType(Landroid/media/AudioAttributes;)Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    move-result-object v12

    .line 471
    .local v12, "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    if-eqz v18, :cond_1b

    .line 472
    const/4 v13, -0x1

    .local v13, "lossType":I
    goto :goto_b

    .line 473
    .end local v13    # "lossType":I
    :cond_1b
    if-eqz v17, :cond_1c

    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->receivesDuckEvents()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 474
    const/4 v13, -0x3

    .line 475
    .restart local v13    # "lossType":I
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mReceivedLossTransientCanDuck:Z

    goto :goto_b

    .line 476
    .end local v13    # "lossType":I
    :cond_1c
    invoke-direct {v0, v12, v9}, Lcom/android/car/audio/CarAudioFocus;->canLossTransient(Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 477
    const/4 v13, -0x2

    .restart local v13    # "lossType":I
    goto :goto_b

    .line 479
    .end local v13    # "lossType":I
    :cond_1d
    const/4 v13, -0x1

    .line 481
    .restart local v13    # "lossType":I
    :goto_b
    invoke-direct {v0, v7, v13}, Lcom/android/car/audio/CarAudioFocus;->sendFocusLoss(Lcom/android/car/audio/CarAudioFocus$FocusEntry;I)V

    .line 484
    iget-object v14, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    iget-object v11, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v11}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const/4 v11, -0x1

    if-ne v13, v11, :cond_1e

    .line 487
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 491
    :cond_1e
    iget-object v14, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    iget-object v11, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v11}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v11, v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v7    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .end local v12    # "priorityType":Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .end local v13    # "lossType":I
    :goto_c
    const/4 v11, -0x1

    goto :goto_a

    .line 501
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    .line 502
    .restart local v7    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cleaning up entry "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {v0, v7}, Lcom/android/car/audio/CarAudioFocus;->removeFocusEntryAndRestoreUnblockedWaiters(Lcom/android/car/audio/CarAudioFocus$FocusEntry;)V

    .line 504
    .end local v7    # "entry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    goto :goto_d

    .line 506
    :cond_20
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_21

    .line 507
    iget-object v6, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mAfi:Landroid/media/AudioFocusInfo;

    invoke-virtual {v7}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v6, v2, Lcom/android/car/audio/CarAudioFocus$FocusEntry;->mBlockers:Ljava/util/ArrayList;

    move-object/from16 v7, v16

    .end local v16    # "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .local v7, "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 509
    const-string v6, "AUDIOFOCUS_REQUEST_DELAYED"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v3, 0x2

    return v3

    .line 514
    .end local v7    # "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    .restart local v16    # "delayedEntrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/audio/CarAudioFocus$FocusEntry;>;"
    :cond_21
    iget-object v6, v0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v6, v0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v6, v1}, Lcom/android/car/audio/CarAudioService;->requestAudioDSPSource(Landroid/media/AudioFocusInfo;)V

    .line 517
    const-string v6, "AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v3, 0x1

    return v3
.end method

.method getAudioFocusHoldersForUid(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusHolders:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/car/audio/CarAudioFocus;->getAudioFocusListForUid(ILjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getAudioFocusLosersForUid(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mFocusLosers:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/car/audio/CarAudioFocus;->getAudioFocusListForUid(ILjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    monitor-enter p0

    .line 795
    :try_start_0
    const-string v0, "CarAudioFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusAbandon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x3e6

    if-ne v0, v1, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v0, p1}, Lcom/android/car/audio/CarAudioService;->releaseAudioDSPSource(Landroid/media/AudioFocusInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    monitor-exit p0

    return-void

    .line 802
    .end local p0    # "this":Lcom/android/car/audio/CarAudioFocus;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioFocus;->removeFocusEntry(Landroid/media/AudioFocusInfo;)Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    move-result-object v0

    .line 804
    .local v0, "deadEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    if-eqz v0, :cond_1

    .line 805
    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioFocus;->removeFocusEntryAndRestoreUnblockedWaiters(Lcom/android/car/audio/CarAudioFocus$FocusEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    :cond_1
    monitor-exit p0

    return-void

    .line 794
    .end local v0    # "deadEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    .end local p1    # "afi":Landroid/media/AudioFocusInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    monitor-enter p0

    .line 779
    :try_start_0
    const-string v0, "CarAudioFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/car/audio/CarAudioFocus;->evaluateFocusRequestT19C(Landroid/media/AudioFocusInfo;)I

    move-result v0

    .line 784
    .local v0, "response":I
    iget-object v1, p0, Lcom/android/car/audio/CarAudioFocus;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioFocus;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v1, p1, v0, v2}, Landroid/media/AudioManager;->setFocusRequestResult(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    monitor-exit p0

    return-void

    .line 778
    .end local v0    # "response":I
    .end local p0    # "this":Lcom/android/car/audio/CarAudioFocus;
    .end local p1    # "afi":Landroid/media/AudioFocusInfo;
    .end local p2    # "requestResult":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method reevaluateAndRegainAudioFocus(Landroid/media/AudioFocusInfo;)I
    .locals 2
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 944
    invoke-virtual {p0, p1}, Lcom/android/car/audio/CarAudioFocus;->evaluateFocusRequestT19C(Landroid/media/AudioFocusInfo;)I

    move-result v0

    .line 946
    .local v0, "results":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 947
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioFocus;->dispatchFocusGained(Landroid/media/AudioFocusInfo;)I

    move-result v1

    return v1

    .line 949
    :cond_0
    return v0
.end method

.method removeAudioFocusInfoAndTransientlyLoseFocus(Landroid/media/AudioFocusInfo;)V
    .locals 2
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 930
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioFocus;->removeFocusEntry(Landroid/media/AudioFocusInfo;)Lcom/android/car/audio/CarAudioFocus$FocusEntry;

    move-result-object v0

    .line 932
    .local v0, "deadEntry":Lcom/android/car/audio/CarAudioFocus$FocusEntry;
    if-eqz v0, :cond_0

    .line 933
    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/android/car/audio/CarAudioFocus;->sendFocusLoss(Lcom/android/car/audio/CarAudioFocus$FocusEntry;I)V

    .line 934
    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioFocus;->removeFocusEntryAndRestoreUnblockedWaiters(Lcom/android/car/audio/CarAudioFocus$FocusEntry;)V

    .line 936
    :cond_0
    return-void
.end method

.method public setOwningPolicy(Lcom/android/car/audio/CarAudioService;Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0
    .param p1, "audioService"    # Lcom/android/car/audio/CarAudioService;
    .param p2, "parentPolicy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 238
    iput-object p1, p0, Lcom/android/car/audio/CarAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    .line 239
    iput-object p2, p0, Lcom/android/car/audio/CarAudioFocus;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 240
    return-void
.end method
