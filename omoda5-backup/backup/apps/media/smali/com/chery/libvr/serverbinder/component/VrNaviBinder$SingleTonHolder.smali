.class Lcom/chery/libvr/serverbinder/component/VrNaviBinder$SingleTonHolder;
.super Ljava/lang/Object;
.source "VrNaviBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/serverbinder/component/VrNaviBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/chery/libvr/serverbinder/component/VrNaviBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/chery/libvr/serverbinder/component/VrNaviBinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chery/libvr/serverbinder/component/VrNaviBinder;-><init>(Lcom/chery/libvr/serverbinder/component/VrNaviBinder$1;)V

    sput-object v0, Lcom/chery/libvr/serverbinder/component/VrNaviBinder$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/component/VrNaviBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/chery/libvr/serverbinder/component/VrNaviBinder;
    .locals 1

    .line 31
    sget-object v0, Lcom/chery/libvr/serverbinder/component/VrNaviBinder$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/component/VrNaviBinder;

    return-object v0
.end method
