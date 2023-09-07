.class public abstract Lnet/fortuna/ical4j/model/Iso8601;
.super Ljava/util/Date;
.source "Iso8601.java"


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = -0x3b8bba63506668bbL


# instance fields
.field private format:Ljava/text/DateFormat;

.field private gmtFormat:Ljava/text/DateFormat;

.field private precision:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Etc/GMT"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/fortuna/ical4j/model/Iso8601;->GMT:Ljava/util/TimeZone;

    .line 8
    .line 9
    return-void
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

.method public constructor <init>(JLjava/lang/String;ILjava/util/TimeZone;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p4, p5}, Lnet/fortuna/ical4j/util/Dates;->round(JILjava/util/TimeZone;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2
    invoke-static {p3}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->getInstance(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 3
    invoke-virtual {p1, p5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    iget-object p1, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    const-string p2, "ical4j.parsing.relaxed"

    invoke-static {p2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 5
    iput p4, p0, Lnet/fortuna/ical4j/model/Iso8601;->precision:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/TimeZone;)V
    .locals 6

    .line 6
    invoke-static {}, Lnet/fortuna/ical4j/util/Dates;->getCurrentTimeRounded()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;ILjava/util/TimeZone;)V
    .locals 6

    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method protected final getFormat()Ljava/text/DateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

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

.method public setTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lnet/fortuna/ical4j/model/Iso8601;->precision:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v1, v0}, Lnet/fortuna/ical4j/util/Dates;->round(JILjava/util/TimeZone;)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
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

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lnet/fortuna/ical4j/model/TimeZone;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/text/DateFormat;

    .line 22
    .line 23
    iput-object v1, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    .line 24
    .line 25
    sget-object v2, Lnet/fortuna/ical4j/model/Iso8601;->GMT:Ljava/util/TimeZone;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Ljava/util/Date;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const-wide/16 v4, 0x1

    .line 43
    .line 44
    sub-long/2addr v2, v4

    .line 45
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    .line 55
    .line 56
    new-instance v2, Ljava/util/Date;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    int-to-long v5, v5

    .line 67
    add-long/2addr v3, v5

    .line 68
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-long v5, v0

    .line 73
    add-long/2addr v3, v5

    .line 74
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :cond_1
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    .line 83
    .line 84
    new-instance v2, Ljava/util/Date;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    int-to-long v5, v0

    .line 95
    add-long/2addr v3, v5

    .line 96
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    return-object v0
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
