.class public Lnet/fortuna/ical4j/filter/DateInRangeRule;
.super Ljava/lang/Object;
.source "DateInRangeRule.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final inclusiveMask:I

.field private final range:Lnet/fortuna/ical4j/model/DateRange;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/DateRange;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/filter/DateInRangeRule;->range:Lnet/fortuna/ical4j/model/DateRange;

    .line 5
    .line 6
    iput p2, p0, Lnet/fortuna/ical4j/filter/DateInRangeRule;->inclusiveMask:I

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


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/filter/DateInRangeRule;->test(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public test(Ljava/util/Date;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/filter/DateInRangeRule;->range:Lnet/fortuna/ical4j/model/DateRange;

    iget v1, p0, Lnet/fortuna/ical4j/filter/DateInRangeRule;->inclusiveMask:I

    invoke-virtual {v0, p1, v1}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;I)Z

    move-result p1

    return p1
.end method
