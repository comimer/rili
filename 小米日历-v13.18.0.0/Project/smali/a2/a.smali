.class public final La2/a;
.super Ljava/lang/Object;
.source "AgendaEventLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a7\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0006\u001a\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0006\u001a\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0016\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0006\u001a\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroid/content/Context;",
        "context",
        "",
        "eventId",
        "startMillis",
        "endMillis",
        "Lcom/android/calendar/common/event/schema/AgendaEvent;",
        "d",
        "(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/android/calendar/common/event/schema/AgendaEvent;",
        "agendaEvent",
        "Lkotlin/u;",
        "g",
        "Landroid/database/MatrixCursor;",
        "eventCursor",
        "c",
        "a",
        "b",
        "e",
        "",
        "f",
        "app_chinaNormalRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    const-string v1, "title"

    .line 4
    .line 5
    const-string v2, "rrule"

    .line 6
    .line 7
    const-string v3, "allDay"

    .line 8
    .line 9
    const-string v4, "calendar_id"

    .line 10
    .line 11
    const-string v5, "dtstart"

    .line 12
    .line 13
    const-string v6, "_sync_id"

    .line 14
    .line 15
    const-string v7, "eventTimezone"

    .line 16
    .line 17
    const-string v8, "description"

    .line 18
    .line 19
    const-string v9, "eventLocation"

    .line 20
    .line 21
    const-string v10, "calendar_access_level"

    .line 22
    .line 23
    const-string v11, "displayColor"

    .line 24
    .line 25
    const-string v12, "hasAttendeeData"

    .line 26
    .line 27
    const-string v13, "organizer"

    .line 28
    .line 29
    const-string v14, "hasAlarm"

    .line 30
    .line 31
    const-string v15, "maxReminders"

    .line 32
    .line 33
    const-string v16, "allowedReminders"

    .line 34
    .line 35
    const-string v17, "customAppPackage"

    .line 36
    .line 37
    const-string v18, "customAppUri"

    .line 38
    .line 39
    const-string v19, "original_sync_id"

    .line 40
    .line 41
    const-string v20, "account_name"

    .line 42
    .line 43
    const-string v21, "account_type"

    .line 44
    .line 45
    const-string v22, "calendar_displayName"

    .line 46
    .line 47
    const-string v23, "ownerAccount"

    .line 48
    .line 49
    const-string v24, "rdate"

    .line 50
    .line 51
    const-string v25, "sync_data1"

    .line 52
    .line 53
    const-string v26, "sync_data2"

    .line 54
    .line 55
    const-string v27, "sync_data3"

    .line 56
    .line 57
    const-string v28, "sync_data6"

    .line 58
    .line 59
    const-string v29, "hasExtendedProperties"

    .line 60
    .line 61
    const-string v30, "_sync_id"

    .line 62
    .line 63
    const-string v31, "duration"

    .line 64
    .line 65
    const-string v32, "availability"

    .line 66
    .line 67
    const-string v33, "guestsCanModify"

    .line 68
    .line 69
    const-string v34, "original_id"

    .line 70
    .line 71
    const-string v35, "eventStatus"

    .line 72
    .line 73
    const-string v36, "dtend"

    .line 74
    .line 75
    filled-new-array/range {v0 .. v36}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, La2/a;->a:[Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "_id"

    .line 82
    .line 83
    const-string v2, "attendeeName"

    .line 84
    .line 85
    const-string v3, "attendeeEmail"

    .line 86
    .line 87
    const-string v4, "attendeeRelationship"

    .line 88
    .line 89
    const-string v5, "attendeeStatus"

    .line 90
    .line 91
    const-string v6, "attendeeIdentity"

    .line 92
    .line 93
    const-string v7, "attendeeIdNamespace"

    .line 94
    .line 95
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, La2/a;->b:[Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "_id"

    .line 102
    .line 103
    const-string v1, "minutes"

    .line 104
    .line 105
    const-string v2, "method"

    .line 106
    .line 107
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, La2/a;->c:[Ljava/lang/String;

    .line 112
    .line 113
    const-string v1, "_id"

    .line 114
    .line 115
    const-string v2, "calendar_displayName"

    .line 116
    .line 117
    const-string v3, "ownerAccount"

    .line 118
    .line 119
    const-string v4, "canOrganizerRespond"

    .line 120
    .line 121
    const-string v5, "account_name"

    .line 122
    .line 123
    const-string v6, "account_type"

    .line 124
    .line 125
    const-string v7, "calendar_color"

    .line 126
    .line 127
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, La2/a;->d:[Ljava/lang/String;

    .line 132
    .line 133
    return-void
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

.method public static final a(Landroid/content/Context;)Landroid/database/MatrixCursor;
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    .line 15
    sget-object v3, La2/a;->d:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "calendar_access_level>=200 AND visible=1"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p0, v0

    .line 27
    :goto_0
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->Q0(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    return-object v0
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

.method public static final b(Landroid/content/Context;)Landroid/database/MatrixCursor;
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    .line 15
    sget-object v3, La2/a;->d:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "calendar_access_level>=500 AND visible=1"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p0, v0

    .line 27
    :goto_0
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->Q0(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    return-object v0
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

.method public static final c(Landroid/content/Context;Landroid/database/MatrixCursor;Lcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "eventCursor"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "agendaEvent"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "Cal:D:AgendaEventLoader"

    .line 23
    .line 24
    const-string v4, "onQueryComplete(): startQuery:TOKEN_QUERY_CALENDARS"

    .line 25
    .line 26
    invoke-static {v2, v4}, Lt1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarAccessLevel()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/16 v6, 0x1f4

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x1

    .line 42
    if-lt v5, v6, :cond_0

    .line 43
    .line 44
    move v5, v8

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v5, v7

    .line 47
    :goto_0
    if-eqz v5, :cond_1

    .line 48
    .line 49
    invoke-static/range {p0 .. p0}, La2/a;->b(Landroid/content/Context;)Landroid/database/MatrixCursor;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static/range {p0 .. p0}, La2/a;->a(Landroid/content/Context;)Landroid/database/MatrixCursor;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :goto_1
    move-object v4, v3

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    if-eqz v4, :cond_7

    .line 65
    .line 66
    :goto_2
    invoke-virtual {v4}, Landroid/database/AbstractCursor;->moveToNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x4

    .line 71
    const/4 v9, 0x2

    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const-string v10, ""

    .line 79
    .line 80
    if-nez v5, :cond_2

    .line 81
    .line 82
    move-object v15, v10

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    :try_start_1
    const-string v11, "it.getString(CALENDARS_INDEX_OWNER_ACCOUNT) ?: \"\""

    .line 85
    .line 86
    invoke-static {v5, v11}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v15, v5

    .line 90
    :goto_3
    const/4 v5, 0x3

    .line 91
    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    move/from16 v16, v8

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_3
    move/from16 v16, v7

    .line 101
    .line 102
    :goto_4
    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-nez v5, :cond_4

    .line 107
    .line 108
    move-object/from16 v17, v10

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_4
    const-string v11, "it.getString(CALENDARS_INDEX_ACCOUNT_NAME) ?: \"\""

    .line 112
    .line 113
    invoke-static {v5, v11}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v17, v5

    .line 117
    .line 118
    :goto_5
    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-nez v5, :cond_5

    .line 123
    .line 124
    move-object/from16 v18, v10

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_5
    const-string v10, "it.getString(CALENDARS_INDEX_DISPLAY_NAME) ?: \"\""

    .line 128
    .line 129
    invoke-static {v5, v10}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    move-object/from16 v18, v5

    .line 133
    .line 134
    :goto_6
    new-instance v5, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;

    .line 135
    .line 136
    invoke-virtual {v4, v7}, Landroid/database/MatrixCursor;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v13

    .line 140
    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    const-string v10, "calendarsCursor.getStrin\u2026DARS_INDEX_OWNER_ACCOUNT)"

    .line 145
    .line 146
    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string v10, "calendarsCursor.getStrin\u2026NDARS_INDEX_ACCOUNT_NAME)"

    .line 154
    .line 155
    invoke-static {v6, v10}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 v10, 0x5

    .line 159
    invoke-virtual {v4, v10}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    const-string v11, "calendarsCursor.getStrin\u2026NDARS_INDEX_ACCOUNT_TYPE)"

    .line 164
    .line 165
    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    move-object v12, v5

    .line 169
    move-object/from16 v19, v9

    .line 170
    .line 171
    move-object/from16 v20, v6

    .line 172
    .line 173
    move-object/from16 v21, v10

    .line 174
    .line 175
    invoke-direct/range {v12 .. v21}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;-><init>(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->getLong(I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    invoke-static {v4, v5, v6}, Lcom/android/calendar/common/Utils;->n(Landroid/database/Cursor;J)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-virtual {v1, v0}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setCalendarPosition(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v3}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setCalendars(Ljava/util/List;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarPosition()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;

    .line 205
    .line 206
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getOwnerAccount()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/EventEx;->getOrganizer()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-static {v5, v6, v8}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    invoke-virtual {v3, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setIsOrganizer(Z)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getOwnerCanRespond()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    invoke-virtual {v3, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizerCanRespond(Z)V

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getDisplayName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v3, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarDisplayName(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getAccountName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v3, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountName(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getAccountType()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v3, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountType(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getCalendarId()J

    .line 278
    .line 279
    .line 280
    move-result-wide v5

    .line 281
    invoke-virtual {v3, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarId(J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getOrganizer()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v3, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizer(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setOwnerAccount(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .line 305
    .line 306
    :cond_7
    if-eqz v4, :cond_8

    .line 307
    .line 308
    :goto_7
    invoke-virtual {v4}, Landroid/database/AbstractCursor;->close()V

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :catchall_0
    move-exception v0

    .line 313
    goto :goto_9

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_2
    const-string v1, "loadAccounts failed."

    .line 316
    .line 317
    invoke-static {v2, v1, v0}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    .line 319
    .line 320
    if-eqz v4, :cond_8

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_8
    :goto_8
    return-void

    .line 324
    :goto_9
    if-eqz v4, :cond_9

    .line 325
    .line 326
    invoke-virtual {v4}, Landroid/database/AbstractCursor;->close()V

    .line 327
    .line 328
    .line 329
    :cond_9
    throw v0
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

.method public static final d(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/android/calendar/common/event/schema/AgendaEvent;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_f

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_7

    .line 7
    .line 8
    :cond_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const-string v1, "withAppendedId(Events.CONTENT_URI, eventId)"

    .line 19
    .line 20
    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    sget-object v6, La2/a;->a:[Ljava/lang/String;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v1, v0

    .line 40
    :goto_0
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->Q0(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_f

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_2
    new-instance v0, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/database/AbstractCursor;->moveToFirst()Z

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->getLong(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-virtual {v0, v3, v4}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v3, 0x0

    .line 71
    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-wide v5, v3

    .line 80
    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/android/calendar/common/event/schema/Event;->setStartTimeMillis(J)V

    .line 81
    .line 82
    .line 83
    if-eqz p3, :cond_4

    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/android/calendar/common/event/schema/Event;->setEndTimeMillis(J)V

    .line 90
    .line 91
    .line 92
    const/16 p2, 0x10

    .line 93
    .line 94
    invoke-virtual {v1, p2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {v0, p2}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setCalendarAllowedReminder(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p2, 0x1

    .line 102
    invoke-virtual {v1, p2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {v0, p3}, Lcom/android/calendar/common/event/schema/Event;->setTitle(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_5

    .line 118
    .line 119
    const p3, 0x7f1203c4

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {v0, p3}, Lcom/android/calendar/common/event/schema/Event;->setTitle(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    const/4 p3, 0x3

    .line 130
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_6

    .line 135
    .line 136
    move p3, p2

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    move p3, v2

    .line 139
    :goto_2
    invoke-virtual {v0, p3}, Lcom/android/calendar/common/event/schema/Event;->setAllDay(Z)V

    .line 140
    .line 141
    .line 142
    const/16 p3, 0x1d

    .line 143
    .line 144
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setEventType(I)V

    .line 149
    .line 150
    .line 151
    const/16 v3, 0x8

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setDescription(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/16 v3, 0x9

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setLocation(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v3, p1}, Lcom/android/calendar/common/event/schema/EventEx;->setUri(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const/16 v3, 0xe

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-ne v4, p2, :cond_7

    .line 201
    .line 202
    move v4, p2

    .line 203
    goto :goto_3

    .line 204
    :cond_7
    move v4, v2

    .line 205
    :goto_3
    invoke-virtual {p1, v4}, Lcom/android/calendar/common/event/schema/EventEx;->setHasAlarm(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const/4 v4, 0x5

    .line 213
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getLong(I)J

    .line 214
    .line 215
    .line 216
    move-result-wide v4

    .line 217
    invoke-virtual {p1, v4, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const/16 v4, 0x14

    .line 225
    .line 226
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {p1, v4}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountName(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const/16 v4, 0x15

    .line 238
    .line 239
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {p1, v4}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountType(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_8

    .line 255
    .line 256
    move v3, p2

    .line 257
    goto :goto_4

    .line 258
    :cond_8
    move v3, v2

    .line 259
    :goto_4
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setHasAlarm(Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    const/4 v3, 0x4

    .line 267
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getLong(I)J

    .line 268
    .line 269
    .line 270
    move-result-wide v3

    .line 271
    invoke-virtual {p1, v3, v4}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarId(J)V

    .line 272
    .line 273
    .line 274
    const/4 p1, 0x7

    .line 275
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-nez v3, :cond_9

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v3, p1}, Lcom/android/calendar/common/event/schema/EventEx;->setTimezone(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_9
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    const/4 v3, 0x2

    .line 297
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setRrule(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    const/16 v3, 0x18

    .line 309
    .line 310
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setRdate(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    const/16 v3, 0x1e

    .line 322
    .line 323
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setSyncId(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    const/16 v3, 0x17

    .line 335
    .line 336
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOwnerAccount(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    const/16 v3, 0xc

    .line 348
    .line 349
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-eqz v3, :cond_a

    .line 354
    .line 355
    move v3, p2

    .line 356
    goto :goto_5

    .line 357
    :cond_a
    move v3, v2

    .line 358
    :goto_5
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setHasAttendeeData(Z)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    const/16 v3, 0x13

    .line 366
    .line 367
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalSyncId(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    const/16 v3, 0x22

    .line 379
    .line 380
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getLong(I)J

    .line 381
    .line 382
    .line 383
    move-result-wide v3

    .line 384
    invoke-virtual {p1, v3, v4}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalId(J)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    const/16 v3, 0xd

    .line 392
    .line 393
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizer(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    const/16 v3, 0x21

    .line 405
    .line 406
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-eqz v3, :cond_b

    .line 411
    .line 412
    move v2, p2

    .line 413
    :cond_b
    invoke-virtual {p1, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setGuestsCanModify(Z)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 421
    .line 422
    .line 423
    move-result p3

    .line 424
    invoke-virtual {p1, p3}, Lcom/android/calendar/common/event/schema/EventEx;->setHasExtendedProperties(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    const/16 p3, 0x23

    .line 432
    .line 433
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 434
    .line 435
    .line 436
    move-result p3

    .line 437
    invoke-virtual {p1, p3}, Lcom/android/calendar/common/event/schema/EventEx;->setEventStatus(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->getRrule()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    xor-int/2addr p1, p2

    .line 453
    if-eqz p1, :cond_c

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    const/16 p3, 0x1f

    .line 460
    .line 461
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p3

    .line 465
    invoke-virtual {p1, p3}, Lcom/android/calendar/common/event/schema/EventEx;->setDuration(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_c
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    const/16 p3, 0x24

    .line 474
    .line 475
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getLong(I)J

    .line 476
    .line 477
    .line 478
    move-result-wide v2

    .line 479
    invoke-virtual {p1, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 480
    .line 481
    .line 482
    :goto_6
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/EventEx;->setModelUpdatedWithEventCursor(Z)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 494
    .line 495
    .line 496
    move-result-wide v2

    .line 497
    invoke-virtual {p1, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalStart(J)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 505
    .line 506
    .line 507
    move-result-wide v2

    .line 508
    invoke-virtual {p1, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalEnd(J)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    const/16 p3, 0xf

    .line 516
    .line 517
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 518
    .line 519
    .line 520
    move-result p3

    .line 521
    invoke-virtual {p1, p3}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarMaxReminders(I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    const/16 p3, 0x16

    .line 529
    .line 530
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p3

    .line 534
    invoke-virtual {p1, p3}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizerDisplayName(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    const/16 p3, 0xa

    .line 542
    .line 543
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 544
    .line 545
    .line 546
    move-result p3

    .line 547
    invoke-virtual {p1, p3}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarAccessLevel(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/EventEx;->setModelUpdatedWithEventCursor(Z)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    const/4 p2, 0x6

    .line 562
    if-ne p1, p2, :cond_d

    .line 563
    .line 564
    const/16 p1, 0x19

    .line 565
    .line 566
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-virtual {v0, p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setUrl(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    const/16 p1, 0x1a

    .line 574
    .line 575
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    invoke-virtual {v0, p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setUrlText(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    const/16 p1, 0x1b

    .line 583
    .line 584
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-virtual {v0, p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setPackageName(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :cond_d
    invoke-static {p0, v0}, La2/a;->g(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 592
    .line 593
    .line 594
    invoke-static {p0, v1, v0}, La2/a;->c(Landroid/content/Context;Landroid/database/MatrixCursor;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AgendaEvent;->isBusyFreeCalendar()Z

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    if-nez p1, :cond_e

    .line 602
    .line 603
    invoke-static {p0, v0}, La2/a;->e(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AgendaEvent;)V

    .line 604
    .line 605
    .line 606
    :cond_e
    invoke-static {p0, v0}, La2/a;->f(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AgendaEvent;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    :cond_f
    :goto_7
    return-object v0
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
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
.end method

.method public static final e(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "agendaEvent"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x1

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    .line 26
    sget-object v4, La2/a;->b:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v5, "event_id=?"

    .line 29
    .line 30
    new-array v6, v9, [Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v10

    .line 36
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    aput-object v7, v6, v8

    .line 41
    .line 42
    const-string v7, "attendeeName ASC, attendeeEmail ASC"

    .line 43
    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v2, v1

    .line 50
    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->Q0(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v4, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v5, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v6, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v1}, Landroid/database/AbstractCursor;->moveToNext()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_5

    .line 79
    .line 80
    const/4 v7, 0x4

    .line 81
    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->getInt(I)I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    invoke-virtual {v1, v9}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    const/4 v15, 0x2

    .line 90
    invoke-virtual {v1, v15}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    const/4 v11, 0x5

    .line 95
    invoke-virtual {v1, v11}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    const/4 v11, 0x6

    .line 100
    invoke-virtual {v1, v11}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v17

    .line 104
    new-instance v13, Lcom/android/calendar/common/event/schema/Attendee;

    .line 105
    .line 106
    const/16 v18, 0x1

    .line 107
    .line 108
    move-object v11, v13

    .line 109
    move-object/from16 v19, v13

    .line 110
    .line 111
    move-object v13, v14

    .line 112
    move-object v7, v14

    .line 113
    move/from16 v14, v18

    .line 114
    .line 115
    move-object/from16 v15, v16

    .line 116
    .line 117
    move-object/from16 v16, v17

    .line 118
    .line 119
    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/common/event/schema/Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarOwnerAttendeeId()J

    .line 123
    .line 124
    .line 125
    move-result-wide v11

    .line 126
    const-wide/16 v13, -0x1

    .line 127
    .line 128
    cmp-long v11, v11, v13

    .line 129
    .line 130
    if-nez v11, :cond_1

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v11}, Lcom/android/calendar/common/event/schema/EventEx;->getOwnerAccount()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-static {v11, v7, v9}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_1

    .line 145
    .line 146
    invoke-virtual {v1, v8}, Landroid/database/MatrixCursor;->getLong(I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v11

    .line 150
    invoke-virtual {v0, v11, v12}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setCalendarOwnerAttendeeId(J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v10}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setAttendeeResponse(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_1
    if-eq v10, v9, :cond_4

    .line 158
    .line 159
    const/4 v7, 0x2

    .line 160
    if-eq v10, v7, :cond_3

    .line 161
    .line 162
    const/4 v7, 0x4

    .line 163
    if-eq v10, v7, :cond_2

    .line 164
    .line 165
    move-object/from16 v7, v19

    .line 166
    .line 167
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    move-object/from16 v7, v19

    .line 172
    .line 173
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    move-object/from16 v7, v19

    .line 178
    .line 179
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    move-object/from16 v7, v19

    .line 184
    .line 185
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setAcceptedAttendees(Ljava/util/List;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v4}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setDeclinedAttendees(Ljava/util/List;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v5}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setTentativeAttendees(Ljava/util/List;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v6}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setNoResponseAttendees(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .line 200
    .line 201
    if-eqz v2, :cond_6

    .line 202
    .line 203
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    :cond_6
    if-eqz v1, :cond_8

    .line 207
    .line 208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    move-object/from16 v20, v2

    .line 214
    .line 215
    move-object v2, v1

    .line 216
    move-object/from16 v1, v20

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :catch_0
    move-exception v0

    .line 220
    move-object/from16 v20, v2

    .line 221
    .line 222
    move-object v2, v1

    .line 223
    move-object/from16 v1, v20

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :catchall_1
    move-exception v0

    .line 227
    move-object v2, v1

    .line 228
    goto :goto_4

    .line 229
    :catch_1
    move-exception v0

    .line 230
    move-object v2, v1

    .line 231
    :goto_2
    :try_start_2
    const-string v3, "Cal:D:AgendaEventLoader"

    .line 232
    .line 233
    const-string v4, "loadAttendees failed."

    .line 234
    .line 235
    invoke-static {v3, v4, v0}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 236
    .line 237
    .line 238
    if-eqz v1, :cond_7

    .line 239
    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 241
    .line 242
    .line 243
    :cond_7
    if-eqz v2, :cond_8

    .line 244
    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 246
    .line 247
    .line 248
    :cond_8
    :goto_3
    return-void

    .line 249
    :catchall_2
    move-exception v0

    .line 250
    :goto_4
    if-eqz v1, :cond_9

    .line 251
    .line 252
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 253
    .line 254
    .line 255
    :cond_9
    if-eqz v2, :cond_a

    .line 256
    .line 257
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 258
    .line 259
    .line 260
    :cond_a
    throw v0
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

.method public static final f(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AgendaEvent;)Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "Cal:D:AgendaEventLoader"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    const-string v7, "email_info"

    .line 25
    .line 26
    invoke-static {p0, v5, v6, v7}, Ls1/d;->e(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    .line 33
    .line 34
    const-string v7, "value"

    .line 35
    .line 36
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v5, "emailMessageId"

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    invoke-virtual {p1, v7, v8}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setEmailMessageId(J)V

    .line 50
    .line 51
    .line 52
    const-string v5, "emailMessageTimeStamp"

    .line 53
    .line 54
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    invoke-virtual {p1, v5, v6}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setEmailMessageTimeStamp(J)V

    .line 59
    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v6, "email info: mEmailMessageId="

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getEmailMessageId()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v6, ", mEmailMessageTimeStamp="

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getEmailMessageTimeStamp()J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v0, v5}, Lt1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getEmailMessageId()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    const-wide/16 v7, 0x0

    .line 102
    .line 103
    cmp-long v5, v5, v7

    .line 104
    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getEmailMessageTimeStamp()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    cmp-long v5, v5, v7

    .line 112
    .line 113
    if-eqz v5, :cond_1

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getEmailMessageId()J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getEmailMessageTimeStamp()J

    .line 120
    .line 121
    .line 122
    move-result-wide v7

    .line 123
    invoke-static {p0, v5, v6, v7, v8}, Lcom/miui/calendar/util/r;->d(Landroid/content/Context;JJ)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {p1, v5}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setEmailExist(Z)V

    .line 128
    .line 129
    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v6, "mEmailExist= "

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getEmailExist()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v0, v5}, Lt1/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catch_0
    move-exception v5

    .line 156
    :try_start_2
    const-string v6, "parse email info error:"

    .line 157
    .line 158
    invoke-static {v0, v6, v5}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    :cond_1
    :goto_0
    const/16 v5, 0xa

    .line 162
    .line 163
    if-ne v4, v5, :cond_2

    .line 164
    .line 165
    invoke-static {p0, v2, v3}, Ls1/d;->g(Landroid/content/Context;J)Ljava/util/HashMap;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const-string v5, "loadEPMap(context, eventId)"

    .line 170
    .line 171
    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v5, "thirdPartyIntentText"

    .line 175
    .line 176
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, v5}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setThirdPartyEPText(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v5, "thirdPartyIntentData"

    .line 186
    .line 187
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p1, v5}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setThirdPartyEPData(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v5, "thirdPartyIntentData2"

    .line 197
    .line 198
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1, v5}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setThirdPartyEPData2(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v5, "thirdPartyIntentAction"

    .line 208
    .line 209
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1, v5}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setThirdPartyEPAction(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v5, "thirdPartyIntentPackageName"

    .line 219
    .line 220
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    check-cast v4, Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p1, v4}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setThirdPartyEPPackageName(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_2
    const-string v4, "map_key_event_action"

    .line 230
    .line 231
    invoke-static {p0, v2, v3, v4}, Ls1/d;->e(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {p1, v4}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setActionEPJson(Lorg/json/JSONObject;)V

    .line 236
    .line 237
    .line 238
    const-string v4, "map_key_event_action_title"

    .line 239
    .line 240
    invoke-static {p0, v2, v3, v4}, Ls1/d;->e(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {p1, v2}, Lcom/android/calendar/common/event/schema/AgendaEvent;->setTitleEPJson(Lorg/json/JSONObject;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 248
    .line 249
    .line 250
    move-result-wide v2

    .line 251
    const-string v4, "agenda_info"

    .line 252
    .line 253
    invoke-static {p0, v2, v3, v4}, Ls1/d;->f(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {p1, p0}, Lcom/android/calendar/common/event/schema/Event;->fillEpInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :catch_1
    move-exception p0

    .line 262
    const-string p1, "loadEPData failed."

    .line 263
    .line 264
    invoke-static {v0, p1, p0}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    :goto_1
    return-object v1
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

.method public static final g(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AgendaEvent;)V
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "agendaEvent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 p0, 0x1

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    .line 26
    sget-object v4, La2/a;->c:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v5, "event_id=?"

    .line 29
    .line 30
    new-array v6, p0, [Ljava/lang/String;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    aput-object v8, v6, v7

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 49
    .line 50
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x2

    .line 61
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v2, v3}, Lcom/android/calendar/common/event/schema/Reminder;->valueOf(II)Lcom/android/calendar/common/event/schema/Reminder;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    if-eqz v1, :cond_2

    .line 74
    .line 75
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_3

    .line 81
    :catch_0
    move-exception p0

    .line 82
    :try_start_1
    const-string v2, "Cal:D:AgendaEventLoader"

    .line 83
    .line 84
    const-string v3, "loadReminders failed."

    .line 85
    .line 86
    invoke-static {v2, v3, p0}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    :goto_2
    invoke-static {v0}, Lkotlin/collections/t;->y(Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setReminders(Ljava/util/ArrayList;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_3
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_3
    throw p0
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
