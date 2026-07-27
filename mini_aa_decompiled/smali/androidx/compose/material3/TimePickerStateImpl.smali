.class final Landroidx/compose/material3/TimePickerStateImpl;
.super Ljava/lang/Object;
.source "TimePicker.kt"

# interfaces
.implements Landroidx/compose/material3/TimePickerState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/TimePickerStateImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerStateImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,2008:1\n1#2:2009\n81#3:2010\n107#3,2:2011\n81#3:2013\n107#3,2:2014\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerStateImpl\n*L\n681#1:2010\n681#1:2011,2\n683#1:2013\n683#1:2014,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000 %2\u00020\u0001:\u0001%B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R$\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R+\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00068V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R$\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u000b\"\u0004\u0008\u001d\u0010\rR\u0011\u0010\u001e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0011R1\u0010!\u001a\u00020 2\u0006\u0010\u0016\u001a\u00020 8V@VX\u0096\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001a\u001a\u0004\u0008\"\u0010\u000b\"\u0004\u0008#\u0010\r\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006&"
    }
    d2 = {
        "Landroidx/compose/material3/TimePickerStateImpl;",
        "Landroidx/compose/material3/TimePickerState;",
        "initialHour",
        "",
        "initialMinute",
        "is24Hour",
        "",
        "(IIZ)V",
        "value",
        "hour",
        "getHour",
        "()I",
        "setHour",
        "(I)V",
        "hourState",
        "Landroidx/compose/runtime/MutableIntState;",
        "getHourState",
        "()Landroidx/compose/runtime/MutableIntState;",
        "is24hour",
        "()Z",
        "set24hour",
        "(Z)V",
        "<set-?>",
        "isAfternoon",
        "setAfternoon",
        "isAfternoon$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "minute",
        "getMinute",
        "setMinute",
        "minuteState",
        "getMinuteState",
        "Landroidx/compose/material3/TimePickerSelectionMode;",
        "selection",
        "getSelection-yecRtBI",
        "setSelection-6_8s6DQ",
        "selection$delegate",
        "Companion",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material3/TimePickerStateImpl$Companion;


# instance fields
.field private final hourState:Landroidx/compose/runtime/MutableIntState;

.field private is24hour:Z

.field private final isAfternoon$delegate:Landroidx/compose/runtime/MutableState;

.field private final minuteState:Landroidx/compose/runtime/MutableIntState;

.field private final selection$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/TimePickerStateImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/TimePickerStateImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/TimePickerStateImpl;->Companion:Landroidx/compose/material3/TimePickerStateImpl$Companion;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    const/16 v0, 0x18

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0x3c

    if-ge p2, v0, :cond_1

    .line 679
    iput-boolean p3, p0, Landroidx/compose/material3/TimePickerStateImpl;->is24hour:Z

    .line 681
    sget-object p3, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {p3}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getHour-yecRtBI()I

    move-result p3

    invoke-static {p3}, Landroidx/compose/material3/TimePickerSelectionMode;->box-impl(I)Landroidx/compose/material3/TimePickerSelectionMode;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p3, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/TimePickerStateImpl;->selection$delegate:Landroidx/compose/runtime/MutableState;

    const/16 p3, 0xc

    if-lt p1, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 683
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/TimePickerStateImpl;->isAfternoon$delegate:Landroidx/compose/runtime/MutableState;

    .line 685
    rem-int/2addr p1, p3

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TimePickerStateImpl;->hourState:Landroidx/compose/runtime/MutableIntState;

    .line 687
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TimePickerStateImpl;->minuteState:Landroidx/compose/runtime/MutableIntState;

    return-void

    .line 676
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "initialMinute should be in [0..59] range"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 675
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "initialHour should in [0..23] range"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .line 696
    iget-object v0, p0, Landroidx/compose/material3/TimePickerStateImpl;->hourState:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/TimePickerStateImpl;->isAfternoon()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final getHourState()Landroidx/compose/runtime/MutableIntState;
    .locals 0

    .line 685
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->hourState:Landroidx/compose/runtime/MutableIntState;

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    .line 690
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->minuteState:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public final getMinuteState()Landroidx/compose/runtime/MutableIntState;
    .locals 0

    .line 687
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->minuteState:Landroidx/compose/runtime/MutableIntState;

    return-object p0
.end method

.method public getSelection-yecRtBI()I
    .locals 0

    .line 681
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->selection$delegate:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/State;

    .line 2010
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TimePickerSelectionMode;

    invoke-virtual {p0}, Landroidx/compose/material3/TimePickerSelectionMode;->unbox-impl()I

    move-result p0

    return p0
.end method

.method public is24hour()Z
    .locals 0

    .line 679
    iget-boolean p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->is24hour:Z

    return p0
.end method

.method public isAfternoon()Z
    .locals 0

    .line 683
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->isAfternoon$delegate:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/State;

    .line 2013
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public set24hour(Z)V
    .locals 0

    .line 679
    iput-boolean p1, p0, Landroidx/compose/material3/TimePickerStateImpl;->is24hour:Z

    return-void
.end method

.method public setAfternoon(Z)V
    .locals 0

    .line 683
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->isAfternoon$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2014
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setHour(I)V
    .locals 2

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 698
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/compose/material3/TimePickerStateImpl;->setAfternoon(Z)V

    .line 699
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->hourState:Landroidx/compose/runtime/MutableIntState;

    rem-int/2addr p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    .line 692
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->minuteState:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public setSelection-6_8s6DQ(I)V
    .locals 0

    .line 681
    iget-object p0, p0, Landroidx/compose/material3/TimePickerStateImpl;->selection$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Landroidx/compose/material3/TimePickerSelectionMode;->box-impl(I)Landroidx/compose/material3/TimePickerSelectionMode;

    move-result-object p1

    .line 2011
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
