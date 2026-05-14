.class final Landroidx/viewpager/widget/DumpViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "DumpViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/DumpViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/viewpager/widget/DumpViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/viewpager/widget/DumpViewPager$SavedState;
    .locals 1

    .line 1432
    new-instance p0, Landroidx/viewpager/widget/DumpViewPager$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/DumpViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager/widget/DumpViewPager$SavedState;
    .locals 0

    .line 1427
    new-instance p0, Landroidx/viewpager/widget/DumpViewPager$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/DumpViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1424
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/viewpager/widget/DumpViewPager$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1424
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/DumpViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager/widget/DumpViewPager$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/viewpager/widget/DumpViewPager$SavedState;
    .locals 0

    .line 1436
    new-array p0, p1, [Landroidx/viewpager/widget/DumpViewPager$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1424
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager$SavedState$1;->newArray(I)[Landroidx/viewpager/widget/DumpViewPager$SavedState;

    move-result-object p0

    return-object p0
.end method
