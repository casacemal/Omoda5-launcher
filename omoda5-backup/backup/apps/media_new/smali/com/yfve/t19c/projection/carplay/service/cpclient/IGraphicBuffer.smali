.class public Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;
.super Ljava/lang/Object;
.source "IGraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/IGraphicBuffer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
