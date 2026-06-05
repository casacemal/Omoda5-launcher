.class public final synthetic Lcom/android/car/storagemonitoring/-$$Lambda$M-BSctG_y9vsZKZt8FdeHK1Ka2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/storagemonitoring/WearHistory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/storagemonitoring/WearHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/storagemonitoring/-$$Lambda$M-BSctG_y9vsZKZt8FdeHK1Ka2k;->f$0:Lcom/android/car/storagemonitoring/WearHistory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/storagemonitoring/-$$Lambda$M-BSctG_y9vsZKZt8FdeHK1Ka2k;->f$0:Lcom/android/car/storagemonitoring/WearHistory;

    check-cast p1, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    invoke-virtual {v0, p1}, Lcom/android/car/storagemonitoring/WearHistory;->add(Lcom/android/car/storagemonitoring/WearEstimateRecord;)Z

    return-void
.end method
