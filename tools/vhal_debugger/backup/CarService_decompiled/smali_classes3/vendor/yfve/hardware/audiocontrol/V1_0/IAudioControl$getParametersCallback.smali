.class public interface abstract Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$getParametersCallback;
.super Ljava/lang/Object;
.source "IAudioControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "getParametersCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;",
            ">;)V"
        }
    .end annotation
.end method
