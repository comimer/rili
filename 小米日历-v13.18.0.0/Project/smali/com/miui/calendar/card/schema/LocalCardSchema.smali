.class public Lcom/miui/calendar/card/schema/LocalCardSchema;
.super Ljava/lang/Object;
.source "LocalCardSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public actionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/common/ModuleSchema;",
            ">;"
        }
    .end annotation
.end field

.field public ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/ad/AdSchema;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public extra:Lcom/google/gson/JsonObject;

.field public icon:Ljava/lang/String;

.field public id:J

.field public image:Ljava/lang/String;

.field public params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public sequence:I

.field public showType:I

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
    new-instance v0, Lcom/miui/calendar/card/schema/LocalCardSchema$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/card/schema/LocalCardSchema$a;-><init>()V

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
