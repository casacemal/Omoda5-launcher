.class public final Lcom/chery/common/PageConstants$VehicleSettings;
.super Ljava/lang/Object;
.source "PageConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/common/PageConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VehicleSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/common/PageConstants$VehicleSettings$PageId;
    }
.end annotation


# static fields
.field public static final ACTION_OPEN:Ljava/lang/String; = "com.chery.vehiclesetting.ACTION_OPEN_VEHICLE_SETTING"

.field public static final MUSIC_LIGHT_DISABLE:I = 0x0

.field public static final MUSIC_LIGHT_ENABLE:I = 0x1

.field public static final PAGE_ID_KEY:Ljava/lang/String; = "CarSettingMenuID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
