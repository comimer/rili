.class public Lnet/fortuna/ical4j/model/Date;
.super Lnet/fortuna/ical4j/model/Iso8601;
.source "Date.java"


# static fields
.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "yyyyMMdd"

.field private static final VCARD_PATTERN:Ljava/lang/String; = "yyyy\'-\'MM\'-\'dd"

.field private static final serialVersionUID:J = 0x63086c017885f5c5L


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "yyyyMMdd"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    return-void
.end method

.method protected constructor <init>(ILjava/util/TimeZone;)V
    .locals 1

    const-string v0, "yyyyMMdd"

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 6

    .line 3
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const-string v3, "yyyyMMdd"

    const/4 v4, 0x1

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    return-void
.end method

.method protected constructor <init>(JILjava/util/TimeZone;)V
    .locals 6

    const-string v3, "yyyyMMdd"

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move-object v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Date;-><init>()V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/Iso8601;->setTime(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ical4j.compatibility.vcard"

    .line 9
    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\'-\'MM\'-\'dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/Iso8601;->setTime(J)V

    :goto_0
    return-void

    .line 13
    :cond_0
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 14
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "yyyyMMdd"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/Iso8601;->setTime(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    .line 5
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 3

    .line 6
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    return-void
.end method
