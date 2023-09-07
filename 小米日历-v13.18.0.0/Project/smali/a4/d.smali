.class public La4/d;
.super Ljava/lang/Object;
.source "HuangLiUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v0, "\u7532"

    .line 2
    .line 3
    const-string v1, "\u4e59"

    .line 4
    .line 5
    const-string v2, "\u4e19"

    .line 6
    .line 7
    const-string v3, "\u4e01"

    .line 8
    .line 9
    const-string v4, "\u620a"

    .line 10
    .line 11
    const-string v5, "\u5df1"

    .line 12
    .line 13
    const-string v6, "\u5e9a"

    .line 14
    .line 15
    const-string v7, "\u8f9b"

    .line 16
    .line 17
    const-string v8, "\u58ec"

    .line 18
    .line 19
    const-string v9, "\u7678"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, La4/d;->a:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "\u5b50"

    .line 28
    .line 29
    const-string v2, "\u4e11"

    .line 30
    .line 31
    const-string v3, "\u5bc5"

    .line 32
    .line 33
    const-string v4, "\u536f"

    .line 34
    .line 35
    const-string v5, "\u8fb0"

    .line 36
    .line 37
    const-string v6, "\u5df3"

    .line 38
    .line 39
    const-string v7, "\u5348"

    .line 40
    .line 41
    const-string v8, "\u672a"

    .line 42
    .line 43
    const-string v9, "\u7533"

    .line 44
    .line 45
    const-string v10, "\u9149"

    .line 46
    .line 47
    const-string v11, "\u620c"

    .line 48
    .line 49
    const-string v12, "\u4ea5"

    .line 50
    .line 51
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, La4/d;->b:[Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {}, La4/d;->s()V

    .line 58
    .line 59
    .line 60
    return-void
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
.end method

.method public static a(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, La4/d;->q(Ljava/util/Calendar;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, La4/d;->h(Ljava/util/Calendar;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p0}, La4/d;->d(Ljava/util/Calendar;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " "

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
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
.end method

.method private static b(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0, v0, v0}, Lcom/miui/calendar/util/a0;->w(III)[I

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x0

    .line 15
    aget v1, p0, v1

    .line 16
    .line 17
    aget v2, p0, v0

    .line 18
    .line 19
    sub-int/2addr v2, v0

    .line 20
    const/4 v0, 0x2

    .line 21
    aget v3, p0, v0

    .line 22
    .line 23
    const/16 v4, 0x17

    .line 24
    .line 25
    const/16 v5, 0x3b

    .line 26
    .line 27
    const/16 v6, 0x3b

    .line 28
    .line 29
    move-object v0, v7

    .line 30
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 31
    .line 32
    .line 33
    const/16 p0, 0xe

    .line 34
    .line 35
    const/16 v0, 0x3e7

    .line 36
    .line 37
    invoke-virtual {v7, p0, v0}, Ljava/util/Calendar;->set(II)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x5

    .line 41
    const/4 v0, -0x1

    .line 42
    invoke-virtual {v7, p0, v0}, Ljava/util/Calendar;->add(II)V

    .line 43
    .line 44
    .line 45
    return-object v7
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
.end method

.method public static c(I)Ljava/lang/String;
    .locals 15

    .line 1
    const-string v0, "\u620a"

    .line 2
    .line 3
    const-string v1, "\u5df1"

    .line 4
    .line 5
    const-string v2, "\u5e9a"

    .line 6
    .line 7
    const-string v3, "\u8f9b"

    .line 8
    .line 9
    const-string v4, "\u58ec"

    .line 10
    .line 11
    const-string v5, "\u7678"

    .line 12
    .line 13
    const-string v6, "\u7532"

    .line 14
    .line 15
    const-string v7, "\u4e59"

    .line 16
    .line 17
    const-string v8, "\u4e19"

    .line 18
    .line 19
    const-string v9, "\u4e01"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "\u5348"

    .line 26
    .line 27
    const-string v2, "\u672a"

    .line 28
    .line 29
    const-string v3, "\u7533"

    .line 30
    .line 31
    const-string v4, "\u9149"

    .line 32
    .line 33
    const-string v5, "\u620c"

    .line 34
    .line 35
    const-string v6, "\u4ea5"

    .line 36
    .line 37
    const-string v7, "\u5b50"

    .line 38
    .line 39
    const-string v8, "\u4e11"

    .line 40
    .line 41
    const-string v9, "\u5bc5"

    .line 42
    .line 43
    const-string v10, "\u536f"

    .line 44
    .line 45
    const-string v11, "\u8fb0"

    .line 46
    .line 47
    const-string v12, "\u5df3"

    .line 48
    .line 49
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "\u9f20"

    .line 54
    .line 55
    const-string v3, "\u725b"

    .line 56
    .line 57
    const-string v4, "\u864e"

    .line 58
    .line 59
    const-string v5, "\u5154"

    .line 60
    .line 61
    const-string v6, "\u9f99"

    .line 62
    .line 63
    const-string v7, "\u86c7"

    .line 64
    .line 65
    const-string v8, "\u9a6c"

    .line 66
    .line 67
    const-string v9, "\u7f8a"

    .line 68
    .line 69
    const-string v10, "\u7334"

    .line 70
    .line 71
    const-string v11, "\u9e21"

    .line 72
    .line 73
    const-string v12, "\u72d7"

    .line 74
    .line 75
    const-string v13, "\u732a"

    .line 76
    .line 77
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "\u9a6c"

    .line 82
    .line 83
    const-string v4, "\u7f8a"

    .line 84
    .line 85
    const-string v5, "\u7334"

    .line 86
    .line 87
    const-string v6, "\u9e21"

    .line 88
    .line 89
    const-string v7, "\u72d7"

    .line 90
    .line 91
    const-string v8, "\u732a"

    .line 92
    .line 93
    const-string v9, "\u9f20"

    .line 94
    .line 95
    const-string v10, "\u725b"

    .line 96
    .line 97
    const-string v11, "\u864e"

    .line 98
    .line 99
    const-string v12, "\u5154"

    .line 100
    .line 101
    const-string v13, "\u9f99"

    .line 102
    .line 103
    const-string v14, "\u86c7"

    .line 104
    .line 105
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    rem-int/lit8 v4, p0, 0xa

    .line 110
    .line 111
    rem-int/lit8 p0, p0, 0xc

    .line 112
    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    aget-object v2, v2, p0

    .line 119
    .line 120
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, "\u65e5\u51b2"

    .line 124
    .line 125
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    aget-object v2, v3, p0

    .line 129
    .line 130
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, "("

    .line 134
    .line 135
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    aget-object v0, v0, v4

    .line 139
    .line 140
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    aget-object p0, v1, p0

    .line 144
    .line 145
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p0, ")"

    .line 149
    .line 150
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0
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

.method private static d(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 2
    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "ee\u65e5"

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
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
.end method

.method private static e(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x4

    .line 2
    .line 3
    rem-int/lit8 p0, p0, 0xa

    .line 4
    .line 5
    return p0
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

.method public static f(J)[Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {}, Lb4/a;->b()Lb4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3, p0, p1}, Lb4/a;->a(J)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    array-length v5, v3

    .line 18
    if-ne v5, v1, :cond_2

    .line 19
    .line 20
    move v1, v4

    .line 21
    :goto_0
    array-length v5, v3

    .line 22
    if-ge v1, v5, :cond_2

    .line 23
    .line 24
    aget-object v5, v3, v1

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    move v7, v4

    .line 36
    move v8, v7

    .line 37
    :goto_1
    array-length v9, v5

    .line 38
    if-ge v7, v9, :cond_1

    .line 39
    .line 40
    aget-object v9, v5, v7

    .line 41
    .line 42
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    add-int/2addr v8, v9

    .line 47
    const/16 v9, 0xa

    .line 48
    .line 49
    if-gt v8, v9, :cond_1

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-lez v9, :cond_0

    .line 56
    .line 57
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_0
    aget-object v9, v5, v7

    .line 61
    .line 62
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v7, v7, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    aput-object v5, v2, v1

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-wide v0, 0x16d82e66400L

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    cmp-long v0, p0, v0

    .line 83
    .line 84
    if-ltz v0, :cond_3

    .line 85
    .line 86
    const-wide v0, 0x16d880cc000L

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    cmp-long p0, p0, v0

    .line 92
    .line 93
    if-gez p0, :cond_3

    .line 94
    .line 95
    aget-object p0, v2, v4

    .line 96
    .line 97
    const-string p1, " \u8bf8\u4e8b\u4e0d\u5b9c"

    .line 98
    .line 99
    const-string v0, ""

    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    aput-object p0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    :cond_3
    return-object v2

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string p1, "Cal:D:HuangLiUtils"

    .line 110
    .line 111
    const-string v0, "getHuangLiStrings()"

    .line 112
    .line 113
    invoke-static {p1, v0, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    return-object p0
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

.method public static g(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 2
    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "N\u6708e"

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
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
.end method

.method private static h(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 2
    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "NN\u6708"

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
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
.end method

.method public static i(I)Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "\u7532\u4e0d\u5f00\u4ed3\u8d22\u7269\u8017\u6563"

    .line 2
    .line 3
    const-string v1, "\u4e59\u4e0d\u683d\u690d\u5343\u682a\u4e0d\u957f"

    .line 4
    .line 5
    const-string v2, "\u4e19\u4e0d\u4fee\u7076\u5fc5\u89c1\u707e\u6b83"

    .line 6
    .line 7
    const-string v3, "\u4e01\u4e0d\u5243\u5934\u5934\u5fc5\u751f\u75ae"

    .line 8
    .line 9
    const-string v4, "\u620a\u4e0d\u53d7\u7530\u7530\u4e3b\u4e0d\u7965"

    .line 10
    .line 11
    const-string v5, "\u5df1\u4e0d\u7834\u5238\u4e8c\u6bd4\u5e76\u4ea1"

    .line 12
    .line 13
    const-string v6, "\u5e9a\u4e0d\u7ecf\u7edc\u7ec7\u673a\u865a\u5f20"

    .line 14
    .line 15
    const-string v7, "\u8f9b\u4e0d\u5408\u9171\u4e3b\u4eba\u4e0d\u5c1d"

    .line 16
    .line 17
    const-string v8, "\u58ec\u4e0d\u6c72\u6c34\u66f4\u96be\u63d0\u9632"

    .line 18
    .line 19
    const-string v9, "\u7678\u4e0d\u8bcd\u8bbc\u7406\u5f31\u654c\u5f3a"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "\u5b50\u4e0d\u95ee\u535c\u81ea\u60f9\u7978\u6b83"

    .line 26
    .line 27
    const-string v2, "\u4e11\u4e0d\u51a0\u5e26\u4e3b\u4e0d\u8fd8\u4e61"

    .line 28
    .line 29
    const-string v3, "\u5bc5\u4e0d\u796d\u7940\u795e\u9b3c\u4e0d\u5c1d"

    .line 30
    .line 31
    const-string v4, "\u536f\u4e0d\u7a7f\u4e95\u6c34\u6cc9\u4e0d\u9999"

    .line 32
    .line 33
    const-string v5, "\u8fb0\u4e0d\u54ed\u6ce3\u5fc5\u4e3b\u91cd\u4e27"

    .line 34
    .line 35
    const-string v6, "\u5df3\u4e0d\u8fdc\u884c\u8d22\u7269\u4f0f\u85cf"

    .line 36
    .line 37
    const-string v7, "\u5348\u4e0d\u82eb\u76d6\u5c4b\u4e3b\u66f4\u5f20"

    .line 38
    .line 39
    const-string v8, "\u672a\u4e0d\u670d\u836f\u6bd2\u6c14\u5165\u80a0"

    .line 40
    .line 41
    const-string v9, "\u7533\u4e0d\u5b89\u5e8a\u9b3c\u795f\u5165\u623f"

    .line 42
    .line 43
    const-string v10, "\u9149\u4e0d\u5bb4\u5ba2\u9189\u5750\u98a0\u72c2"

    .line 44
    .line 45
    const-string v11, "\u620c\u4e0d\u5403\u72ac\u4f5c\u602a\u4e0a\u5e8a"

    .line 46
    .line 47
    const-string v12, "\u4ea5\u4e0d\u5ac1\u5a36\u4e0d\u5229\u65b0\u90ce"

    .line 48
    .line 49
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    rem-int/lit8 v3, p0, 0xa

    .line 59
    .line 60
    aget-object v0, v0, v3

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " "

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    rem-int/lit8 p0, p0, 0xc

    .line 71
    .line 72
    aget-object p0, v1, p0

    .line 73
    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
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

.method public static j(I)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "\u5357"

    .line 2
    .line 3
    const-string v1, "\u4e1c"

    .line 4
    .line 5
    const-string v2, "\u5317"

    .line 6
    .line 7
    const-string v3, "\u897f"

    .line 8
    .line 9
    const-string v4, "\u5357"

    .line 10
    .line 11
    const-string v5, "\u4e1c"

    .line 12
    .line 13
    const-string v6, "\u5317"

    .line 14
    .line 15
    const-string v7, "\u897f"

    .line 16
    .line 17
    const-string v8, "\u5357"

    .line 18
    .line 19
    const-string v9, "\u4e1c"

    .line 20
    .line 21
    const-string v10, "\u5317"

    .line 22
    .line 23
    const-string v11, "\u897f"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    rem-int/lit8 p0, p0, 0xc

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "\u715e"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    aget-object p0, v0, p0

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
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
.end method

.method public static k(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, La4/d;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, La4/d;->r(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    mul-int/lit8 v0, v0, 0x6

    .line 10
    .line 11
    div-int/lit8 p0, p0, 0x2

    .line 12
    .line 13
    add-int/2addr v0, p0

    .line 14
    sget-object p0, La4/a;->a:[Ljava/lang/String;

    .line 15
    .line 16
    aget-object p0, p0, v0

    .line 17
    .line 18
    return-object p0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static l(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, La4/d;->m(Ljava/util/Calendar;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0, p1}, Lcom/miui/calendar/util/a0;->o(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
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

.method public static m(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 2
    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "t"

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
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
.end method

.method public static n(I)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "\u5360\u95e8"

    .line 2
    .line 3
    const-string v1, "\u7893\u78e8"

    .line 4
    .line 5
    const-string v2, "\u53a8\u7076"

    .line 6
    .line 7
    const-string v3, "\u4ed3\u5e93"

    .line 8
    .line 9
    const-string v4, "\u623f\u5e8a"

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u7893"

    .line 16
    .line 17
    const-string v2, "\u5395"

    .line 18
    .line 19
    const-string v3, "\u7089"

    .line 20
    .line 21
    const-string v4, "\u95e8"

    .line 22
    .line 23
    const-string v5, "\u6816"

    .line 24
    .line 25
    const-string v6, "\u5e8a"

    .line 26
    .line 27
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    rem-int/lit8 v2, p0, 0x3c

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    rem-int/lit8 v4, p0, 0x5

    .line 39
    .line 40
    aget-object v0, v0, v4

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    rem-int/lit8 p0, p0, 0x6

    .line 46
    .line 47
    aget-object p0, v1, p0

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v0, "\u5916\u6b63\u5357"

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    if-ge v2, v1, :cond_0

    .line 60
    .line 61
    const-string v0, "\u5916\u4e1c\u5357"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v1, 0x7

    .line 65
    if-ge v2, v1, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/16 v1, 0xe

    .line 69
    .line 70
    if-ge v2, v1, :cond_2

    .line 71
    .line 72
    const-string v0, "\u5916\u897f\u5357"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/16 v1, 0x10

    .line 76
    .line 77
    if-ge v2, v1, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/16 v0, 0x12

    .line 81
    .line 82
    if-ge v2, v0, :cond_4

    .line 83
    .line 84
    const-string v0, "\u5916\u6b63\u897f"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/16 v0, 0x18

    .line 88
    .line 89
    if-ge v2, v0, :cond_5

    .line 90
    .line 91
    const-string v0, "\u5916\u897f\u5317"

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    const/16 v0, 0x1d

    .line 95
    .line 96
    if-ge v2, v0, :cond_6

    .line 97
    .line 98
    const-string v0, "\u5916\u6b63\u5317"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    const/16 v0, 0x22

    .line 102
    .line 103
    if-ge v2, v0, :cond_7

    .line 104
    .line 105
    const-string v0, "\u623f\u5185\u5317"

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/16 v0, 0x28

    .line 109
    .line 110
    if-ge v2, v0, :cond_8

    .line 111
    .line 112
    const-string v0, "\u623f\u5185\u5357"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    const/16 v0, 0x2d

    .line 116
    .line 117
    if-ge v2, v0, :cond_9

    .line 118
    .line 119
    const-string v0, "\u623f\u5185\u4e1c"

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_9
    const/16 v0, 0x33

    .line 123
    .line 124
    if-ge v2, v0, :cond_a

    .line 125
    .line 126
    const-string v0, "\u5916\u4e1c\u5317"

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_a
    const-string v0, "\u5916\u6b63\u4e1c"

    .line 130
    .line 131
    :goto_0
    const-string v1, "\u5360\u95e8\u95e8"

    .line 132
    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_b

    .line 138
    .line 139
    const-string p0, "\u5360\u5927\u95e8"

    .line 140
    .line 141
    :cond_b
    const-string v1, "\u7893\u78e8\u7893"

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_c

    .line 148
    .line 149
    const-string p0, "\u5360\u7893\u78e8"

    .line 150
    .line 151
    :cond_c
    const-string v1, "\u623f\u5e8a\u5e8a"

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_d

    .line 158
    .line 159
    const-string p0, "\u5360\u623f\u5e8a"

    .line 160
    .line 161
    :cond_d
    const-string v1, "\u5360\u95e8\u6816"

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_e

    .line 168
    .line 169
    const-string p0, "\u95e8\u9e21\u6816"

    .line 170
    .line 171
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0
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
.end method

.method public static o(II)Ljava/lang/String;
    .locals 31

    .line 1
    const-string v0, "\u571f"

    .line 2
    .line 3
    const-string v1, "\u6728"

    .line 4
    .line 5
    const-string v2, "\u91d1"

    .line 6
    .line 7
    const-string v3, "\u6c34"

    .line 8
    .line 9
    const-string v4, "\u706b"

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u6d77\u4e2d"

    .line 16
    .line 17
    const-string v2, "\u7089\u4e2d"

    .line 18
    .line 19
    const-string v3, "\u5927\u6797"

    .line 20
    .line 21
    const-string v4, "\u8def\u65c1"

    .line 22
    .line 23
    const-string v5, "\u5251\u950b"

    .line 24
    .line 25
    const-string v6, "\u5c71\u5934"

    .line 26
    .line 27
    const-string v7, "\u6da7\u4e0b"

    .line 28
    .line 29
    const-string v8, "\u57ce\u5934"

    .line 30
    .line 31
    const-string v9, "\u767d\u8721"

    .line 32
    .line 33
    const-string v10, "\u6768\u67f3"

    .line 34
    .line 35
    const-string v11, "\u4e95\u6cc9"

    .line 36
    .line 37
    const-string v12, "\u5c4b\u4e0a"

    .line 38
    .line 39
    const-string v13, "\u9739\u96f3"

    .line 40
    .line 41
    const-string v14, "\u677e\u67cf"

    .line 42
    .line 43
    const-string v15, "\u957f\u6d41"

    .line 44
    .line 45
    const-string v16, "\u6c99\u77f3"

    .line 46
    .line 47
    const-string v17, "\u5c71\u4e0b"

    .line 48
    .line 49
    const-string v18, "\u5e73\u5730"

    .line 50
    .line 51
    const-string v19, "\u58c1\u4e0a"

    .line 52
    .line 53
    const-string v20, "\u91d1\u7b94"

    .line 54
    .line 55
    const-string v21, "\u4f5b\u706f"

    .line 56
    .line 57
    const-string v22, "\u5929\u6cb3"

    .line 58
    .line 59
    const-string v23, "\u5927\u9a7f"

    .line 60
    .line 61
    const-string v24, "\u9497\u5ddd"

    .line 62
    .line 63
    const-string v25, "\u6851\u62d3"

    .line 64
    .line 65
    const-string v26, "\u5927\u6eaa"

    .line 66
    .line 67
    const-string v27, "\u6c99\u4e2d"

    .line 68
    .line 69
    const-string v28, "\u5929\u4e0a"

    .line 70
    .line 71
    const-string v29, "\u77f3\u69b4"

    .line 72
    .line 73
    const-string v30, "\u5927\u6d77"

    .line 74
    .line 75
    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/16 v2, 0xa

    .line 80
    .line 81
    new-array v2, v2, [I

    .line 82
    .line 83
    fill-array-data v2, :array_0

    .line 84
    .line 85
    .line 86
    const/16 v3, 0xc

    .line 87
    .line 88
    new-array v4, v3, [I

    .line 89
    .line 90
    fill-array-data v4, :array_1

    .line 91
    .line 92
    .line 93
    const-string v5, "\u5f00"

    .line 94
    .line 95
    const-string v6, "\u95ed"

    .line 96
    .line 97
    const-string v7, "\u5efa"

    .line 98
    .line 99
    const-string v8, "\u9664"

    .line 100
    .line 101
    const-string v9, "\u6ee1"

    .line 102
    .line 103
    const-string v10, "\u5e73"

    .line 104
    .line 105
    const-string v11, "\u5b9a"

    .line 106
    .line 107
    const-string v12, "\u6267"

    .line 108
    .line 109
    const-string v13, "\u7834"

    .line 110
    .line 111
    const-string v14, "\u5371"

    .line 112
    .line 113
    const-string v15, "\u6210"

    .line 114
    .line 115
    const-string v16, "\u6536"

    .line 116
    .line 117
    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    rem-int/lit8 v6, p1, 0xa

    .line 122
    .line 123
    aget v2, v2, v6

    .line 124
    .line 125
    rem-int/lit8 v6, p1, 0xc

    .line 126
    .line 127
    aget v4, v4, v6

    .line 128
    .line 129
    add-int/2addr v2, v4

    .line 130
    rem-int/lit8 v2, v2, 0x5

    .line 131
    .line 132
    add-int/lit8 v4, p0, -0x2

    .line 133
    .line 134
    rem-int/2addr v4, v3

    .line 135
    sub-int v4, p1, v4

    .line 136
    .line 137
    rem-int/2addr v4, v3

    .line 138
    if-ltz v4, :cond_0

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    add-int/lit8 v4, v4, 0xc

    .line 142
    .line 143
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    rem-int/lit8 v6, p1, 0x3c

    .line 149
    .line 150
    div-int/lit8 v6, v6, 0x2

    .line 151
    .line 152
    aget-object v1, v1, v6

    .line 153
    .line 154
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    aget-object v0, v0, v2

    .line 158
    .line 159
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v0, " "

    .line 163
    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    aget-object v0, v5, v4

    .line 168
    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v0, "\u6267\u4f4d"

    .line 173
    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    return-object v0

    .line 182
    nop

    .line 183
    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data

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
    :array_1
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data
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
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method public static p(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 28

    .line 1
    const-string v0, "\u4e1c\u65b9\u89d2\u6728\u86df-\u5409"

    .line 2
    .line 3
    const-string v1, "\u4e1c\u65b9\u4ea2\u91d1\u9f99-\u51f6"

    .line 4
    .line 5
    const-string v2, "\u4e1c\u65b9\u6c10\u571f\u8c89-\u51f6"

    .line 6
    .line 7
    const-string v3, "\u4e1c\u65b9\u623f\u65e5\u5154-\u5409"

    .line 8
    .line 9
    const-string v4, "\u4e1c\u65b9\u5fc3\u6708\u72d0-\u51f6"

    .line 10
    .line 11
    const-string v5, "\u4e1c\u65b9\u5c3e\u706b\u864e-\u5409"

    .line 12
    .line 13
    const-string v6, "\u4e1c\u65b9\u7b95\u6c34\u8c79-\u5409"

    .line 14
    .line 15
    const-string v7, "\u5317\u65b9\u6597\u6728\u736c-\u5409"

    .line 16
    .line 17
    const-string v8, "\u5317\u65b9\u725b\u91d1\u725b-\u51f6"

    .line 18
    .line 19
    const-string v9, "\u5317\u65b9\u5973\u571f\u8760-\u51f6"

    .line 20
    .line 21
    const-string v10, "\u5317\u65b9\u865a\u65e5\u9f20-\u51f6"

    .line 22
    .line 23
    const-string v11, "\u5317\u65b9\u5371\u6708\u71d5-\u51f6"

    .line 24
    .line 25
    const-string v12, "\u5317\u65b9\u5ba4\u706b\u732a-\u5409"

    .line 26
    .line 27
    const-string v13, "\u5317\u65b9\u58c1\u6c34\u8c90-\u5409"

    .line 28
    .line 29
    const-string v14, "\u897f\u65b9\u594e\u6728\u72fc-\u51f6"

    .line 30
    .line 31
    const-string v15, "\u897f\u65b9\u5a04\u91d1\u72d7-\u5409"

    .line 32
    .line 33
    const-string v16, "\u897f\u65b9\u80c3\u571f\u96c9-\u5409"

    .line 34
    .line 35
    const-string v17, "\u897f\u65b9\u6634\u65e5\u9e21-\u51f6"

    .line 36
    .line 37
    const-string v18, "\u897f\u65b9\u6bd5\u6708\u4e4c-\u5409"

    .line 38
    .line 39
    const-string v19, "\u897f\u65b9\u89dc\u706b\u7334-\u51f6"

    .line 40
    .line 41
    const-string v20, "\u897f\u65b9\u53c2\u6c34\u733f-\u51f6"

    .line 42
    .line 43
    const-string v21, "\u5357\u65b9\u4e95\u6728\u72b4-\u5409"

    .line 44
    .line 45
    const-string v22, "\u5357\u65b9\u9b3c\u91d1\u7f8a-\u51f6"

    .line 46
    .line 47
    const-string v23, "\u5357\u65b9\u67f3\u571f\u7350-\u51f6"

    .line 48
    .line 49
    const-string v24, "\u5357\u65b9\u661f\u65e5\u9a6c-\u51f6"

    .line 50
    .line 51
    const-string v25, "\u5357\u65b9\u5f20\u6708\u9e7f-\u5409"

    .line 52
    .line 53
    const-string v26, "\u5357\u65b9\u7ffc\u706b\u86c7-\u51f6"

    .line 54
    .line 55
    const-string v27, "\u5357\u65b9\u8f78\u6c34\u8693-\u5409"

    .line 56
    .line 57
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lcom/miui/calendar/util/r0;

    .line 62
    .line 63
    invoke-direct {v1}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->l()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    invoke-static {v2, v3, v4, v5}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/lit8 v1, v1, 0xb

    .line 86
    .line 87
    rem-int/lit8 v1, v1, 0x1c

    .line 88
    .line 89
    aget-object v0, v0, v1

    .line 90
    .line 91
    return-object v0
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

.method public static q(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-static {p0}, La4/d;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    cmp-long p0, v2, v4

    .line 19
    .line 20
    if-gtz p0, :cond_0

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, -0x3

    .line 25
    .line 26
    rem-int/lit8 p0, v1, 0xa

    .line 27
    .line 28
    const/16 v2, 0xc

    .line 29
    .line 30
    rem-int/2addr v1, v2

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    const/16 p0, 0xa

    .line 34
    .line 35
    :cond_1
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v2, v1

    .line 39
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object v3, La4/d;->a:[Ljava/lang/String;

    .line 45
    .line 46
    sub-int/2addr p0, v0

    .line 47
    aget-object p0, v3, p0

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    sget-object p0, La4/d;->b:[Ljava/lang/String;

    .line 53
    .line 54
    sub-int/2addr v2, v0

    .line 55
    aget-object p0, p0, v2

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    sget-object p0, La4/d;->c:[Ljava/lang/String;

    .line 61
    .line 62
    aget-object p0, p0, v2

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p0, "\u5e74"

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
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

.method private static r(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x6

    .line 2
    .line 3
    rem-int/lit8 p0, p0, 0xc

    .line 4
    .line 5
    return p0
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

.method public static s()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/y;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "\u9f20"

    .line 8
    .line 9
    const-string v2, "\u725b"

    .line 10
    .line 11
    const-string v3, "\u864e"

    .line 12
    .line 13
    const-string v4, "\u5154"

    .line 14
    .line 15
    const-string v5, "\u9f8d"

    .line 16
    .line 17
    const-string v6, "\u86c7"

    .line 18
    .line 19
    const-string v7, "\u99ac"

    .line 20
    .line 21
    const-string v8, "\u7f8a"

    .line 22
    .line 23
    const-string v9, "\u7334"

    .line 24
    .line 25
    const-string v10, "\u9dc4"

    .line 26
    .line 27
    const-string v11, "\u72d7"

    .line 28
    .line 29
    const-string v12, "\u732a"

    .line 30
    .line 31
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, La4/d;->c:[Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v1, "\u9f20"

    .line 39
    .line 40
    const-string v2, "\u725b"

    .line 41
    .line 42
    const-string v3, "\u864e"

    .line 43
    .line 44
    const-string v4, "\u5154"

    .line 45
    .line 46
    const-string v5, "\u9f99"

    .line 47
    .line 48
    const-string v6, "\u86c7"

    .line 49
    .line 50
    const-string v7, "\u9a6c"

    .line 51
    .line 52
    const-string v8, "\u7f8a"

    .line 53
    .line 54
    const-string v9, "\u7334"

    .line 55
    .line 56
    const-string v10, "\u9e21"

    .line 57
    .line 58
    const-string v11, "\u72d7"

    .line 59
    .line 60
    const-string v12, "\u732a"

    .line 61
    .line 62
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, La4/d;->c:[Ljava/lang/String;

    .line 67
    .line 68
    :goto_0
    return-void
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public static t(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/y;->p(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/calendar/settings/j;->k(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
