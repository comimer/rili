.class public final Lnet/fortuna/ical4j/util/Calendars;
.super Ljava/lang/Object;
.source "Calendars.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method

.method public static getContentType(Lnet/fortuna/ical4j/model/Calendar;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "text/calendar"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "METHOD"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lnet/fortuna/ical4j/model/property/Method;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-string v1, "; method="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Method;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string p0, "; charset="

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
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
.end method

.method public static getUid(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/property/Uid;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ConstraintViolationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lnet/fortuna/ical4j/model/Component;

    .line 21
    .line 22
    const-string v2, "UID"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lnet/fortuna/ical4j/model/Property;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance p0, Lnet/fortuna/ical4j/model/ConstraintViolationException;

    .line 54
    .line 55
    const-string v0, "More than one UID found in calendar"

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/ConstraintViolationException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    :goto_1
    move-object v0, v2

    .line 62
    check-cast v0, Lnet/fortuna/ical4j/model/property/Uid;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    if-eqz v0, :cond_4

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    new-instance p0, Lnet/fortuna/ical4j/model/ConstraintViolationException;

    .line 69
    .line 70
    const-string v0, "Calendar must specify a single unique identifier (UID)"

    .line 71
    .line 72
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/ConstraintViolationException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
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
.end method

.method public static load(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/net/URL;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lnet/fortuna/ical4j/model/Calendar;Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 4

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Calendar;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/Calendar;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lnet/fortuna/ical4j/model/Property;

    .line 36
    .line 37
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, v2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 85
    .line 86
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    return-object v0
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
.end method

.method public static split(Lnet/fortuna/ical4j/model/Calendar;)[Lnet/fortuna/ical4j/model/Calendar;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v0, v2, :cond_7

    .line 12
    .line 13
    const-string v0, "VTIMEZONE"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v2, Lnet/fortuna/ical4j/model/IndexedComponentList;

    .line 40
    .line 41
    const-string v3, "TZID"

    .line 42
    .line 43
    invoke-direct {v2, v0, v3}, Lnet/fortuna/ical4j/model/IndexedComponentList;-><init>(Lnet/fortuna/ical4j/model/ComponentList;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_6

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 70
    .line 71
    instance-of v6, v5, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 72
    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v6, "UID"

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lnet/fortuna/ical4j/model/property/Uid;

    .line 83
    .line 84
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Lnet/fortuna/ical4j/model/Calendar;

    .line 89
    .line 90
    if-nez v7, :cond_3

    .line 91
    .line 92
    new-instance v7, Lnet/fortuna/ical4j/model/Calendar;

    .line 93
    .line 94
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    new-instance v9, Lnet/fortuna/ical4j/model/ComponentList;

    .line 99
    .line 100
    invoke-direct {v9}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-direct {v7, v8, v9}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 104
    .line 105
    .line 106
    const-string v8, "METHOD"

    .line 107
    .line 108
    invoke-virtual {v7, v8}, Lnet/fortuna/ical4j/model/Calendar;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_2

    .line 121
    .line 122
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    check-cast v9, Lnet/fortuna/ical4j/model/Property;

    .line 127
    .line 128
    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v10, v9}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Lnet/fortuna/ical4j/model/Property;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_5

    .line 152
    .line 153
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    check-cast v8, Lnet/fortuna/ical4j/model/Property;

    .line 158
    .line 159
    invoke-virtual {v8, v3}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    check-cast v8, Lnet/fortuna/ical4j/model/parameter/TzId;

    .line 164
    .line 165
    if-eqz v8, :cond_4

    .line 166
    .line 167
    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/parameter/TzId;->getValue()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {v2, v8}, Lnet/fortuna/ical4j/model/IndexedComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    check-cast v8, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 176
    .line 177
    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    invoke-virtual {v9, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_4

    .line 186
    .line 187
    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v9, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    new-array v0, v1, [Lnet/fortuna/ical4j/model/Calendar;

    .line 209
    .line 210
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    check-cast p0, [Lnet/fortuna/ical4j/model/Calendar;

    .line 215
    .line 216
    return-object p0

    .line 217
    :cond_7
    :goto_3
    new-array v0, v2, [Lnet/fortuna/ical4j/model/Calendar;

    .line 218
    .line 219
    aput-object p0, v0, v1

    .line 220
    .line 221
    return-object v0
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
.end method

.method public static varargs wrap([Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lnet/fortuna/ical4j/model/Calendar;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 13
    .line 14
    .line 15
    return-object p0
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
.end method
