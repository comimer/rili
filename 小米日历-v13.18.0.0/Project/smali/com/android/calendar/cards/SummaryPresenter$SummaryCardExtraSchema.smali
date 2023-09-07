.class Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;
.super Ljava/lang/Object;
.source "SummaryPresenter.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/SummaryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryCardExtraSchema"
.end annotation


# instance fields
.field icon:Ljava/lang/String;

.field reopenDaysAd:I

.field reopenDaysNormal:I

.field tagText:Ljava/lang/String;

.field tagTextBgColor:Ljava/lang/String;

.field tagTextColor:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->icon:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->tagText:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->tagTextColor:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->tagTextBgColor:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->reopenDaysNormal:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->reopenDaysAd:I

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method
