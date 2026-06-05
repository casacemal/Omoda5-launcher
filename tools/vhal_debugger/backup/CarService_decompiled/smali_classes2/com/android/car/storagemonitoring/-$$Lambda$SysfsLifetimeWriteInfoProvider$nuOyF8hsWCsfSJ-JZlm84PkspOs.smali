.class public final synthetic Lcom/android/car/storagemonitoring/-$$Lambda$SysfsLifetimeWriteInfoProvider$nuOyF8hsWCsfSJ-JZlm84PkspOs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/storagemonitoring/-$$Lambda$SysfsLifetimeWriteInfoProvider$nuOyF8hsWCsfSJ-JZlm84PkspOs;->f$0:Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/car/storagemonitoring/-$$Lambda$SysfsLifetimeWriteInfoProvider$nuOyF8hsWCsfSJ-JZlm84PkspOs;->f$0:Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->lambda$nuOyF8hsWCsfSJ-JZlm84PkspOs(Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;Ljava/io/File;)Landroid/car/storagemonitoring/LifetimeWriteInfo;

    move-result-object p1

    return-object p1
.end method
