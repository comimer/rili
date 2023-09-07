.class public Lcom/miui/calendar/holiday/model/HolidayBriefSchema$HolidayBriefExtraSchema;
.super Ljava/lang/Object;
.source "HolidayBriefSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/holiday/model/HolidayBriefSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HolidayBriefExtraSchema"
.end annotation


# instance fields
.field public action:Lcom/android/calendar/common/ModuleSchema;

.field public buttonActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/common/ModuleSchema;",
            ">;"
        }
    .end annotation
.end field

.field public shareImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
