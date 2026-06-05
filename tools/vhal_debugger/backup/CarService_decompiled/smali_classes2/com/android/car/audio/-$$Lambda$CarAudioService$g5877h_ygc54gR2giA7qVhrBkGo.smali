.class public final synthetic Lcom/android/car/audio/-$$Lambda$CarAudioService$g5877h_ygc54gR2giA7qVhrBkGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:B


# direct methods
.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/car/audio/-$$Lambda$CarAudioService$g5877h_ygc54gR2giA7qVhrBkGo;->f$0:B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-byte v0, p0, Lcom/android/car/audio/-$$Lambda$CarAudioService$g5877h_ygc54gR2giA7qVhrBkGo;->f$0:B

    check-cast p1, Landroid/view/DisplayAddress$Physical;

    invoke-static {v0, p1}, Lcom/android/car/audio/CarAudioService;->lambda$getZoneIdForDisplayPortId$1(BLandroid/view/DisplayAddress$Physical;)Z

    move-result p1

    return p1
.end method
