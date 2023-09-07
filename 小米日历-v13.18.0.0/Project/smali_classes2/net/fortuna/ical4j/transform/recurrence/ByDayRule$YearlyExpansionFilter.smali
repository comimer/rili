.class Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;
.super Ljava/lang/Object;
.source "ByDayRule.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YearlyExpansionFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lnet/fortuna/ical4j/model/Date;",
        "Ljava/util/List<",
        "Lnet/fortuna/ical4j/model/Date;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

.field private final type:Lnet/fortuna/ical4j/model/parameter/Value;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/model/parameter/Value;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 7
    .line 8
    return-void
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

.method public static synthetic a(Ljava/util/Calendar;Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->lambda$apply$1(Ljava/util/Calendar;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/fortuna/ical4j/model/WeekDay;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->lambda$apply$0(Lnet/fortuna/ical4j/model/WeekDay;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$apply$0(Lnet/fortuna/ical4j/model/WeekDay;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
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

.method private static synthetic lambda$apply$1(Ljava/util/Calendar;Ljava/lang/Integer;)Z
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
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
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/Date;",
            ")",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/Date;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x6

    .line 5
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 6
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 7
    iget-object v5, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    invoke-static {v5}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->access$100(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;)Lnet/fortuna/ical4j/model/WeekDayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lnet/fortuna/ical4j/transform/recurrence/h;

    invoke-direct {v6}, Lnet/fortuna/ical4j/transform/recurrence/h;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lnet/fortuna/ical4j/transform/recurrence/i;

    invoke-direct {v6, v1}, Lnet/fortuna/ical4j/transform/recurrence/i;-><init>(Ljava/util/Calendar;)V

    .line 8
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 9
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    invoke-static {p1, v1}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getTime(Lnet/fortuna/ical4j/model/Date;Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v5

    iget-object v6, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {v5, v6}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
