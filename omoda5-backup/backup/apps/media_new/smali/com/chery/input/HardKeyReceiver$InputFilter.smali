.class public Lcom/chery/input/HardKeyReceiver$InputFilter;
.super Ljava/lang/Object;
.source "HardKeyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/input/HardKeyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputFilter"
.end annotation


# instance fields
.field public final mKeyCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lcom/chery/input/HardKeyReceiver$InputFilter;->mKeyCode:I

    return-void
.end method
