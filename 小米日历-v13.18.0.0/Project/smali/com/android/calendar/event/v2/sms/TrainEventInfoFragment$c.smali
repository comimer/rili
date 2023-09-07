.class final Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;
.super Lcom/miui/calendar/view/i;
.source "TrainEventInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0082\u0004\u0018\u00002\u00020\u0001:\u0001\u0008B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0016\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u001a\u0010\u000c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000eR\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;",
        "Lcom/miui/calendar/view/i;",
        "",
        "Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;",
        "items",
        "Lkotlin/u;",
        "e",
        "",
        "a",
        "position",
        "Landroid/view/View;",
        "convertView",
        "b",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "mActivity",
        "c",
        "Ljava/util/List;",
        "mItems",
        "<init>",
        "(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/content/Context;)V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "mActivity"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->d:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/miui/calendar/view/i;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
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
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->c:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
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

.method public b(ILandroid/view/View;)Landroid/view/View;
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0d0245

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;

    .line 18
    .line 19
    invoke-direct {v0, p0, p2}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "null cannot be cast to non-null type com.android.calendar.event.v2.sms.TrainEventInfoFragment.TrainStationItemAdapter.TrainStationItemViewHolder"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;

    .line 36
    .line 37
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->c:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object v3, v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stationName:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->d:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 56
    .line 57
    invoke-static {v4}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->O0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v3, v4}, Lcom/miui/calendar/event/travel/a;->o(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->c()Landroid/widget/ImageView;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->c()Landroid/widget/ImageView;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const v4, 0x7f08028b

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->d:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->N0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-ne p1, v3, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->c()Landroid/widget/ImageView;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->c()Landroid/widget/ImageView;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const v4, 0x7f08028c

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->c()Landroid/widget/ImageView;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const/4 v4, 0x4

    .line 120
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->b:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const v4, 0x7f060523

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    iget-object v4, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->b:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const v5, 0x7f060521

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    iget-object v5, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->d:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 150
    .line 151
    invoke-static {v5}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->N0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-le p1, v5, :cond_3

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->d()Landroid/widget/TextView;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->b()Landroid/widget/TextView;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->a()Landroid/widget/TextView;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->e()Landroid/widget/TextView;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->d()Landroid/widget/TextView;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->b()Landroid/widget/TextView;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->a()Landroid/widget/TextView;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->e()Landroid/widget/TextView;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    :goto_2
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->d()Landroid/widget/TextView;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object v3, v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stationName:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->b()Landroid/widget/TextView;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object v3, v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->departTime:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->a()Landroid/widget/TextView;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object v3, v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->arriveTime:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    iget-object p1, v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stay:Ljava/lang/String;

    .line 242
    .line 243
    const-string v3, "0"

    .line 244
    .line 245
    invoke-static {v3, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_4

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c$a;->e()Landroid/widget/TextView;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->d:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 256
    .line 257
    const v3, 0x7f120682

    .line 258
    .line 259
    .line 260
    const/4 v4, 0x1

    .line 261
    new-array v4, v4, [Ljava/lang/Object;

    .line 262
    .line 263
    iget-object v1, v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stay:Ljava/lang/String;

    .line 264
    .line 265
    aput-object v1, v4, v2

    .line 266
    .line 267
    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    return-object p2
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

.method public final e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/miui/calendar/view/i;->c()V

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
