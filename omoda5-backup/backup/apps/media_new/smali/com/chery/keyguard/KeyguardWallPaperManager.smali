.class public Lcom/chery/keyguard/KeyguardWallPaperManager;
.super Ljava/lang/Object;
.source "KeyguardWallPaperManager.java"


# static fields
.field public static final STANDBY_PIC_1:I = 0x1

.field public static final STANDBY_PIC_2:I = 0x2

.field public static final STANDBY_PIC_3:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final URL_KEYGUARD_WALLPAPER:Ljava/lang/String; = "com.android.systemui.keyguard.wallpaper"

.field public static final WALLPAPER_DEFAULT:I = 0x3


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-class v0, Lcom/chery/keyguard/KeyguardWallPaperManager;

    const-string v1, "DEF"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/keyguard/KeyguardWallPaperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/chery/keyguard/KeyguardWallPaperManager;->mCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getWallpaper()I
    .locals 3

    .line 49
    iget-object p0, p0, Lcom/chery/keyguard/KeyguardWallPaperManager;->mCtx:Landroid/content/Context;

    const/4 v0, 0x3

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "com.android.systemui.keyguard.wallpaper"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 53
    :cond_0
    sget-object p0, Lcom/chery/keyguard/KeyguardWallPaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWallpaper: value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setWallpaper(I)V
    .locals 3

    .line 63
    sget-object v0, Lcom/chery/keyguard/KeyguardWallPaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/chery/keyguard/KeyguardWallPaperManager;->mCtx:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.systemui.keyguard.wallpaper"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
