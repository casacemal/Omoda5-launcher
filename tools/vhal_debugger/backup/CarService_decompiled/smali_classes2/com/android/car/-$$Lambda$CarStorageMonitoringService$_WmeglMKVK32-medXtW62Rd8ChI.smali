.class public final synthetic Lcom/android/car/-$$Lambda$CarStorageMonitoringService$_WmeglMKVK32-medXtW62Rd8ChI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarStorageMonitoringService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarStorageMonitoringService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$_WmeglMKVK32-medXtW62Rd8ChI;->f$0:Lcom/android/car/CarStorageMonitoringService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$_WmeglMKVK32-medXtW62Rd8ChI;->f$0:Lcom/android/car/CarStorageMonitoringService;

    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/CarStorageMonitoringService;->lambda$doInitServiceIfNeeded$3$CarStorageMonitoringService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
