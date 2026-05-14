.class public final synthetic Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$6ynqvb6TW8a-N8urXMTzbjfrmsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$6ynqvb6TW8a-N8urXMTzbjfrmsk;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    iput p2, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$6ynqvb6TW8a-N8urXMTzbjfrmsk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$6ynqvb6TW8a-N8urXMTzbjfrmsk;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    iget p0, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$6ynqvb6TW8a-N8urXMTzbjfrmsk;->f$1:I

    invoke-static {v0, p0}, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->lambda$onError$1(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;I)V

    return-void
.end method
