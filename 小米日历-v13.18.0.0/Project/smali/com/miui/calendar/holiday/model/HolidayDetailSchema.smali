.class public Lcom/miui/calendar/holiday/model/HolidayDetailSchema;
.super Ljava/lang/Object;
.source "HolidayDetailSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/holiday/model/HolidayDetailSchema$HolidayDetailExtraSchema;
    }
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

.field public cardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/card/schema/CustomCardSchema;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public extra:Lcom/miui/calendar/holiday/model/HolidayDetailSchema$HolidayDetailExtraSchema;

.field public image:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public prop:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
