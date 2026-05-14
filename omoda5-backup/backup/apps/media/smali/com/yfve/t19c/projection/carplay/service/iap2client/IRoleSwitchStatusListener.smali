.class public interface abstract Lcom/yfve/t19c/projection/carplay/service/iap2client/IRoleSwitchStatusListener;
.super Ljava/lang/Object;
.source "IRoleSwitchStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IRoleSwitchStatusListener$Stub;,
        Lcom/yfve/t19c/projection/carplay/service/iap2client/IRoleSwitchStatusListener$Default;
    }
.end annotation


# static fields
.field public static final ROLE_SWITCH_FAILURE:I = 0x1

.field public static final ROLE_SWITCH_SUCCESS:I


# virtual methods
.method public abstract onRoleSwitchStatusChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
