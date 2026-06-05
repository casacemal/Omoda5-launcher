.class public final synthetic Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$gK9yZsKFOWBVEaJui2rxuZPhDyc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$gK9yZsKFOWBVEaJui2rxuZPhDyc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$gK9yZsKFOWBVEaJui2rxuZPhDyc;

    invoke-direct {v0}, Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$gK9yZsKFOWBVEaJui2rxuZPhDyc;-><init>()V

    sput-object v0, Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$gK9yZsKFOWBVEaJui2rxuZPhDyc;->INSTANCE:Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$gK9yZsKFOWBVEaJui2rxuZPhDyc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    check-cast p2, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    invoke-static {p1, p2}, Lcom/android/car/storagemonitoring/WearHistory;->lambda$add$0(Lcom/android/car/storagemonitoring/WearEstimateRecord;Lcom/android/car/storagemonitoring/WearEstimateRecord;)I

    move-result p1

    return p1
.end method
