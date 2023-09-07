.class public Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;
.super Ljava/lang/Object;
.source "ClassSchedulePresenter.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/ClassSchedulePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassScheduleExtraSchema"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;,
        Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$CoursesDesc;
    }
.end annotation


# instance fields
.field cardId:I

.field courses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;",
            ">;"
        }
    .end annotation
.end field

.field coursesDesc:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$CoursesDesc;

.field day:I

.field presentWeek:I

.field showType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->cardId:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->showType:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->presentWeek:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->coursesDesc:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$CoursesDesc;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->courses:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->day:I

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method
