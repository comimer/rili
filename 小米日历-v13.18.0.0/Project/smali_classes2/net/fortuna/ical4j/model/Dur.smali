.class public Lnet/fortuna/ical4j/model/Dur;
.super Ljava/lang/Object;
.source "Dur.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/fortuna/ical4j/model/Dur;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DAYS_PER_YEAR:I = 0x16d

.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x45929432e6235677L


# instance fields
.field private days:I

.field private hours:I

.field private minutes:I

.field private negative:Z

.field private seconds:I

.field private weeks:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 28
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 29
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 30
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    if-gez p1, :cond_0

    const/4 v0, 0x1

    .line 31
    :cond_0
    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    :cond_0
    if-gtz p1, :cond_4

    if-gtz p2, :cond_4

    if-gtz p3, :cond_4

    if-gtz p4, :cond_4

    :cond_1
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 35
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 36
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 37
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 38
    :cond_3
    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    return-void

    .line 39
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid duration representation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 3
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 4
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 5
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 6
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 7
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 8
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "+-PWDTHMS"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "+"

    .line 11
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    goto :goto_1

    :cond_0
    const-string v4, "-"

    .line 13
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    iput-boolean v3, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    goto :goto_1

    :cond_1
    const-string v4, "W"

    .line 15
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    goto :goto_1

    :cond_2
    const-string v4, "D"

    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    goto :goto_1

    :cond_3
    const-string v4, "H"

    .line 19
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    goto :goto_1

    :cond_4
    const-string v4, "M"

    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    goto :goto_1

    :cond_5
    const-string v4, "S"

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    :cond_6
    :goto_1
    move-object p1, v2

    goto :goto_0

    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 12

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    if-eqz v0, :cond_1

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    .line 42
    :cond_1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Date;

    if-eqz v0, :cond_2

    .line 43
    move-object v0, p1

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_1

    .line 44
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 45
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 46
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-wide/16 v3, 0x0

    .line 48
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :goto_2
    sub-int/2addr p2, v5

    if-lez p2, :cond_3

    const/4 v5, 0x5

    mul-int/lit16 p2, p2, 0x16d

    .line 49
    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->add(II)V

    int-to-long v5, p2

    add-long/2addr v3, v5

    .line 50
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_2

    :cond_3
    const/4 p2, 0x6

    .line 51
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 52
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr v2, p2

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x18

    mul-long/2addr v3, v5

    const/16 p2, 0xb

    .line 53
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 54
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr v2, p2

    int-to-long v7, v2

    add-long/2addr v3, v7

    const-wide/16 v7, 0x3c

    mul-long/2addr v3, v7

    const/16 p2, 0xc

    .line 55
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr v2, p2

    int-to-long v9, v2

    add-long/2addr v3, v9

    mul-long/2addr v3, v7

    const/16 p2, 0xd

    .line 56
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    add-long/2addr v3, p1

    .line 57
    rem-long p1, v3, v7

    long-to-int p1, p1

    iput p1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 58
    div-long/2addr v3, v7

    .line 59
    rem-long v9, v3, v7

    long-to-int p2, v9

    iput p2, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 60
    div-long/2addr v3, v7

    .line 61
    rem-long v7, v3, v5

    long-to-int v0, v7

    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 62
    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 63
    iput v2, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 64
    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez v0, :cond_4

    .line 65
    rem-int/lit8 p1, v2, 0x7

    if-nez p1, :cond_4

    .line 66
    div-int/lit8 v2, v2, 0x7

    iput v2, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 67
    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    :cond_4
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


# virtual methods
.method public final add(Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/Dur;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Cannot add a negative and a positive duration"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_2
    :goto_0
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 35
    .line 36
    if-lez v0, :cond_3

    .line 37
    .line 38
    iget v1, p1, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 39
    .line 40
    if-lez v1, :cond_3

    .line 41
    .line 42
    new-instance p1, Lnet/fortuna/ical4j/model/Dur;

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/model/Dur;-><init>(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_6

    .line 49
    :cond_3
    if-lez v0, :cond_4

    .line 50
    .line 51
    mul-int/lit8 v0, v0, 0x7

    .line 52
    .line 53
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 54
    .line 55
    add-int/2addr v0, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 58
    .line 59
    :goto_1
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 60
    .line 61
    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 62
    .line 63
    iget v3, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 64
    .line 65
    iget v4, p1, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 66
    .line 67
    add-int v5, v3, v4

    .line 68
    .line 69
    div-int/lit8 v5, v5, 0x3c

    .line 70
    .line 71
    if-lez v5, :cond_5

    .line 72
    .line 73
    add-int v5, v3, v4

    .line 74
    .line 75
    div-int/lit8 v5, v5, 0x3c

    .line 76
    .line 77
    add-int/2addr v2, v5

    .line 78
    add-int/2addr v3, v4

    .line 79
    rem-int/lit8 v3, v3, 0x3c

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    add-int/2addr v3, v4

    .line 83
    :goto_2
    iget v4, p1, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 84
    .line 85
    add-int v5, v2, v4

    .line 86
    .line 87
    div-int/lit8 v5, v5, 0x3c

    .line 88
    .line 89
    if-lez v5, :cond_6

    .line 90
    .line 91
    add-int v5, v2, v4

    .line 92
    .line 93
    div-int/lit8 v5, v5, 0x3c

    .line 94
    .line 95
    add-int/2addr v1, v5

    .line 96
    add-int/2addr v2, v4

    .line 97
    rem-int/lit8 v2, v2, 0x3c

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    add-int/2addr v2, v4

    .line 101
    :goto_3
    iget v4, p1, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 102
    .line 103
    add-int v5, v1, v4

    .line 104
    .line 105
    div-int/lit8 v5, v5, 0x18

    .line 106
    .line 107
    if-lez v5, :cond_7

    .line 108
    .line 109
    add-int v5, v1, v4

    .line 110
    .line 111
    div-int/lit8 v5, v5, 0x18

    .line 112
    .line 113
    add-int/2addr v0, v5

    .line 114
    add-int/2addr v1, v4

    .line 115
    rem-int/lit8 v1, v1, 0x18

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_7
    add-int/2addr v1, v4

    .line 119
    :goto_4
    iget v4, p1, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 120
    .line 121
    if-lez v4, :cond_8

    .line 122
    .line 123
    mul-int/lit8 v4, v4, 0x7

    .line 124
    .line 125
    iget p1, p1, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 126
    .line 127
    add-int/2addr v4, p1

    .line 128
    goto :goto_5

    .line 129
    :cond_8
    iget v4, p1, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 130
    .line 131
    :goto_5
    add-int/2addr v0, v4

    .line 132
    new-instance p1, Lnet/fortuna/ical4j/model/Dur;

    .line 133
    .line 134
    invoke-direct {p1, v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Dur;-><init>(IIII)V

    .line 135
    .line 136
    .line 137
    :goto_6
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 138
    .line 139
    iput-boolean v0, p1, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 140
    .line 141
    return-object p1
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
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
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/Dur;->compareTo(Lnet/fortuna/ical4j/model/Dur;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lnet/fortuna/ical4j/model/Dur;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getWeeks()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getWeeks()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getWeeks()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getWeeks()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getDays()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getDays()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getDays()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getDays()I

    move-result p1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getHours()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getHours()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getHours()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getHours()I

    move-result p1

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getMinutes()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getMinutes()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getMinutes()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getMinutes()I

    move-result p1

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getSeconds()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getSeconds()I

    move-result p1

    goto :goto_0

    .line 13
    :goto_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_6

    neg-int p1, v0

    return p1

    :cond_6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Dur;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lnet/fortuna/ical4j/model/Dur;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/Dur;->compareTo(Lnet/fortuna/ical4j/model/Dur;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1

    .line 17
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
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

.method public final getDays()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

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

.method public final getHours()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

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

.method public final getMinutes()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

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

.method public final getSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

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

.method public final getTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .line 1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Date;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 7
    .line 8
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v1, 0xd

    .line 25
    .line 26
    const/16 v2, 0xc

    .line 27
    .line 28
    const/16 v3, 0xb

    .line 29
    .line 30
    const/4 v4, 0x7

    .line 31
    const/4 v5, 0x3

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 35
    .line 36
    neg-int p1, p1

    .line 37
    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->add(II)V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 41
    .line 42
    neg-int p1, p1

    .line 43
    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 44
    .line 45
    .line 46
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 47
    .line 48
    neg-int p1, p1

    .line 49
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 50
    .line 51
    .line 52
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 53
    .line 54
    neg-int p1, p1

    .line 55
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 56
    .line 57
    .line 58
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 59
    .line 60
    neg-int p1, p1

    .line 61
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 66
    .line 67
    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->add(II)V

    .line 68
    .line 69
    .line 70
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 71
    .line 72
    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 73
    .line 74
    .line 75
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 76
    .line 77
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 78
    .line 79
    .line 80
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 81
    .line 82
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 83
    .line 84
    .line 85
    iget p1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 86
    .line 87
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1
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

.method public final getWeeks()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

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

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/builder/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/e;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->e(I)Lorg/apache/commons/lang3/builder/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->e(I)Lorg/apache/commons/lang3/builder/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->e(I)Lorg/apache/commons/lang3/builder/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->e(I)Lorg/apache/commons/lang3/builder/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->e(I)Lorg/apache/commons/lang3/builder/e;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->i(Z)Lorg/apache/commons/lang3/builder/e;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/e;->t()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    return v0
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

.method public final isNegative()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

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

.method public final negate()Lnet/fortuna/ical4j/model/Dur;
    .locals 5

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Dur;

    .line 2
    .line 3
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 4
    .line 5
    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 6
    .line 7
    iget v3, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 8
    .line 9
    iget v4, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lnet/fortuna/ical4j/model/Dur;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 15
    .line 16
    iput v1, v0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 17
    .line 18
    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 19
    .line 20
    xor-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    iput-boolean v1, v0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 23
    .line 24
    return-object v0
    .line 25
    .line 26
    .line 27
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x2d

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    const/16 v1, 0x50

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 21
    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x57

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 34
    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x44

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_2
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 46
    .line 47
    if-gtz v1, :cond_3

    .line 48
    .line 49
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 50
    .line 51
    if-gtz v1, :cond_3

    .line 52
    .line 53
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 54
    .line 55
    if-lez v1, :cond_6

    .line 56
    .line 57
    :cond_3
    const/16 v1, 0x54

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 63
    .line 64
    if-lez v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 v1, 0x48

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_4
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 75
    .line 76
    if-lez v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x4d

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_5
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 87
    .line 88
    if-lez v1, :cond_6

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x53

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :cond_6
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 99
    .line 100
    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 101
    .line 102
    add-int/2addr v1, v2

    .line 103
    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 104
    .line 105
    add-int/2addr v1, v2

    .line 106
    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 107
    .line 108
    add-int/2addr v1, v2

    .line 109
    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 110
    .line 111
    add-int/2addr v1, v2

    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    const-string v1, "T0S"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :cond_7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0
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
