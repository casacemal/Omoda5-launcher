.class public final synthetic Lcom/android/car/-$$Lambda$CarInputService$Z755B13oiPRdxXHhRzBfKCaWYRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarInputService$Z755B13oiPRdxXHhRzBfKCaWYRc;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarInputService$Z755B13oiPRdxXHhRzBfKCaWYRc;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/CarInputService;->lambda$new$2(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
