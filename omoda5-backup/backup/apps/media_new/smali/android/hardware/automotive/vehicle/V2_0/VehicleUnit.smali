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
    .locals 5

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SHOULD_NOT_USE"

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "METER_PER_SEC"

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "RPM"

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const-string v1, "HERTZ"

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    const-string v1, "PERCENTILE"

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_3
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    const-string v1, "MILLIMETER"

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_4
    and-int/lit8 v1, p0, 0x21

    const/16 v3, 0x21

    if-ne v1, v3, :cond_5

    const-string v1, "METER"

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x21

    :cond_5
    and-int/lit8 v1, p0, 0x23

    const/16 v3, 0x23

    if-ne v1, v3, :cond_6

    const-string v1, "KILOMETER"

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x23

    :cond_6
    and-int/lit8 v1, p0, 0x24

    const/16 v3, 0x24

    if-ne v1, v3, :cond_7

    const-string v1, "MILE"

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x24

    :cond_7
    and-int/lit8 v1, p0, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_8

    const-string v1, "CELSIUS"

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x30

    :cond_8
    and-int/lit8 v1, p0, 0x31

    const/16 v3, 0x31

    if-ne v1, v3, :cond_9

    const-string v1, "FAHRENHEIT"

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x31

    :cond_9
    and-int/lit8 v1, p0, 0x32

    const/16 v3, 0x32

    if-ne v1, v3, :cond_a

    const-string v1, "KELVIN"

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x32

    :cond_a
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_b

    const-string v1, "MILLILITER"

    .line 189
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_b
    and-int/lit8 v1, p0, 0x41

    const/16 v3, 0x41

    if-ne v1, v3, :cond_c

    const-string v1, "LITER"

    .line 193
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x41

    :cond_c
    and-int/lit8 v1, p0, 0x42

    const/16 v3, 0x42

    if-ne v1, v3, :cond_d

    const-string v4, "GALLON"

    .line 197
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x42

    :cond_d
    if-ne v1, v3, :cond_e

    const-string v1, "US_GALLON"

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x42

    :cond_e
    and-int/lit8 v1, p0, 0x43

    const/16 v3, 0x43

    if-ne v1, v3, :cond_f

    const-string v1, "IMPERIAL_GALLON"

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x43

    :cond_f
    and-int/lit8 v1, p0, 0x50

    const/16 v3, 0x50

    if-ne v1, v3, :cond_10

    const-string v1, "NANO_SECS"

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x50

    :cond_10
    and-int/lit8 v1, p0, 0x53

    const/16 v3, 0x53

    if-ne v1, v3, :cond_11

    const-string v1, "SECS"

    .line 213
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x53

    :cond_11
    and-int/lit8 v1, p0, 0x59

    const/16 v3, 0x59

    if-ne v1, v3, :cond_12

    const-string v1, "YEAR"

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x59

    :cond_12
    and-int/lit8 v1, p0, 0x60

    const/16 v3, 0x60

    if-ne v1, v3, :cond_13

    const-string v1, "WATT_HOUR"

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x60

    :cond_13
    and-int/lit8 v1, p0, 0x61

    const/16 v3, 0x61

    if-ne v1, v3, :cond_14

    const-string v1, "MILLIAMPERE"

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x61

    :cond_14
    and-int/lit8 v1, p0, 0x62

    const/16 v3, 0x62

    if-ne v1, v3, :cond_15

    const-string v1, "MILLIVOLT"

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x62

    :cond_15
    and-int/lit8 v1, p0, 0x63

    const/16 v3, 0x63

    if-ne v1, v3, :cond_16

    const-string v1, "MILLIWATTS"

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x63

    :cond_16
    and-int/lit8 v1, p0, 0x64

    const/16 v3, 0x64

    if-ne v1, v3, :cond_17

    const-string v1, "AMPERE_HOURS"

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x64

    :cond_17
    and-int/lit8 v1, p0, 0x65

    const/16 v3, 0x65

    if-ne v1, v3, :cond_18

    const-string v1, "KILOWATT_HOUR"

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x65

    :cond_18
    and-int/lit8 v1, p0, 0x70

    const/16 v3, 0x70

    if-ne v1, v3, :cond_19

    const-string v1, "KILOPASCAL"

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x70

    :cond_19
    and-int/lit8 v1, p0, 0x71

    const/16 v3, 0x71

    if-ne v1, v3, :cond_1a

    const-string v1, "PSI"

    .line 249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x71

    :cond_1a
    and-int/lit8 v1, p0, 0x72

    const/16 v3, 0x72

    if-ne v1, v3, :cond_1b

    const-string v1, "BAR"

    .line 253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x72

    :cond_1b
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1c

    const-string v1, "DEGREES"

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_1c
    and-int/lit16 v1, p0, 0x90

    const/16 v3, 0x90

    if-ne v1, v3, :cond_1d

    const-string v1, "MILES_PER_HOUR"

    .line 261
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x90

    :cond_1d
    and-int/lit16 v1, p0, 0x91

    const/16 v3, 0x91

    if-ne v1, v3, :cond_1e

    const-string v1, "KILOMETERS_PER_HOUR"

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x91

    :cond_1e
    if-eq p0, v2, :cond_1f

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    const-string p0, " | "

    .line 271
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SHOULD_NOT_USE"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "METER_PER_SEC"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "RPM"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "HERTZ"

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string p0, "PERCENTILE"

    return-object p0

    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string p0, "MILLIMETER"

    return-object p0

    :cond_5
    const/16 v0, 0x21

    if-ne p0, v0, :cond_6

    const-string p0, "METER"

    return-object p0

    :cond_6
    const/16 v0, 0x23

    if-ne p0, v0, :cond_7

    const-string p0, "KILOMETER"

    return-object p0

    :cond_7
    const/16 v0, 0x24

    if-ne p0, v0, :cond_8

    const-string p0, "MILE"

    return-object p0

    :cond_8
    const/16 v0, 0x30

    if-ne p0, v0, :cond_9

    const-string p0, "CELSIUS"

    return-object p0

    :cond_9
    const/16 v0, 0x31

    if-ne p0, v0, :cond_a

    const-string p0, "FAHRENHEIT"

    return-object p0

    :cond_a
    const/16 v0, 0x32

    if-ne p0, v0, :cond_b

    const-string p0, "KELVIN"

    return-object p0

    :cond_b
    const/16 v0, 0x40

    if-ne p0, v0, :cond_c

    const-string p0, "MILLILITER"

    return-object p0

    :cond_c
    const/16 v0, 0x41

    if-ne p0, v0, :cond_d

    const-string p0, "LITER"

    return-object p0

    :cond_d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_e

    const-string p0, "GALLON"

    return-object p0

    :cond_e
    if-ne p0, v0, :cond_f

    const-string p0, "US_GALLON"

    return-object p0

    :cond_f
    const/16 v0, 0x43

    if-ne p0, v0, :cond_10

    const-string p0, "IMPERIAL_GALLON"

    return-object p0

    :cond_10
    const/16 v0, 0x50

    if-ne p0, v0, :cond_11

    const-string p0, "NANO_SECS"

    return-object p0

    :cond_11
    const/16 v0, 0x53

    if-ne p0, v0, :cond_12

    const-string p0, "SECS"

    return-object p0

    :cond_12
    const/16 v0, 0x59

    if-ne p0, v0, :cond_13

    const-string p0, "YEAR"

    return-object p0

    :cond_13
    const/16 v0, 0x60

    if-ne p0, v0, :cond_14

    const-string p0, "WATT_HOUR"

    return-object p0

    :cond_14
    const/16 v0, 0x61

    if-ne p0, v0, :cond_15

    const-string p0, "MILLIAMPERE"

    return-object p0

    :cond_15
    const/16 v0, 0x62

    if-ne p0, v0, :cond_16

    const-string p0, "MILLIVOLT"

    return-object p0

    :cond_16
    const/16 v0, 0x63

    if-ne p0, v0, :cond_17

    const-string p0, "MILLIWATTS"

    return-object p0

    :cond_17
    const/16 v0, 0x64

    if-ne p0, v0, :cond_18

    const-string p0, "AMPERE_HOURS"

    return-object p0

    :cond_18
    const/16 v0, 0x65

    if-ne p0, v0, :cond_19

    const-string p0, "KILOWATT_HOUR"

    return-object p0

    :cond_19
    const/16 v0, 0x70

    if-ne p0, v0, :cond_1a

    const-string p0, "KILOPASCAL"

    return-object p0

    :cond_1a
    const/16 v0, 0x71

    if-ne p0, v0, :cond_1b

    const-string p0, "PSI"

    return-object p0

    :cond_1b
    const/16 v0, 0x72

    if-ne p0, v0, :cond_1c

    const-string p0, "BAR"

    return-object p0

    :cond_1c
    const/16 v0, 0x80

    if-ne p0, v0, :cond_1d

    const-string p0, "DEGREES"

    return-object p0

    :cond_1d
    const/16 v0, 0x90

    if-ne p0, v0, :cond_1e

    const-string p0, "MILES_PER_HOUR"

    return-object p0

    :cond_1e
    const/16 v0, 0x91

    if-ne p0, v0, :cond_1f

    const-string p0, "KILOMETERS_PER_HOUR"

    return-object p0

    .line 137
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
