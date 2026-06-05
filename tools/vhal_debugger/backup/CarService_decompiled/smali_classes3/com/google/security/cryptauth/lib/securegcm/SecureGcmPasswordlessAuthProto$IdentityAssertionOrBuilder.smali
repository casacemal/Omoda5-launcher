.class public interface abstract Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertionOrBuilder;
.super Ljava/lang/Object;
.source "SecureGcmPasswordlessAuthProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdentityAssertionOrBuilder"
.end annotation


# virtual methods
.method public abstract getBrowserDataHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCounter()J
.end method

.method public abstract getUserApproval()I
.end method

.method public abstract hasBrowserDataHash()Z
.end method

.method public abstract hasCounter()Z
.end method

.method public abstract hasUserApproval()Z
.end method
