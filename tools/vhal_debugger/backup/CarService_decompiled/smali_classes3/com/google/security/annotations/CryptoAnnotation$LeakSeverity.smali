.class public final enum Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;
.super Ljava/lang/Enum;
.source "CryptoAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/annotations/CryptoAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeakSeverity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

.field public static final enum NoRisk:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

.field public static final enum S0:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

.field public static final enum S1:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

.field public static final enum S2:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

.field public static final enum S3:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

.field public static final enum S4:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 57
    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    const/4 v1, 0x0

    const-string v2, "S0"

    invoke-direct {v0, v2, v1}, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S0:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    const/4 v2, 0x1

    const-string v3, "S1"

    invoke-direct {v0, v3, v2}, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S1:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    const/4 v3, 0x2

    const-string v4, "S2"

    invoke-direct {v0, v4, v3}, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S2:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    const/4 v4, 0x3

    const-string v5, "S3"

    invoke-direct {v0, v5, v4}, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S3:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    const/4 v5, 0x4

    const-string v6, "S4"

    invoke-direct {v0, v6, v5}, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S4:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    const/4 v6, 0x5

    const-string v7, "NoRisk"

    invoke-direct {v0, v7, v6}, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->NoRisk:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    sget-object v7, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S0:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S1:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S2:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S3:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->S4:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->NoRisk:Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->$VALUES:[Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    return-object v0
.end method

.method public static values()[Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;
    .locals 1

    .line 57
    sget-object v0, Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->$VALUES:[Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    invoke-virtual {v0}, [Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/annotations/CryptoAnnotation$LeakSeverity;

    return-object v0
.end method
