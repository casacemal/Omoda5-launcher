.class public abstract Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;
.super Landroid/os/HwBinder;
.source "IAudioControl.java"

# interfaces
.implements Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 648
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 651
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 665
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 703
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 704
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 705
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 706
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 707
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x60t
        -0x7t
        0x3ct
        0x76t
        -0x74t
        0x35t
        0x3ct
        -0x14t
        -0x12t
        0x62t
        0x37t
        -0x2t
        0x47t
        -0x65t
        -0x32t
        0x47t
        0x40t
        0x4et
        -0x4ft
        0xbt
        0x62t
        -0x61t
        -0x51t
        -0x20t
        0x7et
        0x32t
        -0x60t
        0x54t
        -0x3t
        0x67t
        -0xet
        -0x51t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.yfve.hardware.audiocontrol@1.0::IAudioControl"

    const-string v2, "android.hardware.automotive.audiocontrol@1.0::IAudioControl"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 671
    const-string v0, "vendor.yfve.hardware.audiocontrol@1.0::IAudioControl"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 691
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 713
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 715
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    const-string v0, "android.hardware.automotive.audiocontrol@1.0::IAudioControl"

    const-string v1, "vendor.yfve.hardware.audiocontrol@1.0::IAudioControl"

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_10

    .line 1137
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    move v0, v3

    .line 1138
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_30

    .line 1139
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1140
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1141
    goto/16 :goto_10

    .line 1124
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    move v1, v3

    .line 1125
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_2

    .line 1126
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1128
    goto/16 :goto_10

    .line 1129
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->notifySyspropsChanged()V

    .line 1132
    goto/16 :goto_10

    .line 1108
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    move v1, v4

    .line 1109
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 1110
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1111
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1112
    goto/16 :goto_10

    .line 1113
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1116
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1119
    goto/16 :goto_10

    .line 1093
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    move v1, v4

    .line 1094
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 1095
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1097
    goto/16 :goto_10

    .line 1098
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->ping()V

    .line 1101
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1103
    goto/16 :goto_10

    .line 1083
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v3, v4

    :cond_7
    move v0, v3

    .line 1084
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_30

    .line 1085
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1087
    goto/16 :goto_10

    .line 1070
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v3, v4

    :cond_8
    move v1, v3

    .line 1071
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_9

    .line 1072
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1074
    goto/16 :goto_10

    .line 1075
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setHALInstrumentation()V

    .line 1078
    goto/16 :goto_10

    .line 1031
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v4, v3

    :goto_2
    move v1, v4

    .line 1032
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 1033
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1035
    goto/16 :goto_10

    .line 1036
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1039
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1041
    new-instance v2, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1043
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1044
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1045
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1046
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v3, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1047
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 1049
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1050
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1052
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 1056
    invoke-virtual {v3, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1057
    nop

    .line 1047
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1053
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1060
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1062
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1064
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1065
    goto/16 :goto_10

    .line 1015
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v4, v3

    :goto_4
    move v1, v4

    .line 1016
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 1017
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1018
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1019
    goto/16 :goto_10

    .line 1020
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1024
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1026
    goto/16 :goto_10

    .line 998
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v4, v3

    :goto_5
    move v1, v4

    .line 999
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 1000
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1002
    goto/16 :goto_10

    .line 1003
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1006
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1007
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1008
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1010
    goto/16 :goto_10

    .line 982
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v4, v3

    :goto_6
    move v1, v4

    .line 983
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 984
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 985
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 986
    goto/16 :goto_10

    .line 987
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 990
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 991
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 993
    goto/16 :goto_10

    .line 966
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    goto :goto_7

    :cond_14
    move v4, v3

    :goto_7
    move v0, v4

    .line 967
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_15

    .line 968
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_10

    .line 971
    :cond_15
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->debugDump()Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "_hidl_out_s":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 975
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 977
    goto/16 :goto_10

    .line 950
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_s":Ljava/lang/String;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    move v4, v3

    :goto_8
    move v0, v4

    .line 951
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_17

    .line 952
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 954
    goto/16 :goto_10

    .line 955
    :cond_17
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControlCallBack;->asInterface(Landroid/os/IHwBinder;)Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControlCallBack;

    move-result-object v1

    .line 958
    .local v1, "callback":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControlCallBack;
    invoke-virtual {p0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->registerCallback(Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControlCallBack;)V

    .line 959
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto/16 :goto_10

    .line 931
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "callback":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControlCallBack;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    goto :goto_9

    :cond_18
    move v4, v3

    :goto_9
    move v0, v4

    .line 932
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_19

    .line 933
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 934
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 935
    goto/16 :goto_10

    .line 936
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 939
    .local v1, "channel":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 940
    .local v2, "index":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 941
    .local v4, "flags":I
    invoke-virtual {p0, v1, v2, v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setChannelGain(III)I

    move-result v5

    .line 942
    .local v5, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 943
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 944
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 945
    goto/16 :goto_10

    .line 913
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "channel":I
    .end local v2    # "index":I
    .end local v4    # "flags":I
    .end local v5    # "_hidl_out_retval":I
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    goto :goto_a

    :cond_1a
    move v4, v3

    :goto_a
    move v0, v4

    .line 914
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1b

    .line 915
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_10

    .line 918
    :cond_1b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 921
    .local v1, "bus":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 922
    .local v2, "state":Z
    invoke-virtual {p0, v1, v2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setHMIMute(IZ)I

    move-result v4

    .line 923
    .local v4, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 924
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 926
    goto/16 :goto_10

    .line 895
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bus":I
    .end local v2    # "state":Z
    .end local v4    # "_hidl_out_retval":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    goto :goto_b

    :cond_1c
    move v4, v3

    :goto_b
    move v0, v4

    .line 896
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1d

    .line 897
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 899
    goto/16 :goto_10

    .line 900
    :cond_1d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 903
    .restart local v1    # "bus":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 904
    .restart local v2    # "state":Z
    invoke-virtual {p0, v1, v2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setSourceMute(IZ)I

    move-result v4

    .line 905
    .restart local v4    # "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 908
    goto/16 :goto_10

    .line 877
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bus":I
    .end local v2    # "state":Z
    .end local v4    # "_hidl_out_retval":I
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    goto :goto_c

    :cond_1e
    move v4, v3

    :goto_c
    move v0, v4

    .line 878
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1f

    .line 879
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 881
    goto/16 :goto_10

    .line 882
    :cond_1f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 885
    .restart local v1    # "bus":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 886
    .restart local v2    # "state":Z
    invoke-virtual {p0, v1, v2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setMute(IZ)I

    move-result v4

    .line 887
    .restart local v4    # "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 888
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 889
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 890
    goto/16 :goto_10

    .line 859
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bus":I
    .end local v2    # "state":Z
    .end local v4    # "_hidl_out_retval":I
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    goto :goto_d

    :cond_20
    move v4, v3

    :goto_d
    move v0, v4

    .line 860
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_21

    .line 861
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 863
    goto/16 :goto_10

    .line 864
    :cond_21
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 867
    .restart local v1    # "bus":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 868
    .local v2, "value":I
    invoke-virtual {p0, v1, v2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setVolume(II)I

    move-result v4

    .line 869
    .restart local v4    # "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 872
    goto/16 :goto_10

    .line 844
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bus":I
    .end local v2    # "value":I
    .end local v4    # "_hidl_out_retval":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v3, v4

    :cond_22
    move v0, v3

    .line 845
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_23

    .line 846
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    goto/16 :goto_10

    .line 849
    :cond_23
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    new-instance v1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;

    invoke-direct {v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;-><init>()V

    .line 852
    .local v1, "para":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    invoke-virtual {v1, p2}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->readFromParcel(Landroid/os/HwParcel;)V

    .line 853
    invoke-virtual {p0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->releaseAudioSource(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V

    .line 854
    goto/16 :goto_10

    .line 829
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "para":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v3, v4

    :cond_24
    move v0, v3

    .line 830
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_25

    .line 831
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 833
    goto/16 :goto_10

    .line 834
    :cond_25
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    new-instance v1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;

    invoke-direct {v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;-><init>()V

    .line 837
    .restart local v1    # "para":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    invoke-virtual {v1, p2}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->readFromParcel(Landroid/os/HwParcel;)V

    .line 838
    invoke-virtual {p0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->requestAudioSource(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V

    .line 839
    goto/16 :goto_10

    .line 808
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "para":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v3, v4

    :cond_26
    move v0, v3

    .line 809
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_27

    .line 810
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 811
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 812
    goto/16 :goto_10

    .line 813
    :cond_27
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 816
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;

    invoke-direct {v2, p0, p3}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub$1;-><init>(Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1, v2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->getParameters(Ljava/util/ArrayList;Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$getParametersCallback;)V

    .line 824
    goto/16 :goto_10

    .line 791
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    goto :goto_e

    :cond_28
    move v4, v3

    :goto_e
    move v0, v4

    .line 792
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_29

    .line 793
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 794
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 795
    goto/16 :goto_10

    .line 796
    :cond_29
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-static {p2}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 799
    .local v1, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    invoke-virtual {p0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setParameters(Ljava/util/ArrayList;)I

    move-result v2

    .line 800
    .local v2, "_hidl_out_retval":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 801
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 802
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 803
    goto :goto_10

    .line 777
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "_hidl_out_retval":I
    :pswitch_b
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2a

    move v3, v4

    :cond_2a
    move v1, v3

    .line 778
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_2b

    .line 779
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 781
    goto :goto_10

    .line 782
    :cond_2b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v0

    .line 785
    .local v0, "value":F
    invoke-virtual {p0, v0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setFadeTowardFront(F)V

    .line 786
    goto :goto_10

    .line 763
    .end local v0    # "value":F
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2c

    move v3, v4

    :cond_2c
    move v1, v3

    .line 764
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_2d

    .line 765
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 766
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 767
    goto :goto_10

    .line 768
    :cond_2d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v0

    .line 771
    .restart local v0    # "value":F
    invoke-virtual {p0, v0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->setBalanceTowardRight(F)V

    .line 772
    goto :goto_10

    .line 746
    .end local v0    # "value":F
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2e

    goto :goto_f

    :cond_2e
    move v4, v3

    :goto_f
    move v1, v4

    .line 747
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_2f

    .line 748
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 749
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 750
    goto :goto_10

    .line 751
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 754
    .local v0, "contextNumber":I
    invoke-virtual {p0, v0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->getBusForContext(I)I

    move-result v2

    .line 755
    .local v2, "_hidl_out_busNumber":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 756
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 757
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 758
    nop

    .line 1146
    .end local v0    # "contextNumber":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_busNumber":I
    :cond_30
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 697
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 725
    const-string v0, "vendor.yfve.hardware.audiocontrol@1.0::IAudioControl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    return-object p0

    .line 728
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    invoke-virtual {p0, p1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->registerService(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 687
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 719
    const/4 v0, 0x1

    return v0
.end method
