.class public interface abstract annotation Lcom/google/security/annotations/CryptoAnnotation;
.super Ljava/lang/Object;
.source "CryptoAnnotation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/security/annotations/CryptoAnnotation;
        bugId = 0x0
        description = ""
        removalDate = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;,
        Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;,
        Lcom/google/security/annotations/CryptoAnnotation$Purpose;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract bugId()I
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract leakSeverity()Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;
.end method

.method public abstract owner()Ljava/lang/String;
.end method

.method public abstract purpose()Lcom/google/security/annotations/CryptoAnnotation$Purpose;
.end method

.method public abstract removalDate()Ljava/lang/String;
.end method

.method public abstract removalPriority()Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;
.end method
