.class public Lcom/chery/common/PackageConstants$Launcher;
.super Ljava/lang/Object;
.source "PackageConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/common/PackageConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Launcher"
.end annotation


# static fields
.field public static final MAIN_ACTIVITY_NAME:Ljava/lang/String; = "com.chery.launcher.view.activity.MainActivity"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.chery.launcher"

.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.chery.launcher.model.service.LauncherService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
