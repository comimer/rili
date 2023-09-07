.class public abstract Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;
.super Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;
.source "AdResponseEntityBase.java"

# interfaces
.implements Lcom/xiaomi/ad/entity/contract/IAdResponseEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;",
        ">",
        "Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;",
        "Lcom/xiaomi/ad/entity/contract/IAdResponseEntity;"
    }
.end annotation


# instance fields
.field private adInfos:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "adInfoList"
        }
        value = "adInfos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;-><init>()V

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


# virtual methods
.method public final getAdInfo(I)Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->adInfos:Ljava/util/List;

    invoke-static {v0, p1}, Ld6/a;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;

    return-object p1
.end method

.method public bridge synthetic getAdInfo(I)Lcom/xiaomi/ad/entity/contract/IGsonEntity;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->getAdInfo(I)Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;

    move-result-object p1

    return-object p1
.end method

.method public final getAdInfoCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->adInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ld6/a;->c(Ljava/util/Collection;)I

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

.method public final getAdInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->adInfos:Ljava/util/List;

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

.method public final hasAdInfos()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdResponseEntityBase;->adInfos:Ljava/util/List;

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
