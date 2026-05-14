.class Lcom/chery/libvr/serverbinder/component/VrRadioBinder$SingleTonHolder;
.super Ljava/lang/Object;
.source "VrRadioBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/serverbinder/component/VrRadioBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/chery/libvr/serverbinder/component/VrRadioBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/chery/libvr/serverbinder/component/VrRadioBinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chery/libvr/serverbinder/component/VrRadioBinder;-><init>(Lcom/chery/libvr/serverbinder/component/VrRadioBinder$1;)V

    sput-object v0, Lcom/chery/libvr/serverbinder/component/VrRadioBinder$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/component/VrRadioBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/chery/libvr/serverbinder/component/VrRadioBinder;
    .locals 1

    .line 25
    sget-object v0, Lcom/chery/libvr/serverbinder/component/VrRadioBinder$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/component/VrRadioBinder;

    return-object v0
.end method
