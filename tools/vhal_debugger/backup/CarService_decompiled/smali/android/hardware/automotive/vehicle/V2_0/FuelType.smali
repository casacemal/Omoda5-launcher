.class public final Landroid/hardware/automotive/vehicle/V2_0/FuelType;
.super Ljava/lang/Object;
.source "FuelType.java"


# static fields
.field public static final FUEL_TYPE_BIODIESEL:I = 0x5

.field public static final FUEL_TYPE_CNG:I = 0x8

.field public static final FUEL_TYPE_DIESEL_1:I = 0x3

.field public static final FUEL_TYPE_DIESEL_2:I = 0x4

.field public static final FUEL_TYPE_E85:I = 0x6

.field public static final FUEL_TYPE_ELECTRIC:I = 0xa

.field public static final FUEL_TYPE_HYDROGEN:I = 0xb

.field public static final FUEL_TYPE_LEADED:I = 0x2

.field public static final FUEL_TYPE_LNG:I = 0x9

.field public static final FUEL_TYPE_LPG:I = 0x7

.field public static final FUEL_TYPE_OTHER:I = 0xc

.field public static final FUEL_TYPE_UNKNOWN:I = 0x0

.field public static final FUEL_TYPE_UNLEADED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 105
    .local v1, "flipped":I
    const-string v2, "FUEL_TYPE_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 107
    const-string v2, "FUEL_TYPE_UNLEADED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/lit8 v1, v1, 0x1

    .line 110
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 111
    const-string v2, "FUEL_TYPE_LEADED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit8 v1, v1, 0x2

    .line 114
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 115
    const-string v2, "FUEL_TYPE_DIESEL_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit8 v1, v1, 0x3

    .line 118
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 119
    const-string v2, "FUEL_TYPE_DIESEL_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    or-int/lit8 v1, v1, 0x4

    .line 122
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 123
    const-string v2, "FUEL_TYPE_BIODIESEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit8 v1, v1, 0x5

    .line 126
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 127
    const-string v2, "FUEL_TYPE_E85"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    or-int/lit8 v1, v1, 0x6

    .line 130
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 131
    const-string v2, "FUEL_TYPE_LPG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    or-int/lit8 v1, v1, 0x7

    .line 134
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 135
    const-string v2, "FUEL_TYPE_CNG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    or-int/lit8 v1, v1, 0x8

    .line 138
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 139
    const-string v2, "FUEL_TYPE_LNG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    or-int/lit8 v1, v1, 0x9

    .line 142
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 143
    const-string v2, "FUEL_TYPE_ELECTRIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    or-int/lit8 v1, v1, 0xa

    .line 146
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 147
    const-string v2, "FUEL_TYPE_HYDROGEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    or-int/lit8 v1, v1, 0xb

    .line 150
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 151
    const-string v2, "FUEL_TYPE_OTHER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    or-int/lit8 v1, v1, 0xc

    .line 154
    :cond_b
    if-eq p0, v1, :cond_c

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_c
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 60
    if-nez p0, :cond_0

    .line 61
    const-string v0, "FUEL_TYPE_UNKNOWN"

    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 64
    const-string v0, "FUEL_TYPE_UNLEADED"

    return-object v0

    .line 66
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 67
    const-string v0, "FUEL_TYPE_LEADED"

    return-object v0

    .line 69
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 70
    const-string v0, "FUEL_TYPE_DIESEL_1"

    return-object v0

    .line 72
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 73
    const-string v0, "FUEL_TYPE_DIESEL_2"

    return-object v0

    .line 75
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 76
    const-string v0, "FUEL_TYPE_BIODIESEL"

    return-object v0

    .line 78
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 79
    const-string v0, "FUEL_TYPE_E85"

    return-object v0

    .line 81
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 82
    const-string v0, "FUEL_TYPE_LPG"

    return-object v0

    .line 84
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 85
    const-string v0, "FUEL_TYPE_CNG"

    return-object v0

    .line 87
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 88
    const-string v0, "FUEL_TYPE_LNG"

    return-object v0

    .line 90
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 91
    const-string v0, "FUEL_TYPE_ELECTRIC"

    return-object v0

    .line 93
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 94
    const-string v0, "FUEL_TYPE_HYDROGEN"

    return-object v0

    .line 96
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 97
    const-string v0, "FUEL_TYPE_OTHER"

    return-object v0

    .line 99
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
