.class public Lcom/miui/maml/data/DateFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "DateFunctions.java"


# static fields
.field public static final REPEAT_MONTH:I = 0x2

.field public static final REPEAT_NO:I = 0x0

.field public static final REPEAT_WEEK:I = 0x3

.field public static final REPEAT_YEAR:I = 0x1


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

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
.end method

.method private changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;
    .locals 3

    .line 1
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 2
    .line 3
    int-to-long v1, p2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v2, 0x1d

    .line 23
    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sub-int/2addr p1, v1

    .line 40
    :cond_1
    invoke-static {p2, v2, p1}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
    .line 45
    .line 46
    .line 47
.end method

.method private diffDateMonth(Ljava/time/LocalDate;Ljava/time/LocalDate;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Ljava/time/LocalDate;->lengthOfMonth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int v2, v0, v1

    .line 14
    .line 15
    const-wide/16 v3, 0x1

    .line 16
    .line 17
    invoke-virtual {p2, v3, v4}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/time/LocalDate;->lengthOfMonth()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-lt p1, v1, :cond_1

    .line 26
    .line 27
    if-le p1, v0, :cond_0

    .line 28
    .line 29
    int-to-long p1, v2

    .line 30
    return-wide p1

    .line 31
    :cond_0
    sub-int/2addr p1, v1

    .line 32
    int-to-long p1, p1

    .line 33
    return-wide p1

    .line 34
    :cond_1
    if-le p1, p2, :cond_2

    .line 35
    .line 36
    add-int/2addr v2, p2

    .line 37
    int-to-long p1, v2

    .line 38
    return-wide p1

    .line 39
    :cond_2
    add-int/2addr v2, p1

    .line 40
    int-to-long p1, v2

    .line 41
    return-wide p1
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private diffDateYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateFunctions;->changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 43
    .line 44
    invoke-virtual {v0, p2, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    return-wide p1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateFunctions;->changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2}, Ljava/time/LocalDate;->isLeapYear()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    .line 68
    .line 69
    if-ne v0, v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v1, 0x1d

    .line 76
    .line 77
    if-ne v0, v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfYear()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    add-int/lit8 p1, p1, -0x1

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfYear()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    sub-int/2addr p1, p2

    .line 90
    int-to-long p1, p1

    .line 91
    return-wide p1

    .line 92
    :cond_2
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfYear()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfYear()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    sub-int/2addr p1, p2

    .line 101
    int-to-long p1, p1

    .line 102
    return-wide p1
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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
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
.end method

.method static load()V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/data/DateFunctions;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/maml/data/DateFunctions;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "diffDate"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

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
.end method


# virtual methods
.method diffDate(JJI)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->long2LocalDate(J)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lcom/miui/maml/data/DateFunctions;->long2LocalDate(J)Ljava/time/LocalDate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/miui/maml/data/DateFunctions;->diffDate(Ljava/time/LocalDate;Ljava/time/LocalDate;I)J

    move-result-wide p1

    return-wide p1
.end method

.method diffDate(Ljava/time/LocalDate;Ljava/time/LocalDate;I)J
    .locals 2

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->diffDateYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p3, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->diffDateMonth(Ljava/time/LocalDate;Ljava/time/LocalDate;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p3, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/DayOfWeek;->getValue()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/DayOfWeek;->getValue()I

    move-result p2

    if-lt p1, p2, :cond_2

    :goto_0
    sub-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1

    :cond_2
    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 8

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object p2, p1, p2

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    double-to-long v3, v0

    .line 9
    const/4 p2, 0x1

    .line 10
    aget-object p2, p1, p2

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    double-to-long v5, v0

    .line 17
    const/4 p2, 0x2

    .line 18
    aget-object p1, p1, p2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    double-to-int v7, p1

    .line 25
    move-object v2, p0

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/miui/maml/data/DateFunctions;->diffDate(JJI)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    long-to-double p1, p1

    .line 31
    return-wide p1
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
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
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
.end method

.method localDate2Long(Ljava/time/LocalDate;)J
    .locals 2

    .line 1
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method long2LocalDate(J)Ljava/time/LocalDate;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
