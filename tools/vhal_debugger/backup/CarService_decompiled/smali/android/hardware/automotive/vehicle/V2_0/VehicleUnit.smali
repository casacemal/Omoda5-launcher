.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleUnit;
.super Ljava/lang/Object;
.source "VehicleUnit.java"


# static fields
.field public static final AMPERE_HOURS:I = 0x64

.field public static final BAR:I = 0x72

.field public static final CELSIUS:I = 0x30

.field public static final DEGREES:I = 0x80

.field public static final FAHRENHEIT:I = 0x31

.field public static final GALLON:I = 0x42

.field public static final HERTZ:I = 0x3

.field public static final IMPERIAL_GALLON:I = 0x43

.field public static final KELVIN:I = 0x32

.field public static final KILOMETER:I = 0x23

.field public static final KILOMETERS_PER_HOUR:I = 0x91

.field public static final KILOPASCAL:I = 0x70

.field public static final KILOWATT_HOUR:I = 0x65

.field public static final LITER:I = 0x41

.field public static final METER:I = 0x21

.field public static final METER_PER_SEC:I = 0x1

.field public static final MILE:I = 0x24

.field public static final MILES_PER_HOUR:I = 0x90

.field public static final MILLIAMPERE:I = 0x61

.field public static final MILLILITER:I = 0x40

.field public static final MILLIMETER:I = 0x20

.field public static final MILLIVOLT:I = 0x62

.field public static final MILLIWATTS:I = 0x63

.field public static final NANO_SECS:I = 0x50

.field public static final PERCENTILE:I = 0x10

.field public static final PSI:I = 0x71

.field public static final RPM:I = 0x2

.field public static final SECS:I = 0x53

.field public static final SHOULD_NOT_USE:I = 0x0

.field public static final US_GALLON:I = 0x42

.field public static final WATT_HOUR:I = 0x60

.field public static final YEAR:I = 0x59


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

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 143
    .local v1, "flipped":I
    const-string v2, "SHOULD_NOT_USE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 145
    const-string v2, "METER_PER_SEC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v1, v1, 0x1

    .line 148
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 149
    const-string v2, "RPM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v1, v1, 0x2

    .line 152
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 153
    const-string v2, "HERTZ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v1, v1, 0x3

    .line 156
    :cond_2
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 157
    const-string v2, "PERCENTILE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v1, v1, 0x10

    .line 160
    :cond_3
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 161
    const-string v2, "MILLIMETER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v1, v1, 0x20

    .line 164
    :cond_4
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_5

    .line 165
    const-string v2, "METER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v1, v1, 0x21

    .line 168
    :cond_5
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_6

    .line 169
    const-string v2, "KILOMETER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v1, v1, 0x23

    .line 172
    :cond_6
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_7

    .line 173
    const-string v2, "MILE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v1, v1, 0x24

    .line 176
    :cond_7
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_8

    .line 177
    const-string v2, "CELSIUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0x30

    .line 180
    :cond_8
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_9

    .line 181
    const-string v2, "FAHRENHEIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v1, v1, 0x31

    .line 184
    :cond_9
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_a

    .line 185
    const-string v2, "KELVIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v1, v1, 0x32

    .line 188
    :cond_a
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_b

    .line 189
    const-string v2, "MILLILITER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v1, v1, 0x40

    .line 192
    :cond_b
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_c

    .line 193
    const-string v2, "LITER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v1, v1, 0x41

    .line 196
    :cond_c
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_d

    .line 197
    const-string v2, "GALLON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v1, v1, 0x42

    .line 200
    :cond_d
    and-int/lit8 v2, p0, 0x42

    if-ne v2, v3, :cond_e

    .line 201
    const-string v2, "US_GALLON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v1, v1, 0x42

    .line 204
    :cond_e
    and-int/lit8 v2, p0, 0x43

    const/16 v3, 0x43

    if-ne v2, v3, :cond_f

    .line 205
    const-string v2, "IMPERIAL_GALLON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v1, v1, 0x43

    .line 208
    :cond_f
    and-int/lit8 v2, p0, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_10

    .line 209
    const-string v2, "NANO_SECS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit8 v1, v1, 0x50

    .line 212
    :cond_10
    and-int/lit8 v2, p0, 0x53

    const/16 v3, 0x53

    if-ne v2, v3, :cond_11

    .line 213
    const-string v2, "SECS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    or-int/lit8 v1, v1, 0x53

    .line 216
    :cond_11
    and-int/lit8 v2, p0, 0x59

    const/16 v3, 0x59

    if-ne v2, v3, :cond_12

    .line 217
    const-string v2, "YEAR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    or-int/lit8 v1, v1, 0x59

    .line 220
    :cond_12
    and-int/lit8 v2, p0, 0x60

    const/16 v3, 0x60

    if-ne v2, v3, :cond_13

    .line 221
    const-string v2, "WATT_HOUR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    or-int/lit8 v1, v1, 0x60

    .line 224
    :cond_13
    and-int/lit8 v2, p0, 0x61

    const/16 v3, 0x61

    if-ne v2, v3, :cond_14

    .line 225
    const-string v2, "MILLIAMPERE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    or-int/lit8 v1, v1, 0x61

    .line 228
    :cond_14
    and-int/lit8 v2, p0, 0x62

    const/16 v3, 0x62

    if-ne v2, v3, :cond_15

    .line 229
    const-string v2, "MILLIVOLT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    or-int/lit8 v1, v1, 0x62

    .line 232
    :cond_15
    and-int/lit8 v2, p0, 0x63

    const/16 v3, 0x63

    if-ne v2, v3, :cond_16

    .line 233
    const-string v2, "MILLIWATTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    or-int/lit8 v1, v1, 0x63

    .line 236
    :cond_16
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_17

    .line 237
    const-string v2, "AMPERE_HOURS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    or-int/lit8 v1, v1, 0x64

    .line 240
    :cond_17
    and-int/lit8 v2, p0, 0x65

    const/16 v3, 0x65

    if-ne v2, v3, :cond_18

    .line 241
    const-string v2, "KILOWATT_HOUR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    or-int/lit8 v1, v1, 0x65

    .line 244
    :cond_18
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_19

    .line 245
    const-string v2, "KILOPASCAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    or-int/lit8 v1, v1, 0x70

    .line 248
    :cond_19
    and-int/lit8 v2, p0, 0x71

    const/16 v3, 0x71

    if-ne v2, v3, :cond_1a

    .line 249
    const-string v2, "PSI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    or-int/lit8 v1, v1, 0x71

    .line 252
    :cond_1a
    and-int/lit8 v2, p0, 0x72

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1b

    .line 253
    const-string v2, "BAR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit8 v1, v1, 0x72

    .line 256
    :cond_1b
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1c

    .line 257
    const-string v2, "DEGREES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit16 v1, v1, 0x80

    .line 260
    :cond_1c
    and-int/lit16 v2, p0, 0x90

    const/16 v3, 0x90

    if-ne v2, v3, :cond_1d

    .line 261
    const-string v2, "MILES_PER_HOUR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit16 v1, v1, 0x90

    .line 264
    :cond_1d
    and-int/lit16 v2, p0, 0x91

    const/16 v3, 0x91

    if-ne v2, v3, :cond_1e

    .line 265
    const-string v2, "KILOMETERS_PER_HOUR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    or-int/lit16 v1, v1, 0x91

    .line 268
    :cond_1e
    if-eq p0, v1, :cond_1f

    .line 269
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

    .line 271
    :cond_1f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 41
    if-nez p0, :cond_0

    .line 42
    const-string v0, "SHOULD_NOT_USE"

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 45
    const-string v0, "METER_PER_SEC"

    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 48
    const-string v0, "RPM"

    return-object v0

    .line 50
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 51
    const-string v0, "HERTZ"

    return-object v0

    .line 53
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 54
    const-string v0, "PERCENTILE"

    return-object v0

    .line 56
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 57
    const-string v0, "MILLIMETER"

    return-object v0

    .line 59
    :cond_5
    const/16 v0, 0x21

    if-ne p0, v0, :cond_6

    .line 60
    const-string v0, "METER"

    return-object v0

    .line 62
    :cond_6
    const/16 v0, 0x23

    if-ne p0, v0, :cond_7

    .line 63
    const-string v0, "KILOMETER"

    return-object v0

    .line 65
    :cond_7
    const/16 v0, 0x24

    if-ne p0, v0, :cond_8

    .line 66
    const-string v0, "MILE"

    return-object v0

    .line 68
    :cond_8
    const/16 v0, 0x30

    if-ne p0, v0, :cond_9

    .line 69
    const-string v0, "CELSIUS"

    return-object v0

    .line 71
    :cond_9
    const/16 v0, 0x31

    if-ne p0, v0, :cond_a

    .line 72
    const-string v0, "FAHRENHEIT"

    return-object v0

    .line 74
    :cond_a
    const/16 v0, 0x32

    if-ne p0, v0, :cond_b

    .line 75
    const-string v0, "KELVIN"

    return-object v0

    .line 77
    :cond_b
    const/16 v0, 0x40

    if-ne p0, v0, :cond_c

    .line 78
    const-string v0, "MILLILITER"

    return-object v0

    .line 80
    :cond_c
    const/16 v0, 0x41

    if-ne p0, v0, :cond_d

    .line 81
    const-string v0, "LITER"

    return-object v0

    .line 83
    :cond_d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_e

    .line 84
    const-string v0, "GALLON"

    return-object v0

    .line 86
    :cond_e
    if-ne p0, v0, :cond_f

    .line 87
    const-string v0, "US_GALLON"

    return-object v0

    .line 89
    :cond_f
    const/16 v0, 0x43

    if-ne p0, v0, :cond_10

    .line 90
    const-string v0, "IMPERIAL_GALLON"

    return-object v0

    .line 92
    :cond_10
    const/16 v0, 0x50

    if-ne p0, v0, :cond_11

    .line 93
    const-string v0, "NANO_SECS"

    return-object v0

    .line 95
    :cond_11
    const/16 v0, 0x53

    if-ne p0, v0, :cond_12

    .line 96
    const-string v0, "SECS"

    return-object v0

    .line 98
    :cond_12
    const/16 v0, 0x59

    if-ne p0, v0, :cond_13

    .line 99
    const-string v0, "YEAR"

    return-object v0

    .line 101
    :cond_13
    const/16 v0, 0x60

    if-ne p0, v0, :cond_14

    .line 102
    const-string v0, "WATT_HOUR"

    return-object v0

    .line 104
    :cond_14
    const/16 v0, 0x61

    if-ne p0, v0, :cond_15

    .line 105
    const-string v0, "MILLIAMPERE"

    return-object v0

    .line 107
    :cond_15
    const/16 v0, 0x62

    if-ne p0, v0, :cond_16

    .line 108
    const-string v0, "MILLIVOLT"

    return-object v0

    .line 110
    :cond_16
    const/16 v0, 0x63

    if-ne p0, v0, :cond_17

    .line 111
    const-string v0, "MILLIWATTS"

    return-object v0

    .line 113
    :cond_17
    const/16 v0, 0x64

    if-ne p0, v0, :cond_18

    .line 114
    const-string v0, "AMPERE_HOURS"

    return-object v0

    .line 116
    :cond_18
    const/16 v0, 0x65

    if-ne p0, v0, :cond_19

    .line 117
    const-string v0, "KILOWATT_HOUR"

    return-object v0

    .line 119
    :cond_19
    const/16 v0, 0x70

    if-ne p0, v0, :cond_1a

    .line 120
    const-string v0, "KILOPASCAL"

    return-object v0

    .line 122
    :cond_1a
    const/16 v0, 0x71

    if-ne p0, v0, :cond_1b

    .line 123
    const-string v0, "PSI"

    return-object v0

    .line 125
    :cond_1b
    const/16 v0, 0x72

    if-ne p0, v0, :cond_1c

    .line 126
    const-string v0, "BAR"

    return-object v0

    .line 128
    :cond_1c
    const/16 v0, 0x80

    if-ne p0, v0, :cond_1d

    .line 129
    const-string v0, "DEGREES"

    return-object v0

    .line 131
    :cond_1d
    const/16 v0, 0x90

    if-ne p0, v0, :cond_1e

    .line 132
    const-string v0, "MILES_PER_HOUR"

    return-object v0

    .line 134
    :cond_1e
    const/16 v0, 0x91

    if-ne p0, v0, :cond_1f

    .line 135
    const-string v0, "KILOMETERS_PER_HOUR"

    return-object v0

    .line 137
    :cond_1f
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
