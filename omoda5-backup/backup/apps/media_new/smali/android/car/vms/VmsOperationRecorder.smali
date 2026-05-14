.class public final Landroid/car/vms/VmsOperationRecorder;
.super Ljava/lang/Object;
.source "VmsOperationRecorder.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/vms/VmsOperationRecorder$Writer;
    }
.end annotation


# static fields
.field private static final INSTANCE:Landroid/car/vms/VmsOperationRecorder;

.field private static final TAG:Ljava/lang/String; = "VmsOperationRecorder"


# instance fields
.field private final mWriter:Landroid/car/vms/VmsOperationRecorder$Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/car/vms/VmsOperationRecorder;

    new-instance v1, Landroid/car/vms/VmsOperationRecorder$Writer;

    invoke-direct {v1}, Landroid/car/vms/VmsOperationRecorder$Writer;-><init>()V

    invoke-direct {v0, v1}, Landroid/car/vms/VmsOperationRecorder;-><init>(Landroid/car/vms/VmsOperationRecorder$Writer;)V

    sput-object v0, Landroid/car/vms/VmsOperationRecorder;->INSTANCE:Landroid/car/vms/VmsOperationRecorder;

    return-void
.end method

.method public constructor <init>(Landroid/car/vms/VmsOperationRecorder$Writer;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/car/vms/VmsOperationRecorder;->mWriter:Landroid/car/vms/VmsOperationRecorder$Writer;

    return-void
.end method

.method public static get()Landroid/car/vms/VmsOperationRecorder;
    .locals 1

    .line 41
    sget-object v0, Landroid/car/vms/VmsOperationRecorder;->INSTANCE:Landroid/car/vms/VmsOperationRecorder;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 0

    .line 208
    iget-object p0, p0, Landroid/car/vms/VmsOperationRecorder;->mWriter:Landroid/car/vms/VmsOperationRecorder$Writer;

    invoke-virtual {p0}, Landroid/car/vms/VmsOperationRecorder$Writer;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private recordOp(Ljava/lang/String;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Landroid/car/vms/VmsOperationRecorder;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/car/vms/VmsOperationRecorder;->write(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VmsOperationRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private recordOp(Ljava/lang/String;Landroid/car/vms/VmsLayer;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Landroid/car/vms/VmsOperationRecorder;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "layer"

    invoke-static {p2}, Landroid/car/vms/VmsOperationRecorder;->toJson(Landroid/car/vms/VmsLayer;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VmsOperationRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private recordOp(Ljava/lang/String;Landroid/car/vms/VmsLayersOffering;)V
    .locals 3

    .line 133
    invoke-direct {p0}, Landroid/car/vms/VmsOperationRecorder;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "publisherId"

    .line 136
    invoke-virtual {p2}, Landroid/car/vms/VmsLayersOffering;->getPublisherId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    invoke-static {p2}, Landroid/car/vms/VmsOperationRecorder;->toJson(Landroid/car/vms/VmsLayersOffering;)Lorg/json/JSONArray;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "layerDependency"

    .line 139
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VmsOperationRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private recordOp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 149
    invoke-direct {p0}, Landroid/car/vms/VmsOperationRecorder;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VmsOperationRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private recordOp(Ljava/lang/String;Ljava/lang/String;ILandroid/car/vms/VmsLayer;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Landroid/car/vms/VmsOperationRecorder;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "layer"

    invoke-static {p4}, Landroid/car/vms/VmsOperationRecorder;->toJson(Landroid/car/vms/VmsLayer;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VmsOperationRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private recordOp(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 170
    invoke-direct {p0}, Landroid/car/vms/VmsOperationRecorder;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/car/vms/VmsOperationRecorder;->write(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VmsOperationRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static toJson(Landroid/car/vms/VmsLayersOffering;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 200
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 201
    invoke-virtual {p0}, Landroid/car/vms/VmsLayersOffering;->getDependencies()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/vms/VmsLayerDependency;

    .line 202
    invoke-static {v1}, Landroid/car/vms/VmsOperationRecorder;->toJson(Landroid/car/vms/VmsLayerDependency;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toJson(Landroid/car/vms/VmsLayer;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 181
    invoke-virtual {p0}, Landroid/car/vms/VmsLayer;->getType()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Landroid/car/vms/VmsLayer;->getSubtype()I

    move-result v1

    const-string v2, "subtype"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/car/vms/VmsLayer;->getVersion()I

    move-result p0

    const-string v1, "version"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static toJson(Landroid/car/vms/VmsLayerDependency;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 188
    invoke-virtual {p0}, Landroid/car/vms/VmsLayerDependency;->getLayer()Landroid/car/vms/VmsLayer;

    move-result-object v1

    invoke-static {v1}, Landroid/car/vms/VmsOperationRecorder;->toJson(Landroid/car/vms/VmsLayer;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "layer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {p0}, Landroid/car/vms/VmsLayerDependency;->getDependencies()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 191
    invoke-virtual {p0}, Landroid/car/vms/VmsLayerDependency;->getDependencies()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/vms/VmsLayer;

    .line 192
    invoke-static {v2}, Landroid/car/vms/VmsOperationRecorder;->toJson(Landroid/car/vms/VmsLayer;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p0, "dependency"

    .line 194
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method private write(Lorg/json/JSONObject;)V
    .locals 0

    .line 212
    iget-object p0, p0, Landroid/car/vms/VmsOperationRecorder;->mWriter:Landroid/car/vms/VmsOperationRecorder$Writer;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/car/vms/VmsOperationRecorder$Writer;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addHalSubscription(ILandroid/car/vms/VmsLayer;)V
    .locals 2

    const-string v0, "addHalSubscription"

    const-string v1, "sequenceNumber"

    .line 97
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;ILandroid/car/vms/VmsLayer;)V

    return-void
.end method

.method public addPromiscuousSubscription(I)V
    .locals 2

    const-string v0, "addPromiscuousSubscription"

    const-string v1, "sequenceNumber"

    .line 89
    invoke-direct {p0, v0, v1, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public addSubscription(ILandroid/car/vms/VmsLayer;)V
    .locals 2

    const-string v0, "addSubscription"

    const-string v1, "sequenceNumber"

    .line 81
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;ILandroid/car/vms/VmsLayer;)V

    return-void
.end method

.method public getPublisherId(I)V
    .locals 2

    const-string v0, "getPublisherId"

    const-string v1, "publisherId"

    .line 75
    invoke-direct {p0, v0, v1, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public removeHalSubscription(ILandroid/car/vms/VmsLayer;)V
    .locals 2

    const-string v0, "removeHalSubscription"

    const-string v1, "sequenceNumber"

    .line 101
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;ILandroid/car/vms/VmsLayer;)V

    return-void
.end method

.method public removePromiscuousSubscription(I)V
    .locals 2

    const-string v0, "removePromiscuousSubscription"

    const-string v1, "sequenceNumber"

    .line 93
    invoke-direct {p0, v0, v1, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public removeSubscription(ILandroid/car/vms/VmsLayer;)V
    .locals 2

    const-string v0, "removeSubscription"

    const-string v1, "sequenceNumber"

    .line 85
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;ILandroid/car/vms/VmsLayer;)V

    return-void
.end method

.method public setHalPublisherLayersOffering(Landroid/car/vms/VmsLayersOffering;)V
    .locals 1

    const-string v0, "setHalPublisherLayersOffering"

    .line 109
    invoke-direct {p0, v0, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Landroid/car/vms/VmsLayersOffering;)V

    return-void
.end method

.method public setLayersOffering(Landroid/car/vms/VmsLayersOffering;)V
    .locals 1

    const-string v0, "setLayersOffering"

    .line 71
    invoke-direct {p0, v0, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Landroid/car/vms/VmsLayersOffering;)V

    return-void
.end method

.method public setPublisherLayersOffering(Landroid/car/vms/VmsLayersOffering;)V
    .locals 1

    const-string v0, "setPublisherLayersOffering"

    .line 105
    invoke-direct {p0, v0, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Landroid/car/vms/VmsLayersOffering;)V

    return-void
.end method

.method public startMonitoring()V
    .locals 1

    const-string v0, "startMonitoring"

    .line 63
    invoke-direct {p0, v0}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;)V

    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    const-string v0, "stopMonitoring"

    .line 67
    invoke-direct {p0, v0}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;)V

    return-void
.end method

.method public subscribe(Landroid/car/vms/VmsLayer;)V
    .locals 1

    const-string v0, "subscribe"

    .line 47
    invoke-direct {p0, v0, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Landroid/car/vms/VmsLayer;)V

    return-void
.end method

.method public subscribe(Landroid/car/vms/VmsLayer;I)V
    .locals 2

    const-string v0, "subscribe"

    const-string v1, "publisherId"

    .line 55
    invoke-direct {p0, v0, v1, p2, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;ILandroid/car/vms/VmsLayer;)V

    return-void
.end method

.method public unsubscribe(Landroid/car/vms/VmsLayer;)V
    .locals 1

    const-string v0, "unsubscribe"

    .line 51
    invoke-direct {p0, v0, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Landroid/car/vms/VmsLayer;)V

    return-void
.end method

.method public unsubscribe(Landroid/car/vms/VmsLayer;I)V
    .locals 2

    const-string v0, "unsubscribe"

    const-string v1, "publisherId"

    .line 59
    invoke-direct {p0, v0, v1, p2, p1}, Landroid/car/vms/VmsOperationRecorder;->recordOp(Ljava/lang/String;Ljava/lang/String;ILandroid/car/vms/VmsLayer;)V

    return-void
.end method
