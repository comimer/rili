.class Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;
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
    name = "LimitFilter"
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


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;->apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/List;
    .locals 3
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
    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    invoke-static {v2}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->access$100(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;)Lnet/fortuna/ical4j/model/WeekDayList;

    move-result-object v2

    invoke-static {v0}, Lnet/fortuna/ical4j/model/WeekDay;->getWeekDay(Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/WeekDay;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Lnet/fortuna/ical4j/model/Date;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
