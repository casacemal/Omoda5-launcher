.class Landroidx/viewpager/widget/DumpViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "DumpViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/DumpViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/DumpViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/DumpViewPager;)V
    .locals 0

    .line 3104
    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/DumpViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 3109
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/DumpViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 3113
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/DumpViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->dataSetChanged()V

    return-void
.end method
