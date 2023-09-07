.class public abstract Lo3/c;
.super Lo3/d;
.source "BaseAgendaAlertFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/calendar/alerts/entities/BaseAlert<",
        "+",
        "Lcom/android/calendar/common/event/schema/Event;",
        ">;>",
        "Lo3/d<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    const-class v0, Ljava/lang/Long;

    .line 2
    .line 3
    const-class v1, Ljava/lang/String;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Integer;

    .line 6
    .line 7
    const-string v3, "_id"

    .line 8
    .line 9
    const-string v4, "title"

    .line 10
    .line 11
    const-string v5, "eventLocation"

    .line 12
    .line 13
    const-string v6, "allDay"

    .line 14
    .line 15
    const-string v7, "begin"

    .line 16
    .line 17
    const-string v8, "end"

    .line 18
    .line 19
    const-string v9, "event_id"

    .line 20
    .line 21
    const-string v10, "calendar_color"

    .line 22
    .line 23
    const-string v11, "rrule"

    .line 24
    .line 25
    const-string v12, "state"

    .line 26
    .line 27
    const-string v13, "account_name"

    .line 28
    .line 29
    const-string v14, "account_type"

    .line 30
    .line 31
    const-string v15, "calendar_displayName"

    .line 32
    .line 33
    const-string v16, "customAppPackage"

    .line 34
    .line 35
    const-string v17, "selfAttendeeStatus"

    .line 36
    .line 37
    const-string v18, "description"

    .line 38
    .line 39
    const-string v19, "hasExtendedProperties"

    .line 40
    .line 41
    const-string v20, "minutes"

    .line 42
    .line 43
    const-string v21, "alarmTime"

    .line 44
    .line 45
    const-string v22, "hasAlarm"

    .line 46
    .line 47
    filled-new-array/range {v3 .. v22}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sput-object v3, Lo3/c;->b:[Ljava/lang/String;

    .line 52
    .line 53
    const/16 v3, 0x14

    .line 54
    .line 55
    new-array v3, v3, [Ljava/lang/Class;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    aput-object v2, v3, v4

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    aput-object v1, v3, v4

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    aput-object v1, v3, v4

    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    aput-object v2, v3, v4

    .line 68
    .line 69
    const/4 v4, 0x4

    .line 70
    aput-object v0, v3, v4

    .line 71
    .line 72
    const/4 v4, 0x5

    .line 73
    aput-object v0, v3, v4

    .line 74
    .line 75
    const/4 v4, 0x6

    .line 76
    aput-object v0, v3, v4

    .line 77
    .line 78
    const/4 v4, 0x7

    .line 79
    aput-object v2, v3, v4

    .line 80
    .line 81
    const/16 v4, 0x8

    .line 82
    .line 83
    aput-object v1, v3, v4

    .line 84
    .line 85
    const/16 v4, 0x9

    .line 86
    .line 87
    aput-object v2, v3, v4

    .line 88
    .line 89
    const/16 v4, 0xa

    .line 90
    .line 91
    aput-object v1, v3, v4

    .line 92
    .line 93
    const/16 v4, 0xb

    .line 94
    .line 95
    aput-object v1, v3, v4

    .line 96
    .line 97
    const/16 v4, 0xc

    .line 98
    .line 99
    aput-object v1, v3, v4

    .line 100
    .line 101
    const/16 v4, 0xd

    .line 102
    .line 103
    aput-object v1, v3, v4

    .line 104
    .line 105
    const/16 v4, 0xe

    .line 106
    .line 107
    aput-object v2, v3, v4

    .line 108
    .line 109
    const/16 v4, 0xf

    .line 110
    .line 111
    aput-object v1, v3, v4

    .line 112
    .line 113
    const/16 v1, 0x10

    .line 114
    .line 115
    aput-object v2, v3, v1

    .line 116
    .line 117
    const/16 v1, 0x11

    .line 118
    .line 119
    aput-object v2, v3, v1

    .line 120
    .line 121
    const/16 v1, 0x12

    .line 122
    .line 123
    aput-object v0, v3, v1

    .line 124
    .line 125
    const/16 v0, 0x13

    .line 126
    .line 127
    aput-object v2, v3, v0

    .line 128
    .line 129
    sput-object v3, Lo3/c;->c:[Ljava/lang/Class;

    .line 130
    .line 131
    return-void
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo3/d;-><init>(Landroid/content/Context;)V

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

.method private g(Lcom/miui/calendar/util/p0$b;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/util/p0$b;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/miui/calendar/util/p0$b;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/miui/calendar/util/p0$b;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/miui/calendar/util/p0$c;

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lo3/c;->f(Lcom/miui/calendar/util/p0$c;)Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "toAlertList(): alertId: "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAlertId()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "Cal:D:BaseAgendaAlertFactory"

    .line 57
    .line 58
    invoke-static {v4, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lo3/c;->b(Lcom/miui/calendar/alerts/entities/BaseAlert;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventId()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_0

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventId()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-object v0
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


# virtual methods
.method protected abstract b(Lcom/miui/calendar/alerts/entities/BaseAlert;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public c(I)Lcom/miui/calendar/alerts/entities/BaseAlert;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo3/d;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lo3/c;->b:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lo3/c;->c:[Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "CalendarAlerts._ID=?"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object p1, v1, v2

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/p0;->n([Ljava/lang/Object;)Lcom/miui/calendar/util/p0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/miui/calendar/util/p0$b;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/p0$b;->l(I)Lcom/miui/calendar/util/p0$c;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lo3/c;->f(Lcom/miui/calendar/util/p0$c;)Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_0
    const/4 p1, 0x0

    .line 67
    return-object p1
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

.method public varargs d([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1388

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    invoke-virtual {p0}, Lo3/d;->a()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v2, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v2, Lo3/c;->b:[Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v2, Lo3/c;->c:[Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lo3/c;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v2, 0x2

    .line 43
    new-array v2, v2, [Ljava/lang/String;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    aput-object v4, v2, v3

    .line 51
    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x1

    .line 57
    aput-object v0, v2, v1

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/p0;->o([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "begin DESC, end DESC"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/p0;->q(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lo3/c;->g(Lcom/miui/calendar/util/p0$b;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
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

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "(state=? ) AND alarmTime<=? AND (hasExtendedProperties&255) != 7"

    return-object v0
.end method

.method protected abstract f(Lcom/miui/calendar/util/p0$c;)Lcom/miui/calendar/alerts/entities/BaseAlert;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/util/p0$c;",
            ")TT;"
        }
    .end annotation
.end method
