.class public final synthetic Lcom/android/car/-$$Lambda$XJaTjjBdpEGkF6kNvjfmMa8z4jY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/ICarImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ICarImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$XJaTjjBdpEGkF6kNvjfmMa8z4jY;->f$0:Lcom/android/car/ICarImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$XJaTjjBdpEGkF6kNvjfmMa8z4jY;->f$0:Lcom/android/car/ICarImpl;

    invoke-virtual {v0}, Lcom/android/car/ICarImpl;->init()V

    return-void
.end method
