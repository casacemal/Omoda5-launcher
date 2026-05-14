.class public Lcom/chery/libvr/bean/params/ParamsType$CallRecordType;
.super Ljava/lang/Object;
.source "ParamsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/params/ParamsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallRecordType"
.end annotation


# static fields
.field public static final INCOMING_CALL:Ljava/lang/String; = "INCOMING_CALL"

.field public static final MISSED_CALL:Ljava/lang/String; = "MISSED_CALL"

.field public static final OTHER:Ljava/lang/String; = "OTHER"

.field public static final OUT_CALL:Ljava/lang/String; = "OUT_CALL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
