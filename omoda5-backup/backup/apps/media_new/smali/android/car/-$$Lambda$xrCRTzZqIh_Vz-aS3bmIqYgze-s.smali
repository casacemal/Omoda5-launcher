.class public final synthetic Landroid/car/-$$Lambda$xrCRTzZqIh_Vz-aS3bmIqYgze-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$xrCRTzZqIh_Vz-aS3bmIqYgze-s;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroid/car/-$$Lambda$xrCRTzZqIh_Vz-aS3bmIqYgze-s;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    invoke-virtual {p0}, Landroid/car/CarBugreportManager$CarBugreportManagerCallback;->onFinished()V

    return-void
.end method
