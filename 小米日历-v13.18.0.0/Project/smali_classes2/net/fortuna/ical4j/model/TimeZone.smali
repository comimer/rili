.class public Lnet/fortuna/ical4j/model/TimeZone;
.super Ljava/util/TimeZone;
.source "TimeZone.java"


# static fields
.field private static final serialVersionUID:J = -0x4e01bae8487ef022L


# instance fields
.field private final rawOffset:I

.field private final vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 5
    .line 6
    const-string v0, "TZID"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lnet/fortuna/ical4j/model/property/TzId;

    .line 13
    .line 14
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/TzId;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getRawOffset(Lnet/fortuna/ical4j/model/component/VTimeZone;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lnet/fortuna/ical4j/model/TimeZone;->rawOffset:I

    .line 26
    .line 27
    return-void
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method private static getRawOffset(Lnet/fortuna/ical4j/model/component/VTimeZone;)I
    .locals 7

    .line 2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    const-string v1, "STANDARD"

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p0

    const-string v0, "DAYLIGHT"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_4

    .line 7
    new-instance p0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/component/Observance;

    .line 9
    invoke-virtual {v4, p0}, Lnet/fortuna/ical4j/model/component/Observance;->getLatestOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v5, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_3
    move-object v1, v4

    move-object v3, v5

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lnet/fortuna/ical4j/model/component/Observance;

    .line 12
    :cond_5
    instance-of p0, v1, Lnet/fortuna/ical4j/model/component/Daylight;

    const-wide/16 v3, 0x3e8

    if-eqz p0, :cond_6

    const-string p0, "TZOFFSETFROM"

    .line 13
    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p0

    check-cast p0, Lnet/fortuna/ical4j/model/property/TzOffsetFrom;

    if-eqz p0, :cond_7

    .line 14
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/TzOffsetFrom;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    :goto_1
    int-to-long v0, p0

    mul-long/2addr v0, v3

    long-to-int p0, v0

    return p0

    .line 15
    :cond_6
    instance-of p0, v1, Lnet/fortuna/ical4j/model/component/Standard;

    if-eqz p0, :cond_7

    const-string p0, "TZOFFSETTO"

    .line 16
    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p0

    check-cast p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;

    if-eqz p0, :cond_7

    .line 17
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    goto :goto_1

    :cond_7
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    check-cast p1, Lnet/fortuna/ical4j/model/TimeZone;

    .line 20
    .line 21
    iget v2, p0, Lnet/fortuna/ical4j/model/TimeZone;->rawOffset:I

    .line 22
    .line 23
    iget v3, p1, Lnet/fortuna/ical4j/model/TimeZone;->rawOffset:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_3

    .line 26
    .line 27
    iget-object v2, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object p1, p1, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p1, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_0
    move v0, v1

    .line 46
    :cond_4
    :goto_1
    return v0

    .line 47
    :cond_5
    :goto_2
    return v1
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

.method public final getOffset(IIIIII)I
    .locals 9

    const v0, 0x36ee80

    .line 1
    div-int v5, p6, v0

    mul-int/2addr v0, v5

    sub-int/2addr p6, v0

    const v0, 0xea60

    .line 2
    div-int v6, p6, v0

    mul-int/2addr v0, v6

    sub-int/2addr p6, v0

    .line 3
    div-int/lit16 v7, p6, 0x3e8

    mul-int/lit16 v0, v7, 0x3e8

    sub-int/2addr p6, v0

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v8, 0x0

    .line 6
    invoke-virtual {v0, v8, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x7

    .line 7
    invoke-virtual {v0, p1, p5}, Ljava/util/Calendar;->set(II)V

    move-object v1, v0

    move v2, p2

    move v3, p3

    move v4, p4

    .line 8
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p1, 0xe

    .line 9
    invoke-virtual {v0, p1, p6}, Ljava/util/Calendar;->set(II)V

    .line 10
    iget-object p1, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    new-instance p2, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-direct {p2, p3}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getApplicableObservance(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/Observance;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "TZOFFSETTO"

    .line 11
    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/TzOffsetTo;

    .line 12
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long p1, p1

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    long-to-int p1, p1

    return p1

    :cond_0
    return v8
.end method

.method public getOffset(J)I
    .locals 6

    .line 13
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v1, p1, p2}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getApplicableObservance(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/Observance;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "TZOFFSETTO"

    .line 14
    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p1

    check-cast p1, Lnet/fortuna/ical4j/model/property/TzOffsetTo;

    .line 15
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p2

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/TimeZone;->getRawOffset()I

    move-result p2

    int-to-long v4, p2

    cmp-long p2, v0, v4

    if-gez p2, :cond_0

    .line 16
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/TimeZone;->getRawOffset()I

    move-result p1

    return p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long p1, p1

    mul-long/2addr p1, v2

    long-to-int p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getRawOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/model/TimeZone;->rawOffset:I

    return v0
.end method

.method public final getVTimeZone()Lnet/fortuna/ical4j/model/component/VTimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Lnet/fortuna/ical4j/model/TimeZone;->rawOffset:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
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

.method public final inDaylightTime(Ljava/util/Date;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 2
    .line 3
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getApplicableObservance(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/Observance;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of p1, p1, Lnet/fortuna/ical4j/model/component/Daylight;

    .line 13
    .line 14
    return p1
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

.method public final setRawOffset(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Updates to the VTIMEZONE object must be performed directly"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
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

.method public final useDaylightTime()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZone;->vTimeZone:Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DAYLIGHT"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    return v0
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
