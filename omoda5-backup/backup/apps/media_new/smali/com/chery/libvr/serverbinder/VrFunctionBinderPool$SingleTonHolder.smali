.class Lcom/chery/libvr/serverbinder/VrFunctionBinderPool$SingleTonHolder;
.super Ljava/lang/Object;
.source "VrFunctionBinderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;-><init>(Lcom/chery/libvr/serverbinder/VrFunctionBinderPool$1;)V

    sput-object v0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;
    .locals 1

    .line 30
    sget-object v0, Lcom/chery/libvr/serverbinder/VrFunctionBinderPool$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/VrFunctionBinderPool;

    return-object v0
.end method
