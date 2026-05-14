.class public final Landroid/car/CarInfoManager;
.super Ljava/lang/Object;
.source "CarInfoManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# static fields
.field public static final BASIC_INFO_DRIVER_SEAT:I = 0x1540010a

.field public static final BASIC_INFO_EV_BATTERY_CAPACITY:I = 0x11600106

.field public static final BASIC_INFO_EV_CONNECTOR_TYPES:I = 0x11410107

.field public static final BASIC_INFO_EV_PORT_LOCATION:I = 0x11400109

.field public static final BASIC_INFO_FUEL_CAPACITY:I = 0x11600104

.field public static final BASIC_INFO_FUEL_DOOR_LOCATION:I = 0x11400108

.field public static final BASIC_INFO_FUEL_TYPES:I = 0x11410105

.field public static final BASIC_INFO_KEY_MANUFACTURER:I = 0x11100101

.field public static final BASIC_INFO_KEY_MODEL:I = 0x11100102

.field public static final BASIC_INFO_KEY_MODEL_YEAR:I = 0x11400103

.field public static final BASIC_INFO_KEY_VEHICLE_ID:Ljava/lang/String; = "android.car.vehicle-id"

.field private static final DBG:Z = true

.field public static final ID_DIAGNOSTIC_CONFIG_7010:I = 0x21706202

.field public static final ID_DIAGNOSTIC_CONFIG_7019:I = 0x21706203

.field public static final ID_DIAGNOSTIC_CONFIG_701A:I = 0x21706204

.field public static final ID_DIAGNOSTIC_CONFIG_701B:I = 0x21706205

.field public static final ID_DIAGNOSTIC_CONFIG_7038:I = 0x2170620f

.field public static final ID_ECU_HW_NUMBER:I = 0x21106207

.field public static final ID_ECU_SERIAL_NUMBER:I = 0x21106208

.field public static final ID_ECU_SW_NUMBER:I = 0x21106206

.field public static final ID_EXTERIOR_COLOR:I = 0x21706200

.field public static final ID_SC:I = 0x2170620d

.field public static final ID_SK:I = 0x2170620e

.field public static final ID_SYSTEM_SUPPLIER_IDENTIFIER:I = 0x2110620c

.field public static final ID_UUID:I = 0x2110620a

.field public static final ID_VEHICLE_PART_NUMBER:I = 0x21106209

.field public static final ID_VIN:I = 0x2110620b

.field public static final ID_Vehicle_VIN:I = 0x21106201

.field public static final INFO_KEY_PRODUCT_CONFIGURATION:Ljava/lang/String; = "android.car.product-config"

.field private static final TAG:Ljava/lang/String; = "CarInfoManager"


# instance fields
.field private final mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

.field private mcontext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Landroid/car/CarInfoManager;->mcontext:Landroid/content/Context;

    .line 367
    invoke-static {p1}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object p1

    .line 368
    new-instance v1, Landroid/car/hardware/property/CarPropertyManager;

    invoke-direct {v1, p1, v0}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/hardware/property/ICarProperty;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    .line 369
    iput-object p2, p0, Landroid/car/CarInfoManager;->mcontext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getByteProperty(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 333
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, [B

    const/high16 v1, 0x1000000

    invoke-virtual {p0, v0, p1, v1}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getByteProperty_propId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarInfoManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    :goto_0
    return-object p0
.end method

.method public getCherySWVersionCode()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.chery.version"

    const-string v0, "NA"

    .line 294
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDriverSeat()I
    .locals 2

    .line 272
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v0, 0x1540010a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p0

    return p0
.end method

.method public getECUSerialNumber()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/car/CarInfoManager;->mcontext:Landroid/content/Context;

    .line 299
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_confirm"

    const/4 v2, 0x0

    .line 298
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, Ljava/lang/String;

    const v1, 0x21106208

    const/high16 v2, 0x1000000

    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 303
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 305
    :cond_1
    iget-object p0, p0, Landroid/car/CarInfoManager;->mcontext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "HUID"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEvBatteryCapacity()F
    .locals 3

    .line 210
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, Ljava/lang/Float;

    const v1, 0x11600106

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEvConnectorTypes()[I
    .locals 5

    .line 220
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v0, 0x11410107

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntArrayProperty(II)[I

    move-result-object p0

    .line 222
    array-length v0, p0

    new-array v0, v0, [I

    move v2, v1

    .line 223
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 224
    aget v3, p0, v2

    const/16 v4, 0x65

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 262
    aput v1, v0, v2

    goto :goto_1

    :pswitch_0
    const/16 v3, 0xa

    .line 256
    aput v3, v0, v2

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x9

    .line 253
    aput v3, v0, v2

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x8

    .line 250
    aput v3, v0, v2

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x7

    .line 247
    aput v3, v0, v2

    goto :goto_1

    :pswitch_4
    const/4 v3, 0x6

    .line 244
    aput v3, v0, v2

    goto :goto_1

    :pswitch_5
    const/4 v3, 0x5

    .line 241
    aput v3, v0, v2

    goto :goto_1

    :pswitch_6
    const/4 v3, 0x4

    .line 238
    aput v3, v0, v2

    goto :goto_1

    :pswitch_7
    const/4 v3, 0x3

    .line 235
    aput v3, v0, v2

    goto :goto_1

    :pswitch_8
    const/16 v3, 0xb

    .line 232
    aput v3, v0, v2

    goto :goto_1

    :pswitch_9
    const/4 v3, 0x2

    .line 229
    aput v3, v0, v2

    goto :goto_1

    :pswitch_a
    const/4 v3, 0x1

    .line 226
    aput v3, v0, v2

    goto :goto_1

    .line 259
    :cond_0
    aput v4, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEvPortLocation()I
    .locals 2

    .line 279
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v0, 0x11400109

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p0

    return p0
.end method

.method public getFuelCapacity()F
    .locals 2

    .line 194
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v0, 0x11600104

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result p0

    return p0
.end method

.method public getFuelDoorLocation()I
    .locals 2

    .line 286
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v0, 0x11400108

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p0

    return p0
.end method

.method public getFuelTypes()[I
    .locals 2

    .line 202
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v0, 0x11410105

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntArrayProperty(II)[I

    move-result-object p0

    return-object p0
.end method

.method public getGlobalProperty(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    const/high16 v0, 0x1000000

    .line 325
    invoke-virtual {p0, p1, p2, v0}, Landroid/car/CarInfoManager;->getProperty(Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 3

    .line 145
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, Ljava/lang/String;

    const v1, 0x11100101

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 3

    .line 157
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, Ljava/lang/String;

    const v1, 0x11100102

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getModelYear()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v0, 0x11400103

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getModelYearInInteger()I
    .locals 2

    .line 177
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v0, 0x11400103

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p0

    return p0
.end method

.method public getProperty(Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;II)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 349
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSOCVersionCode()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.x9.version"

    const-string v0, "NA"

    .line 290
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringProperty(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 342
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, Ljava/lang/String;

    const/high16 v1, 0x1000000

    invoke-virtual {p0, v0, p1, v1}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringProperty_propId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarInfoManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 344
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getVIN()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/car/CarInfoManager;->mcontext:Landroid/content/Context;

    .line 312
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_confirm"

    const/4 v2, 0x0

    .line 311
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, Ljava/lang/String;

    const v1, 0x2110620b

    const/high16 v2, 0x1000000

    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 318
    :cond_1
    iget-object p0, p0, Landroid/car/CarInfoManager;->mcontext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "VIN"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public onCarDisconnected()V
    .locals 0

    .line 374
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager;->onCarDisconnected()V

    return-void
.end method

.method public setByteProperty(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 358
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, [B

    const/high16 v1, 0x1000000

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setGlobalProperty(Ljava/lang/Class;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 354
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const/high16 v0, 0x1000000

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setStringProperty(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 362
    iget-object p0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, Ljava/lang/String;

    const/high16 v1, 0x1000000

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method
