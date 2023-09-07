.class public Lcom/miui/calendar/util/calendarcommon2/c;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field public a:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

.field public b:[J

.field public c:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

.field public d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/miui/calendar/util/calendarcommon2/c;->e:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, ".{75}"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/miui/calendar/util/calendarcommon2/c;->f:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/c;->a:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/c;->b:[J

    .line 8
    .line 9
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/c;->c:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/c;->d:[J

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/calendar/util/calendarcommon2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
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
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_6

    .line 12
    .line 13
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "\n"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    array-length v0, p1

    .line 27
    new-array v0, v0, [Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/c;->a:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 30
    .line 31
    move v0, v2

    .line 32
    :goto_0
    array-length v3, p1

    .line 33
    if-ge v0, v3, :cond_1

    .line 34
    .line 35
    new-instance v3, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 36
    .line 37
    invoke-direct {v3}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;-><init>()V

    .line 38
    .line 39
    .line 40
    aget-object v4, p1, v0

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->j(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/miui/calendar/util/calendarcommon2/c;->a:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 46
    .line 47
    aput-object v3, v4, v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    invoke-static {p2}, Lcom/miui/calendar/util/calendarcommon2/c;->b(Ljava/lang/String;)[J

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/miui/calendar/util/calendarcommon2/c;->b:[J

    .line 63
    .line 64
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    array-length p2, p1

    .line 75
    new-array p2, p2, [Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 76
    .line 77
    iput-object p2, p0, Lcom/miui/calendar/util/calendarcommon2/c;->c:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 78
    .line 79
    move p2, v2

    .line 80
    :goto_1
    array-length v0, p1

    .line 81
    if-ge p2, v0, :cond_3

    .line 82
    .line 83
    new-instance v0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p3}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->j(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/miui/calendar/util/calendarcommon2/c;->c:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 92
    .line 93
    aput-object v0, v3, p2

    .line 94
    .line 95
    add-int/lit8 p2, p2, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    new-instance p1, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    array-length p3, p2

    .line 114
    move p4, v2

    .line 115
    :goto_2
    if-ge p4, p3, :cond_5

    .line 116
    .line 117
    aget-object v0, p2, p4

    .line 118
    .line 119
    invoke-static {v0}, Lcom/miui/calendar/util/calendarcommon2/c;->b(Ljava/lang/String;)[J

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    array-length v1, v0

    .line 124
    move v3, v2

    .line 125
    :goto_3
    if-ge v3, v1, :cond_4

    .line 126
    .line 127
    aget-wide v4, v0, v3

    .line 128
    .line 129
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    new-array p2, p2, [J

    .line 147
    .line 148
    iput-object p2, p0, Lcom/miui/calendar/util/calendarcommon2/c;->d:[J

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    :goto_4
    if-ge v2, p2, :cond_6

    .line 155
    .line 156
    iget-object p3, p0, Lcom/miui/calendar/util/calendarcommon2/c;->d:[J

    .line 157
    .line 158
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p4

    .line 162
    check-cast p4, Ljava/lang/Long;

    .line 163
    .line 164
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    aput-wide v0, p3, v2

    .line 169
    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_6
    return-void
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
.end method

.method public static b(Ljava/lang/String;)[J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .line 1
    const-string v0, ";"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "UTC"

    .line 23
    .line 24
    :goto_0
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v3, ","

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    array-length v4, v3

    .line 36
    new-array v5, v4, [J

    .line 37
    .line 38
    move v6, v1

    .line 39
    :goto_1
    if-ge v6, v4, :cond_1

    .line 40
    .line 41
    :try_start_0
    aget-object v7, v3, v6

    .line 42
    .line 43
    invoke-virtual {v0, v7}, Lcom/miui/calendar/util/r0;->z(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    aput-wide v7, v5, v6

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->L(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    new-instance v0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "IllegalArgumentException thrown when parsing time "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    aget-object v2, v3, v6

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, " in recurrence "

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {v0, p0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_1
    return-object v5
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
