.class Lcom/android/calendar/event/NewBaseEditFragment$h;
.super Ljava/lang/Object;
.source "NewBaseEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/NewBaseEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/android/calendar/event/NewBaseEditFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/NewBaseEditFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->a:I

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


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->a:I

    .line 2
    .line 3
    return-void
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

.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 4
    .line 5
    if-eqz v1, :cond_e

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/android/calendar/event/NewBaseEditFragment;->w:Z

    .line 15
    .line 16
    iget v2, v0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iput v3, v0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 22
    .line 23
    :cond_1
    iget v2, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->a:I

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    and-int/2addr v2, v4

    .line 27
    const/4 v5, 0x1

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canModifyCalendar()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarId()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarId()J

    .line 65
    .line 66
    .line 67
    move-result-wide v8

    .line 68
    cmp-long v0, v6, v8

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    move v0, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v1

    .line 75
    :goto_0
    move v10, v0

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v10, v1

    .line 78
    :goto_1
    iget v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->a:I

    .line 79
    .line 80
    and-int/2addr v0, v4

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canRespond()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canModifyEvent()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->R()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->E()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_5

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->normalizeReminders()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->s(Lcom/android/calendar/event/NewBaseEditFragment;)Lcom/android/calendar/event/j;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 150
    .line 151
    iget-object v7, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 152
    .line 153
    iget-object v8, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 154
    .line 155
    iget v9, v0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 156
    .line 157
    new-instance v11, Lcom/android/calendar/event/NewBaseEditFragment$h$a;

    .line 158
    .line 159
    invoke-direct {v11, p0}, Lcom/android/calendar/event/NewBaseEditFragment$h$a;-><init>(Lcom/android/calendar/event/NewBaseEditFragment$h;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {v6 .. v11}, Lcom/android/calendar/event/j;->p(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/event/schema/Event;IZLjava/lang/Runnable;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    iget v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->a:I

    .line 167
    .line 168
    and-int/2addr v0, v4

    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 172
    .line 173
    iget-object v2, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 174
    .line 175
    if-eqz v2, :cond_6

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->E()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 184
    .line 185
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const v2, 0x7f1201be

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v2}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 195
    .line 196
    .line 197
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->a:I

    .line 198
    .line 199
    and-int/lit8 v0, v0, 0x4

    .line 200
    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 206
    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canModifyCalendar()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 228
    .line 229
    .line 230
    move-result-wide v7

    .line 231
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getEnd()J

    .line 240
    .line 241
    .line 242
    move-result-wide v9

    .line 243
    const/4 v0, -0x1

    .line 244
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 245
    .line 246
    iget v6, v2, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 247
    .line 248
    if-eq v6, v5, :cond_9

    .line 249
    .line 250
    if-eq v6, v4, :cond_8

    .line 251
    .line 252
    if-eq v6, v3, :cond_7

    .line 253
    .line 254
    move v12, v0

    .line 255
    goto :goto_3

    .line 256
    :cond_7
    move v12, v4

    .line 257
    goto :goto_3

    .line 258
    :cond_8
    move v12, v5

    .line 259
    goto :goto_3

    .line 260
    :cond_9
    move v12, v1

    .line 261
    :goto_3
    new-instance v6, Lcom/android/calendar/event/b;

    .line 262
    .line 263
    iget-object v0, v2, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 264
    .line 265
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-direct {v6, v0, v2, v5}, Lcom/android/calendar/event/b;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 273
    .line 274
    iget-object v11, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 275
    .line 276
    invoke-virtual/range {v6 .. v12}, Lcom/android/calendar/event/b;->u(JJLcom/android/calendar/common/event/schema/Event;I)V

    .line 277
    .line 278
    .line 279
    :cond_a
    iget v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->a:I

    .line 280
    .line 281
    and-int/lit8 v2, v0, 0x1

    .line 282
    .line 283
    if-eqz v2, :cond_c

    .line 284
    .line 285
    and-int/2addr v0, v4

    .line 286
    if-eqz v0, :cond_b

    .line 287
    .line 288
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 289
    .line 290
    iget-object v2, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 291
    .line 292
    if-eqz v2, :cond_b

    .line 293
    .line 294
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 301
    .line 302
    .line 303
    move-result-wide v2

    .line 304
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 307
    .line 308
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getEnd()J

    .line 313
    .line 314
    .line 315
    move-result-wide v6

    .line 316
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 317
    .line 318
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_b

    .line 325
    .line 326
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 327
    .line 328
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 329
    .line 330
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v4, Lcom/miui/calendar/util/r0;

    .line 335
    .line 336
    const-string v8, "UTC"

    .line 337
    .line 338
    invoke-direct {v4, v8}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v2, v3}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v0}, Lcom/miui/calendar/util/r0;->L(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v5}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v8}, Lcom/miui/calendar/util/r0;->L(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v6, v7}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v0}, Lcom/miui/calendar/util/r0;->L(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4, v5}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 360
    .line 361
    .line 362
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->N()V

    .line 365
    .line 366
    .line 367
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 368
    .line 369
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    if-eqz v0, :cond_d

    .line 381
    .line 382
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 383
    .line 384
    invoke-static {v2}, Lcom/android/calendar/event/NewBaseEditFragment;->t(Lcom/android/calendar/event/NewBaseEditFragment;)Landroid/view/inputmethod/InputMethodManager;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 396
    .line 397
    .line 398
    :cond_d
    return-void

    .line 399
    :cond_e
    :goto_4
    const-string v0, "Cal:D:BaseEditFragment"

    .line 400
    .line 401
    const-string v1, "Done.run(): model or context is NULL"

    .line 402
    .line 403
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    return-void
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
.end method
