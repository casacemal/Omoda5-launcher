.class public Lcom/chery/common/PageConstants$DialerIntents;
.super Ljava/lang/Object;
.source "PageConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/common/PageConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialerIntents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/common/PageConstants$DialerIntents$PageId;
    }
.end annotation


# static fields
.field public static final ACTION_SHOW_PAGE:Ljava/lang/String; = "com.chery.dialer.ACTION_SHOW_PAGE"

.field public static final EXTRA_ACTION_READ_MISSED:Ljava/lang/String; = "com.chery.dialer.EXTRA_ACTION_READ_MISSED"

.field public static final EXTRA_CALL_NUMBER:Ljava/lang/String; = "call_dialpad_number"

.field public static final EXTRA_SHOW_INCOMING_CALL:Ljava/lang/String; = "show_incoming_call"

.field public static final EXTRA_SHOW_PAGE:Ljava/lang/String; = "com.chery.dialer.EXTRA_SHOW_PAGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
