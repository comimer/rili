.class Landroidx/core/app/t;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Notification$Builder;

.field private final c:Landroidx/core/app/l$c;

.field private d:Landroid/widget/RemoteViews;

.field private e:Landroid/widget/RemoteViews;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Bundle;

.field private h:I

.field private i:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/l$c;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/app/t;->f:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/core/app/t;->g:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/core/app/t;->c:Landroidx/core/app/l$c;

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/core/app/l$c;->a:Landroid/content/Context;

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/core/app/t;->a:Landroid/content/Context;

    .line 23
    .line 24
    new-instance v0, Landroid/app/Notification$Builder;

    .line 25
    .line 26
    iget-object v1, p1, Landroidx/core/app/l$c;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v2, p1, Landroidx/core/app/l$c;->J:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 34
    .line 35
    iget-object v1, p1, Landroidx/core/app/l$c;->Q:Landroid/app/Notification;

    .line 36
    .line 37
    iget-wide v2, v1, Landroid/app/Notification;->when:J

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget v3, v1, Landroid/app/Notification;->icon:I

    .line 44
    .line 45
    iget v4, v1, Landroid/app/Notification;->iconLevel:I

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 58
    .line 59
    iget-object v4, p1, Landroidx/core/app/l$c;->i:Landroid/widget/RemoteViews;

    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v3, v1, Landroid/app/Notification;->ledARGB:I

    .line 72
    .line 73
    iget v4, v1, Landroid/app/Notification;->ledOnMS:I

    .line 74
    .line 75
    iget v5, v1, Landroid/app/Notification;->ledOffMS:I

    .line 76
    .line 77
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget v3, v1, Landroid/app/Notification;->flags:I

    .line 82
    .line 83
    const/4 v4, 0x2

    .line 84
    and-int/2addr v3, v4

    .line 85
    const/4 v5, 0x1

    .line 86
    const/4 v6, 0x0

    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    move v3, v5

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v3, v6

    .line 92
    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v3, v1, Landroid/app/Notification;->flags:I

    .line 97
    .line 98
    and-int/lit8 v3, v3, 0x8

    .line 99
    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    move v3, v5

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    move v3, v6

    .line 105
    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget v3, v1, Landroid/app/Notification;->flags:I

    .line 110
    .line 111
    and-int/lit8 v3, v3, 0x10

    .line 112
    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    move v3, v5

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    move v3, v6

    .line 118
    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget v3, v1, Landroid/app/Notification;->defaults:I

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v3, p1, Landroidx/core/app/l$c;->e:Ljava/lang/CharSequence;

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-object v3, p1, Landroidx/core/app/l$c;->f:Ljava/lang/CharSequence;

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget-object v3, p1, Landroidx/core/app/l$c;->k:Ljava/lang/CharSequence;

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v3, p1, Landroidx/core/app/l$c;->g:Landroid/app/PendingIntent;

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iget-object v3, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v3, p1, Landroidx/core/app/l$c;->h:Landroid/app/PendingIntent;

    .line 159
    .line 160
    iget v7, v1, Landroid/app/Notification;->flags:I

    .line 161
    .line 162
    and-int/lit16 v7, v7, 0x80

    .line 163
    .line 164
    if-eqz v7, :cond_3

    .line 165
    .line 166
    move v7, v5

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    move v7, v6

    .line 169
    :goto_3
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iget-object v3, p1, Landroidx/core/app/l$c;->j:Landroid/graphics/Bitmap;

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget v3, p1, Landroidx/core/app/l$c;->l:I

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget v3, p1, Landroidx/core/app/l$c;->s:I

    .line 186
    .line 187
    iget v7, p1, Landroidx/core/app/l$c;->t:I

    .line 188
    .line 189
    iget-boolean v8, p1, Landroidx/core/app/l$c;->u:Z

    .line 190
    .line 191
    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 192
    .line 193
    .line 194
    iget-object v2, p1, Landroidx/core/app/l$c;->p:Ljava/lang/CharSequence;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-boolean v2, p1, Landroidx/core/app/l$c;->o:Z

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget v2, p1, Landroidx/core/app/l$c;->m:I

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 209
    .line 210
    .line 211
    iget-object v0, p1, Landroidx/core/app/l$c;->b:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_4

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Landroidx/core/app/l$a;

    .line 228
    .line 229
    invoke-direct {p0, v2}, Landroidx/core/app/t;->a(Landroidx/core/app/l$a;)V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_4
    iget-object v0, p1, Landroidx/core/app/l$c;->C:Landroid/os/Bundle;

    .line 234
    .line 235
    if-eqz v0, :cond_5

    .line 236
    .line 237
    iget-object v2, p0, Landroidx/core/app/t;->g:Landroid/os/Bundle;

    .line 238
    .line 239
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 243
    .line 244
    iget-object v2, p1, Landroidx/core/app/l$c;->G:Landroid/widget/RemoteViews;

    .line 245
    .line 246
    iput-object v2, p0, Landroidx/core/app/t;->d:Landroid/widget/RemoteViews;

    .line 247
    .line 248
    iget-object v2, p1, Landroidx/core/app/l$c;->H:Landroid/widget/RemoteViews;

    .line 249
    .line 250
    iput-object v2, p0, Landroidx/core/app/t;->e:Landroid/widget/RemoteViews;

    .line 251
    .line 252
    iget-object v2, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 253
    .line 254
    iget-boolean v3, p1, Landroidx/core/app/l$c;->n:Z

    .line 255
    .line 256
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 257
    .line 258
    .line 259
    iget-object v2, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 260
    .line 261
    iget-boolean v3, p1, Landroidx/core/app/l$c;->y:Z

    .line 262
    .line 263
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    iget-object v3, p1, Landroidx/core/app/l$c;->v:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    iget-boolean v3, p1, Landroidx/core/app/l$c;->w:Z

    .line 274
    .line 275
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    iget-object v3, p1, Landroidx/core/app/l$c;->x:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 282
    .line 283
    .line 284
    iget v2, p1, Landroidx/core/app/l$c;->N:I

    .line 285
    .line 286
    iput v2, p0, Landroidx/core/app/t;->h:I

    .line 287
    .line 288
    iget-object v2, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 289
    .line 290
    iget-object v3, p1, Landroidx/core/app/l$c;->B:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    iget v3, p1, Landroidx/core/app/l$c;->D:I

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    iget v3, p1, Landroidx/core/app/l$c;->E:I

    .line 303
    .line 304
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    iget-object v3, p1, Landroidx/core/app/l$c;->F:Landroid/app/Notification;

    .line 309
    .line 310
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    iget-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 315
    .line 316
    iget-object v7, v1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 317
    .line 318
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 319
    .line 320
    .line 321
    const/16 v2, 0x1c

    .line 322
    .line 323
    if-ge v0, v2, :cond_6

    .line 324
    .line 325
    iget-object v0, p1, Landroidx/core/app/l$c;->c:Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-static {v0}, Landroidx/core/app/t;->e(Ljava/util/List;)Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iget-object v3, p1, Landroidx/core/app/l$c;->T:Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-static {v0, v3}, Landroidx/core/app/t;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    goto :goto_5

    .line 338
    :cond_6
    iget-object v0, p1, Landroidx/core/app/l$c;->T:Ljava/util/ArrayList;

    .line 339
    .line 340
    :goto_5
    if-eqz v0, :cond_7

    .line 341
    .line 342
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-nez v3, :cond_7

    .line 347
    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_7

    .line 357
    .line 358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    check-cast v3, Ljava/lang/String;

    .line 363
    .line 364
    iget-object v7, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 365
    .line 366
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_7
    iget-object v0, p1, Landroidx/core/app/l$c;->I:Landroid/widget/RemoteViews;

    .line 371
    .line 372
    iput-object v0, p0, Landroidx/core/app/t;->i:Landroid/widget/RemoteViews;

    .line 373
    .line 374
    iget-object v0, p1, Landroidx/core/app/l$c;->d:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-lez v0, :cond_a

    .line 381
    .line 382
    invoke-virtual {p1}, Landroidx/core/app/l$c;->b()Landroid/os/Bundle;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    const-string v3, "android.car.EXTENSIONS"

    .line 387
    .line 388
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-nez v0, :cond_8

    .line 393
    .line 394
    new-instance v0, Landroid/os/Bundle;

    .line 395
    .line 396
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .line 398
    .line 399
    :cond_8
    new-instance v7, Landroid/os/Bundle;

    .line 400
    .line 401
    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 402
    .line 403
    .line 404
    new-instance v8, Landroid/os/Bundle;

    .line 405
    .line 406
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 407
    .line 408
    .line 409
    move v9, v6

    .line 410
    :goto_7
    iget-object v10, p1, Landroidx/core/app/l$c;->d:Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    if-ge v9, v10, :cond_9

    .line 417
    .line 418
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v10

    .line 422
    iget-object v11, p1, Landroidx/core/app/l$c;->d:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    check-cast v11, Landroidx/core/app/l$a;

    .line 429
    .line 430
    invoke-static {v11}, Landroidx/core/app/u;->a(Landroidx/core/app/l$a;)Landroid/os/Bundle;

    .line 431
    .line 432
    .line 433
    move-result-object v11

    .line 434
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 435
    .line 436
    .line 437
    add-int/lit8 v9, v9, 0x1

    .line 438
    .line 439
    goto :goto_7

    .line 440
    :cond_9
    const-string v9, "invisible_actions"

    .line 441
    .line 442
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1}, Landroidx/core/app/l$c;->b()Landroid/os/Bundle;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    invoke-virtual {v8, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 453
    .line 454
    .line 455
    iget-object v0, p0, Landroidx/core/app/t;->g:Landroid/os/Bundle;

    .line 456
    .line 457
    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 458
    .line 459
    .line 460
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 461
    .line 462
    iget-object v3, p1, Landroidx/core/app/l$c;->S:Landroid/graphics/drawable/Icon;

    .line 463
    .line 464
    if-eqz v3, :cond_b

    .line 465
    .line 466
    iget-object v7, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 467
    .line 468
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 469
    .line 470
    .line 471
    :cond_b
    iget-object v3, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 472
    .line 473
    iget-object v7, p1, Landroidx/core/app/l$c;->C:Landroid/os/Bundle;

    .line 474
    .line 475
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    iget-object v7, p1, Landroidx/core/app/l$c;->r:[Ljava/lang/CharSequence;

    .line 480
    .line 481
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 482
    .line 483
    .line 484
    iget-object v3, p1, Landroidx/core/app/l$c;->G:Landroid/widget/RemoteViews;

    .line 485
    .line 486
    if-eqz v3, :cond_c

    .line 487
    .line 488
    iget-object v7, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 489
    .line 490
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 491
    .line 492
    .line 493
    :cond_c
    iget-object v3, p1, Landroidx/core/app/l$c;->H:Landroid/widget/RemoteViews;

    .line 494
    .line 495
    if-eqz v3, :cond_d

    .line 496
    .line 497
    iget-object v7, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 498
    .line 499
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 500
    .line 501
    .line 502
    :cond_d
    iget-object v3, p1, Landroidx/core/app/l$c;->I:Landroid/widget/RemoteViews;

    .line 503
    .line 504
    if-eqz v3, :cond_e

    .line 505
    .line 506
    iget-object v7, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 507
    .line 508
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 509
    .line 510
    .line 511
    :cond_e
    iget-object v3, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 512
    .line 513
    iget v7, p1, Landroidx/core/app/l$c;->K:I

    .line 514
    .line 515
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    iget-object v7, p1, Landroidx/core/app/l$c;->q:Ljava/lang/CharSequence;

    .line 520
    .line 521
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    iget-object v7, p1, Landroidx/core/app/l$c;->L:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    iget-wide v7, p1, Landroidx/core/app/l$c;->M:J

    .line 532
    .line 533
    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    iget v7, p1, Landroidx/core/app/l$c;->N:I

    .line 538
    .line 539
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 540
    .line 541
    .line 542
    iget-boolean v3, p1, Landroidx/core/app/l$c;->A:Z

    .line 543
    .line 544
    if-eqz v3, :cond_f

    .line 545
    .line 546
    iget-object v3, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 547
    .line 548
    iget-boolean v7, p1, Landroidx/core/app/l$c;->z:Z

    .line 549
    .line 550
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 551
    .line 552
    .line 553
    :cond_f
    iget-object v3, p1, Landroidx/core/app/l$c;->J:Ljava/lang/String;

    .line 554
    .line 555
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    const/4 v7, 0x0

    .line 560
    if-nez v3, :cond_10

    .line 561
    .line 562
    iget-object v3, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 563
    .line 564
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-virtual {v3, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 577
    .line 578
    .line 579
    :cond_10
    if-lt v0, v2, :cond_11

    .line 580
    .line 581
    iget-object v0, p1, Landroidx/core/app/l$c;->c:Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_11

    .line 592
    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Landroidx/core/app/w;

    .line 598
    .line 599
    iget-object v3, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 600
    .line 601
    invoke-virtual {v2}, Landroidx/core/app/w;->h()Landroid/app/Person;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-static {v3, v2}, Landroidx/core/app/m;->a(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 606
    .line 607
    .line 608
    goto :goto_8

    .line 609
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 610
    .line 611
    const/16 v2, 0x1d

    .line 612
    .line 613
    if-lt v0, v2, :cond_12

    .line 614
    .line 615
    iget-object v2, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 616
    .line 617
    iget-boolean v3, p1, Landroidx/core/app/l$c;->P:Z

    .line 618
    .line 619
    invoke-static {v2, v3}, Landroidx/core/app/n;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 620
    .line 621
    .line 622
    iget-object v2, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 623
    .line 624
    invoke-static {v7}, Landroidx/core/app/l$b;->a(Landroidx/core/app/l$b;)Landroid/app/Notification$BubbleMetadata;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-static {v2, v3}, Landroidx/core/app/o;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 629
    .line 630
    .line 631
    :cond_12
    const/16 v2, 0x1f

    .line 632
    .line 633
    if-lt v0, v2, :cond_13

    .line 634
    .line 635
    iget v0, p1, Landroidx/core/app/l$c;->O:I

    .line 636
    .line 637
    if-eqz v0, :cond_13

    .line 638
    .line 639
    iget-object v2, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 640
    .line 641
    invoke-static {v2, v0}, Landroidx/core/app/p;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 642
    .line 643
    .line 644
    :cond_13
    iget-boolean p1, p1, Landroidx/core/app/l$c;->R:Z

    .line 645
    .line 646
    if-eqz p1, :cond_16

    .line 647
    .line 648
    iget-object p1, p0, Landroidx/core/app/t;->c:Landroidx/core/app/l$c;

    .line 649
    .line 650
    iget-boolean p1, p1, Landroidx/core/app/l$c;->w:Z

    .line 651
    .line 652
    if-eqz p1, :cond_14

    .line 653
    .line 654
    iput v4, p0, Landroidx/core/app/t;->h:I

    .line 655
    .line 656
    goto :goto_9

    .line 657
    :cond_14
    iput v5, p0, Landroidx/core/app/t;->h:I

    .line 658
    .line 659
    :goto_9
    iget-object p1, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 660
    .line 661
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 662
    .line 663
    .line 664
    iget-object p1, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 665
    .line 666
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 667
    .line 668
    .line 669
    iget p1, v1, Landroid/app/Notification;->defaults:I

    .line 670
    .line 671
    and-int/lit8 p1, p1, -0x2

    .line 672
    .line 673
    and-int/lit8 p1, p1, -0x3

    .line 674
    .line 675
    iput p1, v1, Landroid/app/Notification;->defaults:I

    .line 676
    .line 677
    iget-object v0, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 678
    .line 679
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 680
    .line 681
    .line 682
    iget-object p1, p0, Landroidx/core/app/t;->c:Landroidx/core/app/l$c;

    .line 683
    .line 684
    iget-object p1, p1, Landroidx/core/app/l$c;->v:Ljava/lang/String;

    .line 685
    .line 686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 687
    .line 688
    .line 689
    move-result p1

    .line 690
    if-eqz p1, :cond_15

    .line 691
    .line 692
    iget-object p1, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 693
    .line 694
    const-string v0, "silent"

    .line 695
    .line 696
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 697
    .line 698
    .line 699
    :cond_15
    iget-object p1, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 700
    .line 701
    iget v0, p0, Landroidx/core/app/t;->h:I

    .line 702
    .line 703
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 704
    .line 705
    .line 706
    :cond_16
    return-void
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
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
.end method

.method private a(Landroidx/core/app/l$a;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/core/app/l$a;->d()Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->m()Landroid/graphics/drawable/Icon;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroidx/core/app/l$a;->h()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1}, Landroidx/core/app/l$a;->a()Landroid/app/PendingIntent;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/core/app/l$a;->e()[Landroidx/core/app/x;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/core/app/l$a;->e()[Landroidx/core/app/x;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroidx/core/app/x;->b([Landroidx/core/app/x;)[Landroid/app/RemoteInput;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    array-length v2, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_1
    if-ge v3, v2, :cond_1

    .line 43
    .line 44
    aget-object v4, v0, v3

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/l$a;->c()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    new-instance v0, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/core/app/l$a;->c()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-virtual {p1}, Landroidx/core/app/l$a;->b()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const-string v3, "android.support.allowGeneratedReplies"

    .line 78
    .line 79
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/core/app/l$a;->b()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v1, v3}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/core/app/l$a;->f()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const-string v4, "android.support.action.semanticAction"

    .line 96
    .line 97
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    const/16 v3, 0x1c

    .line 101
    .line 102
    if-lt v2, v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/core/app/l$a;->f()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v1, v3}, Landroidx/core/app/q;->a(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 109
    .line 110
    .line 111
    :cond_3
    const/16 v3, 0x1d

    .line 112
    .line 113
    if-lt v2, v3, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/core/app/l$a;->j()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-static {v1, v3}, Landroidx/core/app/r;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 120
    .line 121
    .line 122
    :cond_4
    const/16 v3, 0x1f

    .line 123
    .line 124
    if-lt v2, v3, :cond_5

    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/core/app/l$a;->i()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-static {v1, v2}, Landroidx/core/app/s;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-virtual {p1}, Landroidx/core/app/l$a;->g()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    const-string v2, "android.support.action.showsUserInterface"

    .line 138
    .line 139
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 152
    .line 153
    .line 154
    return-void
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

.method private static d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ln/b;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-direct {v0, v1}, Ln/b;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ln/b;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ln/b;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    return-object p0
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

.method private static e(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/w;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/core/app/w;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/core/app/w;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
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
.method public b()Landroid/app/Notification;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/t;->c:Landroidx/core/app/l$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/core/app/t;->c()Landroid/app/Notification;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/core/app/t;->c:Landroidx/core/app/l$c;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/core/app/l$c;->G:Landroid/widget/RemoteViews;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 17
    .line 18
    :cond_0
    return-object v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected c()Landroid/app/Notification;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/t;->b:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
