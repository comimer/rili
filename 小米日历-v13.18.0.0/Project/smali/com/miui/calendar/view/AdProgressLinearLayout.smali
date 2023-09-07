.class public Lcom/miui/calendar/view/AdProgressLinearLayout;
.super Lcom/miui/calendar/view/y;
.source "AdProgressLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private o:Lcom/miui/calendar/ad/AdSchema;

.field private p:Landroid/content/Context;

.field public q:Landroid/widget/TextView;

.field private r:Lcom/miui/calendar/view/AdProgressTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/calendar/view/AdProgressLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/calendar/view/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    const p3, 0x7f120051

    .line 4
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/calendar/view/y;->i:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/calendar/util/w;->c()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070200

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06002d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 10
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 11
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method private setProgressButtonStatus(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/miui/calendar/view/y;->n:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f06002b

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/view/y;->m:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v1, 0x7f06002d

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
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
.end method


# virtual methods
.method public b(Lcom/miui/calendar/ad/AdSchema;Landroid/content/Context;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/miui/calendar/view/AdProgressLinearLayout;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x4

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/AdProgressLinearLayout;->setProgressButtonStatus(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/miui/calendar/view/y;->setProgress(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 33
    .line 34
    const p2, 0x7f120054

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v3, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lcom/miui/calendar/ad/c;->d(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v3, 0x3

    .line 64
    const/4 v4, -0x1

    .line 65
    if-eq p1, v4, :cond_8

    .line 66
    .line 67
    const/4 v5, 0x5

    .line 68
    if-eq p1, v5, :cond_4

    .line 69
    .line 70
    if-eq p1, v0, :cond_8

    .line 71
    .line 72
    const/4 v6, 0x2

    .line 73
    if-eq p1, v6, :cond_4

    .line 74
    .line 75
    if-eq p1, v3, :cond_8

    .line 76
    .line 77
    const/16 p1, -0x64

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/AdProgressLinearLayout;->setProgressButtonStatus(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/miui/calendar/view/y;->setProgress(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/miui/calendar/view/y;->i:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const v0, 0x7f080160

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p1, v2, v2, p2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 112
    .line 113
    const/16 p2, 0x14

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/miui/calendar/view/y;->i:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_2

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 130
    .line 131
    if-eqz p1, :cond_9

    .line 132
    .line 133
    iget-object p1, p1, Lcom/miui/calendar/ad/AdSchema;->buttonText:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p1}, Lorg/apache/commons/lang3/e;->h(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_9

    .line 140
    .line 141
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 144
    .line 145
    iget-object p2, p2, Lcom/miui/calendar/ad/AdSchema;->buttonText:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 158
    .line 159
    const p2, 0x7f120058

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    invoke-direct {p0, v5}, Lcom/miui/calendar/view/AdProgressLinearLayout;->setProgressButtonStatus(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 181
    .line 182
    iget-object p2, p2, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/miui/calendar/ad/c;->b(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eq p1, v4, :cond_5

    .line 189
    .line 190
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 191
    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v5, "%"

    .line 201
    .line 202
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {p2, v3}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_5
    if-eq p1, v4, :cond_6

    .line 213
    .line 214
    move v1, p1

    .line 215
    :cond_6
    invoke-virtual {p0, v1}, Lcom/miui/calendar/view/y;->setProgress(I)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iget-object p2, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 225
    .line 226
    iget-object p2, p2, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Lcom/miui/calendar/ad/c;->c(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    const/4 p2, -0x3

    .line 233
    if-ne p1, p2, :cond_7

    .line 234
    .line 235
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 236
    .line 237
    const p2, 0x7f120055

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 241
    .line 242
    .line 243
    :cond_7
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 244
    .line 245
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_8
    invoke-direct {p0, v3}, Lcom/miui/calendar/view/AdProgressLinearLayout;->setProgressButtonStatus(I)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 256
    .line 257
    const p2, 0x7f120052

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->q:Landroid/widget/TextView;

    .line 264
    .line 265
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v1}, Lcom/miui/calendar/view/y;->setProgress(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 272
    .line 273
    .line 274
    :cond_9
    :goto_1
    return-void
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

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/AdProgressLinearLayout;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/miui/calendar/ad/a$b;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 11
    .line 12
    const-string v1, "BUTTON"

    .line 13
    .line 14
    invoke-direct {p1, v1, v0}, Lcom/miui/calendar/ad/a$b;-><init>(Ljava/lang/String;Lcom/miui/calendar/ad/AdSchema;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/miui/calendar/ad/a;->a(Landroid/content/Context;Lcom/miui/calendar/ad/a$b;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const-string v0, "Cal:D:AdProgressLinearLayout"

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "onClick() open app:"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/miui/calendar/ad/AdSchema;->onDownloadAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 72
    .line 73
    invoke-interface {p1, v0}, Lcom/miui/calendar/view/AdProgressTextView$a;->a(Lcom/miui/calendar/ad/AdSchema;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lcom/miui/calendar/ad/c;->d(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 v1, 0x5

    .line 92
    if-ne p1, v1, :cond_8

    .line 93
    .line 94
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/miui/calendar/ad/c;->c(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    const/4 v1, -0x3

    .line 109
    if-ne p1, v1, :cond_5

    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "onClick() resume app:"

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 138
    .line 139
    invoke-static {p1, v1}, Lcom/miui/calendar/ad/AdSchema;->onResumeByFloat(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_3

    .line 144
    .line 145
    const-string p1, "onClick() resume app error"

    .line 146
    .line 147
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 156
    .line 157
    invoke-interface {p1, v0}, Lcom/miui/calendar/view/AdProgressTextView$a;->b(Lcom/miui/calendar/ad/AdSchema;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_0
    return-void

    .line 161
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v1, "onClick() pause app:"

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 188
    .line 189
    invoke-static {p1, v1}, Lcom/miui/calendar/ad/AdSchema;->onPauseByFloat(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-nez p1, :cond_6

    .line 194
    .line 195
    const-string p1, "onClick() pause app error"

    .line 196
    .line 197
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_6
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 202
    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 206
    .line 207
    invoke-interface {p1, v0}, Lcom/miui/calendar/view/AdProgressTextView$a;->d(Lcom/miui/calendar/ad/AdSchema;)V

    .line 208
    .line 209
    .line 210
    :cond_7
    :goto_1
    return-void

    .line 211
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v1, "onClick() download app:"

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 222
    .line 223
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->p:Landroid/content/Context;

    .line 236
    .line 237
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 238
    .line 239
    invoke-static {p1, v1}, Lcom/miui/calendar/ad/AdSchema;->onDownloadByFloat(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-nez p1, :cond_9

    .line 244
    .line 245
    const-string p1, "onClick() download app error"

    .line 246
    .line 247
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_9
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 252
    .line 253
    if-eqz p1, :cond_a

    .line 254
    .line 255
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->o:Lcom/miui/calendar/ad/AdSchema;

    .line 256
    .line 257
    invoke-interface {p1, v0}, Lcom/miui/calendar/view/AdProgressTextView$a;->c(Lcom/miui/calendar/ad/AdSchema;)V

    .line 258
    .line 259
    .line 260
    :cond_a
    :goto_2
    return-void
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

.method public setListener(Lcom/miui/calendar/view/AdProgressTextView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/AdProgressLinearLayout;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

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
