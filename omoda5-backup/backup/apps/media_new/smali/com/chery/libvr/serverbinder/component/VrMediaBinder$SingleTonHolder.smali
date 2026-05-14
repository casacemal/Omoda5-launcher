.class Lcom/chery/libvr/serverbinder/component/VrMediaBinder$SingleTonHolder;
.super Ljava/lang/Object;
.source "VrMediaBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/serverbinder/component/VrMediaBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/chery/libvr/serverbinder/component/VrMediaBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/chery/libvr/serverbinder/component/VrMediaBinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chery/libvr/serverbinder/component/VrMediaBinder;-><init>(Lcom/chery/libvr/serverbinder/component/VrMediaBinder$1;)V

    sput-object v0, Lcom/chery/libvr/serverbinder/component/VrMediaBinder$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/component/VrMediaBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/chery/libvr/serverbinder/component/VrMediaBinder;
    .locals 1

    .line 25
    sget-object v0, Lcom/chery/libvr/serverbinder/component/VrMediaBinder$SingleTonHolder;->INSTANCE:Lcom/chery/libvr/serverbinder/component/VrMediaBinder;

    return-object v0
.end method
