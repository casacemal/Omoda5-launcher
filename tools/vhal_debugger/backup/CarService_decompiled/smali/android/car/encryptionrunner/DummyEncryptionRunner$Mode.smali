.class interface abstract annotation Landroid/car/encryptionrunner/DummyEncryptionRunner$Mode;
.super Ljava/lang/Object;
.source "DummyEncryptionRunner.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/encryptionrunner/DummyEncryptionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "Mode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CLIENT:I = 0x1

.field public static final SERVER:I = 0x2

.field public static final UNKNOWN:I
