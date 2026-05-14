.class public abstract Landroid/car/cluster/renderer/NavigationRenderer;
.super Ljava/lang/Object;
.source "NavigationRenderer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getNavigationProperties()Landroid/car/navigation/CarNavigationInstrumentCluster;
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onNavigationStateChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
