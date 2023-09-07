.class public Lcom/miui/calendar/provider/MiuiCalendarProvider;
.super Landroid/content/ContentProvider;
.source "MiuiCalendarProvider.java"


# static fields
.field private static final a:Landroid/content/UriMatcher;

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/miui/calendar/provider/MiuiCalendarProvider;->a:Landroid/content/UriMatcher;

    .line 8
    .line 9
    const-string v1, "com.miui.calendar"

    .line 10
    .line 11
    const-string v2, "daysoff"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string v2, "daysoff/#"

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "holiday"

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v2, "ctaPermission"

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string v2, "noticePermission"

    .line 36
    .line 37
    const/4 v7, 0x5

    .line 38
    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/miui/calendar/provider/MiuiCalendarProvider;->b:Landroid/util/SparseArray;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    const-string v2, "\u5143\u65e6"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "\u6625\u8282"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "\u6e05\u660e\u8282"

    .line 60
    .line 61
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "\u52b3\u52a8\u8282"

    .line 65
    .line 66
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "\u7aef\u5348\u8282"

    .line 70
    .line 71
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "\u4e2d\u79cb\u8282"

    .line 75
    .line 76
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x6

    .line 80
    const-string v2, "\u56fd\u5e86\u8282"

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void
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

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

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

.method public static synthetic a(Lcom/miui/calendar/holiday/model/HolidaySchema;Lcom/miui/calendar/holiday/model/HolidaySchema;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/provider/MiuiCalendarProvider;->c(Lcom/miui/calendar/holiday/model/HolidaySchema;Lcom/miui/calendar/holiday/model/HolidaySchema;)I

    move-result p0

    return p0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/calendar/holiday/model/HolidaySchema;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/calendar/holiday/model/HolidaySchema;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_7

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/miui/calendar/holiday/model/HolidaySchema;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "nation name:"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->name:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, " holidayId:"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v3, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->holidayId:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " date:"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v3, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->date:J

    .line 48
    .line 49
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "Cal:D:MiuiCalendarProvider"

    .line 57
    .line 58
    invoke-static {v3, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v4, Ljava/util/Date;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-wide v5, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->holidayMillis:J

    .line 72
    .line 73
    invoke-virtual {v4, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x6

    .line 84
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v8, "day of year:"

    .line 94
    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-static {v3, v7}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 v7, 0x1

    .line 109
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v9, "current year:"

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-static {v3, v8}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    const-string v9, " end:"

    .line 138
    .line 139
    const-string v10, "start:"

    .line 140
    .line 141
    const/16 v11, 0xa

    .line 142
    .line 143
    if-ge v6, v11, :cond_3

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v11, v5, -0x1

    .line 149
    .line 150
    invoke-virtual {v8, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 151
    .line 152
    .line 153
    const/4 v12, -0x1

    .line 154
    invoke-virtual {v8, v4, v12}, Ljava/util/Calendar;->roll(II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    new-instance v13, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v14, "last day of year:"

    .line 167
    .line 168
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    invoke-static {v3, v13}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    rsub-int/lit8 v13, v6, 0xa

    .line 182
    .line 183
    sub-int v13, v12, v13

    .line 184
    .line 185
    add-int/lit8 v6, v6, 0xa

    .line 186
    .line 187
    new-instance v14, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-static {v3, v9}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :goto_1
    if-gt v13, v12, :cond_1

    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-static {v9}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-virtual {v9, v11, v13}, Lcom/miui/calendar/util/DaysOffUtils;->e(II)I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-ne v9, v7, :cond_0

    .line 229
    .line 230
    invoke-virtual {v8, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v4, v13}, Ljava/util/Calendar;->set(II)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 237
    .line 238
    .line 239
    move-result-wide v9

    .line 240
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :cond_0
    add-int/lit8 v13, v13, 0x1

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_1
    move v9, v7

    .line 251
    :goto_2
    if-ge v9, v6, :cond_5

    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-static {v10}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    invoke-virtual {v10, v5, v9}, Lcom/miui/calendar/util/DaysOffUtils;->e(II)I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-ne v10, v7, :cond_2

    .line 269
    .line 270
    invoke-virtual {v8, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v8, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 277
    .line 278
    .line 279
    move-result-wide v10

    .line 280
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_3
    add-int/lit8 v11, v6, -0xa

    .line 291
    .line 292
    add-int/lit8 v6, v6, 0xa

    .line 293
    .line 294
    sub-int/2addr v6, v7

    .line 295
    new-instance v12, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    invoke-static {v3, v9}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :goto_3
    if-ge v11, v6, :cond_5

    .line 320
    .line 321
    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    invoke-static {v9}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    invoke-virtual {v9, v5, v11}, Lcom/miui/calendar/util/DaysOffUtils;->e(II)I

    .line 333
    .line 334
    .line 335
    move-result v9

    .line 336
    if-ne v9, v7, :cond_4

    .line 337
    .line 338
    invoke-virtual {v8, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v8, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 345
    .line 346
    .line 347
    move-result-wide v9

    .line 348
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    if-nez v4, :cond_6

    .line 363
    .line 364
    const/4 v4, 0x0

    .line 365
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    check-cast v4, Ljava/lang/Long;

    .line 370
    .line 371
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    const-wide/16 v8, 0x3e8

    .line 376
    .line 377
    div-long/2addr v4, v8

    .line 378
    long-to-int v4, v4

    .line 379
    iput v4, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->start:I

    .line 380
    .line 381
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    sub-int/2addr v4, v7

    .line 386
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    check-cast v2, Ljava/lang/Long;

    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 393
    .line 394
    .line 395
    move-result-wide v4

    .line 396
    div-long/2addr v4, v8

    .line 397
    long-to-int v2, v4

    .line 398
    iput v2, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->end:I

    .line 399
    .line 400
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    const-string v4, "holidaySchema range:["

    .line 406
    .line 407
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget v4, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->start:I

    .line 411
    .line 412
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v4, "-"

    .line 416
    .line 417
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    iget v1, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->end:I

    .line 421
    .line 422
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v1, "]"

    .line 426
    .line 427
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-static {v3, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :cond_7
    return-object p1
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

.method private static synthetic c(Lcom/miui/calendar/holiday/model/HolidaySchema;Lcom/miui/calendar/holiday/model/HolidaySchema;)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/holiday/model/HolidaySchema;->holidayMillis:J

    .line 2
    .line 3
    iget-wide p0, p1, Lcom/miui/calendar/holiday/model/HolidaySchema;->holidayMillis:J

    .line 4
    .line 5
    cmp-long v2, v0, p0

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    cmp-long p0, v0, p0

    .line 12
    .line 13
    if-gez p0, :cond_1

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
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

.method private d(Landroid/net/Uri;)J
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-wide v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "Invalid id in uri: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v1
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

.method private e(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/calendar/holiday/model/HolidaySchema;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/calendar/holiday/model/HolidaySchema;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/calendar/holiday/model/HolidaySchema;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_1
    sget-object v3, Lcom/miui/calendar/provider/MiuiCalendarProvider;->b:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v2, v4, :cond_0

    .line 30
    .line 31
    iget-object v4, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/CharSequence;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->holidayId:I

    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance p1, Li4/a;

    .line 59
    .line 60
    invoke-direct {p1}, Li4/a;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/miui/calendar/provider/MiuiCalendarProvider;->b(Ljava/util/List;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
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


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 1
    sget-object p2, Lcom/miui/calendar/provider/MiuiCalendarProvider;->a:Landroid/content/UriMatcher;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const-string p3, "daysoff_type"

    .line 8
    .line 9
    const-string p4, "daysoff_dayofyear"

    .line 10
    .line 11
    const-string p5, "daysoff_year"

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq p2, v3, :cond_8

    .line 18
    .line 19
    if-eq p2, v1, :cond_7

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    const/4 p4, 0x5

    .line 23
    const/4 p5, 0x4

    .line 24
    const-string v4, "Cal:D:MiuiCalendarProvider"

    .line 25
    .line 26
    if-eq p2, v0, :cond_4

    .line 27
    .line 28
    if-eq p2, p5, :cond_3

    .line 29
    .line 30
    if-eq p2, p4, :cond_0

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string p4, "Cannot query URI: "

    .line 38
    .line 39
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v4, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object p3

    .line 53
    :cond_0
    const-string p1, "case CHECK_NOTICE_PERMISSION"

    .line 54
    .line 55
    invoke-static {v4, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroid/database/MatrixCursor;

    .line 59
    .line 60
    const-string p2, "is_agree_with_notice"

    .line 61
    .line 62
    filled-new-array {p2}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 p3, 0x21

    .line 72
    .line 73
    if-lt p2, p3, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string p3, "android.permission.POST_NOTIFICATIONS"

    .line 80
    .line 81
    invoke-static {p2, p3}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-nez p2, :cond_1

    .line 86
    .line 87
    move p2, v3

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    move p2, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {p2}, Lo1/i;->a(Landroid/content/Context;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    :goto_0
    new-array p3, v3, [Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    aput-object p2, p3, v2

    .line 106
    .line 107
    invoke-virtual {p1, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_3
    const-string p1, "case CHECK_CTA_PERMISSION"

    .line 112
    .line 113
    invoke-static {v4, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Landroid/database/MatrixCursor;

    .line 117
    .line 118
    const-string p2, "is_agree_with_cta"

    .line 119
    .line 120
    filled-new-array {p2}, [Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-static {p2}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    new-array p3, v3, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    aput-object p2, p3, v2

    .line 142
    .line 143
    invoke-virtual {p1, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_4
    const-string p1, "case HOLIDAY"

    .line 148
    .line 149
    invoke-static {v4, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/miui/calendar/util/z0;->m()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_5

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_5

    .line 167
    .line 168
    return-object p3

    .line 169
    :cond_5
    new-instance p1, Landroid/database/MatrixCursor;

    .line 170
    .line 171
    const-string p2, "holiday_id"

    .line 172
    .line 173
    const-string p3, "holiday_name"

    .line 174
    .line 175
    const-string v4, "holiday_date"

    .line 176
    .line 177
    const-string v5, "holiday_start"

    .line 178
    .line 179
    const-string v6, "holiday_end"

    .line 180
    .line 181
    filled-new-array {p2, p3, v4, v5, v6}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-static {p2}, Lz3/d;->h(Landroid/content/Context;)Lz3/d;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p2}, Lz3/d;->b()Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-direct {p0, p2}, Lcom/miui/calendar/provider/MiuiCalendarProvider;->e(Ljava/util/ArrayList;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result p3

    .line 212
    if-eqz p3, :cond_6

    .line 213
    .line 214
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    check-cast p3, Lcom/miui/calendar/holiday/model/HolidaySchema;

    .line 219
    .line 220
    new-array v4, p4, [Ljava/lang/Object;

    .line 221
    .line 222
    iget v5, p3, Lcom/miui/calendar/holiday/model/HolidaySchema;->holidayId:I

    .line 223
    .line 224
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    aput-object v5, v4, v2

    .line 229
    .line 230
    iget-object v5, p3, Lcom/miui/calendar/holiday/model/HolidaySchema;->name:Ljava/lang/String;

    .line 231
    .line 232
    aput-object v5, v4, v3

    .line 233
    .line 234
    iget-wide v5, p3, Lcom/miui/calendar/holiday/model/HolidaySchema;->date:J

    .line 235
    .line 236
    long-to-int v5, v5

    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    aput-object v5, v4, v1

    .line 242
    .line 243
    iget v5, p3, Lcom/miui/calendar/holiday/model/HolidaySchema;->start:I

    .line 244
    .line 245
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    aput-object v5, v4, v0

    .line 250
    .line 251
    iget p3, p3, Lcom/miui/calendar/holiday/model/HolidaySchema;->end:I

    .line 252
    .line 253
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object p3

    .line 257
    aput-object p3, v4, p5

    .line 258
    .line 259
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_6
    return-object p1

    .line 264
    :cond_7
    new-instance p2, Landroid/database/MatrixCursor;

    .line 265
    .line 266
    filled-new-array {p5, p4, p3}, [Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p3

    .line 270
    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-direct {p0, p1}, Lcom/miui/calendar/provider/MiuiCalendarProvider;->d(Landroid/net/Uri;)J

    .line 274
    .line 275
    .line 276
    move-result-wide p3

    .line 277
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    .line 285
    .line 286
    .line 287
    move-result p3

    .line 288
    const/4 p4, 0x6

    .line 289
    invoke-virtual {p1, p4}, Ljava/util/Calendar;->get(I)I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object p4

    .line 297
    invoke-static {p4}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 298
    .line 299
    .line 300
    move-result-object p4

    .line 301
    invoke-virtual {p4, p3, p1}, Lcom/miui/calendar/util/DaysOffUtils;->e(II)I

    .line 302
    .line 303
    .line 304
    move-result p4

    .line 305
    new-array p5, v0, [Ljava/lang/Object;

    .line 306
    .line 307
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    aput-object p3, p5, v2

    .line 312
    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    aput-object p1, p5, v3

    .line 318
    .line 319
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    aput-object p1, p5, v1

    .line 324
    .line 325
    invoke-virtual {p2, p5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    return-object p2

    .line 329
    :cond_8
    new-instance p1, Landroid/database/MatrixCursor;

    .line 330
    .line 331
    filled-new-array {p5, p4, p3}, [Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-static {p2}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    invoke-virtual {p2}, Lcom/miui/calendar/util/DaysOffUtils;->a()Landroid/util/SparseArray;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    if-eqz p2, :cond_b

    .line 351
    .line 352
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 353
    .line 354
    .line 355
    move-result p3

    .line 356
    if-lez p3, :cond_b

    .line 357
    .line 358
    move p3, v2

    .line 359
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 360
    .line 361
    .line 362
    move-result p4

    .line 363
    if-ge p3, p4, :cond_b

    .line 364
    .line 365
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object p4

    .line 369
    check-cast p4, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;

    .line 370
    .line 371
    iget-object p5, p4, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;->workday:[I

    .line 372
    .line 373
    if-eqz p5, :cond_9

    .line 374
    .line 375
    array-length v4, p5

    .line 376
    if-lez v4, :cond_9

    .line 377
    .line 378
    array-length v4, p5

    .line 379
    move v5, v2

    .line 380
    :goto_3
    if-ge v5, v4, :cond_9

    .line 381
    .line 382
    aget v6, p5, v5

    .line 383
    .line 384
    new-array v7, v0, [Ljava/lang/Object;

    .line 385
    .line 386
    iget v8, p4, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;->year:I

    .line 387
    .line 388
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    aput-object v8, v7, v2

    .line 393
    .line 394
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    aput-object v6, v7, v3

    .line 399
    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    aput-object v6, v7, v1

    .line 405
    .line 406
    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    add-int/lit8 v5, v5, 0x1

    .line 410
    .line 411
    goto :goto_3

    .line 412
    :cond_9
    iget-object p5, p4, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;->freeday:[I

    .line 413
    .line 414
    if-eqz p5, :cond_a

    .line 415
    .line 416
    array-length v4, p5

    .line 417
    if-lez v4, :cond_a

    .line 418
    .line 419
    array-length v4, p5

    .line 420
    move v5, v2

    .line 421
    :goto_4
    if-ge v5, v4, :cond_a

    .line 422
    .line 423
    aget v6, p5, v5

    .line 424
    .line 425
    new-array v7, v0, [Ljava/lang/Object;

    .line 426
    .line 427
    iget v8, p4, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;->year:I

    .line 428
    .line 429
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    aput-object v8, v7, v2

    .line 434
    .line 435
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    aput-object v6, v7, v3

    .line 440
    .line 441
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    aput-object v6, v7, v1

    .line 446
    .line 447
    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    add-int/lit8 v5, v5, 0x1

    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_a
    add-int/lit8 p3, p3, 0x1

    .line 454
    .line 455
    goto :goto_2

    .line 456
    :cond_b
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
