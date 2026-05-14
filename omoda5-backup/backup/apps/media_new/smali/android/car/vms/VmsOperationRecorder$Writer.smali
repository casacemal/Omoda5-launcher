.class public Landroid/car/vms/VmsOperationRecorder$Writer;
.super Ljava/lang/Object;
.source "VmsOperationRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/vms/VmsOperationRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Writer"
.end annotation


# static fields
.field private static final LEVEL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VMS.RECORD.EVENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    const-string p0, "VMS.RECORD.EVENT"

    const/4 v0, 0x3

    .line 222
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x3

    const-string v0, "VMS.RECORD.EVENT"

    .line 226
    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
