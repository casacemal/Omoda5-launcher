.class public final Lcom/chery/libvr/bean/SysEventConstants$EventType;
.super Ljava/lang/Object;
.source "SysEventConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/SysEventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventType"
.end annotation


# static fields
.field public static final DISMISS_VR:I = 0x3

.field public static final SHOW_VR:I = 0x2

.field public static final WAKEUP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
