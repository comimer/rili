.class public abstract Lnet/fortuna/ical4j/model/component/Observance;
.super Lnet/fortuna/ical4j/model/Component;
.source "Observance.java"


# static fields
.field public static final DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field public static final STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final UTC_FORMAT:Ljava/text/DateFormat;

.field private static final UTC_PATTERN:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss"

.field private static final serialVersionUID:J = 0x2304ab9d3c2c846aL


# instance fields
.field private initialOnset:Lnet/fortuna/ical4j/model/Date;

.field private onsetLimit:Lnet/fortuna/ical4j/model/Date;

.field private onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

.field private onsetsMillisec:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyyMMdd\'T\'HHmmss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    .line 9
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
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/fortuna/ical4j/model/PropertyList<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    return-void
.end method

.method private applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 7

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getOffsetFrom()Lnet/fortuna/ical4j/model/property/TzOffsetFrom;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/TzOffsetFrom;->getOffset()Ljava/time/ZoneOffset;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-long v3, p1

    .line 24
    const-wide/16 v5, 0x3e8

    .line 25
    .line 26
    mul-long/2addr v3, v5

    .line 27
    sub-long/2addr v1, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 29
    .line 30
    .line 31
    return-object v0
    .line 32
    .line 33
.end method

.method private calculateOnset(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2
    sget-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance p1, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    .line 6
    invoke-virtual {p1, v1, v2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Iso8601;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object p1

    return-object p1
.end method

.method private getCachedOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    .line 14
    .line 15
    aget-object p1, v0, p1

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    neg-int p1, p1

    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    aget-object p1, v0, p1

    .line 26
    .line 27
    return-object p1
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public final getLatestOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 2
    .line 3
    const-string v1, "Unexpected error calculating initial onset"

    .line 4
    .line 5
    const-string v2, "DTSTART"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Component;->getRequiredProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 15
    .line 16
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/fortuna/ical4j/model/ConstraintViolationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception p1

    .line 34
    :goto_0
    const-class v0, Lnet/fortuna/ical4j/model/component/Observance;

    .line 35
    .line 36
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0, v1, p1}, Lrc/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_0
    :goto_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    :cond_2
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/Observance;->getCachedOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_3
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 73
    .line 74
    :try_start_1
    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 79
    .line 80
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-direct {p0, v2}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    .line 85
    .line 86
    .line 87
    move-result-object v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    .line 88
    new-instance v2, Lnet/fortuna/ical4j/model/DateList;

    .line 89
    .line 90
    invoke-direct {v2}, Lnet/fortuna/ical4j/model/DateList;-><init>()V

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 100
    .line 101
    .line 102
    const-string v4, "RDATE"

    .line 103
    .line 104
    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_6

    .line 117
    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lnet/fortuna/ical4j/model/property/RDate;

    .line 123
    .line 124
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getDates()Lnet/fortuna/ical4j/model/DateList;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_4

    .line 137
    .line 138
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Lnet/fortuna/ical4j/model/Date;

    .line 143
    .line 144
    :try_start_2
    invoke-direct {p0, v6}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-direct {p0, v6}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v6, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-nez v7, :cond_5

    .line 157
    .line 158
    invoke-virtual {v6, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_5

    .line 163
    .line 164
    move-object v0, v6

    .line 165
    :cond_5
    invoke-virtual {v2, v6}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_2
    move-exception v6

    .line 170
    const-class v7, Lnet/fortuna/ical4j/model/component/Observance;

    .line 171
    .line 172
    invoke-static {v7}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    const-string v8, "Unexpected error calculating onset"

    .line 177
    .line 178
    invoke-interface {v7, v8, v6}, Lrc/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    const-string v4, "RRULE"

    .line 183
    .line 184
    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_9

    .line 197
    .line 198
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Lnet/fortuna/ical4j/model/property/RRule;

    .line 203
    .line 204
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v6, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 209
    .line 210
    .line 211
    const/16 v7, 0xa

    .line 212
    .line 213
    invoke-virtual {v6, v3, v7}, Ljava/util/Calendar;->add(II)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    sget-object v7, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 221
    .line 222
    invoke-static {v6, v7}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    iput-object v6, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    .line 227
    .line 228
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/property/RRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    iget-object v6, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    .line 233
    .line 234
    invoke-virtual {v5, v1, v6, v7}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_7

    .line 247
    .line 248
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    check-cast v6, Lnet/fortuna/ical4j/model/Date;

    .line 253
    .line 254
    check-cast v6, Lnet/fortuna/ical4j/model/DateTime;

    .line 255
    .line 256
    invoke-direct {p0, v6}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {v6, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-nez v7, :cond_8

    .line 265
    .line 266
    invoke-virtual {v6, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eqz v7, :cond_8

    .line 271
    .line 272
    move-object v0, v6

    .line 273
    :cond_8
    invoke-virtual {v2, v6}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/DateList;->size()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    new-array p1, p1, [J

    .line 285
    .line 286
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    .line 287
    .line 288
    array-length p1, p1

    .line 289
    new-array p1, p1, [Lnet/fortuna/ical4j/model/DateTime;

    .line 290
    .line 291
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    .line 292
    .line 293
    const/4 p1, 0x0

    .line 294
    :goto_4
    iget-object v1, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    .line 295
    .line 296
    array-length v1, v1

    .line 297
    if-ge p1, v1, :cond_a

    .line 298
    .line 299
    invoke-virtual {v2, p1}, Lnet/fortuna/ical4j/model/DateList;->get(I)Lnet/fortuna/ical4j/model/Date;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    .line 304
    .line 305
    iget-object v3, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 308
    .line 309
    .line 310
    move-result-wide v4

    .line 311
    aput-wide v4, v3, p1

    .line 312
    .line 313
    iget-object v3, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    .line 314
    .line 315
    aput-object v1, v3, p1

    .line 316
    .line 317
    add-int/lit8 p1, p1, 0x1

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_a
    return-object v0

    .line 321
    :catch_3
    move-exception p1

    .line 322
    const-class v0, Lnet/fortuna/ical4j/model/component/Observance;

    .line 323
    .line 324
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-interface {v0, v1, p1}, Lrc/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .line 330
    .line 331
    return-object v3
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
.end method

.method public final getOffsetFrom()Lnet/fortuna/ical4j/model/property/TzOffsetFrom;
    .locals 1

    .line 1
    const-string v0, "TZOFFSETFROM"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/TzOffsetFrom;

    .line 8
    .line 9
    return-object v0
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

.method public final getOffsetTo()Lnet/fortuna/ical4j/model/property/TzOffsetTo;
    .locals 1

    .line 1
    const-string v0, "TZOFFSETTO"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;

    .line 8
    .line 9
    return-object v0
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

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .line 1
    const-string v0, "DTSTART"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 8
    .line 9
    return-object v0
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

.method public final validate(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TZOFFSETFROM"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "TZOFFSETTO"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "DTSTART"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->validateProperties()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
