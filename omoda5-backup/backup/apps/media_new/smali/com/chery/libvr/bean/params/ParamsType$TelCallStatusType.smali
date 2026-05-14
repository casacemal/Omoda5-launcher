.class public Lcom/chery/libvr/bean/params/ParamsType$TelCallStatusType;
.super Ljava/lang/Object;
.source "ParamsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/params/ParamsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelCallStatusType"
.end annotation


# static fields
.field public static final CALLING:Ljava/lang/String; = "CALLING"

.field public static final ENDCALL:Ljava/lang/String; = "ENDCALL"

.field public static final INCOMING:Ljava/lang/String; = "INCOMING"

.field public static final OUTGOING:Ljava/lang/String; = "OUTGOING"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
