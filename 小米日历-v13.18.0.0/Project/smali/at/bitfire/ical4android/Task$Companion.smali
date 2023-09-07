.class public final Lat/bitfire/ical4android/Task$Companion;
.super Ljava/lang/Object;
.source "Task.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/ical4android/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lat/bitfire/ical4android/Task$Companion;",
        "",
        "()V",
        "fromVToDo",
        "Lat/bitfire/ical4android/Task;",
        "todo",
        "Lnet/fortuna/ical4j/model/component/VToDo;",
        "tasksFromReader",
        "",
        "reader",
        "Ljava/io/Reader;",
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

    invoke-direct {p0}, Lat/bitfire/ical4android/Task$Companion;-><init>()V

    return-void
.end method

.method private final fromVToDo(Lnet/fortuna/ical4j/model/component/VToDo;)Lat/bitfire/ical4android/Task;
    .locals 6

    .line 1
    new-instance v0, Lat/bitfire/ical4android/Task;

    .line 2
    .line 3
    invoke-direct {v0}, Lat/bitfire/ical4android/Task;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VToDo;->getUid()Lnet/fortuna/ical4j/model/property/Uid;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VToDo;->getUid()Lnet/fortuna/ical4j/model/property/Uid;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Uid;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/ICalendar;->setUid(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 25
    .line 26
    invoke-virtual {v1}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "Received VTODO without UID, generating new one"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lat/bitfire/ical4android/ICalendar;->generateUID()V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 v1, 0x0

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/ICalendar;->setSequence(Ljava/lang/Integer;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v2, :cond_1c

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lnet/fortuna/ical4j/model/Property;

    .line 66
    .line 67
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    check-cast v2, Lnet/fortuna/ical4j/model/property/Sequence;

    .line 72
    .line 73
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/ICalendar;->setSequence(Ljava/lang/Integer;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Created;

    .line 86
    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    check-cast v2, Lnet/fortuna/ical4j/model/property/Created;

    .line 90
    .line 91
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDateTime()Lnet/fortuna/ical4j/model/DateTime;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setCreatedAt(Ljava/lang/Long;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/LastModified;

    .line 108
    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    check-cast v2, Lnet/fortuna/ical4j/model/property/LastModified;

    .line 112
    .line 113
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getDateTime()Lnet/fortuna/ical4j/model/DateTime;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setLastModified(Ljava/lang/Long;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Summary;

    .line 130
    .line 131
    if-eqz v4, :cond_5

    .line 132
    .line 133
    check-cast v2, Lnet/fortuna/ical4j/model/property/Summary;

    .line 134
    .line 135
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Summary;->getValue()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setSummary(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Location;

    .line 144
    .line 145
    if-eqz v4, :cond_6

    .line 146
    .line 147
    check-cast v2, Lnet/fortuna/ical4j/model/property/Location;

    .line 148
    .line 149
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Location;->getValue()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setLocation(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Geo;

    .line 158
    .line 159
    const-string v5, "prop"

    .line 160
    .line 161
    if-eqz v4, :cond_7

    .line 162
    .line 163
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    check-cast v2, Lnet/fortuna/ical4j/model/property/Geo;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setGeoPosition(Lnet/fortuna/ical4j/model/property/Geo;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Description;

    .line 173
    .line 174
    if-eqz v4, :cond_8

    .line 175
    .line 176
    check-cast v2, Lnet/fortuna/ical4j/model/property/Description;

    .line 177
    .line 178
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Description;->getValue()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setDescription(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :cond_8
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/Color;

    .line 188
    .line 189
    if-eqz v4, :cond_a

    .line 190
    .line 191
    sget-object v4, Lat/bitfire/ical4android/Css3Color;->Companion:Lat/bitfire/ical4android/Css3Color$Companion;

    .line 192
    .line 193
    check-cast v2, Lnet/fortuna/ical4j/model/property/Color;

    .line 194
    .line 195
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Color;->getValue()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const-string v5, "prop.value"

    .line 200
    .line 201
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v2}, Lat/bitfire/ical4android/Css3Color$Companion;->fromString(Ljava/lang/String;)Lat/bitfire/ical4android/Css3Color;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    if-eqz v2, :cond_9

    .line 209
    .line 210
    invoke-virtual {v2}, Lat/bitfire/ical4android/Css3Color;->getArgb()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    :cond_9
    invoke-virtual {v0, v3}, Lat/bitfire/ical4android/Task;->setColor(Ljava/lang/Integer;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_a
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Url;

    .line 224
    .line 225
    if-eqz v3, :cond_b

    .line 226
    .line 227
    check-cast v2, Lnet/fortuna/ical4j/model/property/Url;

    .line 228
    .line 229
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Url;->getValue()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setUrl(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :cond_b
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Organizer;

    .line 239
    .line 240
    if-eqz v3, :cond_c

    .line 241
    .line 242
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    check-cast v2, Lnet/fortuna/ical4j/model/property/Organizer;

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setOrganizer(Lnet/fortuna/ical4j/model/property/Organizer;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_c
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Priority;

    .line 253
    .line 254
    if-eqz v3, :cond_d

    .line 255
    .line 256
    check-cast v2, Lnet/fortuna/ical4j/model/property/Priority;

    .line 257
    .line 258
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Priority;->getLevel()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setPriority(I)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_d
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Clazz;

    .line 268
    .line 269
    if-eqz v3, :cond_e

    .line 270
    .line 271
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    check-cast v2, Lnet/fortuna/ical4j/model/property/Clazz;

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setClassification(Lnet/fortuna/ical4j/model/property/Clazz;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :cond_e
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Status;

    .line 282
    .line 283
    if-eqz v3, :cond_f

    .line 284
    .line 285
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    check-cast v2, Lnet/fortuna/ical4j/model/property/Status;

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setStatus(Lnet/fortuna/ical4j/model/property/Status;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_1

    .line 294
    .line 295
    :cond_f
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Due;

    .line 296
    .line 297
    if-eqz v3, :cond_10

    .line 298
    .line 299
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    check-cast v2, Lnet/fortuna/ical4j/model/property/Due;

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setDue(Lnet/fortuna/ical4j/model/property/Due;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_10
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Duration;

    .line 310
    .line 311
    if-eqz v3, :cond_11

    .line 312
    .line 313
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    check-cast v2, Lnet/fortuna/ical4j/model/property/Duration;

    .line 317
    .line 318
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setDuration(Lnet/fortuna/ical4j/model/property/Duration;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    :cond_11
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 324
    .line 325
    if-eqz v3, :cond_12

    .line 326
    .line 327
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    check-cast v2, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 331
    .line 332
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setDtStart(Lnet/fortuna/ical4j/model/property/DtStart;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_12
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Completed;

    .line 338
    .line 339
    if-eqz v3, :cond_13

    .line 340
    .line 341
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    check-cast v2, Lnet/fortuna/ical4j/model/property/Completed;

    .line 345
    .line 346
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setCompletedAt(Lnet/fortuna/ical4j/model/property/Completed;)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :cond_13
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/PercentComplete;

    .line 352
    .line 353
    if-eqz v3, :cond_14

    .line 354
    .line 355
    check-cast v2, Lnet/fortuna/ical4j/model/property/PercentComplete;

    .line 356
    .line 357
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/PercentComplete;->getPercentage()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setPercentComplete(Ljava/lang/Integer;)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_1

    .line 369
    .line 370
    :cond_14
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/RRule;

    .line 371
    .line 372
    if-eqz v3, :cond_15

    .line 373
    .line 374
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    check-cast v2, Lnet/fortuna/ical4j/model/property/RRule;

    .line 378
    .line 379
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setRRule(Lnet/fortuna/ical4j/model/property/RRule;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :cond_15
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/RDate;

    .line 385
    .line 386
    if-eqz v3, :cond_16

    .line 387
    .line 388
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getRDates()Ljava/util/LinkedList;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :cond_16
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/ExDate;

    .line 401
    .line 402
    if-eqz v3, :cond_17

    .line 403
    .line 404
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getExDates()Ljava/util/LinkedList;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    goto/16 :goto_1

    .line 415
    .line 416
    :cond_17
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Categories;

    .line 417
    .line 418
    if-eqz v3, :cond_18

    .line 419
    .line 420
    check-cast v2, Lnet/fortuna/ical4j/model/property/Categories;

    .line 421
    .line 422
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Categories;->getCategories()Lnet/fortuna/ical4j/model/TextList;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/TextList;->iterator()Ljava/util/Iterator;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    if-eqz v3, :cond_1

    .line 435
    .line 436
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    check-cast v3, Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getCategories()Ljava/util/LinkedList;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    goto :goto_2

    .line 450
    :cond_18
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/RelatedTo;

    .line 451
    .line 452
    if-eqz v3, :cond_19

    .line 453
    .line 454
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getRelatedTo()Ljava/util/LinkedList;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    goto/16 :goto_1

    .line 462
    .line 463
    :cond_19
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/Uid;

    .line 464
    .line 465
    const/4 v4, 0x1

    .line 466
    if-eqz v3, :cond_1a

    .line 467
    .line 468
    move v3, v4

    .line 469
    goto :goto_3

    .line 470
    :cond_1a
    instance-of v3, v2, Lnet/fortuna/ical4j/model/property/ProdId;

    .line 471
    .line 472
    :goto_3
    if-eqz v3, :cond_1b

    .line 473
    .line 474
    goto :goto_4

    .line 475
    :cond_1b
    instance-of v4, v2, Lnet/fortuna/ical4j/model/property/DtStamp;

    .line 476
    .line 477
    :goto_4
    if-nez v4, :cond_1

    .line 478
    .line 479
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getUnknownProperties()Ljava/util/LinkedList;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    goto/16 :goto_1

    .line 487
    .line 488
    :cond_1c
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getAlarms()Ljava/util/LinkedList;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getDtStart()Lnet/fortuna/ical4j/model/property/DtStart;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getDue()Lnet/fortuna/ical4j/model/property/Due;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    if-eqz p1, :cond_1d

    .line 508
    .line 509
    if-eqz v1, :cond_1d

    .line 510
    .line 511
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    invoke-virtual {v1, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    if-nez p1, :cond_1d

    .line 524
    .line 525
    sget-object p1, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 526
    .line 527
    invoke-virtual {p1}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    const-string v1, "Invalid DTSTART >= DUE; ignoring DTSTART"

    .line 532
    .line 533
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v3}, Lat/bitfire/ical4android/Task;->setDtStart(Lnet/fortuna/ical4j/model/property/DtStart;)V

    .line 537
    .line 538
    .line 539
    :cond_1d
    return-object v0
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
.method public final tasksFromReader(Ljava/io/Reader;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Lat/bitfire/ical4android/Task;",
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
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v0, p1, v1, v2, v1}, Lat/bitfire/ical4android/ICalendar$Companion;->fromReader$default(Lat/bitfire/ical4android/ICalendar$Companion;Ljava/io/Reader;Ljava/util/Map;ILjava/lang/Object;)Lnet/fortuna/ical4j/model/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "VTODO"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "vToDos"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lnet/fortuna/ical4j/model/component/VToDo;

    .line 45
    .line 46
    const-string v2, "it"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1}, Lat/bitfire/ical4android/Task$Companion;->fromVToDo(Lnet/fortuna/ical4j/model/component/VToDo;)Lat/bitfire/ical4android/Task;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v0
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
