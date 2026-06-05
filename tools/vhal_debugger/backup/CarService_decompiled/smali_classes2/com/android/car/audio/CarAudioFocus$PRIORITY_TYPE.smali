.class final enum Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
.super Ljava/lang/Enum;
.source "CarAudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/audio/CarAudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PRIORITY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum ENGINEERING_MODE:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum ENHANCED_SIRI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum E_CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum INCOMING_PROMPT:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum MEDIA:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum NAVI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum POWER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum RINGTONE:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum SCREEN_SAVER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

.field public static final enum VR:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 77
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v1, 0x0

    const-string v2, "MEDIA"

    invoke-direct {v0, v2, v1}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->MEDIA:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 78
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v2, 0x1

    const-string v3, "NAVI"

    invoke-direct {v0, v3, v2}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->NAVI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 79
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v3, 0x2

    const-string v4, "VR"

    invoke-direct {v0, v4, v3}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->VR:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 80
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v4, 0x3

    const-string v5, "INCOMING_PROMPT"

    invoke-direct {v0, v5, v4}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->INCOMING_PROMPT:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 81
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v5, 0x4

    const-string v6, "ENHANCED_SIRI"

    invoke-direct {v0, v6, v5}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ENHANCED_SIRI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 82
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v6, 0x5

    const-string v7, "RINGTONE"

    invoke-direct {v0, v7, v6}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->RINGTONE:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 83
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v7, 0x6

    const-string v8, "CALL"

    invoke-direct {v0, v8, v7}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 84
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/4 v8, 0x7

    const-string v9, "SCREEN_SAVER"

    invoke-direct {v0, v9, v8}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->SCREEN_SAVER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 85
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/16 v9, 0x8

    const-string v10, "ENGINEERING_MODE"

    invoke-direct {v0, v10, v9}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ENGINEERING_MODE:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 86
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/16 v10, 0x9

    const-string v11, "E_CALL"

    invoke-direct {v0, v11, v10}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->E_CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 87
    new-instance v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    const/16 v11, 0xa

    const-string v12, "POWER"

    invoke-direct {v0, v12, v11}, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->POWER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    .line 76
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    sget-object v12, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->MEDIA:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v12, v0, v1

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->NAVI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->VR:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->INCOMING_PROMPT:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ENHANCED_SIRI:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->RINGTONE:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->SCREEN_SAVER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->ENGINEERING_MODE:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->E_CALL:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->POWER:Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->$VALUES:[Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->$VALUES:[Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    invoke-virtual {v0}, [Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/audio/CarAudioFocus$PRIORITY_TYPE;

    return-object v0
.end method
