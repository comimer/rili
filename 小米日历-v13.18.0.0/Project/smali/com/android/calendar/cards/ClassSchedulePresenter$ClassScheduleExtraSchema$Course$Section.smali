.class Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;
.super Ljava/lang/Object;
.source "ClassSchedulePresenter.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Section"
.end annotation


# instance fields
.field endTime:Ljava/lang/String;

.field section:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sectionTitle:Ljava/lang/String;

.field startTime:Ljava/lang/String;

.field timeDesc:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;->sectionTitle:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;->timeDesc:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;->section:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;->startTime:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;->endTime:Ljava/lang/String;

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
