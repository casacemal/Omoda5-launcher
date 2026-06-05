.class public Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
.super Ljava/lang/Object;
.source "BluetoothProfileInhibitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothProfileInhibitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothConnection"
.end annotation


# static fields
.field private static final FLATTENED_PATTERN:Ljava/lang/String; = "^(([0-9A-F]{2}:){5}[0-9A-F]{2}|null)/([0-9]+|null)$"


# instance fields
.field private final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mBluetoothProfile:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "profile"    # Ljava/lang/Integer;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothProfile:Ljava/lang/Integer;

    .line 95
    iput-object p2, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 96
    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    .locals 6
    .param p0, "flattenedParams"    # Ljava/lang/String;

    .line 144
    const-string v0, "^(([0-9A-F]{2}:){5}[0-9A-F]{2}|null)/([0-9]+|null)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 149
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 150
    new-instance v1, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    return-object v1

    .line 153
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 159
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const/4 v2, 0x0

    .line 163
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    const/4 v3, 0x1

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 164
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "profile":Ljava/lang/Integer;
    goto :goto_1

    .line 166
    .end local v3    # "profile":Ljava/lang/Integer;
    :cond_2
    const/4 v3, 0x0

    .line 169
    .restart local v3    # "profile":Ljava/lang/Integer;
    :goto_1
    new-instance v4, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    invoke-direct {v4, v3, v2}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    return-object v4

    .line 145
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "profile":Ljava/lang/Integer;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad format for flattened BluetoothConnection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothProfile:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    instance-of v1, p1, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 112
    return v2

    .line 114
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    .line 115
    .local v1, "otherParams":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    iget-object v3, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v1, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothProfile:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothProfile:Ljava/lang/Integer;

    .line 116
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 115
    :goto_0
    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getProfile()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothProfile:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->mBluetoothProfile:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
