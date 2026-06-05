.class public final synthetic Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$e12NXTRgwaUatljwAqWyoQQczms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$e12NXTRgwaUatljwAqWyoQQczms;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$e12NXTRgwaUatljwAqWyoQQczms;->f$0:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/car/pm/ActivityBlockingActivity;->lambda$displayDebugInfo$1(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
