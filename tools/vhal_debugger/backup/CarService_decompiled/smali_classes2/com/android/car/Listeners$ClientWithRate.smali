.class public Lcom/android/car/Listeners$ClientWithRate;
.super Ljava/lang/Object;
.source "Listeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientWithRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ClientType::",
        "Lcom/android/car/Listeners$IListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mClient:Lcom/android/car/Listeners$IListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TClientType;"
        }
    .end annotation
.end field

.field private mRate:I


# direct methods
.method constructor <init>(Lcom/android/car/Listeners$IListener;I)V
    .locals 0
    .param p2, "rate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClientType;I)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    .local p1, "client":Lcom/android/car/Listeners$IListener;, "TClientType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/car/Listeners$ClientWithRate;->mClient:Lcom/android/car/Listeners$IListener;

    .line 40
    iput p2, p0, Lcom/android/car/Listeners$ClientWithRate;->mRate:I

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    .local p0, "this":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    instance-of v0, p1, Lcom/android/car/Listeners$ClientWithRate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/Listeners$ClientWithRate;->mClient:Lcom/android/car/Listeners$IListener;

    move-object v1, p1

    check-cast v1, Lcom/android/car/Listeners$ClientWithRate;

    iget-object v1, v1, Lcom/android/car/Listeners$ClientWithRate;->mClient:Lcom/android/car/Listeners$IListener;

    if-ne v0, v1, :cond_0

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getClient()Lcom/android/car/Listeners$IListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TClientType;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    iget-object v0, p0, Lcom/android/car/Listeners$ClientWithRate;->mClient:Lcom/android/car/Listeners$IListener;

    return-object v0
.end method

.method getRate()I
    .locals 1

    .line 59
    .local p0, "this":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    iget v0, p0, Lcom/android/car/Listeners$ClientWithRate;->mRate:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    .local p0, "this":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    iget-object v0, p0, Lcom/android/car/Listeners$ClientWithRate;->mClient:Lcom/android/car/Listeners$IListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method setRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .line 63
    .local p0, "this":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    iput p1, p0, Lcom/android/car/Listeners$ClientWithRate;->mRate:I

    .line 64
    return-void
.end method
