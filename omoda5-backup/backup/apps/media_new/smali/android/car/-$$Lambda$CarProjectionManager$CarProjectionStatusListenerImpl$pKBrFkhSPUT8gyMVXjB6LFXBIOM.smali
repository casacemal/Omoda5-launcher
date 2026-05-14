.class public final synthetic Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Landroid/car/CarProjectionManager;


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;ILjava/lang/String;Ljava/util/List;Landroid/car/CarProjectionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$0:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

    iput p2, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$1:I

    iput-object p3, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$3:Ljava/util/List;

    iput-object p5, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$4:Landroid/car/CarProjectionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$0:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

    iget v1, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$1:I

    iget-object v2, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$3:Ljava/util/List;

    iget-object p0, p0, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;->f$4:Landroid/car/CarProjectionManager;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->lambda$onProjectionStatusChanged$0$CarProjectionManager$CarProjectionStatusListenerImpl(ILjava/lang/String;Ljava/util/List;Landroid/car/CarProjectionManager;)V

    return-void
.end method
