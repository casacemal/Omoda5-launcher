.class public interface abstract Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;
.super Ljava/lang/Object;
.source "DiagnosticHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/DiagnosticHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DiagnosticListener"
.end annotation


# virtual methods
.method public abstract onDiagnosticEvents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;)V"
        }
    .end annotation
.end method
