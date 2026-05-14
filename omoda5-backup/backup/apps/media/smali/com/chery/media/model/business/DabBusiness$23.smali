.class Lcom/chery/media/model/business/DabBusiness$23;
.super Ljava/lang/Object;
.source "DabBusiness.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/DabBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/chery/media/model/business/DabProgramInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/DabBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 1927
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$23;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/chery/media/model/business/DabProgramInfo;Lcom/chery/media/model/business/DabProgramInfo;)I
    .locals 1

    .line 1930
    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result p0

    iget-object v0, p2, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {v0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v0

    if-ne p0, v0, :cond_0

    .line 1931
    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result p0

    iget-object p1, p2, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {p1}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    return p0

    .line 1933
    :cond_0
    iget-object p0, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {p0}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result p0

    iget-object p1, p2, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {p1}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result p1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1927
    check-cast p1, Lcom/chery/media/model/business/DabProgramInfo;

    check-cast p2, Lcom/chery/media/model/business/DabProgramInfo;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/DabBusiness$23;->compare(Lcom/chery/media/model/business/DabProgramInfo;Lcom/chery/media/model/business/DabProgramInfo;)I

    move-result p0

    return p0
.end method
