.class public Lcom/xiaomi/ad/entity/common/Condition;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/entity/common/Condition$ValueRange;,
        Lcom/xiaomi/ad/entity/common/Condition$UserState;,
        Lcom/xiaomi/ad/entity/common/Condition$DeviceState;,
        Lcom/xiaomi/ad/entity/common/Condition$PackageState;,
        Lcom/xiaomi/ad/entity/common/Condition$TimeRange;,
        Lcom/xiaomi/ad/entity/common/Condition$Slot;
    }
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "Condition"


# instance fields
.field private deviceState:Lcom/xiaomi/ad/entity/common/Condition$DeviceState;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceStat"
    .end annotation
.end field

.field private interval:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isOffLine:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private location:Lcom/xiaomi/ad/entity/common/Condition$Slot;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private locations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/ad/entity/common/Condition$Slot;",
            ">;"
        }
    .end annotation
.end field

.field private packageStates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packageStats"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/ad/entity/common/Condition$PackageState;",
            ">;"
        }
    .end annotation
.end field

.field private timeLimit:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private timeRange:Lcom/xiaomi/ad/entity/common/Condition$TimeRange;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userState:Lcom/xiaomi/ad/entity/common/Condition$UserState;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userStat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

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

.method public static deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/common/Condition;
    .locals 2

    .line 1
    const-class v0, Lcom/xiaomi/ad/entity/common/Condition;

    .line 2
    .line 3
    const-string v1, "Condition"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/xiaomi/ad/entity/common/Condition;

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

.method public static parse(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/ad/entity/common/Condition;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/xiaomi/ad/entity/common/Condition;->deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/common/Condition;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string v1, "Condition"

    .line 39
    .line 40
    const-string v2, "condition paser:"

    .line 41
    .line 42
    invoke-static {v1, v2, p0}, Ld6/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-object v0
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


# virtual methods
.method public getDeviceState()Lcom/xiaomi/ad/entity/common/Condition$DeviceState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->deviceState:Lcom/xiaomi/ad/entity/common/Condition$DeviceState;

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

.method public getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->interval:J

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

.method public getLocation()Lcom/xiaomi/ad/entity/common/Condition$Slot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->location:Lcom/xiaomi/ad/entity/common/Condition$Slot;

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

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/ad/entity/common/Condition$Slot;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->locations:Ljava/util/List;

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

.method public getPackageStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/ad/entity/common/Condition$PackageState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->packageStates:Ljava/util/List;

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

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Condition"

    return-object v0
.end method

.method public getTimeLimit()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->timeLimit:J

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

.method public getTimeRange()Lcom/xiaomi/ad/entity/common/Condition$TimeRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->timeRange:Lcom/xiaomi/ad/entity/common/Condition$TimeRange;

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

.method public getUserState()Lcom/xiaomi/ad/entity/common/Condition$UserState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->userState:Lcom/xiaomi/ad/entity/common/Condition$UserState;

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

.method public hasDeviceStates()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->deviceState:Lcom/xiaomi/ad/entity/common/Condition$DeviceState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method public hasLocation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->location:Lcom/xiaomi/ad/entity/common/Condition$Slot;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method public hasLocations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->locations:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ld6/a;->e(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public hasOnlyTimeRange()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/common/Condition;->hasLocations()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/common/Condition;->hasPackageStates()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/common/Condition;->hasDeviceStates()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/common/Condition;->hasUserState()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
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

.method public hasPackageStates()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->packageStates:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ld6/a;->e(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public hasTimeRange()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->timeRange:Lcom/xiaomi/ad/entity/common/Condition$TimeRange;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method public hasUserState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->userState:Lcom/xiaomi/ad/entity/common/Condition$UserState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method public isOffLine()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->isOffLine:Z

    .line 2
    .line 3
    return v0
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

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->location:Lcom/xiaomi/ad/entity/common/Condition$Slot;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->timeRange:Lcom/xiaomi/ad/entity/common/Condition$TimeRange;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
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
