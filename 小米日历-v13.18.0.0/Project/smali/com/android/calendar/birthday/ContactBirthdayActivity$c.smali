.class Lcom/android/calendar/birthday/ContactBirthdayActivity$c;
.super Landroid/os/AsyncTask;
.source "ContactBirthdayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/birthday/ContactBirthdayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/calendar/util/p0$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/birthday/ContactBirthdayActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calendar/birthday/ContactBirthdayActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

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

.method private a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Lcom/miui/calendar/util/p0$a;
    .locals 13

    .line 1
    const-string p1, "Cal:D:ContactBirthdayActivity"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v1}, Lr1/a;->y(Landroid/content/Context;)Lcom/miui/calendar/util/p0$a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v3}, Lr1/a;->w(Landroid/content/Context;)Lcom/miui/calendar/util/p0$a;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->h(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;Lcom/miui/calendar/util/p0$a;)Lcom/miui/calendar/util/p0$a;

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v4}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->j(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 114
    .line 115
    invoke-static {v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    new-instance v4, Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v4}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->l(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 134
    .line 135
    invoke-static {v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    new-instance v4, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v4}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->n(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 145
    .line 146
    .line 147
    const/4 v3, 0x0

    .line 148
    move-object v5, v0

    .line 149
    move v4, v3

    .line 150
    :goto_0
    invoke-virtual {v1}, Lcom/miui/calendar/util/p0$a;->g()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-ge v4, v6, :cond_6

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Lcom/miui/calendar/util/p0$a;->d(I)Lcom/miui/calendar/util/p0$c;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    iget-object v7, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 167
    .line 168
    invoke-static {v7}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->f0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-static {v7, v6}, Lr1/a;->a(Landroid/content/Context;Lcom/miui/calendar/util/p0$c;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    if-nez v7, :cond_4

    .line 177
    .line 178
    if-nez v5, :cond_3

    .line 179
    .line 180
    new-instance v5, Ljava/util/TreeSet;

    .line 181
    .line 182
    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 183
    .line 184
    .line 185
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {v6, v3}, Lcom/miui/calendar/util/p0$c;->e(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    invoke-static {v6}, Lr1/a;->u(Lcom/miui/calendar/util/p0$c;)I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    invoke-static {v6}, Lr1/a;->b(Lcom/miui/calendar/util/p0$c;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    if-eqz v9, :cond_5

    .line 210
    .line 211
    invoke-virtual {v2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    :cond_5
    iget-object v6, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    check-cast v6, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 221
    .line 222
    invoke-static {v6}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v6}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-static {v7, v8}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->makeContactKey(II)Landroid/util/Pair;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 235
    .line 236
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_6
    const/4 v4, 0x1

    .line 243
    if-eqz v5, :cond_7

    .line 244
    .line 245
    invoke-virtual {v1, v4}, Lcom/miui/calendar/util/p0$a;->c(Z)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v5}, Lcom/miui/calendar/util/p0$a;->f(Ljava/util/TreeSet;)V

    .line 249
    .line 250
    .line 251
    :cond_7
    iget-object v5, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    check-cast v5, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 258
    .line 259
    invoke-static {v5}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    new-instance v6, Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-static {v5, v6}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->c(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 269
    .line 270
    .line 271
    move v5, v3

    .line 272
    :goto_2
    iget-object v6, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 279
    .line 280
    invoke-static {v6}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-static {v6}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->g(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v6}, Lcom/miui/calendar/util/p0$a;->g()I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-ge v5, v6, :cond_a

    .line 293
    .line 294
    iget-object v6, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    check-cast v6, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 301
    .line 302
    invoke-static {v6}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-static {v6}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->g(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v6, v5}, Lcom/miui/calendar/util/p0$a;->d(I)Lcom/miui/calendar/util/p0$c;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    if-eqz v6, :cond_9

    .line 315
    .line 316
    invoke-virtual {v6, v3}, Lcom/miui/calendar/util/p0$c;->g(I)Ljava/lang/Long;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 321
    .line 322
    .line 323
    move-result-wide v7

    .line 324
    invoke-virtual {v6, v4}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-static {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->fromJson(Ljava/lang/String;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    if-eqz v6, :cond_8

    .line 333
    .line 334
    iget-object v9, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 335
    .line 336
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    check-cast v9, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 341
    .line 342
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    if-eqz v9, :cond_8

    .line 359
    .line 360
    iget-object v9, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 361
    .line 362
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    check-cast v9, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 367
    .line 368
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 381
    .line 382
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    iget-object v9, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 386
    .line 387
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    check-cast v9, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 392
    .line 393
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->m(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    iget-object v9, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 409
    .line 410
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    check-cast v9, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 415
    .line 416
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 417
    .line 418
    .line 419
    move-result-object v9

    .line 420
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->k(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    goto/16 :goto_3

    .line 436
    .line 437
    :cond_8
    new-instance v9, Ljava/lang/StringBuffer;

    .line 438
    .line 439
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateType()I

    .line 443
    .line 444
    .line 445
    move-result v10

    .line 446
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->isUseYear()Z

    .line 450
    .line 451
    .line 452
    move-result v10

    .line 453
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getFirstBirthMillis()J

    .line 457
    .line 458
    .line 459
    move-result-wide v10

    .line 460
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getName()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v9

    .line 474
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v10

    .line 478
    if-eqz v10, :cond_9

    .line 479
    .line 480
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    check-cast v9, Lcom/miui/calendar/util/p0$c;

    .line 485
    .line 486
    invoke-virtual {v9, v3}, Lcom/miui/calendar/util/p0$c;->e(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    iget-object v10, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 495
    .line 496
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    check-cast v10, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 501
    .line 502
    invoke-static {v10}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    invoke-static {v10}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->b(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 507
    .line 508
    .line 509
    move-result-object v10

    .line 510
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactId()I

    .line 511
    .line 512
    .line 513
    move-result v11

    .line 514
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    .line 516
    .line 517
    move-result-object v11

    .line 518
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v12

    .line 522
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v6, v9}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->setContactId(I)V

    .line 526
    .line 527
    .line 528
    iget-object v9, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 529
    .line 530
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v9

    .line 534
    check-cast v9, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 535
    .line 536
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 537
    .line 538
    .line 539
    move-result-object v9

    .line 540
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 545
    .line 546
    .line 547
    move-result-object v10

    .line 548
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 549
    .line 550
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    iget-object v9, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 554
    .line 555
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    check-cast v9, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 560
    .line 561
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 562
    .line 563
    .line 564
    move-result-object v9

    .line 565
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->m(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 566
    .line 567
    .line 568
    move-result-object v9

    .line 569
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 570
    .line 571
    .line 572
    move-result-object v10

    .line 573
    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    iget-object v9, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 577
    .line 578
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v9

    .line 582
    check-cast v9, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 583
    .line 584
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 585
    .line 586
    .line 587
    move-result-object v9

    .line 588
    invoke-static {v9}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->k(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 589
    .line 590
    .line 591
    move-result-object v9

    .line 592
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 604
    .line 605
    goto/16 :goto_2

    .line 606
    .line 607
    :cond_a
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 608
    .line 609
    .line 610
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 611
    .line 612
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    check-cast v2, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 617
    .line 618
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    iget-object v3, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 623
    .line 624
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    check-cast v3, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 629
    .line 630
    invoke-static {v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-static {v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    check-cast v3, Ljava/util/HashMap;

    .line 643
    .line 644
    invoke-static {v2, v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->f(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 645
    .line 646
    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    const-string v3, "Load Birthdays: contact birthdays Count = "

    .line 653
    .line 654
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Lcom/miui/calendar/util/p0$a;->g()I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    const-string v3, ", imported Birthdays Count = "

    .line 665
    .line 666
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    iget-object v3, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 670
    .line 671
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    check-cast v3, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 676
    .line 677
    invoke-static {v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-static {v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->g(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    invoke-virtual {v3}, Lcom/miui/calendar/util/p0$a;->g()I

    .line 686
    .line 687
    .line 688
    move-result v3

    .line 689
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-static {p1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .line 698
    .line 699
    return-object v1

    .line 700
    :catch_0
    move-exception v1

    .line 701
    const-string v2, "BirthdayQueryTask()"

    .line 702
    .line 703
    invoke-static {p1, v2, v1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 704
    .line 705
    .line 706
    return-object v0
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

.method protected c(Lcom/miui/calendar/util/p0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->d(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;Lcom/miui/calendar/util/p0$a;)Lcom/miui/calendar/util/p0$a;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-static {p1, v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->Z(Lcom/android/calendar/birthday/ContactBirthdayActivity;Z)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->a0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->q(Z)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->b([Ljava/lang/Void;)Lcom/miui/calendar/util/p0$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

.method protected onCancelled()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->q(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->a0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/calendar/util/p0$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->c(Lcom/miui/calendar/util/p0$a;)V

    .line 4
    .line 5
    .line 6
    return-void
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

.method protected onPreExecute()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->q(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->e0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/miui/calendar/view/LoadingLayout;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/miui/calendar/view/LoadingLayout;->d()V

    .line 36
    .line 37
    .line 38
    :cond_0
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
