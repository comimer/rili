.class public Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;
.super Lcom/xiaomi/ad/entity/contract/AdInfoEntityBase;
.source "UnifiedAdInfo.java"


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "UnifiedAdInfo"


# instance fields
.field private digest:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private endTimeInMillis:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extra:Lcom/xiaomi/ad/entity/common/StringHolder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private materials:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/ad/entity/common/Material;",
            ">;"
        }
    .end annotation
.end field

.field private preload:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private startTimeInMillis:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tagId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/AdInfoEntityBase;-><init>()V

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

.method public static final deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;
    .locals 2

    .line 1
    const-class v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;

    .line 2
    .line 3
    const-string v1, "UnifiedAdInfo"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;

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
.method public getDigest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->digest:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getEndTimeInMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->endTimeInMillis:J

    .line 2
    .line 3
    return-wide v0
    .line 4
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

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->extra:Lcom/xiaomi/ad/entity/common/StringHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/xiaomi/ad/entity/common/StringHolder;->value:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
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

.method public getMaterialById(J)Lcom/xiaomi/ad/entity/common/Material;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->materials:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->materials:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/xiaomi/ad/entity/common/Material;

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v2}, Lcom/xiaomi/ad/entity/common/Material;->getId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    cmp-long v3, v3, p1

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_3
    :goto_1
    return-object v1
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public getMaterials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/ad/entity/common/Material;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->materials:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ld6/a;->a(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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

.method public getResourceById(JJ)Lcom/xiaomi/ad/entity/common/Material$Resource;
    .locals 1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->getMaterialById(J)Lcom/xiaomi/ad/entity/common/Material;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->getResourceById(JJ)Lcom/xiaomi/ad/entity/common/Material$Resource;

    move-result-object p1

    return-object p1
.end method

.method public getResourceById(Lcom/xiaomi/ad/entity/common/Material;J)Lcom/xiaomi/ad/entity/common/Material$Resource;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/ad/entity/common/Material;->getResources()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/ad/entity/common/Material$Resource;

    .line 4
    invoke-virtual {v1}, Lcom/xiaomi/ad/entity/common/Material$Resource;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_2

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getStartTimeInMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->startTimeInMillis:J

    .line 2
    .line 3
    return-wide v0
    .line 4
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

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UnifiedAdInfo"

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->tagId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public isInvalid()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->getStartTimeInMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->getEndTimeInMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    return v5

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    iget-boolean v4, p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdInfo;->preload:Z

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    cmp-long v4, v6, v0

    .line 25
    .line 26
    if-gez v4, :cond_1

    .line 27
    .line 28
    move v4, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, v8

    .line 31
    :goto_0
    if-eqz v4, :cond_2

    .line 32
    .line 33
    return v8

    .line 34
    :cond_2
    cmp-long v0, v0, v6

    .line 35
    .line 36
    if-gtz v0, :cond_3

    .line 37
    .line 38
    cmp-long v0, v6, v2

    .line 39
    .line 40
    if-gtz v0, :cond_3

    .line 41
    .line 42
    return v8

    .line 43
    :cond_3
    return v5
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method
