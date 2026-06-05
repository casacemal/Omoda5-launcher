.class public Lcom/android/car/hal/InputHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "InputHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/InputHalService$KeyState;,
        Lcom/android/car/hal/InputHalService$InputListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DISPLAY_INSTRUMENT_CLUSTER:I = 0x1

.field public static final DISPLAY_MAIN:I


# instance fields
.field private final mHal:Lcom/android/car/hal/VehicleHal;

.field private mKeyInputSupported:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mKeyStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeyStates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/hal/InputHalService$KeyState;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/car/hal/InputHalService$InputListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mUptimeSupplier:Ljava/util/function/LongSupplier;


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 1
    .param p1, "hal"    # Lcom/android/car/hal/VehicleHal;

    .line 72
    sget-object v0, Lcom/android/car/hal/-$$Lambda$2-WG14V_pUY_jRzlz8ohJ-pqdJA;->INSTANCE:Lcom/android/car/hal/-$$Lambda$2-WG14V_pUY_jRzlz8ohJ-pqdJA;

    invoke-direct {p0, p1, v0}, Lcom/android/car/hal/InputHalService;-><init>(Lcom/android/car/hal/VehicleHal;Ljava/util/function/LongSupplier;)V

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/android/car/hal/VehicleHal;Ljava/util/function/LongSupplier;)V
    .locals 1
    .param p1, "hal"    # Lcom/android/car/hal/VehicleHal;
    .param p2, "uptimeSupplier"    # Ljava/util/function/LongSupplier;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/InputHalService;->mKeyStates:Landroid/util/SparseArray;

    .line 77
    iput-object p1, p0, Lcom/android/car/hal/InputHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 78
    iput-object p2, p0, Lcom/android/car/hal/InputHalService;->mUptimeSupplier:Ljava/util/function/LongSupplier;

    .line 79
    return-void
.end method

.method private dispatchKeyEvent(Lcom/android/car/hal/InputHalService$InputListener;III)V
    .locals 22
    .param p1, "listener"    # Lcom/android/car/hal/InputHalService$InputListener;
    .param p2, "action"    # I
    .param p3, "code"    # I
    .param p4, "display"    # I

    .line 160
    move-object/from16 v1, p0

    move/from16 v15, p3

    iget-object v0, v1, Lcom/android/car/hal/InputHalService;->mUptimeSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v13

    .line 165
    .local v13, "eventTime":J
    iget-object v2, v1, Lcom/android/car/hal/InputHalService;->mKeyStates:Landroid/util/SparseArray;

    monitor-enter v2

    .line 166
    :try_start_0
    iget-object v0, v1, Lcom/android/car/hal/InputHalService;->mKeyStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/hal/InputHalService$KeyState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    .local v0, "state":Lcom/android/car/hal/InputHalService$KeyState;
    if-nez v0, :cond_0

    .line 168
    :try_start_1
    new-instance v3, Lcom/android/car/hal/InputHalService$KeyState;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/car/hal/InputHalService$KeyState;-><init>(Lcom/android/car/hal/InputHalService$1;)V

    move-object v0, v3

    .line 169
    iget-object v3, v1, Lcom/android/car/hal/InputHalService;->mKeyStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 187
    .end local v0    # "state":Lcom/android/car/hal/InputHalService$KeyState;
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-wide/from16 v20, v13

    goto :goto_3

    .line 172
    .restart local v0    # "state":Lcom/android/car/hal/InputHalService$KeyState;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 173
    move-wide v3, v13

    .line 174
    .local v3, "downTime":J
    iget v5, v0, Lcom/android/car/hal/InputHalService$KeyState;->mRepeatCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/android/car/hal/InputHalService$KeyState;->mRepeatCount:I

    .line 175
    .local v5, "repeat":I
    iput-wide v13, v0, Lcom/android/car/hal/InputHalService$KeyState;->mLastKeyDownTimestamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v16, v3

    move v0, v5

    goto :goto_2

    .line 181
    .end local v3    # "downTime":J
    .end local v5    # "repeat":I
    :cond_1
    :try_start_2
    iget-wide v3, v0, Lcom/android/car/hal/InputHalService$KeyState;->mLastKeyDownTimestamp:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 182
    move-wide v3, v13

    goto :goto_1

    .line 183
    :cond_2
    iget-wide v3, v0, Lcom/android/car/hal/InputHalService$KeyState;->mLastKeyDownTimestamp:J

    :goto_1
    nop

    .line 184
    .restart local v3    # "downTime":J
    const/4 v5, 0x0

    .line 185
    .restart local v5    # "repeat":I
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/car/hal/InputHalService$KeyState;->mRepeatCount:I

    move-wide/from16 v16, v3

    move v0, v5

    .line 187
    .end local v3    # "downTime":J
    .end local v5    # "repeat":I
    .local v0, "repeat":I
    .local v16, "downTime":J
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-wide/from16 v2, v16

    move-wide v4, v13

    move/from16 v6, p2

    move/from16 v7, p3

    move v8, v0

    move-wide/from16 v20, v13

    .end local v13    # "eventTime":J
    .local v20, "eventTime":J
    move/from16 v13, v18

    move-object/from16 v14, v19

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    .line 202
    .local v2, "event":Landroid/view/KeyEvent;
    move-object/from16 v3, p1

    move/from16 v4, p4

    invoke-interface {v3, v2, v4}, Lcom/android/car/hal/InputHalService$InputListener;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 203
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    .line 204
    return-void

    .line 187
    .end local v0    # "repeat":I
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v16    # "downTime":J
    .end local v20    # "eventTime":J
    .restart local v13    # "eventTime":J
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-wide/from16 v20, v13

    .end local v13    # "eventTime":J
    .restart local v20    # "eventTime":J
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 208
    const-string v0, "*Input HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyInputSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/InputHalService;->mListener:Lcom/android/car/hal/InputHalService$InputListener;

    .line 128
    .local v0, "listener":Lcom/android/car/hal/InputHalService$InputListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-nez v0, :cond_0

    .line 130
    const-string v1, "CAR.INPUT"

    const-string v2, "Input event while listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 134
    .local v2, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    const v4, 0x11410a10

    if-eq v3, v4, :cond_1

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong event dispatched, prop:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v4, "CAR.INPUT"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    goto :goto_0

    .line 139
    :cond_1
    iget-object v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 140
    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v3, v4

    .line 141
    .local v3, "action":I
    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 142
    .local v4, "code":I
    iget-object v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v6, v6, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 143
    .local v6, "display":I
    iget-object v7, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 152
    .local v5, "indentsCount":I
    :goto_2
    if-lez v5, :cond_4

    .line 153
    add-int/lit8 v5, v5, -0x1

    .line 154
    invoke-direct {p0, v0, v3, v4, v6}, Lcom/android/car/hal/InputHalService;->dispatchKeyEvent(Lcom/android/car/hal/InputHalService$InputListener;III)V

    goto :goto_2

    .line 156
    .end local v2    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v3    # "action":I
    .end local v4    # "code":I
    .end local v5    # "indentsCount":I
    .end local v6    # "display":I
    :cond_4
    goto/16 :goto_0

    .line 157
    :cond_5
    return-void

    .line 128
    .end local v0    # "listener":Lcom/android/car/hal/InputHalService$InputListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 0

    .line 98
    return-void
.end method

.method public declared-synchronized isKeyInputSupported()Z
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/car/hal/InputHalService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 1

    .line 102
    monitor-enter p0

    .line 103
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/car/hal/InputHalService;->mListener:Lcom/android/car/hal/InputHalService$InputListener;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputListener(Lcom/android/car/hal/InputHalService$InputListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/hal/InputHalService$InputListener;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    if-nez v0, :cond_0

    .line 84
    const-string v0, "CAR.INPUT"

    const-string v1, "input listener set while key input not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/android/car/hal/InputHalService;->mListener:Lcom/android/car/hal/InputHalService$InputListener;

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/android/car/hal/InputHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v1, 0x11410a10

    invoke-virtual {v0, p0, v1}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .line 111
    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 112
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 113
    .local v2, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const v4, 0x11410a10

    if-ne v3, v4, :cond_0

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-enter p0

    .line 116
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    .line 117
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 119
    .end local v2    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :cond_0
    :goto_1
    goto :goto_0

    .line 120
    :cond_1
    return-object v0
.end method
