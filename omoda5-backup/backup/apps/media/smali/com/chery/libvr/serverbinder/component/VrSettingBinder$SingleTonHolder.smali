.class Lcom/chery/libvr/serverbinder/component/VrSettingBinder$SingleTonHolder;
.super Ljava/lang/Object;
.source "VrSettingBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/serverbinder/component/VrSettingBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/chery/libvr/serverbinder/component/VrSettingBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/chery/libvr/serverbinder/component/VrSettingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chery/libvr/serverbinder/component/VrSettingBinder;-><init>(Lcom/chery/libvr/serverbinder/component/VrSettingBinder$1;)V

    sput-object v0, Lcom/chery/libvr/serverbinder/component/VrSettingBinder$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/component/VrSettingBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/chery/libvr/serverbinder/component/VrSettingBinder;
    .locals 1

    .line 41
    sget-object v0, Lcom/chery/libvr/serverbinder/component/VrSettingBinder$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/component/VrSettingBinder;

    return-object v0
.end method
