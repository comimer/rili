.class public final Lat/bitfire/ical4android/Event$Companion;
.super Ljava/lang/Object;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/ical4android/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tJ\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lat/bitfire/ical4android/Event$Companion;",
        "",
        "()V",
        "eventsFromReader",
        "",
        "Lat/bitfire/ical4android/Event;",
        "reader",
        "Ljava/io/Reader;",
        "properties",
        "",
        "",
        "fromVEvent",
        "event",
        "Lnet/fortuna/ical4j/model/component/VEvent;",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lat/bitfire/ical4android/Event$Companion;-><init>()V

    return-void
.end method

.method public static synthetic eventsFromReader$default(Lat/bitfire/ical4android/Event$Companion;Ljava/io/Reader;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lat/bitfire/ical4android/Event$Companion;->eventsFromReader(Ljava/io/Reader;Ljava/util/Map;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
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
.end method

.method private final fromVEvent(Lnet/fortuna/ical4j/model/component/VEvent;)Lat/bitfire/ical4android/Event;
    .locals 6

    .line 1
    new-instance v0, Lat/bitfire/ical4android/Event;

    .line 2
    .line 3
    invoke-direct {v0}, Lat/bitfire/ical4android/Event;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/ICalendar;->setSequence(Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_17

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lnet/fortuna/ical4j/model/Property;

    .line 34
    .line 35
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Uid;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    check-cast v2, Lnet/fortuna/ical4j/model/property/Uid;

    .line 40
    .line 41
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Uid;->getValue()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/ICalendar;->setUid(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    .line 50
    .line 51
    const-string v5, "prop"

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v2, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setRecurrenceId(Lnet/fortuna/ical4j/model/property/RecurrenceId;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    check-cast v2, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 69
    .line 70
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/ICalendar;->setSequence(Ljava/lang/Integer;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Summary;

    .line 83
    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    check-cast v2, Lnet/fortuna/ical4j/model/property/Summary;

    .line 87
    .line 88
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Summary;->getValue()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setSummary(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Location;

    .line 97
    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    check-cast v2, Lnet/fortuna/ical4j/model/property/Location;

    .line 101
    .line 102
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Location;->getValue()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setLocation(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Description;

    .line 111
    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    check-cast v2, Lnet/fortuna/ical4j/model/property/Description;

    .line 115
    .line 116
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Description;->getValue()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setDescription(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Categories;

    .line 125
    .line 126
    if-eqz v4, :cond_7

    .line 127
    .line 128
    check-cast v2, Lnet/fortuna/ical4j/model/property/Categories;

    .line 129
    .line 130
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Categories;->getCategories()Lnet/fortuna/ical4j/model/TextList;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/TextList;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_0

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getCategories()Ljava/util/LinkedList;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_7
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Color;

    .line 159
    .line 160
    if-eqz v4, :cond_8

    .line 161
    .line 162
    sget-object v3, Lat/bitfire/ical4android/Css3Color;->Companion:Lat/bitfire/ical4android/Css3Color$Companion;

    .line 163
    .line 164
    check-cast v2, Lnet/fortuna/ical4j/model/property/Color;

    .line 165
    .line 166
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Color;->getValue()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v4, "prop.value"

    .line 171
    .line 172
    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v2}, Lat/bitfire/ical4android/Css3Color$Companion;->fromString(Ljava/lang/String;)Lat/bitfire/ical4android/Css3Color;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setColor(Lat/bitfire/ical4android/Css3Color;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_8
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 185
    .line 186
    if-eqz v4, :cond_9

    .line 187
    .line 188
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    check-cast v2, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setDtStart(Lnet/fortuna/ical4j/model/property/DtStart;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_9
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 199
    .line 200
    if-eqz v4, :cond_a

    .line 201
    .line 202
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    check-cast v2, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setDtEnd(Lnet/fortuna/ical4j/model/property/DtEnd;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_a
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Duration;

    .line 213
    .line 214
    if-eqz v4, :cond_b

    .line 215
    .line 216
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    check-cast v2, Lnet/fortuna/ical4j/model/property/Duration;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setDuration(Lnet/fortuna/ical4j/model/property/Duration;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_b
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/RRule;

    .line 227
    .line 228
    if-eqz v4, :cond_c

    .line 229
    .line 230
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    check-cast v2, Lnet/fortuna/ical4j/model/property/RRule;

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setRRule(Lnet/fortuna/ical4j/model/property/RRule;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_c
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/RDate;

    .line 241
    .line 242
    if-eqz v4, :cond_d

    .line 243
    .line 244
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getRDates()Ljava/util/LinkedList;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_d
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/ExRule;

    .line 257
    .line 258
    if-eqz v4, :cond_e

    .line 259
    .line 260
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    check-cast v2, Lnet/fortuna/ical4j/model/property/ExRule;

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setExRule(Lnet/fortuna/ical4j/model/property/ExRule;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_e
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/ExDate;

    .line 271
    .line 272
    if-eqz v4, :cond_f

    .line 273
    .line 274
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getExDates()Ljava/util/LinkedList;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_f
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Clazz;

    .line 287
    .line 288
    if-eqz v4, :cond_10

    .line 289
    .line 290
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    check-cast v2, Lnet/fortuna/ical4j/model/property/Clazz;

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setClassification(Lnet/fortuna/ical4j/model/property/Clazz;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_10
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Status;

    .line 301
    .line 302
    if-eqz v4, :cond_11

    .line 303
    .line 304
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    check-cast v2, Lnet/fortuna/ical4j/model/property/Status;

    .line 308
    .line 309
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setStatus(Lnet/fortuna/ical4j/model/property/Status;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :cond_11
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Transp;

    .line 315
    .line 316
    if-eqz v4, :cond_12

    .line 317
    .line 318
    sget-object v3, Lnet/fortuna/ical4j/model/property/Transp;->OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

    .line 319
    .line 320
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setOpaque(Z)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_12
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Organizer;

    .line 330
    .line 331
    if-eqz v4, :cond_13

    .line 332
    .line 333
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    check-cast v2, Lnet/fortuna/ical4j/model/property/Organizer;

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setOrganizer(Lnet/fortuna/ical4j/model/property/Organizer;)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_13
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Attendee;

    .line 344
    .line 345
    if-eqz v4, :cond_14

    .line 346
    .line 347
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getAttendees()Ljava/util/LinkedList;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_14
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/LastModified;

    .line 360
    .line 361
    if-eqz v4, :cond_15

    .line 362
    .line 363
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    check-cast v2, Lnet/fortuna/ical4j/model/property/LastModified;

    .line 367
    .line 368
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Event;->setLastModified(Lnet/fortuna/ical4j/model/property/LastModified;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_15
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/ProdId;

    .line 374
    .line 375
    if-eqz v4, :cond_16

    .line 376
    .line 377
    goto :goto_2

    .line 378
    :cond_16
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/DtStamp;

    .line 379
    .line 380
    :goto_2
    if-nez v3, :cond_0

    .line 381
    .line 382
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getUnknownProperties()Ljava/util/LinkedList;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    goto/16 :goto_0

    .line 390
    .line 391
    :cond_17
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getDtEnd()Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    if-nez v1, :cond_18

    .line 396
    .line 397
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getDuration()Lnet/fortuna/ical4j/model/property/Duration;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    if-eqz v1, :cond_18

    .line 402
    .line 403
    invoke-virtual {p1, v3}, Lnet/fortuna/ical4j/model/component/VEvent;->getEndDate(Z)Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Event;->setDtEnd(Lnet/fortuna/ical4j/model/property/DtEnd;)V

    .line 408
    .line 409
    .line 410
    :cond_18
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getAlarms()Ljava/util/LinkedList;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Lat/bitfire/ical4android/Event;->getDtStart()Lnet/fortuna/ical4j/model/property/DtStart;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    if-eqz p1, :cond_19

    .line 426
    .line 427
    return-object v0

    .line 428
    :cond_19
    new-instance p1, Lat/bitfire/ical4android/InvalidCalendarException;

    .line 429
    .line 430
    const-string v0, "Event without start time"

    .line 431
    .line 432
    invoke-direct {p1, v0}, Lat/bitfire/ical4android/InvalidCalendarException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw p1
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


# virtual methods
.method public final eventsFromReader(Ljava/io/Reader;Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lat/bitfire/ical4android/Event;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "reader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lat/bitfire/ical4android/ICalendar;->Companion:Lat/bitfire/ical4android/ICalendar$Companion;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lat/bitfire/ical4android/ICalendar$Companion;->fromReader(Ljava/io/Reader;Ljava/util/Map;)Lnet/fortuna/ical4j/model/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "VEVENT"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/Calendar;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 33
    .line 34
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getUid()Lnet/fortuna/ical4j/model/property/Uid;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    new-instance v1, Lnet/fortuna/ical4j/model/property/Uid;

    .line 41
    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/property/Uid;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 54
    .line 55
    invoke-virtual {v2}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "Found VEVENT without UID, using a random one: "

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Uid;->getValue()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v2, "vEvent.properties"

    .line 88
    .line 89
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    sget-object p2, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 97
    .line 98
    invoke-virtual {p2}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string v0, "Assigning exceptions to main events"

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_8

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 132
    .line 133
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/component/VEvent;->getUid()Lnet/fortuna/ical4j/model/property/Uid;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Uid;->getValue()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/component/VEvent;->getSequence()Lnet/fortuna/ical4j/model/property/Sequence;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    const/4 v3, 0x0

    .line 153
    :goto_2
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/component/VEvent;->getRecurrenceId()Lnet/fortuna/ical4j/model/property/RecurrenceId;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const-string v5, "vEvent"

    .line 158
    .line 159
    const-string v6, "uid"

    .line 160
    .line 161
    if-nez v4, :cond_5

    .line 162
    .line 163
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 168
    .line 169
    if-eqz v4, :cond_4

    .line 170
    .line 171
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getSequence()Lnet/fortuna/ical4j/model/property/Sequence;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    if-eqz v7, :cond_2

    .line 176
    .line 177
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getSequence()Lnet/fortuna/ical4j/model/property/Sequence;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-lt v3, v4, :cond_2

    .line 186
    .line 187
    :cond_4
    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Ljava/util/Map;

    .line 202
    .line 203
    if-nez v4, :cond_6

    .line 204
    .line 205
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 206
    .line 207
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    :cond_6
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/component/VEvent;->getRecurrenceId()Lnet/fortuna/ical4j/model/property/RecurrenceId;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->getValue()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    check-cast v6, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 229
    .line 230
    if-eqz v6, :cond_7

    .line 231
    .line 232
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/component/VEvent;->getSequence()Lnet/fortuna/ical4j/model/property/Sequence;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    if-eqz v7, :cond_2

    .line 237
    .line 238
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/component/VEvent;->getSequence()Lnet/fortuna/ical4j/model/property/Sequence;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-lt v3, v6, :cond_2

    .line 247
    .line 248
    :cond_7
    const-string v3, "recurrenceID"

    .line 249
    .line 250
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_d

    .line 279
    .line 280
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Ljava/util/Map$Entry;

    .line 285
    .line 286
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Ljava/lang/String;

    .line 291
    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 297
    .line 298
    invoke-direct {p0, v1}, Lat/bitfire/ical4android/Event$Companion;->fromVEvent(Lnet/fortuna/ical4j/model/component/VEvent;)Lat/bitfire/ical4android/Event;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Ljava/util/Map;

    .line 307
    .line 308
    if-eqz v2, :cond_a

    .line 309
    .line 310
    invoke-virtual {v1}, Lat/bitfire/ical4android/Event;->getExceptions()Ljava/util/LinkedList;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    new-instance v4, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-eqz v5, :cond_9

    .line 336
    .line 337
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    check-cast v5, Ljava/util/Map$Entry;

    .line 342
    .line 343
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    check-cast v5, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 348
    .line 349
    sget-object v6, Lat/bitfire/ical4android/Event;->Companion:Lat/bitfire/ical4android/Event$Companion;

    .line 350
    .line 351
    invoke-direct {v6, v5}, Lat/bitfire/ical4android/Event$Companion;->fromVEvent(Lnet/fortuna/ical4j/model/component/VEvent;)Lat/bitfire/ical4android/Event;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_9
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 360
    .line 361
    .line 362
    :cond_a
    invoke-virtual {v1}, Lat/bitfire/ical4android/Event;->getExceptions()Ljava/util/LinkedList;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-eqz v3, :cond_c

    .line 375
    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    check-cast v3, Lat/bitfire/ical4android/Event;

    .line 381
    .line 382
    invoke-virtual {v3}, Lat/bitfire/ical4android/Event;->getSummary()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    if-nez v4, :cond_b

    .line 387
    .line 388
    invoke-virtual {v1}, Lat/bitfire/ical4android/Event;->getSummary()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    :cond_b
    invoke-virtual {v3, v4}, Lat/bitfire/ical4android/Event;->setSummary(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_c
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_3

    .line 400
    :cond_d
    return-object p1
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
