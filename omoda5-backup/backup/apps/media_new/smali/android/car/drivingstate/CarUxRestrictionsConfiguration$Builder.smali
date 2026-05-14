.class public final Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    }
.end annotation


# static fields
.field private static final UX_RESTRICTIONS_UNKNOWN:I = -0x1


# instance fields
.field public mBaselineUxRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxContentDepth:I

.field private mMaxCumulativeContentItems:I

.field private mMaxStringLength:I

.field public mPassengerUxRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhysicalPort:Ljava/lang/Byte;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 625
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxContentDepth:I

    .line 626
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxCumulativeContentItems:I

    .line 627
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxStringLength:I

    .line 629
    new-instance v0, Landroid/util/ArrayMap;

    .line 630
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$700()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 631
    new-instance v0, Landroid/util/ArrayMap;

    .line 632
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$700()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mBaselineUxRestrictions:Ljava/util/Map;

    .line 635
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$700()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 636
    iget-object v4, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mBaselineUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v4, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPassengerUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)Ljava/lang/Byte;
    .locals 0

    .line 601
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPhysicalPort:Ljava/lang/Byte;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I
    .locals 0

    .line 601
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxContentDepth:I

    return p0
.end method

.method static synthetic access$200(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I
    .locals 0

    .line 601
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxCumulativeContentItems:I

    return p0
.end method

.method static synthetic access$300(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I
    .locals 0

    .line 601
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxStringLength:I

    return p0
.end method

.method private addDefaultRestrictionsToBaseline()V
    .locals 7

    .line 766
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$700()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 767
    iget-object v4, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mBaselineUxRestrictions:Ljava/util/Map;

    .line 768
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 769
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 770
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using default restrictions for driving state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-static {v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$1300(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CarUxRConfig"

    .line 770
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    const/16 v5, 0x1ff

    const/4 v6, 0x1

    invoke-direct {v3, v6, v5}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;-><init>(ZI)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$validateBaselineModeRestrictions$0(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)Z
    .locals 0

    .line 793
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private validateBaselineModeRestrictions()V
    .locals 7

    .line 779
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$700()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget v3, v0, v2

    .line 780
    iget-object v4, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mBaselineUxRestrictions:Ljava/util/Map;

    .line 781
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v5, :cond_1

    .line 785
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    goto :goto_1

    .line 786
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Non-moving driving state should contain one set of restriction rules."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 792
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v5, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$P3YAT4lyumufgfvQFLIXs7yMKkY;

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 794
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 796
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 798
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Every restriction in MOVING state should contain driving state.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_3
    sget-object v3, Landroid/car/drivingstate/-$$Lambda$YBSNvgpLXg5IqqXs9FKuvoKXc24;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$YBSNvgpLXg5IqqXs9FKuvoKXc24;

    .line 805
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    .line 804
    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 807
    invoke-direct {p0, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateRangeOfSpeed(Ljava/util/List;)V

    .line 808
    invoke-direct {p0, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateContinuousSpeedRange(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private validateContinuousSpeedRange(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x1

    .line 868
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    .line 869
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 870
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 872
    iget-object v1, v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v1

    iget-object v0, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 873
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Mis-configured speed range. Possibly speed range overlap or gap."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private validatePassengerModeRestrictions()V
    .locals 2

    .line 813
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPassengerUxRestrictions:Ljava/util/Map;

    const/4 v1, 0x2

    .line 814
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 815
    sget-object v1, Landroid/car/drivingstate/-$$Lambda$YBSNvgpLXg5IqqXs9FKuvoKXc24;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$YBSNvgpLXg5IqqXs9FKuvoKXc24;

    .line 816
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 815
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 818
    invoke-direct {p0, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateContinuousSpeedRange(Ljava/util/List;)V

    return-void
.end method

.method public static validatePort(I)B
    .locals 3

    const/16 v0, -0x80

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    int-to-byte p0, p0

    return p0

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port value should be within the range of a byte. Input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateRangeOfSpeed(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)V"
        }
    .end annotation

    .line 835
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 836
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez p0, :cond_0

    return-void

    .line 843
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    .line 847
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result p0

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 848
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 849
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Max speed of last restriction should be MAX_SPEED."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 844
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Speed range min speed should start at 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .locals 2

    .line 757
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->addDefaultRestrictionsToBaseline()V

    .line 759
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateBaselineModeRestrictions()V

    .line 760
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validatePassengerModeRestrictions()V

    .line 762
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;-><init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V

    return-object v0
.end method

.method public setMaxContentDepth(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 0

    .line 748
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxContentDepth:I

    return-object p0
.end method

.method public setMaxCumulativeContentItems(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 0

    .line 740
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxCumulativeContentItems:I

    return-object p0
.end method

.method public setMaxStringLength(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 0

    .line 732
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxStringLength:I

    return-object p0
.end method

.method public setPhysicalPort(B)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 0

    .line 650
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPhysicalPort:Ljava/lang/Byte;

    return-object p0
.end method

.method public setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;ZI)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 684
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;-><init>()V

    .line 685
    invoke-virtual {v0, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p3

    .line 686
    invoke-virtual {p3, p4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p3

    .line 687
    invoke-virtual {p3, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setSpeedRange(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p2

    .line 684
    invoke-virtual {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 4

    .line 701
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$800(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-moving driving state should not specify speed range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 709
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$900(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 714
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPassengerUxRestrictions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    .line 718
    :cond_2
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$900(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)I

    move-result p0

    .line 717
    invoke-static {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->modeToString(I)Ljava/lang/String;

    move-result-object p0

    .line 719
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized restriction mode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_3
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mBaselineUxRestrictions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 721
    :goto_1
    new-instance v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 722
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$900(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)I

    move-result v2

    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$1000(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Z

    move-result v3

    .line 723
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$1100(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)I

    move-result p2

    invoke-direct {v1, v2, v3, p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;-><init>(IZILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)V

    .line 721
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setUxRestrictions(IZI)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 1

    .line 660
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;-><init>()V

    .line 661
    invoke-virtual {v0, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p2

    .line 662
    invoke-virtual {p2, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p2

    .line 660
    invoke-virtual {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method
