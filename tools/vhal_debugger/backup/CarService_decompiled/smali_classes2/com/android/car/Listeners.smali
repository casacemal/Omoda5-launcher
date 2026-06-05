.class public Lcom/android/car/Listeners;
.super Ljava/lang/Object;
.source "Listeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/Listeners$ClientWithRate;,
        Lcom/android/car/Listeners$IListener;
    }
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
.field private final mClients:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/Listeners$ClientWithRate<",
            "TClientType;>;>;"
        }
    .end annotation
.end field

.field private mRate:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "rate"    # I

    .line 75
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    .line 76
    iput p1, p0, Lcom/android/car/Listeners;->mRate:I

    .line 77
    return-void
.end method


# virtual methods
.method addClientWithRate(Lcom/android/car/Listeners$ClientWithRate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/Listeners$ClientWithRate<",
            "TClientType;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    .local p1, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    iget-object v0, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method findClientWithRate(Lcom/android/car/Listeners$IListener;)Lcom/android/car/Listeners$ClientWithRate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClientType;)",
            "Lcom/android/car/Listeners$ClientWithRate<",
            "TClientType;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    .local p1, "client":Lcom/android/car/Listeners$IListener;, "TClientType;"
    iget-object v0, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/Listeners$ClientWithRate;

    .line 122
    .local v1, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    invoke-virtual {v1}, Lcom/android/car/Listeners$ClientWithRate;->getClient()Lcom/android/car/Listeners$IListener;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 123
    return-object v1

    .line 125
    .end local v1    # "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getClients()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/car/Listeners$ClientWithRate<",
            "TClientType;>;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    iget-object v0, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    return-object v0
.end method

.method getNumberOfClients()I
    .locals 1

    .line 113
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    iget-object v0, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method getRate()I
    .locals 1

    .line 80
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    iget v0, p0, Lcom/android/car/Listeners;->mRate:I

    return v0
.end method

.method release()V
    .locals 3

    .line 130
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    iget-object v0, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/Listeners$ClientWithRate;

    .line 131
    .local v1, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    invoke-virtual {v1}, Lcom/android/car/Listeners$ClientWithRate;->getClient()Lcom/android/car/Listeners$IListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/car/Listeners$IListener;->release()V

    .line 132
    .end local v1    # "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 134
    return-void
.end method

.method removeClientWithRate(Lcom/android/car/Listeners$ClientWithRate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/Listeners$ClientWithRate<",
            "TClientType;>;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    .local p1, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    iget-object v0, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method setRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .line 84
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    iput p1, p0, Lcom/android/car/Listeners;->mRate:I

    .line 85
    return-void
.end method

.method updateRate()Z
    .locals 4

    .line 90
    .local p0, "this":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<TClientType;>;"
    const/4 v0, 0x1

    .line 91
    .local v0, "fastestRate":I
    iget-object v1, p0, Lcom/android/car/Listeners;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/Listeners$ClientWithRate;

    .line 92
    .local v2, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    invoke-virtual {v2}, Lcom/android/car/Listeners$ClientWithRate;->getRate()I

    move-result v3

    .line 93
    .local v3, "clientRate":I
    if-ge v3, v0, :cond_0

    .line 94
    move v0, v3

    .line 96
    .end local v2    # "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<TClientType;>;"
    .end local v3    # "clientRate":I
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    iget v1, p0, Lcom/android/car/Listeners;->mRate:I

    if-eq v1, v0, :cond_2

    .line 98
    iput v0, p0, Lcom/android/car/Listeners;->mRate:I

    .line 99
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
