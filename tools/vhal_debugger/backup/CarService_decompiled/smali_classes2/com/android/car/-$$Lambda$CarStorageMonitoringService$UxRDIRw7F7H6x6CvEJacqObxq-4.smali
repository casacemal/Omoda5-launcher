.class public final synthetic Lcom/android/car/-$$Lambda$CarStorageMonitoringService$UxRDIRw7F7H6x6CvEJacqObxq-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$UxRDIRw7F7H6x6CvEJacqObxq-4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$UxRDIRw7F7H6x6CvEJacqObxq-4;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$UxRDIRw7F7H6x6CvEJacqObxq-4;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$UxRDIRw7F7H6x6CvEJacqObxq-4;->INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$UxRDIRw7F7H6x6CvEJacqObxq-4;

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

    check-cast p1, Lcom/android/car/storagemonitoring/WearInformation;

    invoke-static {p1}, Lcom/android/car/CarStorageMonitoringService;->lambda$getWearEstimate$9(Lcom/android/car/storagemonitoring/WearInformation;)Landroid/car/storagemonitoring/WearEstimate;

    move-result-object p1

    return-object p1
.end method
