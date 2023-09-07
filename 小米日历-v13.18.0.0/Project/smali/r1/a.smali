.class public Lr1/a;
.super Ljava/lang/Object;
.source "BirthdayHelper.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/Class;

.field private static final c:Ljava/lang/String;

.field private static final d:[Ljava/text/SimpleDateFormat;

.field private static final e:[Ljava/text/SimpleDateFormat;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "contact_id"

    .line 4
    .line 5
    const-string v2, "display_name"

    .line 6
    .line 7
    const-string v3, "mimetype"

    .line 8
    .line 9
    const-string v4, "data1"

    .line 10
    .line 11
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lr1/a;->a:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    new-array v2, v1, [Ljava/lang/Class;

    .line 19
    .line 20
    const-class v4, Ljava/lang/Integer;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v4, v2, v5

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v0, v2, v4

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    aput-object v0, v2, v6

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    aput-object v0, v2, v7

    .line 33
    .line 34
    sput-object v2, Lr1/a;->b:[Ljava/lang/Class;

    .line 35
    .line 36
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    .line 38
    const/4 v2, 0x6

    .line 39
    new-array v8, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v3, v8, v5

    .line 42
    .line 43
    const-string v9, "vnd.android.cursor.item/contact_event"

    .line 44
    .line 45
    aput-object v9, v8, v4

    .line 46
    .line 47
    const-string v9, "data2"

    .line 48
    .line 49
    aput-object v9, v8, v6

    .line 50
    .line 51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    aput-object v9, v8, v7

    .line 56
    .line 57
    aput-object v3, v8, v1

    .line 58
    .line 59
    const-string v3, "vnd.com.miui.cursor.item/lunarBirthday"

    .line 60
    .line 61
    const/4 v9, 0x5

    .line 62
    aput-object v3, v8, v9

    .line 63
    .line 64
    const-string v3, "(%s=\'%s\' AND %s=\'%d\') OR (%s=\'%s\')"

    .line 65
    .line 66
    invoke-static {v0, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sput-object v3, Lr1/a;->c:Ljava/lang/String;

    .line 71
    .line 72
    new-array v3, v6, [Ljava/text/SimpleDateFormat;

    .line 73
    .line 74
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 75
    .line 76
    const-string v10, "MM-dd"

    .line 77
    .line 78
    invoke-direct {v8, v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 79
    .line 80
    .line 81
    aput-object v8, v3, v5

    .line 82
    .line 83
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 84
    .line 85
    const-string v10, "--MM-dd"

    .line 86
    .line 87
    invoke-direct {v8, v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 88
    .line 89
    .line 90
    aput-object v8, v3, v4

    .line 91
    .line 92
    sput-object v3, Lr1/a;->d:[Ljava/text/SimpleDateFormat;

    .line 93
    .line 94
    const/4 v3, 0x7

    .line 95
    new-array v3, v3, [Ljava/text/SimpleDateFormat;

    .line 96
    .line 97
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 98
    .line 99
    const-string v10, "yyyy-MM-dd"

    .line 100
    .line 101
    invoke-direct {v8, v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    .line 103
    .line 104
    aput-object v8, v3, v5

    .line 105
    .line 106
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 107
    .line 108
    const-string v8, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 109
    .line 110
    invoke-direct {v5, v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 111
    .line 112
    .line 113
    aput-object v5, v3, v4

    .line 114
    .line 115
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 116
    .line 117
    const-string v5, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    .line 118
    .line 119
    invoke-direct {v4, v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    .line 121
    .line 122
    aput-object v4, v3, v6

    .line 123
    .line 124
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 125
    .line 126
    const-string v5, "yyyyMMdd"

    .line 127
    .line 128
    invoke-direct {v4, v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 129
    .line 130
    .line 131
    aput-object v4, v3, v7

    .line 132
    .line 133
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 134
    .line 135
    const-string v5, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    .line 136
    .line 137
    invoke-direct {v4, v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 138
    .line 139
    .line 140
    aput-object v4, v3, v1

    .line 141
    .line 142
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 143
    .line 144
    const-string v4, "yyyyMMdd\'T\'HHmmss\'Z\'"

    .line 145
    .line 146
    invoke-direct {v1, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 147
    .line 148
    .line 149
    aput-object v1, v3, v9

    .line 150
    .line 151
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 152
    .line 153
    const-string v4, "yyyyMMdd\'T\'HHmm\'Z\'"

    .line 154
    .line 155
    invoke-direct {v1, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 156
    .line 157
    .line 158
    aput-object v1, v3, v2

    .line 159
    .line 160
    sput-object v3, Lr1/a;->e:[Ljava/text/SimpleDateFormat;

    .line 161
    .line 162
    const-string v0, "account_name_local"

    .line 163
    .line 164
    const-string v1, "LOCAL"

    .line 165
    .line 166
    const-string v2, "calendar_displayname_birthday"

    .line 167
    .line 168
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lr1/a;->f:[Ljava/lang/String;

    .line 173
    .line 174
    return-void
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
.end method

.method public static A(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "hasExtendedProperties&255=7 AND customAppPackage IS NOT NULL"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->j()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public static B(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "_id"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/Class;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const-class v2, Ljava/lang/Integer;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "account_name=? AND account_type=? AND calendar_displayName=?"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    sget-object v0, Lr1/a;->f:[Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->o([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0$b;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0$b;->k()Lcom/miui/calendar/util/p0$c;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0$c;->d()Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_0
    const/4 p0, -0x1

    .line 69
    return p0
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
.end method

.method public static C(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/BirthdayEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/y;->q(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateType()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "removeLunarBirthdayIfNeed(): IGNORE Chinese lunar birthday event, id = "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "Cal:D:BirthdayHelper"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
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
.end method

.method public static a(Landroid/content/Context;Lcom/miui/calendar/util/p0$c;)Lcom/android/calendar/common/event/schema/BirthdayEvent;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Cal:D:BirthdayHelper"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p0, "buildFromContactCursor(): Query birthday failed. ResultRow is null"

    .line 7
    .line 8
    invoke-static {v1, p0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/p0$c;->e(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-virtual {p1, v4}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    const-string v5, ""

    .line 29
    .line 30
    :cond_1
    move-object v8, v5

    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-virtual {p1, v5}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {p1}, Lr1/a;->u(Lcom/miui/calendar/util/p0$c;)I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-static {v5, v10}, Lr1/a;->t(Ljava/lang/String;I)Ljava/util/Calendar;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-static {v5}, Lr1/a;->v(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    invoke-static {v9}, Lr1/a;->s(Ljava/util/Calendar;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const/16 p1, 0xb

    .line 57
    .line 58
    const/16 v6, 0xa

    .line 59
    .line 60
    invoke-virtual {v9, p1, v6}, Ljava/util/Calendar;->set(II)V

    .line 61
    .line 62
    .line 63
    const/16 p1, 0xc

    .line 64
    .line 65
    invoke-virtual {v9, p1, v2}, Ljava/util/Calendar;->set(II)V

    .line 66
    .line 67
    .line 68
    const/16 p1, 0xd

    .line 69
    .line 70
    invoke-virtual {v9, p1, v2}, Ljava/util/Calendar;->set(II)V

    .line 71
    .line 72
    .line 73
    const/16 p1, 0xe

    .line 74
    .line 75
    invoke-virtual {v9, p1, v2}, Ljava/util/Calendar;->set(II)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 79
    .line 80
    invoke-direct {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;-><init>()V

    .line 81
    .line 82
    .line 83
    const/16 v2, 0x258

    .line 84
    .line 85
    invoke-static {p0, p1, v4, v4, v2}, Lcom/android/calendar/event/j;->n(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;ZZI)V

    .line 86
    .line 87
    .line 88
    const/4 v12, 0x0

    .line 89
    move-object v6, p1

    .line 90
    move-object v7, p0

    .line 91
    invoke-static/range {v6 .. v12}, Lr1/a;->e(Lcom/android/calendar/common/event/schema/BirthdayEvent;Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;IZZ)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->setContactId(I)V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string p1, "buildFromContactCursor(): Parsing birthday time failed. Time text is "

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v1, p0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v0
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

.method public static b(Lcom/miui/calendar/util/p0$c;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "Cal:D:BirthdayHelper"

    .line 5
    .line 6
    const-string v1, "buildKeyContactCursorWhitOutContactId(): Query birthday failed. ResultRow is null"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    :cond_1
    const/4 v2, 0x3

    .line 22
    invoke-virtual {p0, v2}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p0}, Lr1/a;->u(Lcom/miui/calendar/util/p0$c;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {v2, p0}, Lr1/a;->t(Ljava/lang/String;I)Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2}, Lr1/a;->v(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-static {v3}, Lr1/a;->s(Ljava/util/Calendar;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    const/16 v0, 0xb

    .line 47
    .line 48
    const/16 v4, 0xa

    .line 49
    .line 50
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 51
    .line 52
    .line 53
    const/16 v0, 0xc

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0xd

    .line 60
    .line 61
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0xe

    .line 65
    .line 66
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_2
    return-object v0
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

.method public static c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Lcom/android/calendar/event/j;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/calendar/event/j;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/calendar/event/j;->c(Ljava/util/ArrayList;J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    if-eq v1, v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/16 v3, 0xc8

    .line 50
    .line 51
    if-lt v2, v3, :cond_1

    .line 52
    .line 53
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/j;->u(Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void
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
.end method

.method public static d(Landroid/content/Context;I)I
    .locals 5

    .line 1
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "_id"

    .line 10
    .line 11
    aput-object v4, v2, v3

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object p1, v2, v3

    .line 19
    .line 20
    const-string p1, "%s=%d"

    .line 21
    .line 22
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
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

.method public static e(Lcom/android/calendar/common/event/schema/BirthdayEvent;Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;IZZ)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->normalizeReminders()Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setHasAlarm(Z)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f1200a9

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-ne p4, v1, :cond_0

    .line 24
    .line 25
    const v2, 0x7f1200a7

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v2, ""

    .line 34
    .line 35
    :goto_0
    invoke-static {p1}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x2

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const v0, 0x7f1200aa

    .line 44
    .line 45
    .line 46
    new-array v2, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {p1, p2}, Lr1/a;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    aput-object v3, v2, v5

    .line 53
    .line 54
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const v3, 0x7f1200a3

    .line 60
    .line 61
    .line 62
    const/4 v6, 0x3

    .line 63
    new-array v6, v6, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {p1, p2}, Lr1/a;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    aput-object v7, v6, v5

    .line 70
    .line 71
    aput-object v2, v6, v1

    .line 72
    .line 73
    aput-object v0, v6, v4

    .line 74
    .line 75
    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/common/event/schema/Event;->setTitle(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/android/calendar/common/event/schema/Event;->setAllDay(Z)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/calendar/common/event/schema/Event;->setLocation(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/android/calendar/common/event/schema/Event;->setDescription(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v5

    .line 100
    invoke-virtual {v2, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    invoke-virtual {v2, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setTimezone(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    if-ne p4, v1, :cond_2

    .line 130
    .line 131
    const/16 v2, 0x8

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    const/4 v2, 0x6

    .line 135
    :goto_2
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->C(Landroid/content/Context;)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-static {v2, p0, p1, v0, v0}, Lcom/android/calendar/event/j;->z(ILcom/android/calendar/common/event/schema/Event;ILcom/miui/calendar/repeats/RepeatSchema;Lcom/miui/calendar/repeats/RepeatEndSchema;)V

    .line 140
    .line 141
    .line 142
    if-ne p4, v1, :cond_3

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-static {p3, v4, v0}, Lcom/miui/calendar/util/b0;->d(Ljava/util/Calendar;IZ)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setRdate(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setRdate(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    const/4 p1, 0x7

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/calendar/common/event/schema/Event;->setEventType(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p4}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->setDateType(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p5}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->setUseYear(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p2}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->setName(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide p1

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->setFirstBirthMillis(J)V

    .line 185
    .line 186
    .line 187
    if-nez p6, :cond_4

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const-string p1, "com.miui.calendar"

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/calendar/common/event/schema/EventEx;->setCustomAppPackage(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_4
    return v1
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
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
.end method

.method public static f(II)I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x5

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-le p1, v2, :cond_0

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
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

.method public static g(Landroid/content/Context;ILcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getYear()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    const-string v0, ""

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const v3, 0x7f100031

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v1, v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->isUseYear()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-array p2, v4, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    aput-object v0, p2, v2

    .line 39
    .line 40
    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    return-object v0

    .line 46
    :cond_2
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->isUseYear()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-array p2, v4, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    aput-object v0, p2, v2

    .line 63
    .line 64
    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_3
    return-object v0
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
.end method

.method public static h(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x5

    .line 18
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/a0;->d(III)[I

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    aget p1, p1, v0

    .line 28
    .line 29
    invoke-static {p0, p1, p2}, Lr1/a;->g(Landroid/content/Context;ILcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p0, p1, p2}, Lr1/a;->g(Landroid/content/Context;ILcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
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
.end method

.method public static i(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getFirstBirthMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x5

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {p0, p1, v1, v0}, Lcom/miui/calendar/util/a0;->z(Landroid/content/res/Resources;III)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    new-instance v1, Ljava/util/Formatter;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const/16 v2, 0x32

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getFirstBirthMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getFirstBirthMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    const/16 v6, 0x8

    .line 67
    .line 68
    const-string v7, "UTC"

    .line 69
    .line 70
    move-object v0, p0

    .line 71
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
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

.method public static j(Landroid/content/Context;JLcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {v1}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {v3}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const v1, 0x7f1200a9

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->isUseYear()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    invoke-static {p0, v3, p3}, Lr1/a;->h(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, ""

    .line 50
    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    const v1, 0x7f120088

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_0
    add-int/lit8 p1, p1, -0x7

    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    const/4 v5, 0x2

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x4

    .line 70
    if-lt v0, p1, :cond_2

    .line 71
    .line 72
    if-lt v0, p2, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const p1, 0x7f12008f

    .line 76
    .line 77
    .line 78
    const/4 p2, 0x5

    .line 79
    new-array p2, p2, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {p0, v0}, Lcom/miui/calendar/util/s0;->f(Landroid/content/Context;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    aput-object v0, p2, v6

    .line 86
    .line 87
    invoke-virtual {p3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p0, v0}, Lr1/a;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    aput-object v0, p2, v2

    .line 96
    .line 97
    invoke-static {p0, v3, p3}, Lr1/a;->h(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    aput-object v0, p2, v5

    .line 102
    .line 103
    invoke-static {p0, p3}, Lr1/a;->o(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    aput-object p3, p2, v4

    .line 108
    .line 109
    aput-object v1, p2, v7

    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_2
    :goto_0
    const p1, 0x7f12008e

    .line 117
    .line 118
    .line 119
    new-array p2, v7, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {p3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {p0, v0}, Lr1/a;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    aput-object v0, p2, v6

    .line 130
    .line 131
    invoke-static {p0, v3, p3}, Lr1/a;->h(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    aput-object v0, p2, v2

    .line 136
    .line 137
    invoke-static {p0, p3}, Lr1/a;->o(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    aput-object p3, p2, v5

    .line 142
    .line 143
    aput-object v1, p2, v4

    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0
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
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

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
    const p1, 0x7f12032a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v0, 0x3c

    .line 20
    .line 21
    if-lt p0, v0, :cond_1

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "..."

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_1
    return-object p1
    .line 46
    .line 47
.end method

.method public static l(J)J
    .locals 8

    .line 1
    new-instance v7, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-direct {v7}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v7, p0, p1}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->p()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->q()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->M()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    const/4 p1, 0x1

    .line 22
    if-ne v5, p1, :cond_2

    .line 23
    .line 24
    const/16 v0, 0x1d

    .line 25
    .line 26
    if-ne v4, v0, :cond_2

    .line 27
    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/util/GregorianCalendar;

    .line 33
    .line 34
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->v()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->p()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-gt v1, v5, :cond_0

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->v()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    move-object v0, v7

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/miui/calendar/util/r0;->C(IIIIII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, p0}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    return-wide p0

    .line 66
    :cond_0
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->v()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/2addr v1, p1

    .line 71
    move v6, v1

    .line 72
    :goto_0
    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    move-object v0, v7

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/miui/calendar/util/r0;->C(IIIIII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, p0}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    return-wide p0

    .line 90
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->p()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-lt v0, v5, :cond_4

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->p()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-ne v0, v5, :cond_3

    .line 104
    .line 105
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->q()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-gt v0, v4, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const/4 v1, 0x0

    .line 113
    const/4 v2, 0x0

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->v()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    add-int/lit8 v6, v0, 0x1

    .line 120
    .line 121
    move-object v0, v7

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcom/miui/calendar/util/r0;->C(IIIIII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, p0}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 126
    .line 127
    .line 128
    move-result-wide p0

    .line 129
    return-wide p0

    .line 130
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 131
    const/4 v2, 0x0

    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->v()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    move-object v0, v7

    .line 138
    invoke-virtual/range {v0 .. v6}, Lcom/miui/calendar/util/r0;->C(IIIIII)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, p0}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 142
    .line 143
    .line 144
    move-result-wide p0

    .line 145
    return-wide p0
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

.method public static m(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;JI)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0, p1}, Lr1/a;->h(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p0, p1}, Lr1/a;->o(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v3, 0x7f1200a9

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v0}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    mul-int/lit8 p4, p4, 0x3c

    .line 32
    .line 33
    mul-int/lit16 p4, p4, 0x3e8

    .line 34
    .line 35
    int-to-long v5, p4

    .line 36
    sub-long/2addr p2, v5

    .line 37
    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sub-int/2addr v0, p2

    .line 45
    const/4 p2, 0x3

    .line 46
    const/4 p3, 0x2

    .line 47
    const/4 p4, 0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x4

    .line 50
    if-lez v0, :cond_0

    .line 51
    .line 52
    invoke-static {p0, p1}, Lr1/a;->i(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const v6, 0x7f100032

    .line 61
    .line 62
    .line 63
    const/4 v7, 0x5

    .line 64
    new-array v7, v7, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    aput-object v8, v7, v4

    .line 71
    .line 72
    aput-object v1, v7, p4

    .line 73
    .line 74
    aput-object v2, v7, p3

    .line 75
    .line 76
    aput-object v3, v7, p2

    .line 77
    .line 78
    aput-object p1, v7, v5

    .line 79
    .line 80
    invoke-virtual {p0, v6, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_0
    const v0, 0x7f1200a4

    .line 86
    .line 87
    .line 88
    new-array v5, v5, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p0, p1}, Lr1/a;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    aput-object p1, v5, v4

    .line 99
    .line 100
    aput-object v1, v5, p4

    .line 101
    .line 102
    aput-object v2, v5, p3

    .line 103
    .line 104
    aput-object v3, v5, p2

    .line 105
    .line 106
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0
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

.method public static n(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;I)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const v0, 0x7f1200a9

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-lez p2, :cond_1

    .line 17
    .line 18
    const p2, 0x7f1200a5

    .line 19
    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lr1/a;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v1, v3

    .line 32
    .line 33
    aput-object v0, v1, v2

    .line 34
    .line 35
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    invoke-static {p0, p1}, Lr1/a;->o(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const v4, 0x7f1200a6

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    new-array v5, v5, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Lr1/a;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    aput-object p1, v5, v3

    .line 59
    .line 60
    aput-object p2, v5, v2

    .line 61
    .line 62
    aput-object v0, v5, v1

    .line 63
    .line 64
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
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
.end method

.method public static o(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const p1, 0x7f1200a7

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    return-object p0
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

.method public static p(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "key_show_birthday_guide"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lb2/a;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
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

.method public static q(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lr1/a;->B(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0, v0}, Lr1/a;->d(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "Cal:D:BirthdayHelper"

    .line 18
    .line 19
    const-string v0, "initBirthDay: have not agree user notice"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
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

.method public static r(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/common/event/schema/BirthdayEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Lcom/android/calendar/event/j;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/calendar/event/j;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/calendar/event/e0;->c(Landroid/content/Context;)Lcom/miui/calendar/util/p0$b;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x0

    .line 22
    move-object v8, v1

    .line 23
    move v9, v2

    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ge v9, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v3, v1

    .line 35
    check-cast v3, Lcom/android/calendar/common/event/schema/Event;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x3

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v1, v0

    .line 41
    move-object v2, v8

    .line 42
    move-object v7, p0

    .line 43
    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/event/j;->d(Ljava/util/ArrayList;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/event/schema/Event;IZLcom/miui/calendar/util/p0$b;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    if-eq v9, v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/16 v2, 0xc8

    .line 59
    .line 60
    if-lt v1, v2, :cond_1

    .line 61
    .line 62
    :cond_0
    invoke-virtual {v0, v8}, Lcom/android/calendar/event/j;->u(Ljava/util/ArrayList;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    move-object v8, v1

    .line 71
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return-void
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
.end method

.method private static s(Ljava/util/Calendar;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {}, Lcom/android/calendar/common/k;->g()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {}, Lcom/android/calendar/common/k;->d()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-gt p0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
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

.method private static t(Ljava/lang/String;I)Ljava/util/Calendar;
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "Cal:D:BirthdayHelper"

    .line 9
    .line 10
    const-string p1, "parseBirthdayTime(): birthdayString is empty!"

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez p1, :cond_4

    .line 20
    .line 21
    new-instance p1, Ljava/text/ParsePosition;

    .line 22
    .line 23
    invoke-direct {p1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sget-object v4, Lr1/a;->d:[Ljava/text/SimpleDateFormat;

    .line 27
    .line 28
    array-length v5, v4

    .line 29
    move v6, v2

    .line 30
    :goto_0
    if-ge v6, v5, :cond_2

    .line 31
    .line 32
    aget-object v7, v4, v6

    .line 33
    .line 34
    monitor-enter v7

    .line 35
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-ne v8, v9, :cond_1

    .line 50
    .line 51
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 52
    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v10, "yyyy-"

    .line 59
    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 75
    .line 76
    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    .line 78
    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v10, "2000-"

    .line 85
    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v9, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-ne v9, v10, :cond_1

    .line 112
    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    const/4 v0, 0x5

    .line 125
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-static {p1, v0}, Lr1/a;->f(II)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {p0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 134
    .line 135
    .line 136
    monitor-exit v7

    .line 137
    return-object p0

    .line 138
    :cond_1
    monitor-exit v7

    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p0

    .line 145
    :cond_2
    sget-object v0, Lr1/a;->e:[Ljava/text/SimpleDateFormat;

    .line 146
    .line 147
    array-length v3, v0

    .line 148
    move v4, v2

    .line 149
    :goto_1
    if-ge v4, v3, :cond_6

    .line 150
    .line 151
    aget-object v5, v0, v4

    .line 152
    .line 153
    monitor-enter v5

    .line 154
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-ne v7, v8, :cond_3

    .line 170
    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 176
    .line 177
    .line 178
    monitor-exit v5

    .line 179
    return-object p0

    .line 180
    :cond_3
    monitor-exit v5

    .line 181
    add-int/lit8 v4, v4, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :catchall_1
    move-exception p0

    .line 185
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    throw p0

    .line 187
    :cond_4
    if-ne p1, v3, :cond_6

    .line 188
    .line 189
    invoke-static {p0}, Lcom/miui/calendar/util/a0;->x(Ljava/lang/String;)[I

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    if-eqz p0, :cond_6

    .line 194
    .line 195
    aget p1, p0, v0

    .line 196
    .line 197
    const/16 v1, 0x76d

    .line 198
    .line 199
    if-ge p1, v1, :cond_5

    .line 200
    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    sub-int/2addr p1, v3

    .line 210
    aput p1, p0, v0

    .line 211
    .line 212
    :cond_5
    aget p1, p0, v0

    .line 213
    .line 214
    aget v1, p0, v3

    .line 215
    .line 216
    add-int/2addr v1, v3

    .line 217
    aget p0, p0, v2

    .line 218
    .line 219
    invoke-static {p1, v1, p0}, Lcom/miui/calendar/util/a0;->w(III)[I

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    aget v1, p0, v2

    .line 228
    .line 229
    aget v2, p0, v3

    .line 230
    .line 231
    sub-int/2addr v2, v3

    .line 232
    aget p0, p0, v0

    .line 233
    .line 234
    invoke-virtual {p1, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    .line 235
    .line 236
    .line 237
    return-object p1

    .line 238
    :cond_6
    return-object v1
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

.method public static u(Lcom/miui/calendar/util/p0$c;)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v0, "vnd.com.miui.cursor.item/lunarBirthday"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
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

.method private static v(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "Cal:D:BirthdayHelper"

    .line 9
    .line 10
    const-string v0, "parseBirthdayUseYear(): birthdayString is empty!"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    new-instance v0, Ljava/text/ParsePosition;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lr1/a;->e:[Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    move v4, v1

    .line 25
    :goto_0
    if-ge v4, v3, :cond_2

    .line 26
    .line 27
    aget-object v5, v2, v4

    .line 28
    .line 29
    monitor-enter v5

    .line 30
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-ne v6, v7, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const/4 v7, -0x1

    .line 51
    if-ne v6, v7, :cond_1

    .line 52
    .line 53
    monitor-exit v5

    .line 54
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_1
    monitor-exit v5

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_2
    return v1
    .line 64
    .line 65
.end method

.method public static w(Landroid/content/Context;)Lcom/miui/calendar/util/p0$a;
    .locals 3

    .line 1
    const-string v0, "key_birthday_info"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "name=?"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->o([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "event_id"

    .line 28
    .line 29
    const-string v1, "value"

    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Ljava/lang/Class;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const-class v2, Ljava/lang/Long;

    .line 44
    .line 45
    aput-object v2, v0, v1

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    const-class v2, Ljava/lang/String;

    .line 49
    .line 50
    aput-object v2, v0, v1

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->k()Lcom/miui/calendar/util/p0$a;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public static x(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 20
    .line 21
    .line 22
    const-string v0, " "

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "hasExtendedProperties&255=7"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->j()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
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

.method public static y(Landroid/content/Context;)Lcom/miui/calendar/util/p0$a;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lr1/a;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lr1/a;->a:[Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v0, Lr1/a;->b:[Ljava/lang/Class;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->k()Lcom/miui/calendar/util/p0$a;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
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

.method public static z(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "hasExtendedProperties&255=7 AND customAppPackage IS NULL"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->j()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
    .line 22
.end method
