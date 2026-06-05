.class Lcom/android/car/garagemode/WakeupPolicy;
.super Ljava/lang/Object;
.source "WakeupPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/car/garagemode/Logger;

.field private static final TIME_UNITS_LOOKUP_SEC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIndex:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWakeupIntervals:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/android/car/garagemode/Logger;

    const-string v1, "WakeupPolicy"

    invoke-direct {v0, v1}, Lcom/android/car/garagemode/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/car/garagemode/WakeupPolicy;->TIME_UNITS_LOOKUP_SEC:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/android/car/garagemode/WakeupPolicy;->TIME_UNITS_LOOKUP_SEC:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/car/garagemode/WakeupPolicy;->TIME_UNITS_LOOKUP_SEC:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/car/garagemode/WakeupPolicy;->TIME_UNITS_LOOKUP_SEC:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "policy"    # [Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0, p1}, Lcom/android/car/garagemode/WakeupPolicy;->parsePolicy([Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/garagemode/WakeupPolicy;->mWakeupIntervals:Ljava/util/LinkedList;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/garagemode/WakeupPolicy;->mIndex:I

    .line 49
    return-void
.end method

.method public static initFromResources(Landroid/content/Context;)Lcom/android/car/garagemode/WakeupPolicy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "Initiating WakupPolicy from resources ..."

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/android/car/garagemode/WakeupPolicy;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/car/garagemode/WakeupPolicy;-><init>([Ljava/lang/String;)V

    .line 58
    return-object v0
.end method

.method private parsePolicy([Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 6
    .param p1, "policy"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 89
    .local v0, "intervals":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;>;"
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 95
    .local v3, "rule":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/car/garagemode/WakeupPolicy;->parseRule(Ljava/lang/String;)Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;

    move-result-object v4

    .line 96
    .local v4, "interval":Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;
    if-nez v4, :cond_1

    .line 97
    sget-object v1, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Policy! This rule has bad format: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    return-object v1

    .line 100
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v3    # "rule":Ljava/lang/String;
    .end local v4    # "interval":Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_2
    return-object v0

    .line 90
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v2, "Trying to parse empty policies!"

    invoke-virtual {v1, v2}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;)V

    .line 91
    return-object v0
.end method

.method private parseRule(Ljava/lang/String;)Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;
    .locals 10
    .param p1, "rule"    # Ljava/lang/String;

    .line 106
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "str":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 109
    sget-object v1, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policy has bad format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;)V

    .line 110
    return-object v2

    .line 113
    :cond_0
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 114
    .local v3, "intervalStr":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v5, v0, v4

    .line 116
    .local v5, "timesStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_0

    .line 121
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 124
    .local v6, "unit":C
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 128
    .end local v3    # "intervalStr":Ljava/lang/String;
    .local v1, "intervalStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "interval":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .local v4, "times":I
    nop

    .line 135
    sget-object v7, Lcom/android/car/garagemode/WakeupPolicy;->TIME_UNITS_LOOKUP_SEC:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 136
    sget-object v7, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time units map does not contain extension "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;)V

    .line 137
    return-object v2

    .line 140
    :cond_2
    if-gtz v3, :cond_3

    .line 141
    sget-object v7, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wake up policy time must be > 0!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;)V

    .line 142
    return-object v2

    .line 145
    :cond_3
    if-gtz v4, :cond_4

    .line 146
    sget-object v7, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wake up attempts in policy must be > 0!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;)V

    .line 147
    return-object v2

    .line 150
    :cond_4
    sget-object v2, Lcom/android/car/garagemode/WakeupPolicy;->TIME_UNITS_LOOKUP_SEC:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v3, v2

    .line 152
    new-instance v2, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;-><init>(Lcom/android/car/garagemode/WakeupPolicy;II)V

    return-object v2

    .line 130
    .end local v3    # "interval":I
    .end local v4    # "times":I
    :catch_0
    move-exception v3

    .line 131
    .local v3, "ex":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid input Rule for interval "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 132
    return-object v2

    .line 117
    .end local v1    # "intervalStr":Ljava/lang/String;
    .end local v6    # "unit":C
    .local v3, "intervalStr":Ljava/lang/String;
    :cond_5
    :goto_0
    sget-object v1, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "One of the values is empty. Please check format: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;)V

    .line 118
    return-object v2
.end method


# virtual methods
.method public getNextWakeUpInterval()I
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/car/garagemode/WakeupPolicy;->mWakeupIntervals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v2, "No wake up policy configuration was loaded."

    invoke-virtual {v0, v2}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;)V

    .line 69
    return v1

    .line 72
    :cond_0
    iget v0, p0, Lcom/android/car/garagemode/WakeupPolicy;->mIndex:I

    .line 73
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/car/garagemode/WakeupPolicy;->mWakeupIntervals:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;

    .line 74
    .local v3, "wakeupTime":Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;
    invoke-virtual {v3}, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;->getNumAttempts()I

    move-result v4

    if-gt v0, v4, :cond_1

    .line 75
    invoke-virtual {v3}, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;->getWakeupInterval()I

    move-result v1

    return v1

    .line 77
    :cond_1
    invoke-virtual {v3}, Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;->getNumAttempts()I

    move-result v4

    sub-int/2addr v0, v4

    .line 78
    .end local v3    # "wakeupTime":Lcom/android/car/garagemode/WakeupPolicy$WakeupInterval;
    goto :goto_0

    .line 79
    :cond_2
    sget-object v2, Lcom/android/car/garagemode/WakeupPolicy;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v3, "No more garage mode wake ups scheduled; been sleeping too long."

    invoke-virtual {v2, v3}, Lcom/android/car/garagemode/Logger;->w(Ljava/lang/String;)V

    .line 80
    return v1
.end method

.method protected getWakupIntervalsAmount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/car/garagemode/WakeupPolicy;->mWakeupIntervals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public incrementCounter()V
    .locals 1

    .line 156
    iget v0, p0, Lcom/android/car/garagemode/WakeupPolicy;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/garagemode/WakeupPolicy;->mIndex:I

    .line 157
    return-void
.end method

.method public resetCounter()V
    .locals 1

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/garagemode/WakeupPolicy;->mIndex:I

    .line 161
    return-void
.end method
