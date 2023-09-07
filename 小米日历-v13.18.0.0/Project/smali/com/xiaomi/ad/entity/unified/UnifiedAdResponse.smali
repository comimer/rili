.class public Lcom/xiaomi/ad/entity/unified/UnifiedAdResponse;
.super Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;
.source "UnifiedAdResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase<",
        "Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "UnifiedAdResponse"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static final deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/unified/UnifiedAdResponse;
    .locals 2

    .line 1
    const-class v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdResponse;

    .line 2
    .line 3
    const-string v1, "UnifiedAdResponse"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdResponse;

    .line 10
    .line 11
    return-object p0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UnifiedAdResponse"

    return-object v0
.end method
