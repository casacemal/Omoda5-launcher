.class public final synthetic Lcom/android/car/-$$Lambda$CarStorageMonitoringService$qW99OHY0SHOxhCevR7AsJS-Qwkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$qW99OHY0SHOxhCevR7AsJS-Qwkc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$qW99OHY0SHOxhCevR7AsJS-Qwkc;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$qW99OHY0SHOxhCevR7AsJS-Qwkc;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$qW99OHY0SHOxhCevR7AsJS-Qwkc;->INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$qW99OHY0SHOxhCevR7AsJS-Qwkc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/car/storagemonitoring/WearInformation;

    invoke-static {p1}, Lcom/android/car/CarStorageMonitoringService;->lambda$qW99OHY0SHOxhCevR7AsJS-Qwkc(Lcom/android/car/storagemonitoring/WearInformation;)V

    return-void
.end method
