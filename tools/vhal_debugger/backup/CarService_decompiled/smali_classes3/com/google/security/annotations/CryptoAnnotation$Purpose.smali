.class public final enum Lcom/google/security/annotations/CryptoAnnotation$Purpose;
.super Ljava/lang/Enum;
.source "CryptoAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/annotations/CryptoAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Purpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/annotations/CryptoAnnotation$Purpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/annotations/CryptoAnnotation$Purpose;

.field public static final enum AUTHENTICATION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

.field public static final enum ENCRYPTION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

.field public static final enum INTEGRITY_CHECK:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

.field public static final enum OBFUSCATION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

.field public static final enum OTHER:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

.field public static final enum PASSWORD:Lcom/google/security/annotations/CryptoAnnotation$Purpose;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 55
    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    const/4 v1, 0x0

    const-string v2, "ENCRYPTION"

    invoke-direct {v0, v2, v1}, Lcom/google/security/annotations/CryptoAnnotation$Purpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->ENCRYPTION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    const/4 v2, 0x1

    const-string v3, "AUTHENTICATION"

    invoke-direct {v0, v3, v2}, Lcom/google/security/annotations/CryptoAnnotation$Purpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->AUTHENTICATION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    const/4 v3, 0x2

    const-string v4, "OBFUSCATION"

    invoke-direct {v0, v4, v3}, Lcom/google/security/annotations/CryptoAnnotation$Purpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->OBFUSCATION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    .line 56
    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    const/4 v4, 0x3

    const-string v5, "INTEGRITY_CHECK"

    invoke-direct {v0, v5, v4}, Lcom/google/security/annotations/CryptoAnnotation$Purpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->INTEGRITY_CHECK:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    const/4 v5, 0x4

    const-string v6, "PASSWORD"

    invoke-direct {v0, v6, v5}, Lcom/google/security/annotations/CryptoAnnotation$Purpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->PASSWORD:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    const/4 v6, 0x5

    const-string v7, "OTHER"

    invoke-direct {v0, v7, v6}, Lcom/google/security/annotations/CryptoAnnotation$Purpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->OTHER:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    sget-object v7, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->ENCRYPTION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->AUTHENTICATION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->OBFUSCATION:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->INTEGRITY_CHECK:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->PASSWORD:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->OTHER:Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->$VALUES:[Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/annotations/CryptoAnnotation$Purpose;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    return-object v0
.end method

.method public static values()[Lcom/google/security/annotations/CryptoAnnotation$Purpose;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/security/annotations/CryptoAnnotation$Purpose;->$VALUES:[Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    invoke-virtual {v0}, [Lcom/google/security/annotations/CryptoAnnotation$Purpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/annotations/CryptoAnnotation$Purpose;

    return-object v0
.end method
