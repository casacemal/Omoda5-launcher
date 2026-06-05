.class public final enum Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;
.super Ljava/lang/Enum;
.source "CryptoAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/annotations/CryptoAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemovalPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

.field public static final enum P0:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

.field public static final enum P1:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

.field public static final enum P2:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

.field public static final enum P3:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

.field public static final enum P4:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

.field public static final enum WillNotFix:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 58
    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    const/4 v1, 0x0

    const-string v2, "P0"

    invoke-direct {v0, v2, v1}, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P0:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    const/4 v2, 0x1

    const-string v3, "P1"

    invoke-direct {v0, v3, v2}, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P1:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    const/4 v3, 0x2

    const-string v4, "P2"

    invoke-direct {v0, v4, v3}, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P2:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    const/4 v4, 0x3

    const-string v5, "P3"

    invoke-direct {v0, v5, v4}, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P3:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    const/4 v5, 0x4

    const-string v6, "P4"

    invoke-direct {v0, v6, v5}, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P4:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    new-instance v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    const/4 v6, 0x5

    const-string v7, "WillNotFix"

    invoke-direct {v0, v7, v6}, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->WillNotFix:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    sget-object v7, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P0:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P1:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P2:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P3:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->P4:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->WillNotFix:Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->$VALUES:[Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    return-object v0
.end method

.method public static values()[Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;
    .locals 1

    .line 58
    sget-object v0, Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->$VALUES:[Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    invoke-virtual {v0}, [Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/annotations/CryptoAnnotation$RemovalPriority;

    return-object v0
.end method
