.class public Lcom/chery/common/PackageConstants$Settings;
.super Ljava/lang/Object;
.source "PackageConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/common/PackageConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field public static final LIGHT_COLOR_ACTIVITY_NAME:Ljava/lang/String; = "com.chery.settings.view.vehicle.activity.LightColorActivity"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.chery.settings"

.field public static final SPEED_ACTIVITY_NAME:Ljava/lang/String; = "com.chery.settings.view.vehicle.activity.OverSpeedActivity"

.field public static final SYSTEM_ACTIVITY_NAME:Ljava/lang/String; = "com.chery.settings.view.settings.activity.SettingsActivity"

.field public static final VEHICLE_ACTIVITY_NAME:Ljava/lang/String; = "com.chery.settings.view.vehicle.activity.VehicleActivity"

.field public static final WIFI_ACTION:Ljava/lang/String; = "com.chery.settings.model.service.SettingService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
