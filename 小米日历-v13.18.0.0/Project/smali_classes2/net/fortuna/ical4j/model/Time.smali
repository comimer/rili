.class public Lnet/fortuna/ical4j/model/Time;
.super Lnet/fortuna/ical4j/model/Iso8601;
.source "Time.java"


# static fields
.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "HHmmss"

.field private static final UTC_PATTERN:Ljava/lang/String; = "HHmmss\'Z\'"

.field private static final serialVersionUID:J = -0x749662e062a34c1cL


# instance fields
.field private utc:Z


# direct methods
.method public constructor <init>(JLjava/util/TimeZone;)V
    .locals 1

    .line 6
    invoke-static {p3}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(JLjava/util/TimeZone;Z)V
    .locals 7

    if-eqz p4, :cond_0

    const-string v0, "HHmmss\'Z\'"

    goto :goto_0

    :cond_0
    const-string v0, "HHmmss"

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 9
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10
    iput-boolean p4, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 16
    invoke-static {p2}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 17
    invoke-static {p1, p2}, Lnet/fortuna/ical4j/model/Time;->parseDate(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 1

    .line 11
    invoke-static {p2}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V
    .locals 6

    .line 12
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    if-eqz p3, :cond_0

    const-string p1, "HHmmss\'Z\'"

    goto :goto_0

    :cond_0
    const-string p1, "HHmmss"

    :goto_0
    move-object v3, p1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 14
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 15
    iput-boolean p3, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "HHmmss\'Z\'"

    goto :goto_0

    :cond_0
    const-string v0, "HHmmss"

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 3
    iput-boolean v1, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    iput-boolean p2, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    return-void
.end method

.method private static parseDate(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "HHmmss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    const-string v1, "HHmmss\'Z\'"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
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
.method public final isUtc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 2
    .line 3
    return v0
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
