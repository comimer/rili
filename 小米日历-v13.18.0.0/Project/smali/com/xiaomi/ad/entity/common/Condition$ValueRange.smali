.class public Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueRange"
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "ValueRange"


# instance fields
.field max:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field min:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/ad/entity/common/Condition;


# direct methods
.method public constructor <init>(Lcom/xiaomi/ad/entity/common/Condition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/ad/entity/common/Condition$ValueRange;->this$0:Lcom/xiaomi/ad/entity/common/Condition;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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
.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/ad/entity/common/Condition$ValueRange;->max:I

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

.method public getMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/ad/entity/common/Condition$ValueRange;->min:I

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

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueRange"

    return-object v0
.end method
