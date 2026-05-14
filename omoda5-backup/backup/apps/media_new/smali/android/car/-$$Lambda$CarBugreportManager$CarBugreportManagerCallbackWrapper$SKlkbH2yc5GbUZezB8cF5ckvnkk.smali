.class public final synthetic Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$SKlkbH2yc5GbUZezB8cF5ckvnkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$SKlkbH2yc5GbUZezB8cF5ckvnkk;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    iput p2, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$SKlkbH2yc5GbUZezB8cF5ckvnkk;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$SKlkbH2yc5GbUZezB8cF5ckvnkk;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    iget p0, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$SKlkbH2yc5GbUZezB8cF5ckvnkk;->f$1:F

    invoke-static {v0, p0}, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->lambda$onProgress$0(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;F)V

    return-void
.end method
