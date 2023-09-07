.class public Lnet/fortuna/ical4j/model/Recur;
.super Ljava/lang/Object;
.source "Recur.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/Recur$Builder;,
        Lnet/fortuna/ical4j/model/Recur$Frequency;
    }
.end annotation


# static fields
.field private static final BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final BYHOUR:Ljava/lang/String; = "BYHOUR"

.field private static final BYMINUTE:Ljava/lang/String; = "BYMINUTE"

.field private static final BYMONTH:Ljava/lang/String; = "BYMONTH"

.field private static final BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final BYSECOND:Ljava/lang/String; = "BYSECOND"

.field private static final BYSETPOS:Ljava/lang/String; = "BYSETPOS"

.field private static final BYWEEKNO:Ljava/lang/String; = "BYWEEKNO"

.field private static final BYYEARDAY:Ljava/lang/String; = "BYYEARDAY"

.field private static final COUNT:Ljava/lang/String; = "COUNT"

.field public static final DAILY:Ljava/lang/String; = "DAILY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FREQ:Ljava/lang/String; = "FREQ"

.field public static final HOURLY:Ljava/lang/String; = "HOURLY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final INTERVAL:Ljava/lang/String; = "INTERVAL"

.field public static final KEY_MAX_INCREMENT_COUNT:Ljava/lang/String; = "net.fortuna.ical4j.recur.maxincrementcount"

.field public static final MINUTELY:Ljava/lang/String; = "MINUTELY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTHLY:Ljava/lang/String; = "MONTHLY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDLY:Ljava/lang/String; = "SECONDLY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UNTIL:Ljava/lang/String; = "UNTIL"

.field public static final WEEKLY:Ljava/lang/String; = "WEEKLY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WKST:Ljava/lang/String; = "WKST"

.field public static final YEARLY:Ljava/lang/String; = "YEARLY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static maxIncrementCount:I = 0x0

.field private static final serialVersionUID:J = -0x65c4dabb6cbd4da6L


# instance fields
.field private calIncField:I

.field private calendarWeekStartDay:I

.field private count:Ljava/lang/Integer;

.field private dayList:Lnet/fortuna/ical4j/model/WeekDayList;

.field private experimentalValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

.field private hourList:Lnet/fortuna/ical4j/model/NumberList;

.field private interval:Ljava/lang/Integer;

.field private transient log:Lrc/b;

.field private minuteList:Lnet/fortuna/ical4j/model/NumberList;

.field private monthDayList:Lnet/fortuna/ical4j/model/NumberList;

.field private monthList:Lnet/fortuna/ical4j/model/NumberList;

.field private secondList:Lnet/fortuna/ical4j/model/NumberList;

.field private setPosList:Lnet/fortuna/ical4j/model/NumberList;

.field private transformers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/fortuna/ical4j/transform/Transformer<",
            "Lnet/fortuna/ical4j/model/DateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private until:Lnet/fortuna/ical4j/model/Date;

.field private weekNoList:Lnet/fortuna/ical4j/model/NumberList;

.field private weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

.field private yearDayList:Lnet/fortuna/ical4j/model/NumberList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "net.fortuna.ical4j.recur.maxincrementcount"

    .line 2
    .line 3
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Configurator;->getIntProperty(Ljava/lang/String;)Ljava/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    .line 24
    .line 25
    return-void
    .line 26
    .line 27
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    .line 6
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->initTransformers()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    const-string v1, "[;=]"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "FREQ"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/model/Recur$Frequency;->valueOf(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Recur$Frequency;

    move-result-object v1

    iput-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    goto :goto_0

    :cond_0
    const-string v2, "UNTIL"

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 17
    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "T"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 20
    move-object v1, v2

    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    goto :goto_0

    :cond_2
    const-string v2, "COUNT"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 23
    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const-string v2, "INTERVAL"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    const-string v2, "BYSECOND"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x3b

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 27
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v5, v4, v5}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    :cond_5
    const-string v2, "BYMINUTE"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v5, v4, v5}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    :cond_6
    const-string v2, "BYHOUR"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17

    invoke-direct {v2, v1, v5, v3, v5}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    :cond_7
    const-string v2, "BYDAY"

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 33
    new-instance v2, Lnet/fortuna/ical4j/model/WeekDayList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/WeekDayList;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    goto/16 :goto_0

    :cond_8
    const-string v2, "BYMONTHDAY"

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 35
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1f

    invoke-direct {v2, v1, v3, v4, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    :cond_9
    const-string v2, "BYYEARDAY"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x16e

    if-eqz v2, :cond_a

    .line 37
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v3, v4, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    :cond_a
    const-string v2, "BYWEEKNO"

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 39
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x35

    invoke-direct {v2, v1, v3, v4, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    :cond_b
    const-string v2, "BYMONTH"

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 41
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    invoke-direct {v2, v1, v3, v4, v5}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    :cond_c
    const-string v2, "BYSETPOS"

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 43
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v3, v4, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    :cond_d
    const-string v2, "WKST"

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 45
    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/model/WeekDay$Day;->valueOf(Ljava/lang/String;)Lnet/fortuna/ical4j/model/WeekDay$Day;

    move-result-object v1

    iput-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 46
    invoke-static {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getWeekDay(Lnet/fortuna/ical4j/model/WeekDay$Day;)Lnet/fortuna/ical4j/model/WeekDay;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    goto/16 :goto_0

    :cond_e
    const-string v2, "ical4j.parsing.relaxed"

    .line 47
    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 48
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 49
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v5

    .line 50
    invoke-direct {p0, p1, v1}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Invalid recurrence rule part: %s=%s"

    .line 51
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_10
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 53
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->initTransformers()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur$Frequency;->valueOf(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Recur$Frequency;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Recur;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur$Frequency;->valueOf(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Recur$Frequency;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Recur;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;Lnet/fortuna/ical4j/model/Date;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/Recur$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Recur$Frequency;I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    .line 68
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    .line 70
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 71
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->initTransformers()V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Recur$Frequency;Lnet/fortuna/ical4j/model/Date;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    .line 59
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 60
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 61
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 62
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->initTransformers()V

    return-void
.end method

.method static synthetic access$1002(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$102(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/Recur$Frequency;)Lnet/fortuna/ical4j/model/Recur$Frequency;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$1102(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$1202(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$1302(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$1402(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/WeekDay$Day;)Lnet/fortuna/ical4j/model/WeekDay$Day;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$1500(Lnet/fortuna/ical4j/model/Recur;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method static synthetic access$1600(Lnet/fortuna/ical4j/model/Recur;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->initTransformers()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method static synthetic access$202(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$302(Lnet/fortuna/ical4j/model/Recur;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$402(Lnet/fortuna/ical4j/model/Recur;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$502(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$602(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$702(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$802(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/WeekDayList;)Lnet/fortuna/ical4j/model/WeekDayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic access$902(Lnet/fortuna/ical4j/model/Recur;Lnet/fortuna/ical4j/model/NumberList;)Lnet/fortuna/ical4j/model/NumberList;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 2
    .line 3
    return-object p1
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

.method private deriveFilterType()Lnet/fortuna/ical4j/model/Recur$Frequency;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 2
    .line 3
    sget-object v1, Lnet/fortuna/ical4j/model/Recur$Frequency;->DAILY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 29
    .line 30
    sget-object v1, Lnet/fortuna/ical4j/model/Recur$Frequency;->WEEKLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 31
    .line 32
    if-eq v0, v1, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 46
    .line 47
    sget-object v1, Lnet/fortuna/ical4j/model/Recur$Frequency;->MONTHLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 48
    .line 49
    if-eq v0, v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 63
    .line 64
    sget-object v1, Lnet/fortuna/ical4j/model/Recur$Frequency;->YEARLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 65
    .line 66
    if-ne v0, v1, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    const/4 v0, 0x0

    .line 70
    return-object v0

    .line 71
    :cond_4
    :goto_0
    return-object v1
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method private getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;
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
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

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

.method private getCandidates(Ljava/util/Calendar;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 4

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/DateList;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 4
    .line 5
    .line 6
    instance-of p3, p2, Lnet/fortuna/ical4j/model/DateTime;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p3, p2

    .line 12
    check-cast p3, Lnet/fortuna/ical4j/model/DateTime;

    .line 13
    .line 14
    invoke-virtual {p3}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p3}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {v0, p3}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 35
    .line 36
    const-string p3, "BYMONTH"

    .line 37
    .line 38
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lnet/fortuna/ical4j/transform/Transformer;

    .line 51
    .line 52
    invoke-interface {p2, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    move-object v0, p2

    .line 57
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 58
    .line 59
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 60
    .line 61
    invoke-interface {p2}, Lrc/b;->isDebugEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 68
    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "Dates after BYMONTH processing: "

    .line 75
    .line 76
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-interface {p2, p3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 90
    .line 91
    const-string p3, "BYWEEKNO"

    .line 92
    .line 93
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 100
    .line 101
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Lnet/fortuna/ical4j/transform/Transformer;

    .line 106
    .line 107
    invoke-interface {p2, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    move-object v0, p2

    .line 112
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 113
    .line 114
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 115
    .line 116
    invoke-interface {p2}, Lrc/b;->isDebugEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 123
    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "Dates after BYWEEKNO processing: "

    .line 130
    .line 131
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-interface {p2, p3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 145
    .line 146
    const-string p3, "BYYEARDAY"

    .line 147
    .line 148
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    if-eqz p2, :cond_4

    .line 153
    .line 154
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 155
    .line 156
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    check-cast p2, Lnet/fortuna/ical4j/transform/Transformer;

    .line 161
    .line 162
    invoke-interface {p2, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    move-object v0, p2

    .line 167
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 168
    .line 169
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 170
    .line 171
    invoke-interface {p2}, Lrc/b;->isDebugEnabled()Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eqz p2, :cond_4

    .line 176
    .line 177
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 178
    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v2, "Dates after BYYEARDAY processing: "

    .line 185
    .line 186
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-interface {p2, p3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 200
    .line 201
    const-string p3, "BYMONTHDAY"

    .line 202
    .line 203
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    if-eqz p2, :cond_5

    .line 208
    .line 209
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 210
    .line 211
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    check-cast p2, Lnet/fortuna/ical4j/transform/Transformer;

    .line 216
    .line 217
    invoke-interface {p2, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    move-object v0, p2

    .line 222
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 223
    .line 224
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 225
    .line 226
    invoke-interface {p2}, Lrc/b;->isDebugEnabled()Z

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-eqz p2, :cond_8

    .line 231
    .line 232
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 233
    .line 234
    new-instance p3, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v2, "Dates after BYMONTHDAY processing: "

    .line 240
    .line 241
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    invoke-interface {p2, p3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_5
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 256
    .line 257
    sget-object p3, Lnet/fortuna/ical4j/model/Recur$Frequency;->MONTHLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 258
    .line 259
    if-ne p2, p3, :cond_6

    .line 260
    .line 261
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 262
    .line 263
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-nez p2, :cond_7

    .line 268
    .line 269
    :cond_6
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 270
    .line 271
    sget-object p3, Lnet/fortuna/ical4j/model/Recur$Frequency;->YEARLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 272
    .line 273
    if-ne p2, p3, :cond_8

    .line 274
    .line 275
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 276
    .line 277
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-eqz p2, :cond_8

    .line 282
    .line 283
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 284
    .line 285
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    if-eqz p2, :cond_8

    .line 290
    .line 291
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 292
    .line 293
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    if-eqz p2, :cond_8

    .line 298
    .line 299
    :cond_7
    new-instance p2, Lnet/fortuna/ical4j/model/NumberList;

    .line 300
    .line 301
    invoke-direct {p2}, Lnet/fortuna/ical4j/model/NumberList;-><init>()V

    .line 302
    .line 303
    .line 304
    const/4 p3, 0x5

    .line 305
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    .line 306
    .line 307
    .line 308
    move-result p3

    .line 309
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object p3

    .line 313
    invoke-virtual {p2, p3}, Lnet/fortuna/ical4j/model/NumberList;->add(Ljava/lang/Integer;)Z

    .line 314
    .line 315
    .line 316
    new-instance p3, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;

    .line 317
    .line 318
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 319
    .line 320
    iget-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 321
    .line 322
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-direct {p3, p2, v2, v3}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p3, v0}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;->transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    :cond_8
    :goto_1
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 334
    .line 335
    const-string p3, "BYDAY"

    .line 336
    .line 337
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    if-eqz p2, :cond_9

    .line 342
    .line 343
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 344
    .line 345
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    check-cast p1, Lnet/fortuna/ical4j/transform/Transformer;

    .line 350
    .line 351
    invoke-interface {p1, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    move-object v0, p1

    .line 356
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 357
    .line 358
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 359
    .line 360
    invoke-interface {p1}, Lrc/b;->isDebugEnabled()Z

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    if-eqz p1, :cond_b

    .line 365
    .line 366
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 367
    .line 368
    new-instance p2, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string p3, "Dates after BYDAY processing: "

    .line 374
    .line 375
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    invoke-interface {p1, p2}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_9
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 390
    .line 391
    sget-object p3, Lnet/fortuna/ical4j/model/Recur$Frequency;->WEEKLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 392
    .line 393
    if-eq p2, p3, :cond_a

    .line 394
    .line 395
    sget-object p3, Lnet/fortuna/ical4j/model/Recur$Frequency;->YEARLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 396
    .line 397
    if-ne p2, p3, :cond_b

    .line 398
    .line 399
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 400
    .line 401
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result p2

    .line 405
    if-eqz p2, :cond_b

    .line 406
    .line 407
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 408
    .line 409
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result p2

    .line 413
    if-nez p2, :cond_b

    .line 414
    .line 415
    iget-object p2, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 416
    .line 417
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 418
    .line 419
    .line 420
    move-result p2

    .line 421
    if-eqz p2, :cond_b

    .line 422
    .line 423
    :cond_a
    new-instance p2, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    .line 424
    .line 425
    new-instance p3, Lnet/fortuna/ical4j/model/WeekDayList;

    .line 426
    .line 427
    new-array v1, v1, [Lnet/fortuna/ical4j/model/WeekDay;

    .line 428
    .line 429
    const/4 v2, 0x0

    .line 430
    invoke-static {p1}, Lnet/fortuna/ical4j/model/WeekDay;->getWeekDay(Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/WeekDay;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    aput-object p1, v1, v2

    .line 435
    .line 436
    invoke-direct {p3, v1}, Lnet/fortuna/ical4j/model/WeekDayList;-><init>([Lnet/fortuna/ical4j/model/WeekDay;)V

    .line 437
    .line 438
    .line 439
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->deriveFilterType()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 444
    .line 445
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-direct {p2, p3, p1, v1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;-><init>(Lnet/fortuna/ical4j/model/WeekDayList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p2, v0}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    :cond_b
    :goto_2
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 457
    .line 458
    const-string p2, "BYHOUR"

    .line 459
    .line 460
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    if-eqz p1, :cond_c

    .line 465
    .line 466
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 467
    .line 468
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Lnet/fortuna/ical4j/transform/Transformer;

    .line 473
    .line 474
    invoke-interface {p1, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    move-object v0, p1

    .line 479
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 480
    .line 481
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 482
    .line 483
    invoke-interface {p1}, Lrc/b;->isDebugEnabled()Z

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-eqz p1, :cond_c

    .line 488
    .line 489
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 490
    .line 491
    new-instance p2, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .line 495
    .line 496
    const-string p3, "Dates after BYHOUR processing: "

    .line 497
    .line 498
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    invoke-interface {p1, p2}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    :cond_c
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 512
    .line 513
    const-string p2, "BYMINUTE"

    .line 514
    .line 515
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    if-eqz p1, :cond_d

    .line 520
    .line 521
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 522
    .line 523
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Lnet/fortuna/ical4j/transform/Transformer;

    .line 528
    .line 529
    invoke-interface {p1, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    move-object v0, p1

    .line 534
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 535
    .line 536
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 537
    .line 538
    invoke-interface {p1}, Lrc/b;->isDebugEnabled()Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    if-eqz p1, :cond_d

    .line 543
    .line 544
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 545
    .line 546
    new-instance p2, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    const-string p3, "Dates after BYMINUTE processing: "

    .line 552
    .line 553
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p2

    .line 563
    invoke-interface {p1, p2}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :cond_d
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 567
    .line 568
    const-string p2, "BYSECOND"

    .line 569
    .line 570
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    if-eqz p1, :cond_e

    .line 575
    .line 576
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 577
    .line 578
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    check-cast p1, Lnet/fortuna/ical4j/transform/Transformer;

    .line 583
    .line 584
    invoke-interface {p1, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    move-object v0, p1

    .line 589
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 590
    .line 591
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 592
    .line 593
    invoke-interface {p1}, Lrc/b;->isDebugEnabled()Z

    .line 594
    .line 595
    .line 596
    move-result p1

    .line 597
    if-eqz p1, :cond_e

    .line 598
    .line 599
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 600
    .line 601
    new-instance p2, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .line 605
    .line 606
    const-string p3, "Dates after BYSECOND processing: "

    .line 607
    .line 608
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object p2

    .line 618
    invoke-interface {p1, p2}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    :cond_e
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 622
    .line 623
    const-string p2, "BYSETPOS"

    .line 624
    .line 625
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    if-eqz p1, :cond_f

    .line 630
    .line 631
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 632
    .line 633
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object p1

    .line 637
    check-cast p1, Lnet/fortuna/ical4j/transform/Transformer;

    .line 638
    .line 639
    invoke-interface {p1, v0}, Lnet/fortuna/ical4j/transform/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object p1

    .line 643
    move-object v0, p1

    .line 644
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 645
    .line 646
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 647
    .line 648
    invoke-interface {p1}, Lrc/b;->isDebugEnabled()Z

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    if-eqz p1, :cond_f

    .line 653
    .line 654
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

    .line 655
    .line 656
    new-instance p2, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .line 660
    .line 661
    const-string p3, "Dates after SETPOS processing: "

    .line 662
    .line 663
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p2

    .line 673
    invoke-interface {p1, p2}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    :cond_f
    return-object v0
.end method

.method private increment(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getInterval()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getInterval()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :cond_0
    iget v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 15
    .line 16
    .line 17
    return-void
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

.method private initTransformers()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 7
    .line 8
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    .line 9
    .line 10
    const/16 v2, 0x3b

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v4, Lnet/fortuna/ical4j/transform/recurrence/BySecondRule;

    .line 16
    .line 17
    iget-object v5, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 18
    .line 19
    iget-object v6, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 20
    .line 21
    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-direct {v4, v1, v5, v6}, Lnet/fortuna/ical4j/transform/recurrence/BySecondRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYSECOND"

    .line 29
    .line 30
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    .line 35
    .line 36
    invoke-direct {v0, v3, v2, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 46
    .line 47
    new-instance v2, Lnet/fortuna/ical4j/transform/recurrence/ByMinuteRule;

    .line 48
    .line 49
    iget-object v4, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 50
    .line 51
    iget-object v5, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 52
    .line 53
    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-direct {v2, v0, v4, v5}, Lnet/fortuna/ical4j/transform/recurrence/ByMinuteRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "BYMINUTE"

    .line 61
    .line 62
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    .line 67
    .line 68
    invoke-direct {v0, v3, v2, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    .line 72
    .line 73
    :goto_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 78
    .line 79
    new-instance v2, Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;

    .line 80
    .line 81
    iget-object v4, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 82
    .line 83
    iget-object v5, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 84
    .line 85
    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-direct {v2, v0, v4, v5}, Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 90
    .line 91
    .line 92
    const-string v0, "BYHOUR"

    .line 93
    .line 94
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    .line 99
    .line 100
    const/16 v1, 0x17

    .line 101
    .line 102
    invoke-direct {v0, v3, v1, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    .line 106
    .line 107
    :goto_2
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 113
    .line 114
    new-instance v4, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;

    .line 115
    .line 116
    iget-object v5, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 117
    .line 118
    iget-object v6, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 119
    .line 120
    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-direct {v4, v0, v5, v6}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthDayRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "BYMONTHDAY"

    .line 128
    .line 129
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    .line 134
    .line 135
    const/16 v2, 0x1f

    .line 136
    .line 137
    invoke-direct {v0, v1, v2, v1}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 141
    .line 142
    :goto_3
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 143
    .line 144
    const/16 v2, 0x16e

    .line 145
    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    iget-object v4, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 149
    .line 150
    new-instance v5, Lnet/fortuna/ical4j/transform/recurrence/ByYearDayRule;

    .line 151
    .line 152
    iget-object v6, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 153
    .line 154
    iget-object v7, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 155
    .line 156
    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-direct {v5, v0, v6, v7}, Lnet/fortuna/ical4j/transform/recurrence/ByYearDayRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 161
    .line 162
    .line 163
    const-string v0, "BYYEARDAY"

    .line 164
    .line 165
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_4
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    .line 170
    .line 171
    invoke-direct {v0, v1, v2, v1}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 175
    .line 176
    :goto_4
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 177
    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    iget-object v4, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 181
    .line 182
    new-instance v5, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;

    .line 183
    .line 184
    iget-object v6, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 185
    .line 186
    iget-object v7, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 187
    .line 188
    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-direct {v5, v0, v6, v7}, Lnet/fortuna/ical4j/transform/recurrence/ByWeekNoRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "BYWEEKNO"

    .line 196
    .line 197
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_5
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    .line 202
    .line 203
    const/16 v4, 0x35

    .line 204
    .line 205
    invoke-direct {v0, v1, v4, v1}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 206
    .line 207
    .line 208
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 209
    .line 210
    :goto_5
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 211
    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    iget-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 215
    .line 216
    new-instance v4, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;

    .line 217
    .line 218
    iget-object v5, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 219
    .line 220
    iget-object v6, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 221
    .line 222
    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-direct {v4, v0, v5, v6}, Lnet/fortuna/ical4j/transform/recurrence/ByMonthRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 227
    .line 228
    .line 229
    const-string v0, "BYMONTH"

    .line 230
    .line 231
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_6
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    .line 236
    .line 237
    const/16 v4, 0xc

    .line 238
    .line 239
    invoke-direct {v0, v1, v4, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 240
    .line 241
    .line 242
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 243
    .line 244
    :goto_6
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 245
    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    iget-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 249
    .line 250
    new-instance v4, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    .line 251
    .line 252
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->deriveFilterType()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    iget-object v6, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 257
    .line 258
    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-direct {v4, v0, v5, v6}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;-><init>(Lnet/fortuna/ical4j/model/WeekDayList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 263
    .line 264
    .line 265
    const-string v0, "BYDAY"

    .line 266
    .line 267
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_7
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDayList;

    .line 272
    .line 273
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/WeekDayList;-><init>()V

    .line 274
    .line 275
    .line 276
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 277
    .line 278
    :goto_7
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    .line 279
    .line 280
    if-eqz v0, :cond_8

    .line 281
    .line 282
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->transformers:Ljava/util/Map;

    .line 283
    .line 284
    new-instance v2, Lnet/fortuna/ical4j/transform/recurrence/BySetPosRule;

    .line 285
    .line 286
    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/transform/recurrence/BySetPosRule;-><init>(Lnet/fortuna/ical4j/model/NumberList;)V

    .line 287
    .line 288
    .line 289
    const-string v0, "BYSETPOS"

    .line 290
    .line 291
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_8
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    .line 296
    .line 297
    invoke-direct {v0, v1, v2, v1}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 298
    .line 299
    .line 300
    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    .line 301
    .line 302
    :goto_8
    return-void
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method

.method private nextToken(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Missing expected token, last token: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
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
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lrc/b;

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

.method private validateFrequency()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    sget-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->SECONDLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0xd

    .line 18
    .line 19
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->MINUTELY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 23
    .line 24
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0xc

    .line 35
    .line 36
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->HOURLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 40
    .line 41
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const/16 v0, 0xb

    .line 52
    .line 53
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->DAILY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 57
    .line 58
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    sget-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->WEEKLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 73
    .line 74
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    const/4 v0, 0x3

    .line 85
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    sget-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->MONTHLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 89
    .line 90
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    sget-object v0, Lnet/fortuna/ical4j/model/Recur$Frequency;->YEARLY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 105
    .line 106
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 118
    .line 119
    :goto_0
    return-void

    .line 120
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "Invalid FREQ rule part \'"

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, "\' in recurrence rule"

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string v1, "A recurrence rule MUST contain a FREQ rule part."

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p1

    return-object p1
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 4
    new-instance v6, Lnet/fortuna/ical4j/model/DateList;

    invoke-direct {v6, v4}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 5
    instance-of v7, v1, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 6
    move-object v7, v1

    check-cast v7, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7
    invoke-virtual {v6, v8}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 9
    :cond_1
    :goto_0
    invoke-direct {v0, v1, v8}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Calendar;

    .line 11
    iget-object v10, v0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    if-nez v10, :cond_2

    .line 12
    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Calendar;

    .line 13
    :goto_1
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 14
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 15
    invoke-direct {v0, v10}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    goto :goto_1

    .line 16
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ltz v5, :cond_3

    .line 17
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v14

    if-ge v14, v5, :cond_10

    .line 18
    :cond_3
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-static {v14, v4}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v14

    .line 19
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v15

    if-eqz v15, :cond_4

    if-eqz v11, :cond_4

    .line 20
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto/16 :goto_7

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    .line 21
    invoke-virtual {v11, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto/16 :goto_7

    .line 22
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v15

    if-lt v15, v8, :cond_6

    .line 23
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v15

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v12

    if-lt v15, v12, :cond_6

    goto/16 :goto_7

    .line 24
    :cond_6
    instance-of v12, v14, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v12, :cond_8

    .line 25
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->isUtc()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 26
    move-object v12, v14

    check-cast v12, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v12, v8}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_3

    .line 27
    :cond_7
    move-object v12, v14

    check-cast v12, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v15

    invoke-virtual {v12, v15}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 28
    :cond_8
    :goto_3
    invoke-direct {v0, v9, v14, v4}, Lnet/fortuna/ical4j/model/Recur;->getCandidates(Ljava/util/Calendar;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v12

    .line 29
    invoke-virtual {v12}, Lnet/fortuna/ical4j/model/DateList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    .line 30
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 31
    invoke-virtual {v12}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/fortuna/ical4j/model/Date;

    .line 32
    invoke-virtual {v11, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 33
    invoke-virtual {v11, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 34
    invoke-virtual {v11, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_5

    .line 35
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v13

    if-lt v13, v8, :cond_b

    .line 36
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v13

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v14

    if-lt v13, v14, :cond_b

    goto :goto_6

    .line 37
    :cond_b
    invoke-virtual {v11, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v11, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 38
    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 39
    :cond_c
    invoke-virtual {v6, v11}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_4

    .line 40
    :cond_d
    :goto_5
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    :goto_6
    const/4 v13, 0x0

    goto :goto_8

    :cond_f
    add-int/2addr v13, v8

    .line 41
    sget v12, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    if-lez v12, :cond_11

    if-le v13, v12, :cond_11

    .line 42
    :cond_10
    :goto_7
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v6

    .line 43
    :cond_11
    :goto_8
    invoke-direct {v0, v7}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    goto/16 :goto_2
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p1

    return-object p1
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    .line 2
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p1

    return-object p1
.end method

.method public final getDayList()Lnet/fortuna/ical4j/model/WeekDayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

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

.method public final getExperimentalValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

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

.method public final getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

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

.method public final getHourList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public final getInterval()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->interval:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getMinuteList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public final getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public final getMonthList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public final getNextDate(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Ljava/util/Calendar;

    .line 11
    .line 12
    iget-object v3, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljava/util/Calendar;

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v3}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    instance-of v3, p1, Lnet/fortuna/ical4j/model/DateTime;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    sget-object v3, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget-object v3, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 51
    .line 52
    :goto_1
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v6, v4

    .line 55
    move v7, v5

    .line 56
    move v8, v7

    .line 57
    :goto_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-static {v9, v3}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    if-eqz v10, :cond_2

    .line 70
    .line 71
    if-eqz v6, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v6, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-lez v10, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-lt v7, v10, :cond_3

    .line 96
    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_3
    sget-object v10, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 100
    .line 101
    invoke-virtual {v10, v3}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eqz v10, :cond_5

    .line 106
    .line 107
    move-object v10, p1

    .line 108
    check-cast v10, Lnet/fortuna/ical4j/model/DateTime;

    .line 109
    .line 110
    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-eqz v11, :cond_4

    .line 115
    .line 116
    move-object v10, v9

    .line 117
    check-cast v10, Lnet/fortuna/ical4j/model/DateTime;

    .line 118
    .line 119
    invoke-virtual {v10, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    move-object v11, v9

    .line 124
    check-cast v11, Lnet/fortuna/ical4j/model/DateTime;

    .line 125
    .line 126
    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-virtual {v11, v10}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_3
    invoke-direct {p0, v2, v9, v3}, Lnet/fortuna/ical4j/model/Recur;->getCandidates(Ljava/util/Calendar;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/DateList;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-nez v10, :cond_b

    .line 142
    .line 143
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_a

    .line 155
    .line 156
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Lnet/fortuna/ical4j/model/Date;

    .line 161
    .line 162
    invoke-virtual {v6, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_6

    .line 167
    .line 168
    invoke-virtual {v6, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-nez v9, :cond_7

    .line 173
    .line 174
    add-int/lit8 v7, v7, 0x1

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-lez v9, :cond_8

    .line 182
    .line 183
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-lt v7, v9, :cond_8

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_8
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    if-eqz v9, :cond_9

    .line 195
    .line 196
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-virtual {v6, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-nez v9, :cond_6

    .line 205
    .line 206
    :cond_9
    return-object v6

    .line 207
    :cond_a
    :goto_5
    move v8, v5

    .line 208
    goto :goto_7

    .line 209
    :cond_b
    add-int/2addr v8, v0

    .line 210
    sget v9, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    .line 211
    .line 212
    if-lez v9, :cond_c

    .line 213
    .line 214
    if-le v8, v9, :cond_c

    .line 215
    .line 216
    :goto_6
    return-object v4

    .line 217
    :cond_c
    :goto_7
    invoke-direct {p0, v1}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_2
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
.end method

.method public final getSecondList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public final getSetPosList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public final getUntil()Lnet/fortuna/ical4j/model/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

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

.method public final getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public final getWeekStartDay()Lnet/fortuna/ical4j/model/WeekDay$Day;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

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

.method public final getYearDayList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

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

.method public final setCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 9
    .line 10
    return-void
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

.method public final setFrequency(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur$Frequency;->valueOf(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 6
    .line 7
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 8
    .line 9
    .line 10
    return-void
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

.method public final setInterval(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
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

.method public final setUntil(Lnet/fortuna/ical4j/model/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
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

.method public final setWeekStartDay(Lnet/fortuna/ical4j/model/WeekDay$Day;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lnet/fortuna/ical4j/model/WeekDay;->getWeekDay(Lnet/fortuna/ical4j/model/WeekDay$Day;)Lnet/fortuna/ical4j/model/WeekDay;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    .line 14
    .line 15
    :cond_0
    return-void
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

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FREQ"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x3d

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Lnet/fortuna/ical4j/model/Recur$Frequency;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 22
    .line 23
    const/16 v3, 0x3b

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "WKST"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Lnet/fortuna/ical4j/model/WeekDay$Day;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, "UNTIL"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "COUNT"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->count:Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->interval:Ljava/lang/Integer;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, "INTERVAL"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->interval:Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, "BYMONTH"

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    :cond_4
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_5

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, "BYWEEKNO"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    :cond_5
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_6

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v2, "BYYEARDAY"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    :cond_6
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_7

    .line 182
    .line 183
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v2, "BYMONTHDAY"

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :cond_7
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_8

    .line 206
    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v2, "BYDAY"

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    :cond_8
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-nez v2, :cond_9

    .line 230
    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v2, "BYHOUR"

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    :cond_9
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-nez v2, :cond_a

    .line 254
    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v2, "BYMINUTE"

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    :cond_a
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_b

    .line 278
    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v2, "BYSECOND"

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    :cond_b
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-nez v2, :cond_c

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v2, "BYSETPOS"

    .line 307
    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    return-object v0
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method
