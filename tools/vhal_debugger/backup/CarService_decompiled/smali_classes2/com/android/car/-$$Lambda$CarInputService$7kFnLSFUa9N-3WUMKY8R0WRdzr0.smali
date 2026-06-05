.class public final synthetic Lcom/android/car/-$$Lambda$CarInputService$7kFnLSFUa9N-3WUMKY8R0WRdzr0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/CarInputService$KeyEventListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarInputService$7kFnLSFUa9N-3WUMKY8R0WRdzr0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarInputService$7kFnLSFUa9N-3WUMKY8R0WRdzr0;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/car/CarInputService;->lambda$new$0(Landroid/content/Context;Landroid/view/KeyEvent;)V

    return-void
.end method
