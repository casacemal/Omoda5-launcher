.class Lcom/android/car/garagemode/GarageMode$1;
.super Ljava/lang/Object;
.source "GarageMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/garagemode/GarageMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/garagemode/GarageMode;


# direct methods
.method constructor <init>(Lcom/android/car/garagemode/GarageMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/garagemode/GarageMode;

    .line 68
    iput-object p1, p0, Lcom/android/car/garagemode/GarageMode$1;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode$1;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v0}, Lcom/android/car/garagemode/GarageMode;->access$000(Lcom/android/car/garagemode/GarageMode;)I

    move-result v0

    .line 72
    .local v0, "numberRunning":I
    if-lez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/android/car/garagemode/GarageMode;->access$100()Lcom/android/car/garagemode/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs are still running. Need to wait more ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/car/garagemode/GarageMode$1;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v1}, Lcom/android/car/garagemode/GarageMode;->access$300(Lcom/android/car/garagemode/GarageMode;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/garagemode/GarageMode$1;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-static {v2}, Lcom/android/car/garagemode/GarageMode;->access$200(Lcom/android/car/garagemode/GarageMode;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/android/car/garagemode/GarageMode;->access$100()Lcom/android/car/garagemode/Logger;

    move-result-object v1

    const-string v2, "No jobs are currently running."

    invoke-virtual {v1, v2}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/car/garagemode/GarageMode$1;->this$0:Lcom/android/car/garagemode/GarageMode;

    invoke-virtual {v1}, Lcom/android/car/garagemode/GarageMode;->finish()V

    .line 79
    :goto_0
    return-void
.end method
