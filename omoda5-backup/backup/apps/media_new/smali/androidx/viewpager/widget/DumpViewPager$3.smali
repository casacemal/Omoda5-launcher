.class Landroidx/viewpager/widget/DumpViewPager$3;
.super Ljava/lang/Object;
.source "DumpViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/DumpViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/DumpViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/DumpViewPager;)V
    .locals 0

    .line 269
    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager$3;->this$0:Landroidx/viewpager/widget/DumpViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 272
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager$3;->this$0:Landroidx/viewpager/widget/DumpViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollState(I)V

    .line 273
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager$3;->this$0:Landroidx/viewpager/widget/DumpViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->populate()V

    return-void
.end method
