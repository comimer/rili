.class Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;
.super Ljava/lang/Object;
.source "ByMonthDayRule.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpansionFilter"
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
.field final synthetic this$0:Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;

.field private final type:Lnet/fortuna/ical4j/model/parameter/Value;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;Lnet/fortuna/ical4j/model/parameter/Value;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;->type:Lnet/fortuna/ical4j/model/parameter/Value;

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
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;->apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/List;

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
    iget-object v1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;

    invoke-static {v2}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;->access$100(Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;)Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v4, -0x1f

    if-lt v3, v4, :cond_5

    const/16 v4, 0x1f

    if-le v3, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x5

    .line 5
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-lez v3, :cond_3

    if-ge v5, v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_3
    neg-int v6, v3

    if-ge v5, v6, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v3, v3, 0x1

    .line 8
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 9
    :goto_1
    invoke-static {p1, v1}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getTime(Lnet/fortuna/ical4j/model/Date;Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    iget-object v4, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {v3, v4}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_5
    :goto_2
    iget-object v4, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;

    invoke-static {v4}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;->access$200(Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;)Lrc/b;

    move-result-object v4

    invoke-interface {v4}, Lrc/b;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    iget-object v4, p0, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule$ExpansionFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;

    invoke-static {v4}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;->access$200(Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;)Lrc/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid day of month: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lrc/b;->trace(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-object v0
.end method
