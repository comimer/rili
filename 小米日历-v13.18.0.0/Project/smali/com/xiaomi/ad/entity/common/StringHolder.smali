.class public Lcom/xiaomi/ad/entity/common/StringHolder;
.super Ljava/lang/Object;
.source "StringHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderSerializer;,
        Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderDeserializer;
    }
.end annotation


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .line 1
    const-class v0, Lcom/xiaomi/ad/entity/common/StringHolder;

    .line 2
    .line 3
    new-instance v1, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderSerializer;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderSerializer;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->registerJsonSerializer(Ljava/lang/Class;Lcom/google/gson/JsonSerializer;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderDeserializer;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/xiaomi/ad/entity/common/StringHolder$StringHolderDeserializer;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->registerJsonDeserializer(Ljava/lang/Class;Lcom/google/gson/JsonDeserializer;)V

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method
