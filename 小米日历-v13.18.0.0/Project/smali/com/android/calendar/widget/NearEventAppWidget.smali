.class public Lcom/android/calendar/widget/NearEventAppWidget;
.super Lcom/android/calendar/widget/base/a;
.source "NearEventAppWidget.java"


# static fields
.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/calendar/widget/NearEventAppWidget;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
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

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/base/a;-><init>()V

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

.method protected static r(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/android/calendar/widget/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/calendar/widget/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/calendar/widget/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/android/calendar/widget/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "events size#1 : "

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v1, "Cal:D:NearEventAppWidget"

    .line 28
    .line 29
    invoke-static {v1, p0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 p0, 0xca

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/calendar/widget/a;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    return-object v0
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

.method public static s(Landroid/content/Context;ILandroid/widget/RemoteViews;Lcom/android/calendar/widget/a$b;IIIIZ)V
    .locals 13

    .line 1
    move-object v8, p0

    .line 2
    move-object v9, p2

    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move/from16 v10, p4

    .line 6
    .line 7
    move/from16 v11, p6

    .line 8
    .line 9
    move/from16 v12, p7

    .line 10
    .line 11
    const-string v1, "Cal:D:NearEventAppWidget"

    .line 12
    .line 13
    const-string v2, "buildItem : "

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, v10, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 20
    .line 21
    .line 22
    iget v2, v0, Lcom/android/calendar/widget/a$b;->l:I

    .line 23
    .line 24
    const/16 v3, 0x1e

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Lcom/miui/calendar/util/x0;->p(IIZ)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move/from16 v2, p5

    .line 31
    .line 32
    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/calendar/widget/a$b;->f:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p2, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-wide v1, v0, Lcom/android/calendar/widget/a$b;->i:J

    .line 41
    .line 42
    iget-wide v3, v0, Lcom/android/calendar/widget/a$b;->j:J

    .line 43
    .line 44
    iget-boolean v5, v0, Lcom/android/calendar/widget/a$b;->k:Z

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    iget-object v5, v0, Lcom/android/calendar/widget/a$b;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    new-instance v6, Lcom/miui/calendar/util/r0;

    .line 58
    .line 59
    invoke-direct {v6}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {v6, v1, v2, v5}, Lcom/android/calendar/common/Utils;->e(Lcom/miui/calendar/util/r0;JLjava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-static {v6, v3, v4, v5}, Lcom/android/calendar/common/Utils;->e(Lcom/miui/calendar/util/r0;JLjava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v5, v0, Lcom/android/calendar/widget/a$b;->b:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p2, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    move-wide v5, v3

    .line 77
    move-wide v3, v1

    .line 78
    iget-wide v1, v0, Lcom/android/calendar/widget/a$b;->h:J

    .line 79
    .line 80
    iget v7, v0, Lcom/android/calendar/widget/a$b;->p:I

    .line 81
    .line 82
    move-object v0, p0

    .line 83
    invoke-static/range {v0 .. v7}, Lf2/d;->a(Landroid/content/Context;JJJI)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move v1, p1

    .line 88
    add-int/lit16 v1, v1, 0xbb9

    .line 89
    .line 90
    const/high16 v2, 0xc000000

    .line 91
    .line 92
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p2, v10, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 97
    .line 98
    .line 99
    if-nez p8, :cond_1

    .line 100
    .line 101
    const v0, 0x7f060580

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p2, v11, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 109
    .line 110
    .line 111
    const v0, 0x7f06057e

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p2, v12, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 119
    .line 120
    .line 121
    :cond_1
    return-void
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
.end method

.method private u(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lf2/d;->e(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0a02d2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lf2/d;->c(Landroid/content/Context;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/high16 v2, 0xc000000

    .line 17
    .line 18
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v0, 0x7f0a067e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a02a3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 32
    .line 33
    .line 34
    return-void
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

.method private v(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->M()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    const v7, 0x180008

    .line 19
    .line 20
    .line 21
    move-object v2, p1

    .line 22
    move-wide v3, v5

    .line 23
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f0a042c

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const v0, 0x7f060580

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0a067e

    .line 48
    .line 49
    .line 50
    const v1, 0x7f06057c

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    invoke-static {p1, p2, v0}, Lf2/c;->f(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 62
    .line 63
    .line 64
    :cond_0
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

.method private x(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "updateAppWidget id : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Cal:D:NearEventAppWidget"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/NearEventAppWidget;->w(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void
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


# virtual methods
.method protected e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/calendar/widget/base/BaseWidgetProvider;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/calendar/widget/NearEventAppWidget;

    .line 2
    .line 3
    return-object v0
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
.end method

.method protected k(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/widget/NearEventAppWidget;->x(Landroid/content/Context;I)V

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

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/base/BaseWidgetProvider;->d(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "onReceive action: "

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "Cal:D:NearEventAppWidget"

    .line 35
    .line 36
    invoke-static {v4, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "miui.intent.action.START_WEEK_DAY_CHANGED"

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string v2, "key_widget_first_day_of_week"

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "provider change firstWeek : "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v4, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v2, "preferences_key_widget_first_day_of_week"

    .line 80
    .line 81
    invoke-static {p1, v2, p2}, Lf2/k;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/calendar/widget/base/BaseWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/widget/base/BaseWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
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

.method public t(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/List;ILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/calendar/widget/a$b;",
            ">;I",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v11, p5

    .line 6
    .line 7
    sget-object v12, Lcom/android/calendar/widget/NearEventAppWidget;->c:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v12

    .line 10
    :try_start_0
    const-string v1, "Cal:D:NearEventAppWidget"

    .line 11
    .line 12
    const-string v2, "buildUpdate"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const v2, 0x7f0a067e

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v1, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v13, 0x4

    .line 41
    const v2, 0x7f0a067f

    .line 42
    .line 43
    .line 44
    const/4 v14, 0x2

    .line 45
    if-le v1, v14, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const v4, 0x7f100049

    .line 55
    .line 56
    .line 57
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    sub-int/2addr v5, v14

    .line 62
    const/4 v6, 0x1

    .line 63
    new-array v6, v6, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    sub-int/2addr v7, v14

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    aput-object v7, v6, v3

    .line 75
    .line 76
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Landroid/content/Intent;

    .line 84
    .line 85
    const-class v4, Lcom/android/calendar/homepage/AllInOneActivity;

    .line 86
    .line 87
    invoke-direct {v1, v10, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    const/high16 v4, 0x4000000

    .line 91
    .line 92
    invoke-static {v10, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v0, v2, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    .line 102
    .line 103
    :goto_1
    move v15, v3

    .line 104
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ge v15, v1, :cond_2

    .line 109
    .line 110
    move-object/from16 v9, p3

    .line 111
    .line 112
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    move-object v4, v1

    .line 117
    check-cast v4, Lcom/android/calendar/widget/a$b;

    .line 118
    .line 119
    invoke-virtual {v11, v15}, Landroid/util/SparseIntArray;->get(I)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    move-object/from16 v8, p8

    .line 124
    .line 125
    invoke-virtual {v8, v15}, Landroid/util/SparseIntArray;->get(I)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    move-object/from16 v7, p6

    .line 130
    .line 131
    invoke-virtual {v7, v15}, Landroid/util/SparseIntArray;->get(I)I

    .line 132
    .line 133
    .line 134
    move-result v16

    .line 135
    move-object/from16 v3, p7

    .line 136
    .line 137
    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->get(I)I

    .line 138
    .line 139
    .line 140
    move-result v17

    .line 141
    move-object/from16 v2, p0

    .line 142
    .line 143
    iget-boolean v1, v2, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 144
    .line 145
    move/from16 v18, v1

    .line 146
    .line 147
    move-object/from16 v1, p2

    .line 148
    .line 149
    move v2, v15

    .line 150
    move-object/from16 v3, p1

    .line 151
    .line 152
    move/from16 v7, v16

    .line 153
    .line 154
    move/from16 v8, v17

    .line 155
    .line 156
    move/from16 v9, v18

    .line 157
    .line 158
    invoke-static/range {v1 .. v9}, Lcom/android/calendar/widget/NearEventAppWidget;->s(Landroid/content/Context;ILandroid/widget/RemoteViews;Lcom/android/calendar/widget/a$b;IIIIZ)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v15, v15, 0x1

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    :goto_3
    if-ge v1, v14, :cond_3

    .line 169
    .line 170
    invoke-virtual {v11, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v0, v2, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_3
    monitor-exit v12

    .line 181
    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    throw v0
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
.end method

.method public w(Landroid/content/Context;I)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v2, Landroid/widget/RemoteViews;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v3, 0x7f0d01ab

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 18
    .line 19
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/calendar/widget/base/a;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, v2}, Lcom/android/calendar/widget/NearEventAppWidget;->v(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, v2}, Lcom/android/calendar/widget/NearEventAppWidget;->u(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 26
    .line 27
    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v3, 0x1f

    .line 31
    .line 32
    if-lt v1, v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/calendar/widget/base/a;->q(Landroid/widget/RemoteViews;Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/calendar/widget/base/a;->p(Landroid/widget/RemoteViews;Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    new-instance v6, Landroid/util/SparseIntArray;

    .line 42
    .line 43
    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v7, Landroid/util/SparseIntArray;

    .line 47
    .line 48
    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v8, Landroid/util/SparseIntArray;

    .line 52
    .line 53
    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v9, Landroid/util/SparseIntArray;

    .line 57
    .line 58
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 59
    .line 60
    .line 61
    const v1, 0x7f0a042d

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v6, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 66
    .line 67
    .line 68
    const v1, 0x7f0a042e

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    invoke-virtual {v6, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 73
    .line 74
    .line 75
    const v1, 0x7f0a0693

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 79
    .line 80
    .line 81
    const v1, 0x7f0a0694

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 85
    .line 86
    .line 87
    const v1, 0x7f0a068f

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 91
    .line 92
    .line 93
    const v1, 0x7f0a0690

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 97
    .line 98
    .line 99
    const v1, 0x7f0a018e

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 103
    .line 104
    .line 105
    const v1, 0x7f0a018f

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {p1, v1, v3}, Lf2/j;->m(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {p1, v1, v3}, Lcom/android/calendar/widget/NearEventAppWidget;->r(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/android/calendar/widget/a;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v4, v1, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 128
    .line 129
    move-object v1, p0

    .line 130
    move-object v3, p1

    .line 131
    move v5, p2

    .line 132
    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/widget/NearEventAppWidget;->t(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/List;ILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string v1, "Cal:D:NearEventAppWidget"

    .line 137
    .line 138
    const-string v2, "loadEvents end#1"

    .line 139
    .line 140
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 144
    .line 145
    .line 146
    const-string p1, "loadEvents end#2"

    .line 147
    .line 148
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void
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
