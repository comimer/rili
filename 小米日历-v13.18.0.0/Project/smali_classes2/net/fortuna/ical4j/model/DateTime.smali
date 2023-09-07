.class public Lnet/fortuna/ical4j/model/DateTime;
.super Lnet/fortuna/ical4j/model/Date;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss"

.field private static final LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final RELAXED_PATTERN:Ljava/lang/String; = "yyyyMMdd"

.field private static final UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final UTC_PATTERN:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss\'Z\'"

.field private static final VCARD_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final VCARD_PATTERN:Ljava/lang/String; = "yyyy\'-\'MM\'-\'dd\'T\'HH\':\'mm\':\'ss\'Z\'"

.field private static final serialVersionUID:J = -0x58eb0ef91a882e03L


# instance fields
.field private time:Lnet/fortuna/ical4j/model/Time;

.field private timezone:Lnet/fortuna/ical4j/model/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, v0, v3}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lnet/fortuna/ical4j/model/DateTime;->UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 26
    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 28
    .line 29
    const-string v2, "yyyyMMdd\'T\'HHmmss"

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 38
    .line 39
    invoke-direct {v1, v0, v3}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 43
    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 50
    .line 51
    invoke-direct {v1, v0, v3}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 55
    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 57
    .line 58
    const-string v1, "yyyyMMdd"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 68
    .line 69
    invoke-direct {v1, v0, v3}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    .line 70
    .line 71
    .line 72
    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 73
    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 75
    .line 76
    const-string v1, "yyyy\'-\'MM\'-\'dd\'T\'HH\':\'mm\':\'ss\'Z\'"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 82
    .line 83
    invoke-direct {v1, v0, v3}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    .line 84
    .line 85
    .line 86
    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->VCARD_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 87
    .line 88
    return-void
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

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Date;-><init>(ILjava/util/TimeZone;)V

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 38
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 39
    invoke-static {p2}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->getInstance(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p2

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 41
    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 42
    invoke-static {p2}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->getInstance(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 43
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 44
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 47
    :goto_0
    invoke-virtual {p0, p3}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 18
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    :try_start_0
    const-string v0, "Z"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 22
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    goto :goto_1

    .line 23
    :cond_2
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 26
    :goto_1
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ical4j.compatibility.vcard"

    .line 27
    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ical4j.parsing.relaxed"

    if-eqz v1, :cond_3

    .line 28
    :try_start_1
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->VCARD_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 29
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 30
    :catch_1
    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 32
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_2

    .line 33
    :cond_3
    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 35
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    :cond_4
    :goto_2
    return-void

    .line 36
    :cond_5
    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4

    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 9
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_1

    .line 10
    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    .line 11
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 15
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    return-void
.end method

.method private resetTimeZone()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDefault()Ljava/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10
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
.end method

.method private setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/apache/commons/lang3/builder/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 11
    .line 12
    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    .line 13
    .line 14
    iget-object p1, p1, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/c;->v()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

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

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public final isUtc()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Time;->isUtc()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public final setTime(J)V
    .locals 1

    .line 3
    invoke-super {p0, p1, p2}, Lnet/fortuna/ical4j/model/Iso8601;->setTime(J)V

    .line 4
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lnet/fortuna/ical4j/model/Iso8601;->setTime(J)V

    :cond_0
    return-void
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;->resetTimeZone()V

    .line 14
    .line 15
    .line 16
    :goto_0
    new-instance p1, Lnet/fortuna/ical4j/model/Time;

    .line 17
    .line 18
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 19
    .line 20
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {p1, v0, v1, v2}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 33
    .line 34
    return-void
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
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
.end method

.method public final setUtc(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;->resetTimeZone()V

    .line 19
    .line 20
    .line 21
    :goto_0
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    .line 22
    .line 23
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 24
    .line 25
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v0, v1, v2, p1}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 37
    .line 38
    return-void
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
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
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lnet/fortuna/ical4j/model/Iso8601;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x54

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 19
    .line 20
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Iso8601;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
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
