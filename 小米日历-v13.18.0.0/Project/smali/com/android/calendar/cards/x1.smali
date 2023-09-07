.class public Lcom/android/calendar/cards/x1;
.super Lcom/android/calendar/cards/m1;
.source "SummaryCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/x1$c;,
        Lcom/android/calendar/cards/x1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/m1<",
        "Lcom/android/calendar/cards/x1$c;",
        "Lcom/android/calendar/cards/SummaryPresenter$b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/miui/calendar/card/schema/TextChainSchema;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Lcom/miui/calendar/weather/WeatherInfo;

.field private n:Lcom/miui/calendar/card/schema/LocalCardSchema;

.field private o:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

.field private p:Ljava/lang/Boolean;

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/m1;-><init>(Ljava/util/Calendar;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/cards/x1;->k:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/calendar/cards/x1;->l:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/calendar/cards/x1;->p:Ljava/lang/Boolean;

    .line 11
    .line 12
    const-string p1, "text_chain_last_close_julian"

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/calendar/cards/x1;->q:Ljava/lang/String;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic e(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/x1;->u(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/calendar/cards/x1$c;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/cards/x1;->t(Lcom/android/calendar/cards/x1$c;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/x1;->q(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/x1;->r(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/x1;->s(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V

    return-void
.end method

.method static synthetic j(Lcom/android/calendar/cards/x1;)Lcom/miui/calendar/card/schema/TextChainSchema;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

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
.end method

.method static synthetic k(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/x1;->x(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

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
.end method

.method private n(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Ljava/lang/Boolean;Lcom/android/calendar/cards/x1$c;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->p:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->p:Landroid/view/View;

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->r:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->v:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->y:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->z:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->w:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->x:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->y:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->p:Landroid/view/View;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->r:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->v:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->y:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->z:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->w:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->x:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->y:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->p:Landroid/view/View;

    .line 98
    .line 99
    new-instance v2, Lcom/android/calendar/cards/w1;

    .line 100
    .line 101
    invoke-direct {v2, p0, p1, p4}, Lcom/android/calendar/cards/w1;-><init>(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->p:Landroid/view/View;

    .line 108
    .line 109
    invoke-static {p3}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object p3, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

    .line 113
    .line 114
    if-nez p3, :cond_1

    .line 115
    .line 116
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->D:Landroid/widget/FrameLayout;

    .line 117
    .line 118
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->z:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->z:Landroid/widget/ImageView;

    .line 127
    .line 128
    const p4, 0x7f080290

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    .line 133
    .line 134
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->q:Landroid/widget/TextView;

    .line 135
    .line 136
    const-string p4, "- -"

    .line 137
    .line 138
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->q:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const p4, 0x7f060133

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->q:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->r:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->v:Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->w:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->y:Landroid/view/View;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_1
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->D:Landroid/widget/FrameLayout;

    .line 184
    .line 185
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->z:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->q:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object p4

    .line 199
    const v2, 0x7f06016e

    .line 200
    .line 201
    .line 202
    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 203
    .line 204
    .line 205
    move-result p4

    .line 206
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    .line 208
    .line 209
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->q:Landroid/widget/TextView;

    .line 210
    .line 211
    iget-object p4, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

    .line 212
    .line 213
    iget-object p4, p4, Lcom/miui/calendar/weather/WeatherInfo;->temperature:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {p3, p4}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->r:Landroid/widget/TextView;

    .line 219
    .line 220
    iget-object p4, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

    .line 221
    .line 222
    iget-object p4, p4, Lcom/miui/calendar/weather/WeatherInfo;->weatherTypeDesc:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {p3, p4}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object p3, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

    .line 228
    .line 229
    iget p3, p3, Lcom/miui/calendar/weather/WeatherInfo;->aqiLevel:I

    .line 230
    .line 231
    if-gez p3, :cond_2

    .line 232
    .line 233
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->v:Landroid/widget/TextView;

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_2
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->v:Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->v:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 247
    .line 248
    .line 249
    move-result-object p3

    .line 250
    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    .line 251
    .line 252
    iget-object p4, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

    .line 253
    .line 254
    iget p4, p4, Lcom/miui/calendar/weather/WeatherInfo;->aqiLevel:I

    .line 255
    .line 256
    invoke-static {p1, p4}, Ly4/a;->b(Landroid/content/Context;I)I

    .line 257
    .line 258
    .line 259
    move-result p4

    .line 260
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 261
    .line 262
    .line 263
    iget-object p3, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

    .line 264
    .line 265
    iget p3, p3, Lcom/miui/calendar/weather/WeatherInfo;->aqiLevel:I

    .line 266
    .line 267
    invoke-static {p1, p3}, Ly4/a;->d(Landroid/content/Context;I)I

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    iget-object p4, p2, Lcom/android/calendar/cards/x1$c;->v:Landroid/widget/TextView;

    .line 272
    .line 273
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    .line 275
    .line 276
    iget-object p3, p2, Lcom/android/calendar/cards/x1$c;->v:Landroid/widget/TextView;

    .line 277
    .line 278
    iget-object p4, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

    .line 279
    .line 280
    iget p4, p4, Lcom/miui/calendar/weather/WeatherInfo;->aqiLevel:I

    .line 281
    .line 282
    invoke-static {p1, p4}, Ly4/a;->e(Landroid/content/Context;I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    :goto_0
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->w:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->x:Landroid/widget/TextView;

    .line 295
    .line 296
    iget-object p3, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

    .line 297
    .line 298
    iget-object p3, p3, Lcom/miui/calendar/weather/WeatherInfo;->cityName:Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {p1, p3}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p2, Lcom/android/calendar/cards/x1$c;->y:Landroid/view/View;

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    return-void
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
.end method

.method private p(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V
    .locals 6

    .line 1
    new-instance v4, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/cards/x1;->p:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "summary_or_weather_click"

    .line 15
    .line 16
    const-string v1, "summary"

    .line 17
    .line 18
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    const-string v0, "card_item_clicked"

    .line 28
    .line 29
    const-string v5, "summary_card"

    .line 30
    .line 31
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/cards/CardHelper;->o(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-static {p1, v0, v1}, Lcom/android/calendar/common/Utils;->j1(Landroid/content/Context;J)V

    .line 41
    .line 42
    .line 43
    return-void
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private synthetic q(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/x1;->p(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

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
.end method

.method private synthetic r(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/x1;->p(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

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
.end method

.method private synthetic s(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p3, p3, Lcom/miui/calendar/card/schema/TextChainSchema;->type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 6
    .line 7
    sget-object v0, Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;->ADVERTISEMENT:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    .line 8
    .line 9
    if-ne p3, v0, :cond_0

    .line 10
    .line 11
    new-instance p3, Lcom/android/calendar/cards/x1$b;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p3, p0, p2, p1, v0}, Lcom/android/calendar/cards/x1$b;-><init>(Lcom/android/calendar/cards/x1;Lcom/android/calendar/cards/x1$c;Landroid/content/Context;Lcom/android/calendar/cards/x1$a;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->ad:Lcom/miui/calendar/ad/AdSchema;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->ex:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "calendar_textchain"

    .line 24
    .line 25
    invoke-static {p1, p3, v1, v0}, Lcom/miui/calendar/ad/AdSchema;->onAdItemClosed(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/x1;->x(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/x1;->x(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
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
.end method

.method private static synthetic t(Lcom/android/calendar/cards/x1$c;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array v0, p1, [Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/calendar/cards/x1$c;->E:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-array v1, p1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 18
    .line 19
    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 20
    .line 21
    aput-object v3, v1, v2

    .line 22
    .line 23
    const/high16 v3, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-interface {v0, v3, v1}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-array v1, p1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 30
    .line 31
    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 32
    .line 33
    aput-object v4, v1, v2

    .line 34
    .line 35
    invoke-interface {v0, v3, v1}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p2}, Lmiuix/animation/ITouchStyle;->e(Landroid/view/MotionEvent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-ne p2, p1, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/calendar/cards/x1$c;->a:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 51
    .line 52
    .line 53
    :cond_0
    return p1
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
.end method

.method private synthetic u(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p3}, Ly4/c;->k(Landroid/content/Context;Z)V

    .line 3
    .line 4
    .line 5
    new-instance v4, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/calendar/cards/x1;->p:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string p1, "summary_or_weather_click"

    .line 19
    .line 20
    const-string p3, "weather"

    .line 21
    .line 22
    invoke-interface {v4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, -0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v0, "card_item_clicked"

    .line 32
    .line 33
    const-string v5, "summary_card"

    .line 34
    .line 35
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/cards/CardHelper;->o(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
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
.end method

.method private v(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/calendar/settings/j;->r(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
    .line 21
    .line 22
.end method

.method private x(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const-string v0, "card_text_chain_close_clicked"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "summary_card"

    .line 11
    .line 12
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/cards/CardHelper;->o(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/calendar/cards/x1;->k:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const-string v0, "text_chain_last_close_julian"

    .line 28
    .line 29
    invoke-static {p1, v0, p2}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    return-void
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

.method private y(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/calendar/card/schema/TextChainSchema;->onDisplay(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    iget-object v0, p0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 14
    .line 15
    iget-object v5, v0, Lcom/miui/calendar/card/schema/TextChainSchema;->title:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "card_text_chain_displayed"

    .line 19
    .line 20
    move v3, p1

    .line 21
    move-object v7, p2

    .line 22
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/cards/CardHelper;->o(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
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
.method bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/cards/SummaryPresenter$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/cards/x1;->l(Lcom/android/calendar/cards/SummaryPresenter$b;)V

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

.method bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Context;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/cards/x1$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/cards/x1;->m(Lcom/android/calendar/cards/x1$c;Landroid/content/Context;)V

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

.method c()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method l(Lcom/android/calendar/cards/SummaryPresenter$b;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/calendar/cards/SummaryPresenter$b;->b:Lcom/miui/calendar/card/schema/LocalCardSchema;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/calendar/cards/x1;->n:Lcom/miui/calendar/card/schema/LocalCardSchema;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/calendar/cards/SummaryPresenter$b;->c:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/calendar/cards/x1;->o:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/calendar/cards/SummaryPresenter$b;->a:Lcom/miui/calendar/weather/WeatherInfo;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/calendar/cards/x1;->m:Lcom/miui/calendar/weather/WeatherInfo;

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
.end method

.method m(Lcom/android/calendar/cards/x1$c;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    const-string v13, "Cal:D:SummaryCard"

    const-string v2, "bindView start"

    .line 1
    invoke-static {v13, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->n:Lcom/miui/calendar/card/schema/LocalCardSchema;

    if-eqz v2, :cond_0

    .line 3
    iget-object v3, v2, Lcom/miui/calendar/card/schema/LocalCardSchema;->actionList:Ljava/util/List;

    iget-object v2, v2, Lcom/miui/calendar/card/schema/LocalCardSchema;->ads:Ljava/util/List;

    iget-object v4, v0, Lcom/android/calendar/cards/x1;->o:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/calendar/cards/x1;->o(Ljava/util/List;Ljava/util/List;Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 4
    :cond_0
    invoke-direct {v0, v12}, Lcom/android/calendar/cards/x1;->v(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->p:Ljava/lang/Boolean;

    .line 5
    iget-object v2, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    invoke-static {v2}, La4/d;->g(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->b:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    invoke-static {v2}, La4/d;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->g:Ljava/lang/String;

    .line 7
    invoke-direct {v0, v12}, Lcom/android/calendar/cards/x1;->v(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    invoke-static {v12, v3}, La4/d;->l(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    iput-object v3, v0, Lcom/android/calendar/cards/x1;->c:Ljava/lang/String;

    .line 9
    invoke-static/range {p2 .. p2}, Lcom/miui/calendar/util/y;->r(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lz3/f;->d(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    iput-object v3, v0, Lcom/android/calendar/cards/x1;->f:Ljava/lang/String;

    .line 10
    invoke-static/range {p2 .. p2}, Lcom/miui/calendar/util/y;->t(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    invoke-static {v12, v3}, Lcom/android/calendar/common/Utils;->v(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    iput-object v3, v0, Lcom/android/calendar/cards/x1;->d:Ljava/lang/String;

    .line 11
    invoke-static/range {p2 .. p2}, Lcom/miui/calendar/util/y;->s(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    iget-object v2, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v12, v2, v3}, Lz3/f;->a(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->e:Ljava/util/ArrayList;

    .line 13
    :cond_4
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->e:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->e:Ljava/util/ArrayList;

    .line 15
    :cond_5
    invoke-static/range {p2 .. p2}, La4/d;->t(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_6

    .line 16
    iget-object v2, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, La4/d;->f(J)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 17
    array-length v4, v2

    if-ne v4, v3, :cond_7

    .line 18
    aget-object v4, v2, v15

    iput-object v4, v0, Lcom/android/calendar/cards/x1;->h:Ljava/lang/String;

    .line 19
    aget-object v2, v2, v14

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->i:Ljava/lang/String;

    goto :goto_3

    .line 20
    :cond_6
    iput-object v4, v0, Lcom/android/calendar/cards/x1;->h:Ljava/lang/String;

    .line 21
    iput-object v4, v0, Lcom/android/calendar/cards/x1;->i:Ljava/lang/String;

    .line 22
    :cond_7
    :goto_3
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->b:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120303

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    iget-object v4, v0, Lcom/android/calendar/cards/x1;->b:Ljava/lang/String;

    aput-object v4, v3, v14

    const-string v4, "%s%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v11, 0x8

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/calendar/cards/x1;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/calendar/cards/x1;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/calendar/cards/x1;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->a:Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070431

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    move v14, v11

    goto :goto_4

    .line 26
    :cond_8
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->p:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    .line 28
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/calendar/cards/x1;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/calendar/cards/x1;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/calendar/cards/x1;->e:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/calendar/cards/x1;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/calendar/cards/x1;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    const/4 v10, 0x1

    const/16 v16, 0x0

    move-object/from16 v2, p2

    move v14, v11

    move/from16 v11, v16

    invoke-static/range {v2 .. v11}, Lcom/android/calendar/common/Utils;->c(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;ZZ)V

    goto :goto_4

    :cond_9
    move v14, v11

    .line 29
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->c:Landroid/widget/TextView;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/calendar/cards/x1;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v8, ""

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v11}, Lcom/android/calendar/common/Utils;->c(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;ZZ)V

    .line 30
    :goto_4
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static/range {p2 .. p2}, La4/d;->t(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    .line 31
    :cond_a
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->d:Landroid/view/View;

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->g:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/calendar/cards/x1;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->h:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/calendar/cards/x1;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->f:Landroid/widget/TextView;

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 38
    :cond_b
    :goto_5
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->d:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :goto_6
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/cards/s1;

    invoke-direct {v3, v0, v12, v1}, Lcom/android/calendar/cards/s1;-><init>(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    invoke-static {v2}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 42
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->a:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/cards/t1;

    invoke-direct {v3, v0, v12, v1}, Lcom/android/calendar/cards/t1;-><init>(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    if-eqz v2, :cond_d

    const-string v2, "text_chain_last_close_julian"

    .line 44
    invoke-static {v12, v2, v15}, Lb2/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    move-result v3

    .line 46
    iget-object v4, v0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    iget-object v4, v4, Lcom/miui/calendar/card/schema/TextChainSchema;->type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    sget-object v5, Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;->ADVERTISEMENT:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    if-ne v4, v5, :cond_c

    iget-object v4, v0, Lcom/android/calendar/cards/x1;->o:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

    iget v4, v4, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->reopenDaysAd:I

    goto :goto_7

    :cond_c
    iget-object v4, v0, Lcom/android/calendar/cards/x1;->o:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

    iget v4, v4, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->reopenDaysNormal:I

    :goto_7
    sub-int/2addr v3, v2

    if-ge v3, v4, :cond_d

    .line 47
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->k:Ljava/lang/Boolean;

    .line 48
    :cond_d
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->k:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const v3, 0x7f08013b

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    if-nez v2, :cond_e

    goto/16 :goto_a

    .line 49
    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/settings/j;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "bindView(): setting OFF, do NOT show text chain"

    .line 50
    invoke-static {v13, v2}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->i:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->j:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 53
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->l:Ljava/lang/Boolean;

    .line 54
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 55
    :cond_f
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->i:Landroid/view/View;

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->j:Landroid/view/View;

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 57
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->l:Ljava/lang/Boolean;

    .line 58
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    const v3, 0x7f080140

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    iget-object v2, v2, Lcom/miui/calendar/card/schema/TextChainSchema;->imgUrl:Ljava/lang/String;

    .line 60
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->k:Lcom/miui/calendar/view/OnlineImageView;

    if-eqz v3, :cond_11

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 62
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->k:Lcom/miui/calendar/view/OnlineImageView;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 63
    :cond_10
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->k:Lcom/miui/calendar/view/OnlineImageView;

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->k:Lcom/miui/calendar/view/OnlineImageView;

    const v4, 0x7f0802c9

    const v5, 0x7f0802c7

    invoke-virtual {v3, v2, v4, v5}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 65
    :cond_11
    :goto_8
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->o:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/calendar/cards/u1;

    invoke-direct {v4, v0, v12, v1}, Lcom/android/calendar/cards/u1;-><init>(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->j:Landroid/view/View;

    new-instance v4, Lcom/android/calendar/cards/x1$a;

    invoke-direct {v4, v0, v12, v1}, Lcom/android/calendar/cards/x1$a;-><init>(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->j:Landroid/view/View;

    invoke-static {v3}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 68
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->l:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    iget-object v4, v4, Lcom/miui/calendar/card/schema/TextChainSchema;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, v0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    iget-object v3, v3, Lcom/miui/calendar/card/schema/TextChainSchema;->type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    sget-object v4, Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;->ADVERTISEMENT:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    if-ne v3, v4, :cond_12

    .line 70
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->n:Landroid/view/View;

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 71
    :cond_12
    iget-object v3, v1, Lcom/android/calendar/cards/x1$c;->n:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :goto_9
    iget-object v3, v0, Lcom/android/calendar/cards/x1;->o:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

    if-eqz v3, :cond_15

    .line 73
    iget-object v5, v1, Lcom/android/calendar/cards/x1$c;->l:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/calendar/cards/x1$c;->m:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->tagText:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->tagTextColor:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;->tagTextBgColor:Ljava/lang/String;

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/lit8 v10, v2, 0x1

    iget-object v2, v0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    iget-object v2, v2, Lcom/miui/calendar/card/schema/TextChainSchema;->type:Lcom/miui/calendar/card/schema/TextChainSchema$TextChainType;

    if-ne v2, v4, :cond_13

    move v15, v3

    :cond_13
    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move v8, v10

    move v9, v15

    .line 75
    invoke-static/range {v2 .. v9}, Lcom/miui/calendar/util/x0;->G0(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_b

    .line 76
    :cond_14
    :goto_a
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->i:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->j:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 78
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/android/calendar/cards/x1;->l:Ljava/lang/Boolean;

    .line 79
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    :cond_15
    :goto_b
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->p:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 81
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_c

    .line 82
    :cond_16
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->E:Landroid/widget/LinearLayout;

    const v3, 0x7f080142

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->p:Landroid/view/View;

    const v3, 0x7f080145

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    .line 84
    :cond_17
    :goto_c
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->E:Landroid/widget/LinearLayout;

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->p:Landroid/view/View;

    const v3, 0x7f080146

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    .line 86
    :cond_18
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_19

    goto :goto_d

    .line 87
    :cond_19
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->E:Landroid/widget/LinearLayout;

    const v3, 0x7f08013d

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    .line 88
    :cond_1a
    :goto_d
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->E:Landroid/widget/LinearLayout;

    const v3, 0x7f080144

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    :goto_e
    iget-object v2, v1, Lcom/android/calendar/cards/x1$c;->E:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/calendar/cards/v1;

    invoke-direct {v3, v1}, Lcom/android/calendar/cards/v1;-><init>(Lcom/android/calendar/cards/x1$c;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    iget-object v2, v0, Lcom/android/calendar/cards/x1;->p:Ljava/lang/Boolean;

    invoke-direct {v0, v12, v1, v2, v1}, Lcom/android/calendar/cards/x1;->n(Landroid/content/Context;Lcom/android/calendar/cards/x1$c;Ljava/lang/Boolean;Lcom/android/calendar/cards/x1$c;)V

    return-void
.end method

.method public o(Ljava/util/List;Ljava/util/List;Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/ModuleSchema;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/calendar/ad/AdSchema;",
            ">;",
            "Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;",
            ")",
            "Lcom/miui/calendar/card/schema/TextChainSchema;"
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/miui/calendar/ad/AdSchema;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/miui/calendar/card/schema/TextChainSchema;->createTextChain(Lcom/miui/calendar/ad/AdSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/calendar/common/ModuleSchema;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/miui/calendar/card/schema/TextChainSchema;->createTextChain(Lcom/android/calendar/common/ModuleSchema;)Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return-object p1
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
.end method

.method public w(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/x1;->l:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/cards/x1;->j:Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/x1;->y(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
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
