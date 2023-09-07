.class final Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;
.super Lcom/miui/calendar/view/i;
.source "ClassScheduleSingleCard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0082\u0004\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016R\u001f\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;",
        "Lcom/miui/calendar/view/i;",
        "",
        "position",
        "Landroid/view/View;",
        "convertView",
        "b",
        "a",
        "",
        "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;",
        "Ljava/util/List;",
        "getCourses",
        "()Ljava/util/List;",
        "courses",
        "<init>",
        "(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;Ljava/util/List;)V",
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
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "courses"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/miui/calendar/view/i;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

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
    iget-object p2, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->L(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0d006a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v1, "from(mContext)!!.inflate\u2026schedule_card_item, null)"

    .line 25
    .line 26
    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    const/4 v3, -0x2

    .line 33
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;

    .line 40
    .line 41
    invoke-direct {v1, p0, p2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;-><init>(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "null cannot be cast to non-null type com.miui.calendar.card.single.custom.ClassScheduleSingleCard.ClassScheduleListAdapter.ClassScheduleItemViewHolder"

    .line 53
    .line 54
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v1, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;

    .line 58
    .line 59
    :goto_0
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->b:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->b:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/4 v4, 0x1

    .line 74
    sub-int/2addr v3, v4

    .line 75
    if-ne p1, v3, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->b()Landroid/widget/FrameLayout;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const v5, 0x7f08013b

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->b()Landroid/widget/FrameLayout;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const v5, 0x7f080140

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    if-eqz v2, :cond_11

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getSection()Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course$Section;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course$Section;->getSectionTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move-object v3, v0

    .line 112
    :goto_2
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    const/4 v6, 0x0

    .line 117
    if-nez v5, :cond_6

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_3

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    move v5, v6

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    :goto_3
    move v5, v4

    .line 131
    :goto_4
    if-nez v5, :cond_6

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    const/4 v7, 0x3

    .line 138
    if-ge v5, v7, :cond_5

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_5
    new-instance v5, Landroid/text/SpannableString;

    .line 142
    .line 143
    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    new-instance v3, Landroid/text/style/TypefaceSpan;

    .line 147
    .line 148
    const-string v7, "mitype-semibold"

    .line 149
    .line 150
    invoke-direct {v3, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    sub-int/2addr v7, v4

    .line 158
    const/16 v8, 0x21

    .line 159
    .line 160
    invoke-virtual {v5, v3, v4, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->d()Landroid/widget/TextView;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_6
    :goto_5
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->d()Landroid/widget/TextView;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    :goto_6
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->h()Landroid/widget/TextView;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getSection()Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course$Section;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    if-eqz v5, :cond_7

    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course$Section;->getTimeDesc()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :cond_7
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->f()Landroid/widget/TextView;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->f()Landroid/widget/TextView;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 215
    .line 216
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    .line 221
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getTeacher()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-eqz v3, :cond_9

    .line 226
    .line 227
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-nez v3, :cond_8

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_8
    move v3, v6

    .line 235
    goto :goto_8

    .line 236
    :cond_9
    :goto_7
    move v3, v4

    .line 237
    :goto_8
    const/16 v5, 0x8

    .line 238
    .line 239
    if-eqz v3, :cond_d

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getPosition()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    if-eqz v3, :cond_b

    .line 246
    .line 247
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_a

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_a
    move v3, v6

    .line 255
    goto :goto_a

    .line 256
    :cond_b
    :goto_9
    move v3, v4

    .line 257
    :goto_a
    if-eqz v3, :cond_c

    .line 258
    .line 259
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->e()Landroid/widget/LinearLayout;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 267
    .line 268
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->L(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    const v2, 0x7f070770

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 284
    .line 285
    goto :goto_d

    .line 286
    :cond_c
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->e()Landroid/widget/LinearLayout;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->c()Landroid/widget/TextView;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getPosition()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->a()Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 312
    .line 313
    goto :goto_d

    .line 314
    :cond_d
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->e()Landroid/widget/LinearLayout;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 322
    .line 323
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getPosition()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-eqz v0, :cond_f

    .line 328
    .line 329
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-nez v0, :cond_e

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_e
    move v0, v6

    .line 337
    goto :goto_c

    .line 338
    :cond_f
    :goto_b
    move v0, v4

    .line 339
    :goto_c
    if-eqz v0, :cond_10

    .line 340
    .line 341
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->g()Landroid/widget/TextView;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getTeacher()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->a()Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    goto :goto_d

    .line 360
    :cond_10
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->a()Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->c()Landroid/widget/TextView;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getPosition()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a$a;->g()Landroid/widget/TextView;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$ClassScheduleExtraSchema$Course;->getTeacher()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    :cond_11
    :goto_d
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 390
    .line 391
    invoke-static {v0}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->R(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 396
    .line 397
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->O(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 402
    .line 403
    invoke-static {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->N(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-nez p1, :cond_12

    .line 408
    .line 409
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 410
    .line 411
    invoke-static {v0}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->M(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    iget-object v3, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 416
    .line 417
    invoke-static {v3}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->M(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    add-int/2addr v2, v3

    .line 422
    :cond_12
    iget-object v3, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->b:Ljava/util/List;

    .line 423
    .line 424
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    sub-int/2addr v3, v4

    .line 429
    if-ne p1, v3, :cond_13

    .line 430
    .line 431
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 432
    .line 433
    invoke-static {p1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->S(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 438
    .line 439
    invoke-static {p1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->S(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    add-int/2addr v2, p1

    .line 444
    :cond_13
    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 445
    .line 446
    .line 447
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 448
    .line 449
    invoke-static {p1}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->Q(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard$a;->c:Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;

    .line 454
    .line 455
    invoke-static {v2}, Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;->P(Lcom/miui/calendar/card/single/custom/ClassScheduleSingleCard;)I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    invoke-virtual {p2, p1, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 460
    .line 461
    .line 462
    return-object p2
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
