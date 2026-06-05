.class public interface abstract annotation Landroid/car/encryptionrunner/HandshakeMessage$HandshakeState;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/encryptionrunner/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "HandshakeState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FINISHED:I = 0x3

.field public static final INVALID:I = 0x4

.field public static final IN_PROGRESS:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field public static final VERIFICATION_NEEDED:I = 0x2
