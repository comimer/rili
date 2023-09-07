.class final Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AgendaEventInfoFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->O0(Lcom/android/calendar/common/event/schema/AgendaEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lw7/p<",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/u;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/u;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.android.calendar.event.v2.AgendaEventInfoFragment$onEventLoad$2"
    f = "AgendaEventInfoFragment.kt"
    l = {
        0xee,
        0x12e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $event:Lcom/android/calendar/common/event/schema/AgendaEvent;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment;",
            "Lcom/android/calendar/common/event/schema/AgendaEvent;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;

    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    invoke-direct {p1, v0, v1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getRdate()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v1, v4}, Lcom/miui/calendar/util/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    iget-object v6, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v8

    .line 81
    iget-object v10, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 82
    .line 83
    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    iget-object v10, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 88
    .line 89
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    move-object v10, p1

    .line 94
    move v13, v1

    .line 95
    invoke-static/range {v4 .. v13}, Lcom/android/calendar/common/Utils;->w(JJJLjava/lang/String;ZLandroid/content/Context;I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 100
    .line 101
    const-string v5, "displayedDatetime"

    .line 102
    .line 103
    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v4, v6}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->u0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    new-instance v12, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;

    .line 114
    .line 115
    iget-object v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 116
    .line 117
    iget-object v7, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    move-object v4, v12

    .line 121
    move-object v8, p1

    .line 122
    move v9, v1

    .line 123
    invoke-direct/range {v4 .. v10}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Ljava/lang/String;Lcom/android/calendar/common/event/schema/AgendaEvent;Ljava/lang/String;ILkotlin/coroutines/c;)V

    .line 124
    .line 125
    .line 126
    iput v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->label:I

    .line 127
    .line 128
    invoke-static {v11, v12, p0}, Lkotlinx/coroutines/h;->g(Lkotlin/coroutines/CoroutineContext;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-ne p1, v0, :cond_3

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 144
    .line 145
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarAccessLevel()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const/16 v5, 0x1f4

    .line 156
    .line 157
    if-lt v1, v5, :cond_4

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    const/4 v3, 0x0

    .line 161
    :goto_1
    if-eqz v3, :cond_5

    .line 162
    .line 163
    invoke-static {p1}, La2/a;->b(Landroid/content/Context;)Landroid/database/MatrixCursor;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_2

    .line 168
    :cond_5
    invoke-static {p1}, La2/a;->a(Landroid/content/Context;)Landroid/database/MatrixCursor;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    :goto_2
    invoke-static {v4, p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->t0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroid/database/MatrixCursor;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance v1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3;

    .line 180
    .line 181
    iget-object v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 182
    .line 183
    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    invoke-direct {v1, v3, v4, v5}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Lkotlin/coroutines/c;)V

    .line 187
    .line 188
    .line 189
    iput v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->label:I

    .line 190
    .line 191
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/h;->g(Lkotlin/coroutines/CoroutineContext;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-ne p1, v0, :cond_7

    .line 196
    .line 197
    return-object v0

    .line 198
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 199
    .line 200
    return-object p1
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
.end method
