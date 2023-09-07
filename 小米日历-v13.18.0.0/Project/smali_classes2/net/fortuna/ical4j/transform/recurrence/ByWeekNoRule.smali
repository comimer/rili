.class public Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;
.super Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;
.source "ByWeekNoRule.java"


# instance fields
.field private transient log:Lrc/b;

.field private final weekNoList:Lnet/fortuna/ical4j/model/NumberList;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;)V

    .line 2
    const-class p2, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;

    invoke-static {p2}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    move-result-object p2

    iput-object p2, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->log:Lrc/b;

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

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

    .line 4
    invoke-direct {p0, p2, p3}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 5
    const-class p2, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;

    invoke-static {p2}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    move-result-object p2

    iput-object p2, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->log:Lrc/b;

    .line 6
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    const-class p1, Lnet/fortuna/ical4j/model/Recur;

    .line 5
    .line 6
    invoke-static {p1}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->log:Lrc/b;

    .line 11
    .line 12
    return-void
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

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 11

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/DateList;->get(I)Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/fortuna/ical4j/model/Date;

    const/4 v4, 0x3

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 7
    iget-object v6, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, -0x35

    if-lt v8, v9, :cond_7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x35

    if-le v8, v9, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0, v3, v2}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v8

    .line 10
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_5

    .line 11
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v5, v9, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v4, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    neg-int v9, v9

    if-ge v5, v9, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 15
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v8, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 16
    :goto_1
    invoke-static {v3, v8}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getTime(Lnet/fortuna/ical4j/model/Date;Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v7

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_0

    .line 17
    :cond_7
    :goto_2
    iget-object v8, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->log:Lrc/b;

    invoke-interface {v8}, Lrc/b;->isTraceEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 18
    iget-object v8, p0, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;->log:Lrc/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid week of year: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lrc/b;->trace(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    return-object v0
.end method
