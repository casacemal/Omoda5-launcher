.class public interface abstract Lcom/android/car/storagemonitoring/WearInformationProvider;
.super Ljava/lang/Object;
.source "WearInformationProvider.java"


# virtual methods
.method public adjustEol(I)I
    .locals 1
    .param p1, "eol"    # I

    .line 30
    if-lez p1, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    return p1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public convertLifetime(I)I
    .locals 1
    .param p1, "lifetime"    # I

    .line 25
    if-lez p1, :cond_1

    const/16 v0, 0xb

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0xa

    return v0

    .line 25
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract load()Lcom/android/car/storagemonitoring/WearInformation;
.end method
