.class public interface abstract Lcom/android/car/systeminterface/SystemStateInterface;
.super Ljava/lang/Object;
.source "SystemStateInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/car/systeminterface/SystemStateInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/systeminterface/SystemStateInterface;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract enterDeepSleep()Z
.end method

.method public getRunningProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/procfsinspector/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/android/car/procfsinspector/ProcfsInspector;->readProcessTable()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSystemSupportingDeepSleep()Z
    .locals 1

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public isWakeupCausedByTimer()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public abstract scheduleActionForBootCompleted(Ljava/lang/Runnable;Ljava/time/Duration;)V
.end method

.method public setCarServiceHelper(Lcom/android/internal/car/ICarServiceHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/internal/car/ICarServiceHelper;

    .line 70
    return-void
.end method

.method public abstract shutdown()V
.end method
