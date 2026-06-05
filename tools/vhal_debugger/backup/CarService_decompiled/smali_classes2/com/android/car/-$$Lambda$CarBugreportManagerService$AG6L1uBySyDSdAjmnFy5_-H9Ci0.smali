.class public final synthetic Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarBugreportManagerService;

.field private final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field private final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field private final synthetic f$3:Landroid/car/ICarBugreportCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarBugreportManagerService;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;->f$0:Lcom/android/car/CarBugreportManagerService;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;->f$1:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;->f$3:Landroid/car/ICarBugreportCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;->f$0:Lcom/android/car/CarBugreportManagerService;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;->f$1:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;->f$3:Landroid/car/ICarBugreportCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/CarBugreportManagerService;->lambda$requestBugReportLocked$0$CarBugreportManagerService(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V

    return-void
.end method
