.class public Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarConfigInfoClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IConfigManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;
    }
.end annotation


# static fields
.field private static final MSG_CONFIG_INFO:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;


# instance fields
.field private config_7010:[B

.field private config_7019:[B

.field private config_701A:[B

.field private config_701B:[B

.field private config_7038:[B

.field private handlerThread:Landroid/os/HandlerThread;

.field private isConnected:Z

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IConfigListener;

.field private mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

.field private mEcuHwNumber:Ljava/lang/String;

.field private mEcuSerialNumber:Ljava/lang/String;

.field private mEcuSwNumber:Ljava/lang/String;

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;

.field private mUuid:Ljava/lang/String;

.field private mVehiclePartNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isConnected:Z

    new-array v1, v0, [B

    .line 37
    iput-object v1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7010:[B

    new-array v1, v0, [B

    .line 38
    iput-object v1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7019:[B

    new-array v1, v0, [B

    .line 39
    iput-object v1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_701A:[B

    new-array v1, v0, [B

    .line 40
    iput-object v1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_701B:[B

    new-array v0, v0, [B

    .line 41
    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7038:[B

    return-void
.end method

.method static synthetic access$000(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7010:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->parseConfig7010([B)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Lcom/chery/caradapter/carapi/constants/CarConfigInfo;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuHwNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuSwNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Lcom/chery/caradapter/carapi/interfaces/IConfigListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IConfigListener;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isConnected:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getConfigInfo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7019:[B

    return-object p0
.end method

.method static synthetic access$2000(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->parseConfig7019([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_701A:[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->parseConfig701A([B)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_701B:[B

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->parseConfig701B([B)V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)[B
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7038:[B

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;[B)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->parseConfig7038([B)V

    return-void
.end method

.method private getConfigInfo()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x21706202

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getByteProperty(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7010:[B

    .line 130
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x21706203

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getByteProperty(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7019:[B

    .line 131
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x21706204

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getByteProperty(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_701A:[B

    .line 132
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x21706205

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getByteProperty(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_701B:[B

    .line 133
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x2170620f

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getByteProperty(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7038:[B

    .line 135
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x21106207

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getStringProperty(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuHwNumber:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x21106206

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getStringProperty(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuSwNumber:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x21106208

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getStringProperty(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuSerialNumber:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x21106209

    .line 139
    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getStringProperty(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    const v1, 0x2110620a

    invoke-virtual {v0, v1}, Landroid/car/CarInfoManager;->getStringProperty(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mUuid:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_701A:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_701B:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7010:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->config_7019:[B

    if-eqz p0, :cond_0

    array-length p0, p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;
    .locals 2

    .line 93
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    return-object v0
.end method

.method private parseConfig7010([B)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1789
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x6

    const/4 v4, 0x3

    and-int/2addr v3, v4

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->immo:I

    .line 1791
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x5

    const/4 v5, 0x1

    and-int/2addr v3, v5

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->esp:I

    .line 1792
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    shr-int/2addr v3, v1

    and-int/2addr v3, v5

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->abs:I

    .line 1793
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->abm:I

    .line 1794
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    const/4 v6, 0x2

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->icm:I

    .line 1795
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->bcm:I

    .line 1796
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ems:I

    .line 1799
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->radar:I

    .line 1800
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->sas:I

    .line 1801
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tpms:I

    .line 1802
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/2addr v2, v1

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->peps:I

    .line 1803
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/2addr v2, v4

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eps:I

    .line 1804
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/2addr v2, v6

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->clm:I

    .line 1805
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/2addr v2, v5

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tcu2:I

    .line 1806
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tcu1:I

    .line 1809
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    shr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0xf

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->language:I

    .line 1810
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    shr-int/2addr v2, v4

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->epb:I

    .line 1811
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    shr-int/2addr v2, v6

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tcu4:I

    .line 1812
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    shr-int/2addr v2, v5

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tcu3:I

    .line 1813
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->avm:I

    .line 1816
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ldw:I

    .line 1817
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->autoLight:I

    .line 1818
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->bsd:I

    .line 1819
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/lit8 v1, v2, 0x4

    and-int/2addr v1, v5

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->reverseAssistVideo:I

    .line 1820
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->radioArea:I

    .line 1821
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte p1, p1, v4

    and-int/2addr p1, v4

    iput p1, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->overSpeedWarning:I

    :cond_0
    return-void
.end method

.method private parseConfig7019([B)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1826
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x7

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speaker:I

    .line 1830
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    shr-int/2addr v3, v1

    const/4 v4, 0x1

    and-int/2addr v3, v4

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->plg:I

    .line 1831
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    const/4 v5, 0x3

    shr-int/2addr v3, v5

    and-int/2addr v3, v4

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fcm:I

    .line 1832
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    const/4 v6, 0x2

    shr-int/2addr v3, v6

    and-int/2addr v3, v4

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->aqm:I

    .line 1833
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v3, p1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v4

    iput v3, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speedAutoLock:I

    .line 1834
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->mirrorAutoFold:I

    .line 1839
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->avmType:I

    .line 1840
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->grmSwitch:I

    .line 1841
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/2addr v2, v1

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->steeringWheel:I

    .line 1842
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/2addr v2, v5

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ihu:I

    .line 1843
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/2addr v2, v6

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->antenna:I

    .line 1844
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    shr-int/2addr v2, v4

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eipm:I

    .line 1845
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v4

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->steeringMode:I

    .line 1848
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->pepsType:I

    .line 1849
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    shr-int/2addr v2, v1

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interactiveMode:I

    .line 1850
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    shr-int/2addr v2, v5

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frm:I

    .line 1851
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    shr-int/2addr v2, v4

    and-int/2addr v2, v5

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->nmType:I

    .line 1852
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v6

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->lka:I

    .line 1855
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->arNavi:I

    .line 1856
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->faceReco:I

    .line 1857
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v5

    shr-int/lit8 v1, v2, 0x4

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cwc:I

    .line 1858
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->scu:I

    .line 1859
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->dvr:I

    .line 1860
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLighting:I

    .line 1861
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte p1, p1, v5

    and-int/2addr p1, v4

    iput p1, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->mfs:I

    :cond_0
    return-void
.end method

.method private parseConfig701A([B)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1866
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x7

    shr-int/2addr v2, v3

    const/4 v4, 0x1

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->arkamysAdvanced:I

    .line 1870
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    const/4 v5, 0x5

    shr-int/2addr v2, v5

    const/4 v6, 0x3

    and-int/2addr v2, v6

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLightingType:I

    .line 1871
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    const/4 v7, 0x4

    shr-int/2addr v2, v7

    and-int/2addr v2, v4

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frontWindshieldHeating:I

    .line 1872
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cfg2:I

    .line 1876
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->dow:I

    .line 1877
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    const/4 v2, 0x6

    shr-int/2addr v1, v2

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->btKey:I

    .line 1878
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->radarAlarmDisplay:I

    .line 1879
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->autoDefog:I

    .line 1880
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->intelligentOpenTrunk:I

    .line 1881
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    const/4 v8, 0x2

    shr-int/2addr v1, v8

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->gotoUnlockAndLeaveLock:I

    .line 1882
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->welcomeFunction:I

    .line 1883
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v4

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->aipm:I

    .line 1887
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v8

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ion:I

    .line 1888
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v8

    shr-int/2addr v1, v2

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->auto:I

    .line 1889
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v8

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->qdlink:I

    .line 1890
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v8

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fragrance:I

    .line 1891
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v8

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->carplay:I

    .line 1892
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v8

    shr-int/2addr v1, v8

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->drl:I

    .line 1893
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v8

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->dateFromBus:I

    .line 1894
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v8

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->acp:I

    .line 1897
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rcw:I

    .line 1898
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    .line 1899
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eamp:I

    .line 1900
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rearRadarsNumber:I

    .line 1901
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->assistLine:I

    .line 1904
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v2

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->displayType:I

    .line 1905
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->faceStyle:I

    .line 1906
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->radioArea2:I

    .line 1907
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v8

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->apa:I

    .line 1908
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->apm:I

    .line 1909
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cgw:I

    .line 1911
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->reserved2:I

    .line 1912
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    shr-int/2addr v1, v2

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->lightedRoofRack:I

    .line 1913
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->seatVentilating:I

    .line 1914
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->SONYsound:I

    .line 1915
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberofDriveMode2:I

    .line 1916
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->naviInformation:I

    .line 1918
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v2

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->beidou:I

    .line 1919
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v2

    shr-int/2addr v1, v2

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->sla:I

    .line 1920
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v2

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cmosInteractiveMode:I

    .line 1921
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->avmIntergatedMethod:I

    .line 1922
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v2

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->sunroof:I

    .line 1924
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->digitalBroadcastAntenna:I

    .line 1925
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->seatMassage:I

    .line 1926
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cvbox:I

    .line 1927
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->hud:I

    .line 1928
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->idleStartStopType:I

    .line 1929
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frontRadar:I

    .line 1930
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte p1, p1, v3

    and-int/2addr p1, v4

    iput p1, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tboxEcallExternalmodule:I

    :cond_0
    return-void
.end method

.method private parseConfig701B([B)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1935
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->emergencyLaneKeeping:I

    .line 1937
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    const/4 v4, 0x6

    shr-int/2addr v2, v4

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speedControlFunction:I

    .line 1938
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->idleStartStopSystem:I

    .line 1939
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    const/4 v5, 0x4

    shr-int/2addr v2, v5

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eclm:I

    .line 1940
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    const/4 v6, 0x3

    shr-int/2addr v2, v6

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ccp:I

    .line 1941
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    const/4 v7, 0x2

    shr-int/2addr v2, v7

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rrcr:I

    .line 1942
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    shr-int/2addr v2, v3

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rlcr:I

    .line 1943
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->epsIntegratedSAS:I

    .line 1945
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->intelligentEvasionSystem:I

    .line 1946
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->driverAwayInformation:I

    .line 1947
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/lit8 v1, v1, 0x5

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->automaticEmergencyBraking:I

    .line 1948
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->voiceRecognition:I

    .line 1949
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v6

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->trafficLightIdentification:I

    .line 1950
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v7

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->trafficSignRecognition:I

    .line 1951
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v3

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->trafficJamAssist:I

    .line 1952
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->laneDeparturePrevention:I

    .line 1954
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->passengerSeatVentilation:I

    .line 1955
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->passengerSeatHeating:I

    .line 1956
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/lit8 v1, v1, 0x5

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->driverSeatVentilation:I

    .line 1957
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->driverSeatHeating:I

    .line 1958
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v6

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->shu1p:I

    .line 1959
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v7

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->shu1d:I

    .line 1960
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    shr-int/2addr v1, v3

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speedLimitAssistance:I

    .line 1961
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v7

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rearCrossTrafficBraking:I

    .line 1963
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->lhm:I

    .line 1964
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fatigueMonitoring:I

    .line 1965
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/lit8 v1, v1, 0x5

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ecall:I

    .line 1966
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x7

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->reverseAssistVideoType:I

    .line 1967
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    shr-int/2addr v1, v3

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->shu2r:I

    .line 1968
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v6

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->shu2l:I

    .line 1970
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v5

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rhm:I

    .line 1972
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte p1, p1, v4

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->brand:I

    :cond_0
    return-void
.end method

.method private parseConfig7038([B)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1977
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->sunroofAtmosphereLamp:I

    .line 1979
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    iput v2, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ihuDcmLearnSK:I

    .line 1980
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    shr-int/2addr v1, v2

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rearviewMirrorScrollDown:I

    .line 1982
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte v1, p1, v3

    shr-int/2addr v1, v3

    and-int/2addr v1, v3

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->seatRearViewMirrorMemory:I

    .line 1984
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->navigationMap:I

    .line 1986
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->country:I

    :cond_0
    return-void
.end method


# virtual methods
.method public SteeringWheel()I
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->steeringWheel:I

    return p0
.end method

.method public getAebVisibility()Z
    .locals 2

    .line 1584
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->automaticEmergencyBraking:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getAirPart1Visibility()Z
    .locals 1

    .line 1752
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAutoDefrostVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getSelfCleaningVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAutoVentilationVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1753
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getCustomAirVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAutoRunVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAirPart2Visibility()Z
    .locals 1

    .line 1757
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getWelcomeModeVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRefreshVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAirVisibility()Z
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAirPart1Visibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAirPart2Visibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAssModeVisibility()Z
    .locals 2

    .line 1628
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->steeringMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getAssVisibility()Z
    .locals 1

    .line 1635
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->steeringMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAssistLine()I
    .locals 0

    .line 1009
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->assistLine:I

    return p0
.end method

.method public getAutoDefrostVisibility()Z
    .locals 1

    .line 1761
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->autoDefog:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoFoldVisibility()Z
    .locals 1

    .line 1726
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->mirrorAutoFold:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoLockVisibility()Z
    .locals 1

    .line 1718
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speedAutoLock:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoRunVisibility()Z
    .locals 1

    .line 1777
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->aqm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoVentilationVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAvmIntergatedMethod()I
    .locals 0

    .line 1133
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->avmIntergatedMethod:I

    return p0
.end method

.method public getAvmType()I
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->avmType:I

    return p0
.end method

.method public getBasicPart1Visibility()Z
    .locals 1

    .line 1709
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAutoLockVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRemoteLockVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1710
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAutoFoldVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getTrunkVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getBasicPart2Visibility()Z
    .locals 1

    .line 1714
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getCwcVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getPhoneForgottenVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getBasicVisibility()Z
    .locals 1

    .line 1705
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getBasicPart1Visibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getBasicPart2Visibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getBsdVisibility()Z
    .locals 2

    .line 1560
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rlcr:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rrcr:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCherySWVersionCode()Ljava/lang/String;
    .locals 0

    .line 1991
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    invoke-virtual {p0}, Landroid/car/CarInfoManager;->getCherySWVersionCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCmosInteractiveMode()I
    .locals 0

    .line 1125
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cmosInteractiveMode:I

    return p0
.end method

.method public getConfiguration2()I
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cfg2:I

    return p0
.end method

.method public getCountry()I
    .locals 0

    .line 2003
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->country:I

    return p0
.end method

.method public getCustomAirVisibility()Z
    .locals 1

    .line 1773
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->clm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCwcVisibility()Z
    .locals 1

    .line 1734
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cwc:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDMSVisibility()Z
    .locals 1

    .line 1580
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fatigueMonitoring:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDaiVisibility()Z
    .locals 1

    .line 1600
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->driverAwayInformation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDimmingStatusVisibility()Z
    .locals 1

    .line 1676
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLighting:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplayType()I
    .locals 0

    .line 1017
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->displayType:I

    return p0
.end method

.method public getDowVisibility()Z
    .locals 1

    .line 1552
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->dow:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDriverModeVisibility()Z
    .locals 2

    .line 1688
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLighting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getDriverPart1Visibility()Z
    .locals 1

    .line 1534
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDowVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRcwVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getBsdVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1535
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getFcwSensVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAebVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getLdwVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getLdwWarnVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getLdwSensVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDriverPart2Visibility()Z
    .locals 1

    .line 1539
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getSlaVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getOverSpeedVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDMSVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRctbVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getFcmElkVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getLdpVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getSpeedControlVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1540
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getIesVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getTjaicaExitVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDaiVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getTrafficSignalLightVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getTrafficSymbolVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDriverPart3Visibility()Z
    .locals 1

    .line 1544
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAssVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getAssModeVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRememberDriveModeVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDriverVisibility()Z
    .locals 1

    .line 1530
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDriverPart1Visibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDriverPart2Visibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDriverPart3Visibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDrlVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEcuHwNumber()Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuHwNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getEcuSerialNumber()Ljava/lang/String;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getEcuSwNumber()Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mEcuSwNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getEspVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFaceStyle()I
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->faceStyle:I

    return p0
.end method

.method public getFcmElkVisibility()Z
    .locals 1

    .line 1624
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->emergencyLaneKeeping:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFcwSensVisibility()Z
    .locals 2

    .line 1592
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->automaticEmergencyBraking:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getFcwVisibility()Z
    .locals 2

    .line 1588
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->automaticEmergencyBraking:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getHdcVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getHeadlampDelayVisibility()Z
    .locals 1

    .line 1512
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->autoLight:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeadlampHeightVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getHmaVisibility()Z
    .locals 1

    .line 1516
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fcm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIdleStartStopType()I
    .locals 0

    .line 1175
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->idleStartStopType:I

    return p0
.end method

.method public getIesVisibility()Z
    .locals 1

    .line 1604
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->intelligentEvasionSystem:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIhu()I
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ihu:I

    return p0
.end method

.method public getImmo()I
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->immo:I

    return p0
.end method

.method public getIntelligentKeyVisibility()Z
    .locals 1

    .line 1473
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getWelLightVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getPepsPollingVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getIntelligentOpenVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getIntelligentOpenVisibility()Z
    .locals 1

    .line 1485
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->intelligentOpenTrunk:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInteractiveMode()I
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interactiveMode:I

    return p0
.end method

.method public getInteriorLightingType()I
    .locals 0

    .line 815
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLightingType:I

    return p0
.end method

.method public getIssVisibility()Z
    .locals 1

    .line 1661
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->idleStartStopSystem:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLanguage()I
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->language:I

    return p0
.end method

.method public getLdpVisibility()Z
    .locals 1

    .line 1616
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->laneDeparturePrevention:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLdwSensVisibility()Z
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fcm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ldw:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getLdwVisibility()Z
    .locals 2

    .line 1608
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fcm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ldw:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getLdwWarnVisibility()Z
    .locals 1

    .line 1612
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ldw:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLightBrightnessVisibility()Z
    .locals 1

    .line 1680
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLighting:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLightColorVisibility()Z
    .locals 1

    .line 1684
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLighting:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLightVisibility()Z
    .locals 1

    .line 1494
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDrlVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getHeadlampDelayVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getHmaVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getHeadlampHeightVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getMusicModeVisibility()Z
    .locals 1

    .line 1695
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLighting:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNmType()I
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->nmType:I

    return p0
.end method

.method public getNumberOfDriveMode()I
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    return p0
.end method

.method public getNumberOfSpeaker()I
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speaker:I

    return p0
.end method

.method public getOutMusicModeVisibility()Z
    .locals 2

    .line 1502
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->lhm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rhm:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getOverSpeedVisibility()Z
    .locals 1

    .line 1576
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->overSpeedWarning:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOverSpeedWarning()I
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->overSpeedWarning:I

    return p0
.end method

.method public getPepsPollingVisibility()Z
    .locals 1

    .line 1481
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->gotoUnlockAndLeaveLock:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPepsType()I
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->peps:I

    return p0
.end method

.method public getPersionalVisibility()Z
    .locals 1

    .line 1671
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDimmingStatusVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getLightBrightnessVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getLightColorVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1672
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getDriverModeVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getMusicModeVisibility()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getPhoneForgottenVisibility()Z
    .locals 1

    .line 1738
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cwc:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v1, "T19C"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "646AA"

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "647AA"

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "648AA"

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "649AA"

    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "650AA"

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "555AA"

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "556AA"

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "899AA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "900AA"

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v2, "901AA"

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 287
    :cond_2
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v0, "812AA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "T19C_CHINA"

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    const-string p0, "T1E"

    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getRadarAlarmDisplay()I
    .locals 0

    .line 859
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->radarAlarmDisplay:I

    return p0
.end method

.method public getRadarVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRadioArea()I
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->radioArea:I

    return p0
.end method

.method public getRadioArea2()I
    .locals 0

    .line 1037
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->radioArea2:I

    return p0
.end method

.method public getRctbVisibility()Z
    .locals 1

    .line 1596
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rearCrossTrafficBraking:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRcwVisibility()Z
    .locals 1

    .line 1556
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rcw:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRearRadarsNumber()I
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rearRadarsNumber:I

    return p0
.end method

.method public getRefreshVisibility()Z
    .locals 1

    .line 1785
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fragrance:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRememberDriveModeVisibility()Z
    .locals 2

    .line 1639
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberOfDriveMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getRemoteLockVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getReverseAssistVideoType()I
    .locals 0

    .line 1417
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->reverseAssistVideoType:I

    return p0
.end method

.method public getRomSize()I
    .locals 1

    .line 351
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "648AA"

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public getSNumberofDriveMode2()I
    .locals 0

    .line 1093
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->numberofDriveMode2:I

    return p0
.end method

.method public getSOCVersionCode()Ljava/lang/String;
    .locals 0

    .line 1995
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    invoke-virtual {p0}, Landroid/car/CarInfoManager;->getSOCVersionCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelfCleaningVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSlaVisibility()Z
    .locals 1

    .line 1572
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->sla:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSpeedControlVisibility()Z
    .locals 1

    .line 1568
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speedControlFunction:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSunroof()I
    .locals 0

    .line 1143
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->sunroof:I

    return p0
.end method

.method public getTboxEcallExternalmodule()I
    .locals 0

    .line 1191
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tboxEcallExternalmodule:I

    return p0
.end method

.method public getTjaicaExitVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTrafficSignalLightVisibility()Z
    .locals 1

    .line 1657
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->trafficLightIdentification:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTrafficSymbolVisibility()Z
    .locals 1

    .line 1653
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->trafficSignRecognition:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTrunkVisibility()Z
    .locals 1

    .line 1730
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->plg:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getVehicleName()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->brand:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "T19C_OMODA"

    return-object p0

    :cond_0
    const-string p0, "T19C"

    return-object p0
.end method

.method public getVehiclePartNumber()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getWelLightVisibility()Z
    .locals 1

    .line 1477
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->welcomeFunction:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWelcomeModeVisibility()Z
    .locals 1

    .line 1781
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fragrance:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAbm()Z
    .locals 1

    .line 401
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->abm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAbs()Z
    .locals 1

    .line 393
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->abs:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAcp()Z
    .locals 1

    .line 963
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->acp:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAipm()Z
    .locals 1

    .line 899
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->aipm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAntenna()Z
    .locals 1

    .line 679
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->antenna:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasApa()Z
    .locals 1

    .line 1045
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->apa:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasApm()Z
    .locals 1

    .line 1053
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->apm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasArNavi()Z
    .locals 1

    .line 749
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->arNavi:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasArkamysAdvanced()Z
    .locals 1

    .line 805
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->arkamysAdvanced:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAuto()Z
    .locals 1

    .line 915
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->auto:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAutoAC()Z
    .locals 2

    .line 1449
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->clm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eclm:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasAutoDefog()Z
    .locals 1

    .line 867
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->autoDefog:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAutoLight()Z
    .locals 1

    .line 547
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->autoLight:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAutomaticEmergencyBraking()Z
    .locals 1

    .line 1279
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->automaticEmergencyBraking:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAvm()Z
    .locals 1

    .line 531
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->avm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBcm()Z
    .locals 1

    .line 417
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->bcm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBeidou()Z
    .locals 1

    .line 1109
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->beidou:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBsd()Z
    .locals 1

    .line 555
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->bsd:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBtKey()Z
    .locals 1

    .line 849
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->btKey:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCarPlay()Z
    .locals 1

    .line 939
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->carplay:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCcp()Z
    .locals 1

    .line 1231
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ccp:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCerenceVr()Z
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->voiceRecognition:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCgw()Z
    .locals 1

    .line 1061
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cgw:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClm()Z
    .locals 1

    .line 473
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->clm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCvbox()Z
    .locals 1

    .line 1159
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cvbox:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCwc()Z
    .locals 1

    .line 765
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cwc:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDAB()Z
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "555AA"

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v3, "898AA"

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v3, "901AA"

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v3, "845AA"

    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->digitalBroadcastAntenna:I

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public hasDateFromBus()Z
    .locals 1

    .line 955
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->dateFromBus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDow()Z
    .locals 1

    .line 841
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->dow:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDriverAwayInformation()Z
    .locals 1

    .line 1271
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->driverAwayInformation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDriverSeatHeating()Z
    .locals 1

    .line 1351
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->driverSeatHeating:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDriverSeatVentilation()Z
    .locals 1

    .line 1343
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->driverSeatVentilation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDrl()Z
    .locals 1

    .line 947
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->drl:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDvr()Z
    .locals 1

    .line 781
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->dvr:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEamp()Z
    .locals 1

    .line 989
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eamp:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEcall()Z
    .locals 1

    .line 1407
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ecall:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEclm()Z
    .locals 1

    .line 1223
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eclm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEipm()Z
    .locals 1

    .line 687
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eipm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasElecAc()Z
    .locals 2

    .line 1457
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget v0, v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->clm:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eclm:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasEmergencyLaneKeeping()Z
    .locals 1

    .line 1199
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->emergencyLaneKeeping:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEms()Z
    .locals 1

    .line 425
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ems:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEpb()Z
    .locals 1

    .line 507
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->epb:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEps()Z
    .locals 1

    .line 465
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->eps:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEpsIntegratedSAS()Z
    .locals 1

    .line 1255
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->epsIntegratedSAS:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEsp()Z
    .locals 1

    .line 385
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->esp:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFaceRecognition()Z
    .locals 1

    .line 757
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->faceReco:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFatigueMonitoring()Z
    .locals 1

    .line 1399
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fatigueMonitoring:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFcm()Z
    .locals 1

    .line 609
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fcm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFragrance()Z
    .locals 1

    .line 931
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->fragrance:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFrm()Z
    .locals 1

    .line 723
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFrontRadar()Z
    .locals 1

    .line 1183
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frontRadar:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFrontWindshieldHeating()Z
    .locals 1

    .line 823
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->frontWindshieldHeating:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGotoUnlockAndLeaveLock()Z
    .locals 1

    .line 883
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->gotoUnlockAndLeaveLock:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGrmSwitch()Z
    .locals 1

    .line 651
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->grmSwitch:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIcm()Z
    .locals 1

    .line 409
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->icm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIdleStartStopSystem()Z
    .locals 1

    .line 1215
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->idleStartStopSystem:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIntelligentEvasionSystem()Z
    .locals 1

    .line 1263
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->intelligentEvasionSystem:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIntelligentOpenTrunk()Z
    .locals 1

    .line 875
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->intelligentOpenTrunk:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInteriorLighting()Z
    .locals 1

    .line 789
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->interiorLightingType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIon()Z
    .locals 1

    .line 907
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ion:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLaneDeparturePrevention()Z
    .locals 1

    .line 1319
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->laneDeparturePrevention:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLdw()Z
    .locals 1

    .line 539
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->ldw:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLhm()Z
    .locals 1

    .line 1391
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->lhm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLightedRoofRack()Z
    .locals 1

    .line 1069
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->lightedRoofRack:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLka()Z
    .locals 1

    .line 741
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->lka:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMfs()Z
    .locals 1

    .line 797
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->mfs:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMirrorAutoFold()Z
    .locals 1

    .line 633
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->mirrorAutoFold:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNaviInformation()Z
    .locals 1

    .line 1101
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->naviInformation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPM25()Z
    .locals 1

    .line 617
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->aqm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPassengerSeatHeating()Z
    .locals 1

    .line 1335
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->passengerSeatHeating:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPassengerSeatVentilation()Z
    .locals 1

    .line 1327
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->passengerSeatVentilation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPeps()Z
    .locals 1

    .line 457
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->peps:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlg()Z
    .locals 1

    .line 601
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->plg:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQDLink()Z
    .locals 1

    .line 923
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->qdlink:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadar()Z
    .locals 1

    .line 433
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->radar:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRcw()Z
    .locals 1

    .line 971
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rcw:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRearCrossTrafficBraking()Z
    .locals 1

    .line 1383
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rearCrossTrafficBraking:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReverseAssistVideo()Z
    .locals 1

    .line 563
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->reverseAssistVideo:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRhm()Z
    .locals 1

    .line 1441
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rhm:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRlcr()Z
    .locals 1

    .line 1247
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rlcr:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRrcr()Z
    .locals 1

    .line 1239
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->rrcr:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSas()Z
    .locals 1

    .line 441
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->sas:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScu()Z
    .locals 1

    .line 773
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->scu:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSeatMassage()Z
    .locals 1

    .line 1151
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->seatMassage:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSeatVentilating()Z
    .locals 1

    .line 1077
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->seatVentilating:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShu1d()Z
    .locals 1

    .line 1367
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->shu1d:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShu1p()Z
    .locals 1

    .line 1359
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->shu1p:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShu2l()Z
    .locals 1

    .line 1433
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->shu2l:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShu2r()Z
    .locals 1

    .line 1425
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->shu2r:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSla()Z
    .locals 1

    .line 1117
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->sla:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSonySound()Z
    .locals 1

    .line 1085
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->SONYsound:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeedAutoLock()Z
    .locals 1

    .line 625
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speedAutoLock:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeedControlFunction()Z
    .locals 1

    .line 1207
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speedControlFunction:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeedLimitAssistance()Z
    .locals 1

    .line 1375
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->speedLimitAssistance:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSteeringMode()Z
    .locals 1

    .line 695
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->steeringMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTcu1()Z
    .locals 1

    .line 489
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tcu1:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTcu2()Z
    .locals 1

    .line 481
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tcu2:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTcu3()Z
    .locals 1

    .line 523
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tcu3:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTcu4()Z
    .locals 1

    .line 515
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tcu4:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTpms()Z
    .locals 1

    .line 449
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->tpms:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrafficJamAssist()Z
    .locals 1

    .line 1311
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->trafficJamAssist:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrafficLightIdentification()Z
    .locals 1

    .line 1295
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->trafficLightIdentification:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrafficSignRecognition()Z
    .locals 1

    .line 1303
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->trafficSignRecognition:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTurboDogNavi()Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "646AA"

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const-string v0, "647AA"

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public hasVoiceRecognition()Z
    .locals 1

    .line 1287
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->voiceRecognition:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWelcomeFunction()Z
    .locals 1

    .line 891
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->welcomeFunction:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWifi()Z
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->hasCarPlay()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->hasAuto()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashud()Z
    .locals 1

    .line 1167
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->hud:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init()V
    .locals 4

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->handlerThread:Landroid/os/HandlerThread;

    .line 105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;

    .line 108
    new-instance v0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    invoke-direct {v0}, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;-><init>()V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    .line 109
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;

    new-instance v1, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$1;

    invoke-direct {v1, p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$1;-><init>(Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient$CarHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isAutomaticTransmission()Z
    .locals 1

    .line 1464
    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->hasTcu1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->hasTcu2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->hasTcu3()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->hasTcu4()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isChina()Z
    .locals 2

    .line 313
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "812AA"

    .line 316
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isConnected()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isConnected:Z

    return p0
.end method

.method public isDebug()Z
    .locals 1

    const-string p0, "persist.Config.chery.config.debug"

    const/4 v0, 0x0

    .line 368
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPartNumberBrazil()Z
    .locals 2

    .line 339
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mVehiclePartNumber:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "556AA"

    .line 342
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isRudderRight()Z
    .locals 1

    .line 330
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->mConfig:Lcom/chery/caradapter/carapi/constants/CarConfigInfo;

    iget p0, p0, Lcom/chery/caradapter/carapi/constants/CarConfigInfo;->cfg2:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IConfigListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IConfigListener;

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method
