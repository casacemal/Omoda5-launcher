.class public Lcom/chery/common/PackageConstants$SYSUI;
.super Ljava/lang/Object;
.source "PackageConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/common/PackageConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYSUI"
.end annotation


# static fields
.field public static final ACTION_BACKLIGHT_STATE_CHANGED:Ljava/lang/String; = "com.android.systemui.power.backlight"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.android.systemui.bluetooth.BluetoothPolicyService"

.field public static final SERVICE_NAME_KEYGUARD:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final SERVICE_NAME_KEYGUARD_VIEWER:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardViewerService"

.field public static final SERVICE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui.SystemUIService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
