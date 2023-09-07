.class public abstract Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;
.super Ljava/lang/Object;
.source "AbstractDateExpansionRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/Transformer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/Transformer<",
        "Lnet/fortuna/ical4j/model/DateList;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final calendarWeekStartDay:I

.field private final frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/Recur$Frequency;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay$Day;->MO:Lnet/fortuna/ical4j/model/WeekDay$Day;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/Recur$Frequency;",
            "Ljava/util/Optional<",
            "Lnet/fortuna/ical4j/model/WeekDay$Day;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 4
    sget-object p1, Lnet/fortuna/ical4j/model/WeekDay$Day;->MO:Lnet/fortuna/ical4j/model/WeekDay$Day;

    invoke-virtual {p2, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/WeekDay$Day;

    invoke-static {p1}, Lnet/fortuna/ical4j/model/WeekDay;->getWeekDay(Lnet/fortuna/ical4j/model/WeekDay$Day;)Lnet/fortuna/ical4j/model/WeekDay;

    move-result-object p1

    invoke-static {p1}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    move-result p1

    iput p1, p0, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->calendarWeekStartDay:I

    return-void
.end method

.method protected static getTime(Lnet/fortuna/ical4j/model/Date;Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/Date;
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    invoke-virtual {v0, p0, p1}, Lnet/fortuna/ical4j/model/Iso8601;->setTime(J)V

    .line 15
    .line 16
    .line 17
    return-object v0
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
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method


# virtual methods
.method protected getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;
    .locals 2

    .line 1
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->calendarWeekStartDay:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 18
    .line 19
    .line 20
    return-object v0
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
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method protected getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
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
.end method
