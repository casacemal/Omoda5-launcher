.class public final synthetic Lcom/android/car/storagemonitoring/-$$Lambda$LstD_2z5GcY5aUyJTlDFH9mLppY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/storagemonitoring/-$$Lambda$LstD_2z5GcY5aUyJTlDFH9mLppY;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/storagemonitoring/-$$Lambda$LstD_2z5GcY5aUyJTlDFH9mLppY;->f$0:Ljava/util/List;

    check-cast p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
