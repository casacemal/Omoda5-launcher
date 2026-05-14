.class public Lcom/chery/common/PackageConstants$ICM;
.super Ljava/lang/Object;
.source "PackageConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/common/PackageConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICM"
.end annotation


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.chery.icm"

.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.chery.icm.services.IcmLowService"

.field public static final SERVICE_CALL_ACTION:Ljava/lang/String; = "com.chery.icm.services.InCallServiceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
