.class public Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;
.super Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;
.source "ByDayRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;,
        Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$MonthlyExpansionFilter;,
        Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$WeeklyExpansionFilter;,
        Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;
    }
.end annotation


# instance fields
.field private final dayList:Lnet/fortuna/ical4j/model/WeekDayList;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/WeekDayList;Lnet/fortuna/ical4j/model/Recur$Frequency;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;)V

    .line 2
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/WeekDayList;Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/WeekDayList;",
            "Lnet/fortuna/ical4j/model/Recur$Frequency;",
            "Ljava/util/Optional<",
            "Lnet/fortuna/ical4j/model/WeekDay$Day;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2, p3}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;Ljava/util/Optional;)V

    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    return-void
.end method

.method public static synthetic a(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Ljava/util/List;Ljava/util/List;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/WeekDay;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->lambda$transform$2(Ljava/util/List;Ljava/util/List;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/WeekDay;)V

    return-void
.end method

.method static synthetic access$100(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;)Lnet/fortuna/ical4j/model/WeekDayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 2
    .line 3
    return-object p0
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

.method public static synthetic b(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/model/WeekDay;Lnet/fortuna/ical4j/model/Date;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->lambda$transform$0(Lnet/fortuna/ical4j/model/WeekDay;Lnet/fortuna/ical4j/model/Date;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->lambda$transform$1(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p0

    return-object p0
.end method

.method private getOffsetDates(Lnet/fortuna/ical4j/model/DateList;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/DateList;",
            "I)",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/Date;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gez p2, :cond_1

    .line 13
    .line 14
    neg-int v2, v1

    .line 15
    if-lt p2, v2, :cond_1

    .line 16
    .line 17
    add-int/2addr v1, p2

    .line 18
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/DateList;->get(I)Lnet/fortuna/ical4j/model/Date;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-lez p2, :cond_2

    .line 27
    .line 28
    if-gt p2, v1, :cond_2

    .line 29
    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/DateList;->get(I)Lnet/fortuna/ical4j/model/Date;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-object v0
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
.end method

.method private synthetic lambda$transform$0(Lnet/fortuna/ical4j/model/WeekDay;Lnet/fortuna/ical4j/model/Date;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p2, v0}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p1}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ne p2, p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
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
.end method

.method private static synthetic lambda$transform$1(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    .line 1
    invoke-static {p0}, Lnet/fortuna/ical4j/util/Dates;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
.end method

.method private synthetic lambda$transform$2(Ljava/util/List;Ljava/util/List;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/WeekDay;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lnet/fortuna/ical4j/transform/recurrence/b;

    .line 6
    .line 7
    invoke-direct {v0, p0, p4}, Lnet/fortuna/ical4j/transform/recurrence/b;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/model/WeekDay;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lnet/fortuna/ical4j/transform/recurrence/c;

    .line 15
    .line 16
    invoke-direct {v0, p3}, Lnet/fortuna/ical4j/transform/recurrence/c;-><init>(Lnet/fortuna/ical4j/model/DateList;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lnet/fortuna/ical4j/model/DateList;

    .line 28
    .line 29
    invoke-virtual {p4}, Lnet/fortuna/ical4j/model/WeekDay;->getOffset()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-direct {p0, p2, p3}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->getOffsetDates(Lnet/fortuna/ical4j/model/DateList;I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    return-void
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
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/DateList;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 4
    sget-object v1, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$1;->$SwitchMap$net$fortuna$ical4j$model$Recur$Frequency:[I

    invoke-virtual {p0}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getFrequency()Lnet/fortuna/ical4j/model/Recur$Frequency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 5
    new-instance v1, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$LimitFilter;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$1;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/model/parameter/Value;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v1, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$MonthlyExpansionFilter;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$MonthlyExpansionFilter;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/model/parameter/Value;)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance v1, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$WeeklyExpansionFilter;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$WeeklyExpansionFilter;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Date;

    .line 10
    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v4, p0, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    new-instance v5, Lnet/fortuna/ical4j/transform/recurrence/a;

    invoke-direct {v5, p0, v3, v2, v0}, Lnet/fortuna/ical4j/transform/recurrence/a;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Ljava/util/List;Ljava/util/List;Lnet/fortuna/ical4j/model/DateList;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/DateList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method
