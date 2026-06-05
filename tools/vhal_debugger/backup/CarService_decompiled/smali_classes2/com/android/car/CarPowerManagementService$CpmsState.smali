.class Lcom/android/car/CarPowerManagementService$CpmsState;
.super Ljava/lang/Object;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CpmsState"
.end annotation


# static fields
.field public static final ON:I = 0x1

.field private static final PWR_MODE_ABNORMAL:I = 0x5

.field private static final PWR_MODE_NONE:I = 0x0

.field private static final PWR_MODE_OFF:I = 0x1

.field private static final PWR_MODE_OFF_USER:I = 0x7

.field private static final PWR_MODE_PARTIALRUN:I = 0x8

.field private static final PWR_MODE_PROTECTION:I = 0xa

.field private static final PWR_MODE_RUN:I = 0x3

.field private static final PWR_MODE_SLEEP:I = 0x4

.field private static final PWR_MODE_STANDBY:I = 0x2

.field private static final PWR_MODE_TEMPRUN_ENDING:I = 0x13

.field private static final PWR_MODE_TEMP_ON:I = 0x6

.field private static final PWR_REQ_SYSTEM_OFF:I = 0x14

.field public static final SHUTDOWN_PREPARE:I = 0x2

.field public static final SIMULATE_SLEEP:I = 0x5

.field private static SUPPORT_YF_POWER_MODULE:Z = false

.field public static final SUSPEND:I = 0x4

.field public static final WAIT_FOR_FINISH:I = 0x3

.field public static final WAIT_FOR_VHAL:I


# instance fields
.field public final mCanPostpone:Z

.field public final mCanSleep:Z

.field public final mCarPowerStateListenerState:I

.field public final mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1517
    const-string v0, "ro.feature.yfpower.module"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/CarPowerManagementService$CpmsState;->SUPPORT_YF_POWER_MODULE:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1590
    invoke-static {p1}, Lcom/android/car/CarPowerManagementService$CpmsState;->cpmsStateToPowerStateListenerState(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/car/CarPowerManagementService$CpmsState;-><init>(II)V

    .line 1591
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "carPowerStateListenerState"    # I

    .line 1593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    .line 1598
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    .line 1599
    iput p2, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    .line 1600
    iput p1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    .line 1601
    return-void
.end method

.method constructor <init>(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 4
    .param p1, "halPowerState"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 1544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    sget-boolean v0, Lcom/android/car/CarPowerManagementService$CpmsState;->SUPPORT_YF_POWER_MODULE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1547
    iget v0, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$CpmsState;->cpmsStateToPowerStateListenerState(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    .line 1548
    iget v0, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    iput v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    .line 1549
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    .line 1550
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    goto :goto_0

    .line 1552
    :cond_0
    iget v0, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 1580
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    .line 1581
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    .line 1582
    iput v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    .line 1583
    iput v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    goto :goto_0

    .line 1573
    :cond_1
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    .line 1574
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    .line 1575
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$CpmsState;->cpmsStateToPowerStateListenerState(I)I

    move-result v1

    iput v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    .line 1576
    iput v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    .line 1577
    goto :goto_0

    .line 1567
    :cond_2
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    .line 1568
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    .line 1569
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    .line 1570
    iput v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    .line 1571
    goto :goto_0

    .line 1560
    :cond_3
    invoke-virtual {p1}, Lcom/android/car/hal/PowerHalService$PowerState;->canPostponeShutdown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    .line 1561
    invoke-virtual {p1}, Lcom/android/car/hal/PowerHalService$PowerState;->canEnterDeepSleep()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    .line 1562
    invoke-static {v3}, Lcom/android/car/CarPowerManagementService$CpmsState;->cpmsStateToPowerStateListenerState(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    .line 1564
    iput v3, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    .line 1565
    goto :goto_0

    .line 1554
    :cond_4
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    .line 1555
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    .line 1556
    invoke-static {v2}, Lcom/android/car/CarPowerManagementService$CpmsState;->cpmsStateToPowerStateListenerState(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    .line 1557
    iput v2, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    .line 1558
    nop

    .line 1587
    :goto_0
    return-void
.end method

.method private static cpmsStateToPowerStateListenerState(I)I
    .locals 2
    .param p0, "state"    # I

    .line 1634
    const/4 v0, 0x0

    .line 1635
    .local v0, "powerStateListenerState":I
    sget-boolean v1, Lcom/android/car/CarPowerManagementService$CpmsState;->SUPPORT_YF_POWER_MODULE:Z

    if-eqz v1, :cond_3

    .line 1636
    const/16 v1, 0xa

    if-eq p0, v1, :cond_2

    const/16 v1, 0x13

    if-eq p0, v1, :cond_1

    const/16 v1, 0x14

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1662
    :pswitch_0
    const/16 v0, 0x11

    .line 1663
    goto :goto_0

    .line 1659
    :pswitch_1
    const/16 v0, 0x10

    .line 1660
    goto :goto_0

    .line 1656
    :pswitch_2
    const/16 v0, 0xf

    .line 1657
    goto :goto_0

    .line 1653
    :pswitch_3
    const/16 v0, 0xe

    .line 1654
    goto :goto_0

    .line 1650
    :pswitch_4
    const/16 v0, 0xd

    .line 1651
    goto :goto_0

    .line 1647
    :pswitch_5
    const/16 v0, 0xc

    .line 1648
    goto :goto_0

    .line 1644
    :pswitch_6
    const/16 v0, 0xb

    .line 1645
    goto :goto_0

    .line 1641
    :pswitch_7
    const/16 v0, 0xa

    .line 1642
    goto :goto_0

    .line 1638
    :pswitch_8
    const/16 v0, 0x9

    .line 1639
    goto :goto_0

    .line 1671
    :cond_0
    const/16 v0, 0x14

    .line 1672
    goto :goto_0

    .line 1668
    :cond_1
    const/16 v0, 0x13

    .line 1669
    goto :goto_0

    .line 1665
    :cond_2
    const/16 v0, 0x12

    .line 1666
    nop

    .line 1677
    :goto_0
    return v0

    .line 1680
    :cond_3
    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4

    goto :goto_1

    .line 1688
    :cond_4
    const/4 v0, 0x2

    .line 1689
    goto :goto_1

    .line 1685
    :cond_5
    const/4 v0, 0x7

    .line 1686
    goto :goto_1

    .line 1682
    :cond_6
    const/4 v0, 0x6

    .line 1683
    nop

    .line 1696
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1702
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1703
    return v0

    .line 1705
    :cond_0
    instance-of v1, p1, Lcom/android/car/CarPowerManagementService$CpmsState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1706
    return v2

    .line 1708
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 1709
    .local v1, "that":Lcom/android/car/CarPowerManagementService$CpmsState;
    iget v3, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    iget v4, v1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    iget-boolean v4, v1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    iget-boolean v4, v1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    iget v4, v1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .line 1605
    sget-boolean v0, Lcom/android/car/CarPowerManagementService$CpmsState;->SUPPORT_YF_POWER_MODULE:Z

    if-eqz v0, :cond_2

    .line 1606
    iget v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1618
    const-string v0, "<unknown>"

    .local v0, "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1615
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "PWR_MODE_PARTIALRUN"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1614
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_1
    const-string v0, "PWR_MODE_OFF_USER"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1613
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PWR_MODE_TEMP_ON"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1612
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_3
    const-string v0, "PWR_MODE_ABNORMAL"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1611
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_4
    const-string v0, "PWR_MODE_SLEEP"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1610
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_5
    const-string v0, "WAIT_FOR_FINISH"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1609
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_6
    const-string v0, "SHUTDOWN_PREPARE"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1608
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_7
    const-string v0, "PWR_MODE_OFF"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1607
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_8
    const-string v0, "PWR_MODE_NONE"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1617
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_0
    const-string v0, "PWR_REQ_SYSTEM_OFF"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1616
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_1
    const-string v0, "PWR_MODE_TEMPRUN_ENDING"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1621
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 1628
    const-string v0, "<unknown>"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1627
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_3
    const-string v0, "SIMULATE_SLEEP"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1626
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_4
    const-string v0, "SUSPEND"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1625
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_5
    const-string v0, "WAIT_FOR_FINISH"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1624
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_6
    const-string v0, "SHUTDOWN_PREPARE"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1623
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_7
    const-string v0, "ON"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 1622
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_8
    const-string v0, "WAIT_FOR_VHAL"

    .line 1631
    .restart local v0    # "baseName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpmsState canSleep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canPostpone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", carPowerStateListenerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CpmsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-virtual {p0}, Lcom/android/car/CarPowerManagementService$CpmsState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1717
    return-object v0
.end method
