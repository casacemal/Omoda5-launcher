.class public final Lcom/android/car/procfsinspector/ProcfsInspector;
.super Ljava/lang/Object;
.source "ProcfsInspector.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "com.android.car.procfsinspector"

.field private static final TAG:Ljava/lang/String; = "car.procfsinspector"


# instance fields
.field private final mService:Lcom/android/car/procfsinspector/IProcfsInspector;


# direct methods
.method private constructor <init>(Lcom/android/car/procfsinspector/IProcfsInspector;)V
    .locals 0
    .param p1, "service"    # Lcom/android/car/procfsinspector/IProcfsInspector;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/car/procfsinspector/ProcfsInspector;->mService:Lcom/android/car/procfsinspector/IProcfsInspector;

    .line 34
    return-void
.end method

.method public static readProcessTable()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/procfsinspector/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/android/car/procfsinspector/ProcfsInspector;->tryGet()Lcom/android/car/procfsinspector/IProcfsInspector;

    move-result-object v0

    .line 44
    .local v0, "procfsInspector":Lcom/android/car/procfsinspector/IProcfsInspector;
    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/procfsinspector/IProcfsInspector;->readProcessTable()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "car.procfsinspector"

    const-string v3, "caught RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static tryGet()Lcom/android/car/procfsinspector/IProcfsInspector;
    .locals 1

    .line 38
    nop

    .line 39
    const-string v0, "com.android.car.procfsinspector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/android/car/procfsinspector/IProcfsInspector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/car/procfsinspector/IProcfsInspector;

    move-result-object v0

    return-object v0
.end method
