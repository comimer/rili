.class public Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;
.super Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;
.source "ByMonthRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$ExpansionFilter;,
        Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$LimitFilter;
    }
.end annotation


# instance fields
.field private final monthList:Lnet/fortuna/ical4j/model/NumberList;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/NumberList;",
            "Lnet/fortuna/ical4j/model/Recur$Frequency;",
            "Ljava/util/Optional<",
            "Lnet/fortuna/ical4j/model/WeekDay$Day;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2, p3}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    return-void
.end method

.method static synthetic access$100(Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p0
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/DateList;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;->transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    move-result-object v2

    sget-object v3, Lnet/fortuna/ical4j/model/Recur$Frequency;->YEARLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    if-ne v2, v3, :cond_2

    .line 6
    new-instance v2, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$ExpansionFilter;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$ExpansionFilter;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;Lnet/fortuna/ical4j/model/parameter/Value;)V

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$ExpansionFilter;->apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_2
    new-instance v2, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$LimitFilter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$LimitFilter;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$1;)V

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule$LimitFilter;->apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Optional;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
