.class public Lcom/android/calendar/cards/ClassSchedulePresenter$b;
.super Ljava/lang/Object;
.source "ClassSchedulePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/ClassSchedulePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field public b:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->b:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/calendar/cards/ClassSchedulePresenter;->p()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->c:I

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
