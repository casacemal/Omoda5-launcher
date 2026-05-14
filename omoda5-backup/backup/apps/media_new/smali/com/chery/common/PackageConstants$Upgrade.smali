.class public Lcom/chery/common/PackageConstants$Upgrade;
.super Ljava/lang/Object;
.source "PackageConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/common/PackageConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Upgrade"
.end annotation


# static fields
.field public static final MAIN_ACTIVITY_NAME:Ljava/lang/String; = "com.chery.upgrade.view.MainActivity"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.chery.upgrade"

.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.chery.update.model.service.UsbUpdateService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
