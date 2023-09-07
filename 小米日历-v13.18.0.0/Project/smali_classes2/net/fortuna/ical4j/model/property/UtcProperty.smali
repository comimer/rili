.class public abstract Lnet/fortuna/ical4j/model/property/UtcProperty;
.super Lnet/fortuna/ical4j/model/property/DateProperty;
.source "UtcProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x434ef1989d177c42L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 2
    new-instance p1, Lnet/fortuna/ical4j/model/DateTime;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/property/DateProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    new-instance p1, Lnet/fortuna/ical4j/model/DateTime;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    return-void
.end method


# virtual methods
.method public final getDateTime()Lnet/fortuna/ical4j/model/DateTime;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 6
    .line 7
    return-object v0
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

.method public setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setDate(Lnet/fortuna/ical4j/model/Date;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
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

.method public setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Cannot set timezone for UTC properties"

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

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 20
    .line 21
    const-string v1, "Property must have a DATE-TIME value"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ": DATE-TIME value must be specified in UTC time"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_3
    :goto_1
    return-void
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
