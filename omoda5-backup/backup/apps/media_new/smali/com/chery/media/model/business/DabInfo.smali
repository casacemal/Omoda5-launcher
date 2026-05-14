.class public Lcom/chery/media/model/business/DabInfo;
.super Ljava/lang/Object;
.source "DabInfo.java"


# static fields
.field public static final PTY_TYPE_CHILDREN:I = 0x12

.field public static final PTY_TYPE_CLASSIC_MUSIC:I = 0xe

.field public static final PTY_TYPE_COUNTRY_MUSIC:I = 0x19

.field public static final PTY_TYPE_CULTURE:I = 0x7

.field public static final PTY_TYPE_CUR_AFFAIRS:I = 0x2

.field public static final PTY_TYPE_DOCUMENTARY:I = 0x1d

.field public static final PTY_TYPE_DRAMA:I = 0x6

.field public static final PTY_TYPE_EASY_MUSIC:I = 0xc

.field public static final PTY_TYPE_EDUCATION:I = 0x5

.field public static final PTY_TYPE_FINANCE:I = 0x11

.field public static final PTY_TYPE_FOLK_MUSIC:I = 0x1c

.field public static final PTY_TYPE_INFO:I = 0x3

.field public static final PTY_TYPE_JAZZ_MUSIC:I = 0x18

.field public static final PTY_TYPE_LEISURE:I = 0x17

.field public static final PTY_TYPE_LIGHT_MUSIC:I = 0xd

.field public static final PTY_TYPE_NATION_MUSIC:I = 0x1a

.field public static final PTY_TYPE_NEWS:I = 0x1

.field public static final PTY_TYPE_NO_PTY:I = 0x0

.field public static final PTY_TYPE_OLDIES_MUSIC:I = 0x1b

.field public static final PTY_TYPE_OTHER_MUSIC:I = 0xf

.field public static final PTY_TYPE_PHONE_IN:I = 0x15

.field public static final PTY_TYPE_POP_MUSIC:I = 0xa

.field public static final PTY_TYPE_RELIGION:I = 0x14

.field public static final PTY_TYPE_ROCK_MUSIC:I = 0xb

.field public static final PTY_TYPE_SCIENCE:I = 0x8

.field public static final PTY_TYPE_SOCIAL:I = 0x13

.field public static final PTY_TYPE_SPORT:I = 0x4

.field public static final PTY_TYPE_TRAVEL:I = 0x16

.field public static final PTY_TYPE_VARIED:I = 0x9

.field public static final PTY_TYPE_WEATHER:I = 0x10


# instance fields
.field public componentId:I

.field public componentName:Ljava/lang/String;

.field public componentType:I

.field public dabImage:Lsw/com/dabdrmradio/DabImage;

.field public ensembleId:I

.field public ensembleName:Ljava/lang/String;

.field public freq:I

.field public isFavor:Z

.field public isPlaying:Z

.field public scIds:I

.field public serviceId:I

.field public serviceName:Ljava/lang/String;

.field public servicePty:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/chery/media/model/business/DabInfo;->isPlaying:Z

    .line 52
    iput-boolean v0, p0, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/chery/media/model/business/DabInfo;->dabImage:Lsw/com/dabdrmradio/DabImage;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 75
    instance-of v0, p1, Lcom/chery/media/model/business/DabInfo;

    if-eqz v0, :cond_1

    .line 77
    check-cast p1, Lcom/chery/media/model/business/DabInfo;

    .line 78
    iget v0, p0, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    iget v1, p1, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    iget v1, p1, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/chery/media/model/business/DabInfo;->freq:I

    iget v1, p1, Lcom/chery/media/model/business/DabInfo;->freq:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/chery/media/model/business/DabInfo;->componentId:I

    iget p1, p1, Lcom/chery/media/model/business/DabInfo;->componentId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 84
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabInfo;->freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ensembleId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ensembleName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/DabInfo;->ensembleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servicePty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabInfo;->servicePty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", componentId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabInfo;->componentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", componentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabInfo;->componentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", componentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/DabInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabInfo;->scIds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFavor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/chery/media/model/business/DabInfo;->isFavor:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
