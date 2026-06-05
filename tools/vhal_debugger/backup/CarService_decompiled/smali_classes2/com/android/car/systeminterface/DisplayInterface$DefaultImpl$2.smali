.class Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$2;
.super Ljava/lang/Object;
.source "DisplayInterface.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
.method constructor <init>(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    .line 99
    iput-object p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$2;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 103
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 112
    if-nez p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$2;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-static {v0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->access$000(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 108
    return-void
.end method
