.class public Lcom/android/car/Utils$TransitionLog;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionLog"
.end annotation


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mFromState:I

.field private mServiceName:Ljava/lang/String;

.field private mTimestampMs:J

.field private mToState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fromState"    # I
    .param p3, "toState"    # I
    .param p4, "timeStamp"    # J

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/car/Utils$TransitionLog;->mServiceName:Ljava/lang/String;

    .line 158
    iput p2, p0, Lcom/android/car/Utils$TransitionLog;->mFromState:I

    .line 159
    iput p3, p0, Lcom/android/car/Utils$TransitionLog;->mToState:I

    .line 160
    iput-wide p4, p0, Lcom/android/car/Utils$TransitionLog;->mTimestampMs:J

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fromState"    # I
    .param p3, "toState"    # I
    .param p4, "timestamp"    # J
    .param p6, "extra"    # Ljava/lang/String;

    .line 152
    invoke-direct/range {p0 .. p5}, Lcom/android/car/Utils$TransitionLog;-><init>(Ljava/lang/String;IIJ)V

    .line 153
    iput-object p6, p0, Lcom/android/car/Utils$TransitionLog;->mExtra:Ljava/lang/String;

    .line 154
    return-void
.end method

.method private timeToLog(J)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "timestamp"    # J

    .line 164
    const-string v0, "MM-dd HH:mm:ss"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/car/Utils$TransitionLog;->mTimestampMs:J

    invoke-direct {p0, v1, v2}, Lcom/android/car/Utils$TransitionLog;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/Utils$TransitionLog;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/Utils$TransitionLog;->mExtra:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/Utils$TransitionLog;->mFromState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/Utils$TransitionLog;->mToState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method
