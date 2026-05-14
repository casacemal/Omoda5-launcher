.class Landroid/car/CarProjectionManager$KeyEventHandlerRecord;
.super Ljava/lang/Object;
.source "CarProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventHandlerRecord"
.end annotation


# instance fields
.field mExecutor:Ljava/util/concurrent/Executor;

.field mSubscribedEvents:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/BitSet;)V
    .locals 0

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p1, p0, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 818
    iput-object p2, p0, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;->mSubscribedEvents:Ljava/util/BitSet;

    return-void
.end method
