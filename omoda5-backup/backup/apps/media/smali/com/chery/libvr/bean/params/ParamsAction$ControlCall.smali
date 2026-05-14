.class public Lcom/chery/libvr/bean/params/ParamsAction$ControlCall;
.super Ljava/lang/Object;
.source "ParamsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/params/ParamsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlCall"
.end annotation


# static fields
.field public static final CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final HANGUP:Ljava/lang/String; = "HANGUP"

.field public static final PICKUP:Ljava/lang/String; = "PICKUP"

.field public static final REDIAL:Ljava/lang/String; = "REDIAL"

.field public static final REFUSE:Ljava/lang/String; = "REFUSE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
