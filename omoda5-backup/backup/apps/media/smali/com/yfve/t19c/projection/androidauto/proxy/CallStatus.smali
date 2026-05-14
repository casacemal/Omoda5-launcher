.class public Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;
.super Ljava/lang/Object;
.source "CallStatus.java"


# instance fields
.field public mCallData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/androidauto/proxy/Call;",
            ">;"
        }
    .end annotation
.end field

.field public num_calls:I

.field public signal_strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->mCallData:Ljava/util/List;

    return-void
.end method
