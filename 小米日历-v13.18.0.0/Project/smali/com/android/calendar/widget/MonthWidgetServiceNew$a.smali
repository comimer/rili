.class Lcom/android/calendar/widget/MonthWidgetServiceNew$a;
.super Ljava/lang/Object;
.source "MonthWidgetServiceNew.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/MonthWidgetServiceNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;

.field private c:I

.field private d:Ljava/util/Calendar;

.field private e:I

.field private f:Z

.field final synthetic g:Lcom/android/calendar/widget/MonthWidgetServiceNew;


# direct methods
.method public constructor <init>(Lcom/android/calendar/widget/MonthWidgetServiceNew;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->g:Lcom/android/calendar/widget/MonthWidgetServiceNew;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->e:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->b:Landroid/content/res/Resources;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const-string p2, "appWidgetId"

    .line 20
    .line 21
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->e:I

    .line 26
    .line 27
    :cond_0
    return-void
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
.end method

.method private a(Ljava/util/Calendar;)I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->g:Lcom/android/calendar/widget/MonthWidgetServiceNew;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v2, 0x7f060576

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0, p1}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->g:Lcom/android/calendar/widget/MonthWidgetServiceNew;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v0, 0x7f060575

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :cond_0
    return v1
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


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->c:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x7

    .line 4
    .line 5
    return v0
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

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0d0185

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "getViewAt(): position : "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "Cal:D:MonthWidgetServiceNew"

    .line 23
    .line 24
    invoke-static {v3, v2}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-ltz v1, :cond_1a

    .line 29
    .line 30
    iget v4, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->c:I

    .line 31
    .line 32
    mul-int/lit8 v4, v4, 0x7

    .line 33
    .line 34
    if-lt v1, v4, :cond_0

    .line 35
    .line 36
    goto/16 :goto_c

    .line 37
    .line 38
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->d:Ljava/util/Calendar;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x6

    .line 52
    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v4, v1}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v6, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v7, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->g:Lcom/android/calendar/widget/MonthWidgetServiceNew;

    .line 66
    .line 67
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v6, v4, v7}, Lz3/b;->d(Landroid/content/Context;Ljava/util/Calendar;Landroid/content/res/Resources;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const/4 v8, 0x2

    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    const/4 v11, 0x1

    .line 93
    if-ne v10, v7, :cond_1

    .line 94
    .line 95
    move v7, v11

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move v7, v9

    .line 98
    :goto_0
    if-nez v7, :cond_2

    .line 99
    .line 100
    const-string v1, "is not current month, return null"

    .line 101
    .line 102
    invoke-static {v3, v1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v2

    .line 106
    :cond_2
    iget v3, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->c:I

    .line 107
    .line 108
    const/4 v10, 0x5

    .line 109
    const/4 v12, 0x4

    .line 110
    if-ne v3, v12, :cond_5

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    const v3, 0x7f0d017b

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    if-eqz v6, :cond_4

    .line 119
    .line 120
    const v3, 0x7f0d017c

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    const v3, 0x7f0d017a

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    if-ne v3, v10, :cond_8

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    const v3, 0x7f0d017f

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    if-eqz v6, :cond_7

    .line 137
    .line 138
    const v3, 0x7f0d0180

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_7
    const v3, 0x7f0d017e

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_8
    if-eqz v1, :cond_9

    .line 147
    .line 148
    const v3, 0x7f0d0183

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_9
    if-eqz v6, :cond_a

    .line 153
    .line 154
    const v3, 0x7f0d0184

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_a
    const v3, 0x7f0d0182

    .line 159
    .line 160
    .line 161
    :goto_1
    new-instance v13, Landroid/widget/RemoteViews;

    .line 162
    .line 163
    iget-object v14, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 164
    .line 165
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    invoke-direct {v13, v14, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, v4}, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a(Ljava/util/Calendar;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    const v14, 0x7f0a01e7

    .line 177
    .line 178
    .line 179
    if-eqz v1, :cond_b

    .line 180
    .line 181
    invoke-virtual {v13, v14, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_b
    iget-boolean v15, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->f:Z

    .line 186
    .line 187
    if-nez v15, :cond_c

    .line 188
    .line 189
    invoke-virtual {v13, v14, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 190
    .line 191
    .line 192
    :cond_c
    :goto_2
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v13, v14, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    const v10, 0x7f0a0644

    .line 204
    .line 205
    .line 206
    if-eqz v1, :cond_d

    .line 207
    .line 208
    const v15, 0x7f080705

    .line 209
    .line 210
    .line 211
    invoke-virtual {v13, v10, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_d
    const v15, 0x7f080703

    .line 216
    .line 217
    .line 218
    invoke-virtual {v13, v10, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 219
    .line 220
    .line 221
    :goto_3
    iget-object v15, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 222
    .line 223
    invoke-static {v15}, Lcom/miui/calendar/util/y;->t(Landroid/content/Context;)Z

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    const-string v12, ""

    .line 228
    .line 229
    const v14, 0x7f0a0703

    .line 230
    .line 231
    .line 232
    if-eqz v15, :cond_14

    .line 233
    .line 234
    iget-object v15, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 235
    .line 236
    invoke-static {v15}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 237
    .line 238
    .line 239
    move-result-object v15

    .line 240
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    invoke-virtual {v15, v10, v5}, Lcom/miui/calendar/util/DaysOffUtils;->e(II)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    const v10, 0x7f060408

    .line 253
    .line 254
    .line 255
    if-ne v5, v11, :cond_10

    .line 256
    .line 257
    iget-object v3, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->b:Landroid/content/res/Resources;

    .line 258
    .line 259
    if-eqz v1, :cond_e

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_e
    const v10, 0x7f060412

    .line 263
    .line 264
    .line 265
    :goto_4
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->b:Landroid/content/res/Resources;

    .line 270
    .line 271
    iget-object v8, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 272
    .line 273
    invoke-static {v8}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-eqz v8, :cond_f

    .line 278
    .line 279
    const v8, 0x7f120526

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_f
    const v8, 0x7f120525

    .line 284
    .line 285
    .line 286
    :goto_5
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v13, v14, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_10
    if-ne v5, v8, :cond_13

    .line 295
    .line 296
    iget-object v3, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->b:Landroid/content/res/Resources;

    .line 297
    .line 298
    if-eqz v1, :cond_11

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_11
    const v10, 0x7f06041a

    .line 302
    .line 303
    .line 304
    :goto_6
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->b:Landroid/content/res/Resources;

    .line 309
    .line 310
    iget-object v8, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 311
    .line 312
    invoke-static {v8}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    if-eqz v8, :cond_12

    .line 317
    .line 318
    const v8, 0x7f1206ee

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_12
    const v8, 0x7f1206ed

    .line 323
    .line 324
    .line 325
    :goto_7
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-virtual {v13, v14, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_13
    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    :goto_8
    invoke-virtual {v13, v14, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 337
    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_14
    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    :goto_9
    const v3, 0x7f0a0274

    .line 344
    .line 345
    .line 346
    const/16 v5, 0x8

    .line 347
    .line 348
    invoke-virtual {v13, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 349
    .line 350
    .line 351
    iget-object v3, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 352
    .line 353
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->b:Landroid/content/res/Resources;

    .line 354
    .line 355
    invoke-static {v3, v4, v5}, Lz3/b;->c(Landroid/content/Context;Ljava/util/Calendar;Landroid/content/res/Resources;)Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    const v5, 0x7f0a03ab

    .line 360
    .line 361
    .line 362
    if-eqz v3, :cond_17

    .line 363
    .line 364
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-lez v8, :cond_17

    .line 369
    .line 370
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    check-cast v8, Ljava/lang/CharSequence;

    .line 375
    .line 376
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-nez v8, :cond_17

    .line 381
    .line 382
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    check-cast v3, Ljava/lang/CharSequence;

    .line 387
    .line 388
    invoke-virtual {v13, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    if-eqz v1, :cond_15

    .line 392
    .line 393
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 394
    .line 395
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    const v3, 0x7f060575

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    invoke-virtual {v13, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 407
    .line 408
    .line 409
    goto :goto_a

    .line 410
    :cond_15
    if-eqz v6, :cond_16

    .line 411
    .line 412
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 413
    .line 414
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const v3, 0x7f060573

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    invoke-virtual {v13, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 426
    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_16
    iget-boolean v1, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->f:Z

    .line 430
    .line 431
    if-nez v1, :cond_18

    .line 432
    .line 433
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 434
    .line 435
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    const v3, 0x7f060574

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    invoke-virtual {v13, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 447
    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_17
    invoke-virtual {v13, v5, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 451
    .line 452
    .line 453
    :cond_18
    :goto_a
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 454
    .line 455
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 456
    .line 457
    .line 458
    move-result-wide v2

    .line 459
    invoke-static {v1, v2, v3}, Lf2/d;->b(Landroid/content/Context;J)Landroid/content/Intent;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    const v2, 0x7f0a03f7

    .line 464
    .line 465
    .line 466
    invoke-virtual {v13, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 467
    .line 468
    .line 469
    const v1, 0x7f0a0644

    .line 470
    .line 471
    .line 472
    if-eqz v7, :cond_19

    .line 473
    .line 474
    goto :goto_b

    .line 475
    :cond_19
    const/4 v9, 0x4

    .line 476
    :goto_b
    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 477
    .line 478
    .line 479
    const v1, 0x7f0a01e7

    .line 480
    .line 481
    .line 482
    invoke-virtual {v13, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v13, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v13, v14, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 489
    .line 490
    .line 491
    return-object v13

    .line 492
    :cond_1a
    :goto_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v5, "getViewAt(): position invalid: "

    .line 498
    .line 499
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-static {v3, v1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    return-object v2
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

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lf2/l;->f(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->f:Z

    .line 8
    .line 9
    return-void
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

.method public onDataSetChanged()V
    .locals 4

    .line 1
    const-string v0, "Cal:D:MonthWidgetServiceNew"

    .line 2
    .line 3
    const-string v1, "onDataSetChanged()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/util/Date;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lf2/l;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/util/Calendar;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->d:Ljava/util/Calendar;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->a:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->u(Landroid/content/Context;Ljava/util/Date;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_0
    iput v0, p0, Lcom/android/calendar/widget/MonthWidgetServiceNew$a;->c:I

    .line 45
    .line 46
    return-void
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
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
