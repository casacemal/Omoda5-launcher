.class public final synthetic Lcom/android/car/-$$Lambda$CarStorageMonitoringService$XApa_sEjtVV12nykJloiARde6M4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$XApa_sEjtVV12nykJloiARde6M4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$XApa_sEjtVV12nykJloiARde6M4;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$XApa_sEjtVV12nykJloiARde6M4;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$XApa_sEjtVV12nykJloiARde6M4;->INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$XApa_sEjtVV12nykJloiARde6M4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/car/storagemonitoring/IoStats;

    invoke-static {p1}, Lcom/android/car/CarStorageMonitoringService;->lambda$dump$7(Landroid/car/storagemonitoring/IoStats;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
