.class public final synthetic Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$a_qUQniZEZrnCYadb8JWi46Doe8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$a_qUQniZEZrnCYadb8JWi46Doe8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$a_qUQniZEZrnCYadb8JWi46Doe8;

    invoke-direct {v0}, Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$a_qUQniZEZrnCYadb8JWi46Doe8;-><init>()V

    sput-object v0, Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$a_qUQniZEZrnCYadb8JWi46Doe8;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$a_qUQniZEZrnCYadb8JWi46Doe8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->lambda$parseVolumeGroup$0(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
