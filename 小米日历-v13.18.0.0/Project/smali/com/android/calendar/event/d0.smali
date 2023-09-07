.class public Lcom/android/calendar/event/d0;
.super Ljava/lang/Object;
.source "EventRecurrenceFormatter.java"


# direct methods
.method private static a(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/calendar/event/d0;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
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

.method private static b(I)I
    .locals 3

    .line 1
    const/high16 v0, 0x10000

    .line 2
    .line 3
    if-eq p0, v0, :cond_6

    .line 4
    .line 5
    const/high16 v0, 0x20000

    .line 6
    .line 7
    if-eq p0, v0, :cond_5

    .line 8
    .line 9
    const/high16 v0, 0x40000

    .line 10
    .line 11
    if-eq p0, v0, :cond_4

    .line 12
    .line 13
    const/high16 v0, 0x80000

    .line 14
    .line 15
    if-eq p0, v0, :cond_3

    .line 16
    .line 17
    const/high16 v0, 0x100000

    .line 18
    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    .line 21
    const/high16 v0, 0x200000

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const/high16 v0, 0x400000

    .line 26
    .line 27
    if-ne p0, v0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x7

    .line 30
    return p0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "bad day argument: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    const/4 p0, 0x6

    .line 55
    return p0

    .line 56
    :cond_2
    const/4 p0, 0x5

    .line 57
    return p0

    .line 58
    :cond_3
    const/4 p0, 0x4

    .line 59
    return p0

    .line 60
    :cond_4
    const/4 p0, 0x3

    .line 61
    return p0

    .line 62
    :cond_5
    const/4 p0, 0x2

    .line 63
    return p0

    .line 64
    :cond_6
    const/4 p0, 0x1

    .line 65
    return p0
.end method

.method public static c(Landroid/content/res/Resources;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    if-eq v0, p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x7

    .line 14
    if-eq v0, p1, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    const p1, 0x7f1206f7

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    const p1, 0x7f120382

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_2
    invoke-virtual {p1}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->l()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    const p1, 0x7f1201e1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    const v0, 0x7f1206d4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget v1, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    sub-int/2addr v1, v3

    .line 63
    const/4 v4, 0x0

    .line 64
    if-ltz v1, :cond_5

    .line 65
    .line 66
    move v2, v4

    .line 67
    :goto_0
    if-ge v2, v1, :cond_4

    .line 68
    .line 69
    iget-object v5, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->m:[I

    .line 70
    .line 71
    aget v5, v5, v2

    .line 72
    .line 73
    invoke-static {v5}, Lcom/android/calendar/event/d0;->a(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, ","

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object p1, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->m:[I

    .line 89
    .line 90
    aget p1, p1, v1

    .line 91
    .line 92
    invoke-static {p1}, Lcom/android/calendar/event/d0;->a(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    new-array p1, v3, [Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    aput-object v0, p1, v4

    .line 106
    .line 107
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_5
    iget-object p1, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->a:Lcom/miui/calendar/util/r0;

    .line 113
    .line 114
    if-nez p1, :cond_6

    .line 115
    .line 116
    return-object v2

    .line 117
    :cond_6
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->t()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-static {p1}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->n(I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    new-array v0, v3, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/android/calendar/event/d0;->a(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    aput-object p1, v0, v4

    .line 132
    .line 133
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :cond_7
    const p1, 0x7f120141

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
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
