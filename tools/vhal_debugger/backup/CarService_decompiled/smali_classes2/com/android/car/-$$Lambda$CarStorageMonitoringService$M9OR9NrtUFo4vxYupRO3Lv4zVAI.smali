.class public final synthetic Lcom/android/car/-$$Lambda$CarStorageMonitoringService$M9OR9NrtUFo4vxYupRO3Lv4zVAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$M9OR9NrtUFo4vxYupRO3Lv4zVAI;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$M9OR9NrtUFo4vxYupRO3Lv4zVAI;->f$0:Ljava/util/Map;

    check-cast p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;

    invoke-static {v0, p1}, Lcom/android/car/CarStorageMonitoringService;->lambda$computeShutdownCost$6(Ljava/util/Map;Landroid/car/storagemonitoring/LifetimeWriteInfo;)V

    return-void
.end method
