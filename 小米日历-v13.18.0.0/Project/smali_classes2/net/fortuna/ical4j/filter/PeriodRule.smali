.class public Lnet/fortuna/ical4j/filter/PeriodRule;
.super Ljava/lang/Object;
.source "PeriodRule.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/fortuna/ical4j/model/Component;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private period:Lnet/fortuna/ical4j/model/Period;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/Period;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/filter/PeriodRule;->period:Lnet/fortuna/ical4j/model/Period;

    .line 5
    .line 6
    return-void
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
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/filter/PeriodRule;->test(Lnet/fortuna/ical4j/model/Component;)Z

    move-result p1

    return p1
.end method

.method public final test(Lnet/fortuna/ical4j/model/Component;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/filter/PeriodRule;->period:Lnet/fortuna/ical4j/model/Period;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Component;->calculateRecurrenceSet(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
