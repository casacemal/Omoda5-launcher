.class Lcom/android/car/hal/HalClient$ObjectWrapper;
.super Ljava/lang/Object;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    .local p0, "this":Lcom/android/car/hal/HalClient$ObjectWrapper;, "Lcom/android/car/hal/HalClient$ObjectWrapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/hal/HalClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/hal/HalClient$1;

    .line 172
    .local p0, "this":Lcom/android/car/hal/HalClient$ObjectWrapper;, "Lcom/android/car/hal/HalClient$ObjectWrapper<TT;>;"
    invoke-direct {p0}, Lcom/android/car/hal/HalClient$ObjectWrapper;-><init>()V

    return-void
.end method
