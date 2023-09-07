.class public Lcom/android/calendar/datecalculate/DateCalculateResultActivity;
.super Lcom/android/calendar/common/b;
.source "DateCalculateResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private D:Landroid/widget/TextView;

.field private E:I

.field public F:I

.field private G:I

.field private H:Landroid/content/Context;

.field private b:Ljava/util/Calendar;

.field private c:Ljava/util/Calendar;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->E:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->F:I

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

.method private Y()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->c:Ljava/util/Calendar;

    .line 4
    .line 5
    const-string v2, "Cal:D:DateCalculateResultActivity"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "dateCalculate(): mDateCalculate INVALID"

    .line 10
    .line 11
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget v3, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->G:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    iget v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->E:I

    .line 28
    .line 29
    iget-object v3, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v5, v6, v0, v3}, Lcom/miui/calendar/util/s0;->e(JII)Ljava/util/Calendar;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-ne v3, v4, :cond_2

    .line 43
    .line 44
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 45
    .line 46
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "dateCalculate(): mDesiredDay = "

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v3, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 88
    .line 89
    const/4 v11, 0x5

    .line 90
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    const/4 v9, 0x1

    .line 95
    const/4 v10, 0x0

    .line 96
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/common/Utils;->Q(Landroid/content/Context;IIIZZ)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->e:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 103
    .line 104
    iget-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 105
    .line 106
    invoke-static {v0, v5}, La4/d;->l(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->g:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/miui/calendar/util/y;->q(Landroid/content/Context;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const-string v5, ""

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static/range {p0 .. p0}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_3

    .line 134
    .line 135
    const v7, 0x7f120306

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    const v7, 0x7f120305

    .line 140
    .line 141
    .line 142
    :goto_1
    new-array v8, v3, [Ljava/lang/Object;

    .line 143
    .line 144
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 145
    .line 146
    invoke-static {v9}, La4/d;->g(Ljava/util/Calendar;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    aput-object v9, v8, v6

    .line 151
    .line 152
    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->f:Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    iput-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->f:Ljava/lang/String;

    .line 160
    .line 161
    :goto_2
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/miui/calendar/util/y;->p(Landroid/content/Context;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 170
    .line 171
    invoke-static {v0}, La4/d;->a(Ljava/util/Calendar;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->k:Ljava/lang/String;

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_5
    iput-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->k:Ljava/lang/String;

    .line 179
    .line 180
    :goto_3
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/miui/calendar/util/y;->t(Landroid/content/Context;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 189
    .line 190
    iget-object v7, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 191
    .line 192
    invoke-static {v0, v7}, Lcom/android/calendar/common/Utils;->v(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->h:Ljava/lang/String;

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_6
    iput-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->h:Ljava/lang/String;

    .line 200
    .line 201
    :goto_4
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/miui/calendar/util/y;->s(Landroid/content/Context;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 210
    .line 211
    iget-object v7, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 212
    .line 213
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 214
    .line 215
    .line 216
    move-result-wide v7

    .line 217
    invoke-static {v0, v7, v8}, Lz3/f;->a(Landroid/content/Context;J)Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->i:Ljava/util/ArrayList;

    .line 222
    .line 223
    :cond_7
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->i:Ljava/util/ArrayList;

    .line 224
    .line 225
    if-nez v0, :cond_8

    .line 226
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->i:Ljava/util/ArrayList;

    .line 233
    .line 234
    :cond_8
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 235
    .line 236
    invoke-static {v0}, Lcom/miui/calendar/util/y;->r(Landroid/content/Context;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_9

    .line 241
    .line 242
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 245
    .line 246
    .line 247
    move-result-wide v7

    .line 248
    invoke-static {v7, v8}, Lz3/f;->d(J)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->j:Ljava/lang/String;

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_9
    iput-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->j:Ljava/lang/String;

    .line 256
    .line 257
    :goto_5
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 258
    .line 259
    invoke-static {v0}, La4/d;->t(Landroid/content/Context;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_a

    .line 264
    .line 265
    :try_start_0
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v7

    .line 271
    invoke-static {v7, v8}, La4/d;->f(J)[Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_b

    .line 276
    .line 277
    array-length v7, v0

    .line 278
    if-ne v7, v4, :cond_b

    .line 279
    .line 280
    aget-object v7, v0, v6

    .line 281
    .line 282
    iput-object v7, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->l:Ljava/lang/String;

    .line 283
    .line 284
    aget-object v0, v0, v3

    .line 285
    .line 286
    iput-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v7, "dateCalculate()"

    .line 291
    .line 292
    invoke-static {v2, v7, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_a
    iput-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->l:Ljava/lang/String;

    .line 297
    .line 298
    iput-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->m:Ljava/lang/String;

    .line 299
    .line 300
    :cond_b
    :goto_6
    iget v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->G:I

    .line 301
    .line 302
    const-string v2, "%s %s"

    .line 303
    .line 304
    const/16 v7, 0x400

    .line 305
    .line 306
    const v8, 0x7f120157

    .line 307
    .line 308
    .line 309
    if-nez v0, :cond_e

    .line 310
    .line 311
    iget-object v12, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 312
    .line 313
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->c:Ljava/util/Calendar;

    .line 314
    .line 315
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 316
    .line 317
    .line 318
    move-result v13

    .line 319
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->c:Ljava/util/Calendar;

    .line 320
    .line 321
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 322
    .line 323
    .line 324
    move-result v14

    .line 325
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->c:Ljava/util/Calendar;

    .line 326
    .line 327
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    const/16 v16, 0x1

    .line 332
    .line 333
    const/16 v17, 0x0

    .line 334
    .line 335
    invoke-static/range {v12 .. v17}, Lcom/android/calendar/common/Utils;->Q(Landroid/content/Context;IIIZZ)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iget-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->c:Ljava/util/Calendar;

    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 342
    .line 343
    .line 344
    move-result-wide v9

    .line 345
    invoke-static {v9, v10}, Lcom/miui/calendar/util/s0;->z(J)Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-eqz v5, :cond_c

    .line 350
    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    :cond_c
    move-object v5, v0

    .line 377
    iget v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->E:I

    .line 378
    .line 379
    if-nez v0, :cond_d

    .line 380
    .line 381
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 382
    .line 383
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    const v8, 0x7f100036

    .line 388
    .line 389
    .line 390
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->d:Ljava/lang/String;

    .line 391
    .line 392
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    new-array v10, v3, [Ljava/lang/Object;

    .line 397
    .line 398
    iget-object v11, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->d:Ljava/lang/String;

    .line 399
    .line 400
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result v11

    .line 404
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    aput-object v11, v10, v6

    .line 409
    .line 410
    invoke-virtual {v0, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    goto :goto_7

    .line 415
    :cond_d
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 416
    .line 417
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const v8, 0x7f100037

    .line 422
    .line 423
    .line 424
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->d:Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v9

    .line 430
    new-array v10, v3, [Ljava/lang/Object;

    .line 431
    .line 432
    iget-object v11, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->d:Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v11

    .line 442
    aput-object v11, v10, v6

    .line 443
    .line 444
    invoke-virtual {v0, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    :goto_7
    iget-object v8, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->n:Landroid/widget/TextView;

    .line 449
    .line 450
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->e:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    .line 454
    .line 455
    iget-object v8, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->o:Landroid/widget/TextView;

    .line 456
    .line 457
    new-array v4, v4, [Ljava/lang/Object;

    .line 458
    .line 459
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->f:Ljava/lang/String;

    .line 460
    .line 461
    aput-object v9, v4, v6

    .line 462
    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 464
    .line 465
    .line 466
    move-result-object v9

    .line 467
    iget-object v10, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 468
    .line 469
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 470
    .line 471
    .line 472
    move-result-wide v10

    .line 473
    invoke-static {v9, v10, v11, v7}, Lmiuix/pickerwidget/date/b;->a(Landroid/content/Context;JI)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    aput-object v7, v4, v3

    .line 478
    .line 479
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    .line 485
    .line 486
    goto/16 :goto_c

    .line 487
    .line 488
    :cond_e
    if-ne v0, v4, :cond_14

    .line 489
    .line 490
    iget v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->F:I

    .line 491
    .line 492
    if-nez v0, :cond_11

    .line 493
    .line 494
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 497
    .line 498
    .line 499
    move-result-wide v9

    .line 500
    invoke-static {v9, v10}, Lcom/miui/calendar/util/s0;->z(J)Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_f

    .line 505
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .line 510
    .line 511
    iget-object v2, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->e:Ljava/lang/String;

    .line 512
    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    iget-object v2, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 517
    .line 518
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    goto :goto_8

    .line 534
    :cond_f
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->e:Ljava/lang/String;

    .line 535
    .line 536
    :goto_8
    move-object v5, v0

    .line 537
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 538
    .line 539
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-static/range {p0 .. p0}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    if-eqz v2, :cond_10

    .line 548
    .line 549
    const v2, 0x7f1205c1

    .line 550
    .line 551
    .line 552
    goto :goto_9

    .line 553
    :cond_10
    const v2, 0x7f1205c0

    .line 554
    .line 555
    .line 556
    :goto_9
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iget-object v2, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->n:Landroid/widget/TextView;

    .line 561
    .line 562
    iget-object v8, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->f:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    .line 566
    .line 567
    iget-object v2, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->o:Landroid/widget/TextView;

    .line 568
    .line 569
    new-array v4, v4, [Ljava/lang/Object;

    .line 570
    .line 571
    iget-object v8, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->e:Ljava/lang/String;

    .line 572
    .line 573
    aput-object v8, v4, v6

    .line 574
    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 576
    .line 577
    .line 578
    move-result-object v8

    .line 579
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 580
    .line 581
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 582
    .line 583
    .line 584
    move-result-wide v9

    .line 585
    invoke-static {v8, v9, v10, v7}, Lmiuix/pickerwidget/date/b;->a(Landroid/content/Context;JI)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    aput-object v7, v4, v3

    .line 590
    .line 591
    const-string v3, "%s%s"

    .line 592
    .line 593
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .line 599
    .line 600
    goto :goto_c

    .line 601
    :cond_11
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 602
    .line 603
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 604
    .line 605
    .line 606
    move-result-wide v9

    .line 607
    invoke-static {v9, v10}, Lcom/miui/calendar/util/s0;->z(J)Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-eqz v0, :cond_12

    .line 612
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    iget-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->f:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    iget-object v5, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 624
    .line 625
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    goto :goto_a

    .line 641
    :cond_12
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->f:Ljava/lang/String;

    .line 642
    .line 643
    :goto_a
    move-object v5, v0

    .line 644
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 645
    .line 646
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-static/range {p0 .. p0}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 651
    .line 652
    .line 653
    move-result v8

    .line 654
    if-eqz v8, :cond_13

    .line 655
    .line 656
    const v8, 0x7f120316

    .line 657
    .line 658
    .line 659
    goto :goto_b

    .line 660
    :cond_13
    const v8, 0x7f120315

    .line 661
    .line 662
    .line 663
    :goto_b
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    iget-object v8, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->n:Landroid/widget/TextView;

    .line 668
    .line 669
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->e:Ljava/lang/String;

    .line 670
    .line 671
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    .line 673
    .line 674
    iget-object v8, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->o:Landroid/widget/TextView;

    .line 675
    .line 676
    new-array v4, v4, [Ljava/lang/Object;

    .line 677
    .line 678
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->f:Ljava/lang/String;

    .line 679
    .line 680
    aput-object v9, v4, v6

    .line 681
    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 683
    .line 684
    .line 685
    move-result-object v9

    .line 686
    iget-object v10, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 687
    .line 688
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 689
    .line 690
    .line 691
    move-result-wide v10

    .line 692
    invoke-static {v9, v10, v11, v7}, Lmiuix/pickerwidget/date/b;->a(Landroid/content/Context;JI)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v7

    .line 696
    aput-object v7, v4, v3

    .line 697
    .line 698
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    .line 704
    .line 705
    goto :goto_c

    .line 706
    :cond_14
    move-object v0, v5

    .line 707
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/m;->J()Lmiuix/appcompat/app/a;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    if-eqz v2, :cond_15

    .line 712
    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v4, " "

    .line 722
    .line 723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/a;->z(Ljava/lang/CharSequence;)V

    .line 734
    .line 735
    .line 736
    :cond_15
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->g:Ljava/lang/String;

    .line 737
    .line 738
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    const/16 v2, 0x8

    .line 743
    .line 744
    if-eqz v0, :cond_16

    .line 745
    .line 746
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->h:Ljava/lang/String;

    .line 747
    .line 748
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    if-eqz v0, :cond_16

    .line 753
    .line 754
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->i:Ljava/util/ArrayList;

    .line 755
    .line 756
    if-eqz v0, :cond_16

    .line 757
    .line 758
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 759
    .line 760
    .line 761
    move-result v0

    .line 762
    if-nez v0, :cond_16

    .line 763
    .line 764
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->j:Ljava/lang/String;

    .line 765
    .line 766
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    if-eqz v0, :cond_16

    .line 771
    .line 772
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->k:Ljava/lang/String;

    .line 773
    .line 774
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 775
    .line 776
    .line 777
    move-result v0

    .line 778
    if-eqz v0, :cond_16

    .line 779
    .line 780
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->p:Landroid/widget/TextView;

    .line 781
    .line 782
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 783
    .line 784
    .line 785
    goto :goto_d

    .line 786
    :cond_16
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->p:Landroid/widget/TextView;

    .line 787
    .line 788
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 789
    .line 790
    .line 791
    iget-object v7, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 792
    .line 793
    iget-object v8, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->p:Landroid/widget/TextView;

    .line 794
    .line 795
    iget-object v9, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->g:Ljava/lang/String;

    .line 796
    .line 797
    iget-object v10, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->h:Ljava/lang/String;

    .line 798
    .line 799
    iget-object v11, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->i:Ljava/util/ArrayList;

    .line 800
    .line 801
    iget-object v12, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->k:Ljava/lang/String;

    .line 802
    .line 803
    iget-object v13, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->j:Ljava/lang/String;

    .line 804
    .line 805
    iget-object v14, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 806
    .line 807
    invoke-static/range {v7 .. v14}, Lcom/android/calendar/common/Utils;->b(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 808
    .line 809
    .line 810
    :goto_d
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->l:Ljava/lang/String;

    .line 811
    .line 812
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 813
    .line 814
    .line 815
    move-result v0

    .line 816
    if-eqz v0, :cond_17

    .line 817
    .line 818
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->w:Landroid/view/View;

    .line 819
    .line 820
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 821
    .line 822
    .line 823
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->x:Landroid/view/View;

    .line 824
    .line 825
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 826
    .line 827
    .line 828
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->y:Landroid/view/View;

    .line 829
    .line 830
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 831
    .line 832
    .line 833
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->q:Landroid/view/View;

    .line 834
    .line 835
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 836
    .line 837
    .line 838
    goto :goto_e

    .line 839
    :cond_17
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->w:Landroid/view/View;

    .line 840
    .line 841
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 842
    .line 843
    .line 844
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->x:Landroid/view/View;

    .line 845
    .line 846
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 847
    .line 848
    .line 849
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->y:Landroid/view/View;

    .line 850
    .line 851
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 852
    .line 853
    .line 854
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->q:Landroid/view/View;

    .line 855
    .line 856
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 857
    .line 858
    .line 859
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->r:Landroid/widget/TextView;

    .line 860
    .line 861
    iget-object v2, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->l:Ljava/lang/String;

    .line 862
    .line 863
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    .line 865
    .line 866
    iget-object v0, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->v:Landroid/widget/TextView;

    .line 867
    .line 868
    iget-object v2, v1, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->m:Ljava/lang/String;

    .line 869
    .line 870
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    .line 872
    .line 873
    :goto_e
    return-void
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
.end method

.method private Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "date_calculate"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Calendar;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->c:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "direction"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->E:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "days"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "date_type"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->F:I

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "extra_key_calculate_type"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->G:I

    .line 63
    .line 64
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
.end method

.method private a0()V
    .locals 2

    .line 1
    const v0, 0x7f0a0570

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->n:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a03b0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->o:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a02e8

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->p:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a02f8

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->w:Landroid/view/View;

    .line 42
    .line 43
    const v0, 0x7f0a02ff

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->x:Landroid/view/View;

    .line 51
    .line 52
    const v0, 0x7f0a02fa

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->y:Landroid/view/View;

    .line 60
    .line 61
    const v0, 0x7f0a02fb

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->q:Landroid/view/View;

    .line 69
    .line 70
    const v0, 0x7f0a02fc

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->r:Landroid/widget/TextView;

    .line 80
    .line 81
    const v0, 0x7f0a02f9

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->v:Landroid/widget/TextView;

    .line 91
    .line 92
    const v0, 0x7f0a06be

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/TextView;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->z:Landroid/widget/TextView;

    .line 102
    .line 103
    const v0, 0x7f0a007b

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->D:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->z:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->z:Landroid/widget/TextView;

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1}, Lcom/miui/calendar/util/v;->f(Landroid/view/View;Z)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->D:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->D:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-static {v0, v1}, Lcom/miui/calendar/util/v;->f(Landroid/view/View;Z)V

    .line 133
    .line 134
    .line 135
    return-void
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

.method private b0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    const-wide/32 v0, 0x1b77400

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/calendar/common/Utils;->y0(Landroid/content/Context;JIZ)V

    .line 27
    .line 28
    .line 29
    return-void
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
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a007b

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const v0, 0x7f0a06be

    .line 11
    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->b:Ljava/util/Calendar;

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/android/calendar/common/Utils;->j(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "Cal:D:DateCalculateResultActivity"

    .line 2
    .line 3
    const-string v1, "onCreate()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0}, Lpc/c;->o(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0d002b

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 22
    .line 23
    .line 24
    iput-object p0, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->H:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->Z()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->a0()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->Y()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/common/b;->X()V

    .line 36
    .line 37
    .line 38
    return-void
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

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lpc/c;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
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

.method public onEventMainThread(Lcom/miui/calendar/util/g$n;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget p1, p0, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->G:I

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/datecalculate/DateCalculateResultActivity;->Y()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onPause()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:DateCalculateResultActivity"

    .line 2
    .line 3
    const-string v1, "onPause()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
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

.method protected onResume()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:DateCalculateResultActivity"

    .line 2
    .line 3
    const-string v1, "onResume()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/android/calendar/common/b;->onResume()V

    .line 9
    .line 10
    .line 11
    return-void
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
