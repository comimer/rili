.class public Lcom/miui/calendar/card/schema/CustomCardItemSchema;
.super Ljava/lang/Object;
.source "CustomCardItemSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public action:Lcom/android/calendar/common/ModuleSchema;

.field public author:Ljava/lang/String;

.field public cardId:J

.field public description:Ljava/lang/String;

.field public endTime:J

.field public extra:Lcom/google/gson/JsonObject;

.field public id:J

.field public image:Ljava/lang/String;

.field public startTime:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/card/schema/CustomCardItemSchema$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/card/schema/CustomCardItemSchema$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
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
