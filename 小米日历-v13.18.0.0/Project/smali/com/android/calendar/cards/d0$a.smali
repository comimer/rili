.class Lcom/android/calendar/cards/d0$a;
.super Lcom/miui/calendar/view/i;
.source "ClassScheduleCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/d0$a$a;
    }
.end annotation


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/calendar/cards/d0$a;->b:Ljava/util/ArrayList;

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


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/d0$a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public b(ILandroid/view/View;)Landroid/view/View;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const v1, 0x7f0d006a

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    const/4 v3, -0x2

    .line 21
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/android/calendar/cards/d0$a$a;

    .line 28
    .line 29
    invoke-direct {v1, p2}, Lcom/android/calendar/cards/d0$a$a;-><init>(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v1, Lcom/android/calendar/cards/d0$a$a;

    .line 37
    .line 38
    invoke-direct {v1, p2}, Lcom/android/calendar/cards/d0$a$a;-><init>(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/cards/d0$a;->b:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;

    .line 51
    .line 52
    int-to-long v3, p1

    .line 53
    iget-object v5, p0, Lcom/android/calendar/cards/d0$a;->b:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    int-to-long v5, v5

    .line 60
    const-wide/16 v7, 0x1

    .line 61
    .line 62
    sub-long/2addr v5, v7

    .line 63
    cmp-long v3, v3, v5

    .line 64
    .line 65
    if-nez v3, :cond_1

    .line 66
    .line 67
    iget-object v3, v1, Lcom/android/calendar/cards/d0$a$a;->h:Landroid/widget/FrameLayout;

    .line 68
    .line 69
    const v4, 0x7f08013b

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object v3, v1, Lcom/android/calendar/cards/d0$a$a;->h:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    const v4, 0x7f080140

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    const/4 v3, 0x1

    .line 85
    const v4, 0x7f070770

    .line 86
    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    if-eqz v2, :cond_c

    .line 90
    .line 91
    iget-object v6, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->section:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;

    .line 92
    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    iget-object v0, v6, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;->sectionTitle:Ljava/lang/String;

    .line 96
    .line 97
    :cond_2
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_4

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    const/4 v7, 0x3

    .line 116
    if-ge v6, v7, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    new-instance v6, Landroid/text/SpannableString;

    .line 120
    .line 121
    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 125
    .line 126
    const-string v7, "mitype-semibold"

    .line 127
    .line 128
    invoke-direct {v0, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    sub-int/2addr v7, v3

    .line 136
    const/16 v8, 0x21

    .line 137
    .line 138
    invoke-virtual {v6, v0, v3, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v1, Lcom/android/calendar/cards/d0$a$a;->a:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    :goto_2
    iget-object v6, v1, Lcom/android/calendar/cards/d0$a$a;->a:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    :goto_3
    iget-object v0, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->section:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;

    .line 153
    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    iget-object v6, v1, Lcom/android/calendar/cards/d0$a$a;->b:Landroid/widget/TextView;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course$Section;->timeDesc:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    iget-object v0, v1, Lcom/android/calendar/cards/d0$a$a;->c:Landroid/widget/TextView;

    .line 164
    .line 165
    iget-object v6, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->name:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v1, Lcom/android/calendar/cards/d0$a$a;->c:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    .line 178
    iget-object v6, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->teacher:Ljava/lang/String;

    .line 179
    .line 180
    const/16 v7, 0x8

    .line 181
    .line 182
    if-eqz v6, :cond_9

    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_6

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_6
    iget-object v6, v1, Lcom/android/calendar/cards/d0$a$a;->d:Landroid/widget/LinearLayout;

    .line 192
    .line 193
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 197
    .line 198
    iget-object v0, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->position:Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v0, :cond_8

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_7
    iget-object v0, v1, Lcom/android/calendar/cards/d0$a$a;->g:Landroid/view/View;

    .line 210
    .line 211
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object v0, v1, Lcom/android/calendar/cards/d0$a$a;->e:Landroid/widget/TextView;

    .line 215
    .line 216
    iget-object v6, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->position:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, v1, Lcom/android/calendar/cards/d0$a$a;->f:Landroid/widget/TextView;

    .line 222
    .line 223
    iget-object v1, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->teacher:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_8
    :goto_4
    iget-object v0, v1, Lcom/android/calendar/cards/d0$a$a;->f:Landroid/widget/TextView;

    .line 230
    .line 231
    iget-object v2, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->teacher:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, v1, Lcom/android/calendar/cards/d0$a$a;->g:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_9
    :goto_5
    iget-object v6, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->position:Ljava/lang/String;

    .line 243
    .line 244
    if-eqz v6, :cond_b

    .line 245
    .line 246
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-eqz v6, :cond_a

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_a
    iget-object v6, v1, Lcom/android/calendar/cards/d0$a$a;->d:Landroid/widget/LinearLayout;

    .line 254
    .line 255
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    iget-object v6, v1, Lcom/android/calendar/cards/d0$a$a;->e:Landroid/widget/TextView;

    .line 259
    .line 260
    iget-object v2, v2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->position:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v1, Lcom/android/calendar/cards/d0$a$a;->g:Landroid/view/View;

    .line 266
    .line 267
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_b
    :goto_6
    iget-object v1, v1, Lcom/android/calendar/cards/d0$a$a;->d:Landroid/widget/LinearLayout;

    .line 274
    .line 275
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 289
    .line 290
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const v1, 0x7f07042a

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    iget-object v2, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 304
    .line 305
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    iget-object v6, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 314
    .line 315
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    iget-object v7, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 324
    .line 325
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    iget-object v7, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 334
    .line 335
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    const v8, 0x7f070222

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    iget-object v8, p0, Lcom/android/calendar/cards/d0$a;->c:Landroid/content/Context;

    .line 347
    .line 348
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-nez p1, :cond_d

    .line 357
    .line 358
    add-int/2addr v7, v6

    .line 359
    move v5, v6

    .line 360
    :cond_d
    iget-object v6, p0, Lcom/android/calendar/cards/d0$a;->b:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    sub-int/2addr v6, v3

    .line 367
    if-ne p1, v6, :cond_e

    .line 368
    .line 369
    add-int/2addr v7, v4

    .line 370
    goto :goto_8

    .line 371
    :cond_e
    move v4, v1

    .line 372
    :goto_8
    invoke-virtual {p2, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2, v0, v5, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 376
    .line 377
    .line 378
    return-object p2
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
