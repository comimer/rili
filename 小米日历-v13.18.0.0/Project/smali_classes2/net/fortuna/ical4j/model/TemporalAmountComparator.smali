.class public Lnet/fortuna/ical4j/model/TemporalAmountComparator;
.super Ljava/lang/Object;
.source "TemporalAmountComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/time/temporal/TemporalAmount;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/time/temporal/TemporalUnit;)Z
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/TemporalAmountComparator;->lambda$compare$0(Ljava/time/temporal/TemporalUnit;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/time/temporal/TemporalUnit;)Z
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/TemporalAmountComparator;->lambda$compare$1(Ljava/time/temporal/TemporalUnit;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$compare$0(Ljava/time/temporal/TemporalUnit;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method private static synthetic lambda$compare$1(Ljava/time/temporal/TemporalUnit;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/time/temporal/TemporalAmount;

    check-cast p2, Ljava/time/temporal/TemporalAmount;

    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/TemporalAmountComparator;->compare(Ljava/time/temporal/TemporalAmount;Ljava/time/temporal/TemporalAmount;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/time/temporal/TemporalAmount;Ljava/time/temporal/TemporalAmount;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    if-nez v0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lnet/fortuna/ical4j/model/g0;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/g0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 4
    invoke-interface {p2}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lnet/fortuna/ical4j/model/h0;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/h0;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    move v1, v2

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 5
    :cond_2
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_8

    instance-of v0, p2, Ljava/time/Period;

    if-eqz v0, :cond_8

    .line 6
    check-cast p1, Ljava/time/Period;

    check-cast p2, Ljava/time/Period;

    .line 7
    invoke-virtual {p1}, Ljava/time/Period;->isNegative()Z

    move-result v0

    invoke-virtual {p2}, Ljava/time/Period;->isNegative()Z

    move-result v3

    if-eq v0, v3, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/time/Period;->isNegative()Z

    move-result p2

    if-eqz p2, :cond_6

    move v1, v2

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Ljava/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/Period;->getYears()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/Period;->getYears()I

    move-result p2

    :goto_0
    sub-int v1, v0, p2

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/time/Period;->getMonths()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/Period;->getMonths()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/time/Period;->getMonths()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/Period;->getMonths()I

    move-result p2

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Ljava/time/Period;->getDays()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/Period;->getDays()I

    move-result p2

    goto :goto_0

    .line 14
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/time/Period;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_7

    neg-int p1, v1

    return p1

    :cond_7
    return v1

    .line 15
    :cond_8
    invoke-static {p1}, Ljava/time/Duration;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Duration;

    move-result-object p1

    invoke-static {p2}, Ljava/time/Duration;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    :goto_2
    return v1
.end method
