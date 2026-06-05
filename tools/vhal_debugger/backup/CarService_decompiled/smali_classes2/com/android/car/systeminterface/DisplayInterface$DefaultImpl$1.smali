.class Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;
.super Landroid/database/ContentObserver;
.source "DisplayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;


# direct methods
.method constructor <init>(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 95
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->refreshDisplayBrightness()V

    .line 96
    return-void
.end method
