.class public final synthetic Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$CHnHz6w92bXafaLHQzv5cqhNmbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$CHnHz6w92bXafaLHQzv5cqhNmbM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$CHnHz6w92bXafaLHQzv5cqhNmbM;

    invoke-direct {v0}, Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$CHnHz6w92bXafaLHQzv5cqhNmbM;-><init>()V

    sput-object v0, Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$CHnHz6w92bXafaLHQzv5cqhNmbM;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$CHnHz6w92bXafaLHQzv5cqhNmbM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->lambda$parseVolumeGroup$1(I)Z

    move-result p1

    return p1
.end method
