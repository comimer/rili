.class public Lmiuix/appcompat/internal/app/widget/ActionBarView;
.super Lmiuix/appcompat/internal/app/widget/a;
.source "ActionBarView.java"

# interfaces
.implements Lmiuix/view/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarView$l;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$k;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
    }
.end annotation


# instance fields
.field private A0:Landroid/widget/SpinnerAdapter;

.field private B0:Landroidx/appcompat/app/a$c;

.field private C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

.field private D:Ljava/lang/CharSequence;

.field D0:Landroid/view/View;

.field private E:I

.field E0:Landroid/view/Window$Callback;

.field private F:Landroid/graphics/drawable/Drawable;

.field private F0:Z

.field private G:Landroid/graphics/drawable/Drawable;

.field protected G0:Lg9/b;

.field private H:Landroid/content/Context;

.field protected H0:Lg9/b;

.field private final I:I

.field protected I0:Lg9/b;

.field private J:Landroid/graphics/drawable/Drawable;

.field private final J0:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private K:I

.field private final K0:Landroid/view/View$OnClickListener;

.field private L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private final L0:Landroid/view/View$OnClickListener;

.field private M:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private final M0:Landroid/view/View$OnClickListener;

.field private N:Landroid/widget/FrameLayout;

.field private final N0:Landroid/text/TextWatcher;

.field private O:Landroid/widget/FrameLayout;

.field private O0:Z

.field private P:Landroid/widget/FrameLayout;

.field private P0:Z

.field private Q:Lmiuix/springback/view/SpringBackLayout;

.field private Q0:I

.field private R:Lmiuix/springback/view/SpringBackLayout;

.field private R0:I

.field private S:Lo9/f;

.field S0:I

.field private T:Lo9/h;

.field private T0:I

.field private U:Landroid/view/View;

.field private U0:I

.field private V:Landroid/widget/Spinner;

.field private V0:Lmiuix/appcompat/internal/app/widget/a$c;

.field private W:Landroid/widget/LinearLayout;

.field private W0:Lmiuix/appcompat/internal/app/widget/a$c;

.field private X0:Z

.field private Y0:Z

.field private Z0:Landroid/widget/Scroller;

.field private a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private a1:Z

.field private b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private b1:Z

.field private c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private c1:Z

.field private d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private d1:Z

.field private e0:Landroid/view/View;

.field private e1:Lmiuix/animation/f;

.field private f0:Landroid/widget/ProgressBar;

.field private f1:Ljava/lang/Runnable;

.field private g0:Landroid/widget/ProgressBar;

.field private h0:Landroid/view/View;

.field private i0:Landroid/view/View;

.field private j0:Landroid/view/View;

.field private k0:I

.field private l0:I

.field private m0:I

.field private n0:I

.field private o0:I

.field private p0:I

.field private q0:I

.field private r0:I

.field private s0:I

.field private t0:Z

.field private u0:Z

.field private v0:Z

.field private w0:Z

.field private x:I

.field private x0:Lmiuix/appcompat/internal/view/menu/c;

.field private y:I

.field private y0:Lmiuix/appcompat/internal/view/menu/action/a;

.field private z:Ljava/lang/CharSequence;

.field private z0:Lmiuix/appcompat/internal/view/menu/action/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F0:Z

    .line 9
    .line 10
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$b;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$b;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G0:Lg9/b;

    .line 16
    .line 17
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$c;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$c;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H0:Lg9/b;

    .line 23
    .line 24
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$d;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$d;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I0:Lg9/b;

    .line 30
    .line 31
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$e;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$e;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J0:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 37
    .line 38
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$f;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$f;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K0:Landroid/view/View$OnClickListener;

    .line 44
    .line 45
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$g;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$g;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L0:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$h;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$h;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M0:Landroid/view/View$OnClickListener;

    .line 58
    .line 59
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$i;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$i;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N0:Landroid/text/TextWatcher;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->O0:Z

    .line 68
    .line 69
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P0:Z

    .line 70
    .line 71
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q0:I

    .line 72
    .line 73
    new-instance v2, Lmiuix/appcompat/internal/app/widget/a$c;

    .line 74
    .line 75
    invoke-direct {v2}, Lmiuix/appcompat/internal/app/widget/a$c;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 79
    .line 80
    new-instance v2, Lmiuix/appcompat/internal/app/widget/a$c;

    .line 81
    .line 82
    invoke-direct {v2}, Lmiuix/appcompat/internal/app/widget/a$c;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 86
    .line 87
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->X0:Z

    .line 88
    .line 89
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Y0:Z

    .line 90
    .line 91
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1:Z

    .line 92
    .line 93
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c1:Z

    .line 94
    .line 95
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d1:Z

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e1:Lmiuix/animation/f;

    .line 99
    .line 100
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarView$a;

    .line 101
    .line 102
    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$a;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 103
    .line 104
    .line 105
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f1:Ljava/lang/Runnable;

    .line 106
    .line 107
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/a;->e:Ld9/a;

    .line 108
    .line 109
    new-array v3, v0, [Lg9/b;

    .line 110
    .line 111
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I0:Lg9/b;

    .line 112
    .line 113
    aput-object v4, v3, v1

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 119
    .line 120
    new-instance v2, Landroid/widget/Scroller;

    .line 121
    .line 122
    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0:Landroid/widget/Scroller;

    .line 126
    .line 127
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1:Z

    .line 128
    .line 129
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c1:Z

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    sget v3, Lk9/e;->j:I

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    sget v3, Lk9/e;->k:I

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->n0:I

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    sget v3, Lk9/e;->l:I

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->o0:I

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    sget v3, Lk9/e;->h:I

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->p0:I

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    sget v3, Lk9/e;->e:I

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->q0:I

    .line 190
    .line 191
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/a;->a:Ld9/a;

    .line 192
    .line 193
    new-array v3, v0, [Lg9/b;

    .line 194
    .line 195
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G0:Lg9/b;

    .line 196
    .line 197
    aput-object v4, v3, v1

    .line 198
    .line 199
    invoke-virtual {v2, v3}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/a;->b:Ld9/a;

    .line 203
    .line 204
    new-array v3, v0, [Lg9/b;

    .line 205
    .line 206
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H0:Lg9/b;

    .line 207
    .line 208
    aput-object v4, v3, v1

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 211
    .line 212
    .line 213
    new-instance v2, Landroid/widget/FrameLayout;

    .line 214
    .line 215
    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 219
    .line 220
    sget v3, Lk9/g;->b:I

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 223
    .line 224
    .line 225
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 226
    .line 227
    const/16 v3, 0x11

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 233
    .line 234
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 238
    .line 239
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 240
    .line 241
    const/high16 v4, 0x3f800000    # 1.0f

    .line 242
    .line 243
    const/4 v5, 0x0

    .line 244
    if-nez v3, :cond_0

    .line 245
    .line 246
    move v3, v4

    .line 247
    goto :goto_0

    .line 248
    :cond_0
    move v3, v5

    .line 249
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 250
    .line 251
    .line 252
    new-instance v2, Landroid/widget/FrameLayout;

    .line 253
    .line 254
    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 255
    .line 256
    .line 257
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 258
    .line 259
    sget v3, Lk9/g;->f:I

    .line 260
    .line 261
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 262
    .line 263
    .line 264
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 265
    .line 266
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 267
    .line 268
    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->o0:I

    .line 269
    .line 270
    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->p0:I

    .line 271
    .line 272
    invoke-virtual {v2, v3, v6, v3, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 273
    .line 274
    .line 275
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 276
    .line 277
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 281
    .line 282
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 283
    .line 284
    if-nez v3, :cond_1

    .line 285
    .line 286
    move v4, v5

    .line 287
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 288
    .line 289
    .line 290
    new-instance v2, Lmiuix/springback/view/SpringBackLayout;

    .line 291
    .line 292
    invoke-direct {v2, p1}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 296
    .line 297
    sget v3, Lk9/g;->c:I

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 300
    .line 301
    .line 302
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 303
    .line 304
    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 305
    .line 306
    .line 307
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 308
    .line 309
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    new-instance v2, Lmiuix/springback/view/SpringBackLayout;

    .line 313
    .line 314
    invoke-direct {v2, p1}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 318
    .line 319
    sget v3, Lk9/g;->g:I

    .line 320
    .line 321
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 322
    .line 323
    .line 324
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 325
    .line 326
    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 335
    .line 336
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/a$c;->b(Landroid/view/View;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 342
    .line 343
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 344
    .line 345
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/a$c;->b(Landroid/view/View;)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 349
    .line 350
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 351
    .line 352
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/a$c;->b(Landroid/view/View;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 356
    .line 357
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 358
    .line 359
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/a$c;->b(Landroid/view/View;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 363
    .line 364
    .line 365
    sget-object v0, Lk9/l;->a:[I

    .line 366
    .line 367
    const v2, 0x10102ce

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    sget v2, Lk9/l;->h:I

    .line 375
    .line 376
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 381
    .line 382
    sget v2, Lk9/l;->f:I

    .line 383
    .line 384
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 389
    .line 390
    sget v2, Lk9/l;->j:I

    .line 391
    .line 392
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 397
    .line 398
    sget v2, Lk9/l;->w:I

    .line 399
    .line 400
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->w0:Z

    .line 405
    .line 406
    sget v2, Lk9/l;->g:I

    .line 407
    .line 408
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G:Landroid/graphics/drawable/Drawable;

    .line 413
    .line 414
    sget v2, Lk9/l;->b:I

    .line 415
    .line 416
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F:Landroid/graphics/drawable/Drawable;

    .line 421
    .line 422
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    sget v3, Lk9/l;->o:I

    .line 427
    .line 428
    sget v4, Lk9/i;->b:I

    .line 429
    .line 430
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I:I

    .line 435
    .line 436
    sget v3, Lk9/l;->l:I

    .line 437
    .line 438
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->r0:I

    .line 443
    .line 444
    sget v3, Lk9/l;->m:I

    .line 445
    .line 446
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->s0:I

    .line 451
    .line 452
    sget v3, Lk9/l;->n:I

    .line 453
    .line 454
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->k0:I

    .line 459
    .line 460
    sget v3, Lk9/l;->p:I

    .line 461
    .line 462
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l0:I

    .line 467
    .line 468
    sget v3, Lk9/l;->i:I

    .line 469
    .line 470
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 475
    .line 476
    .line 477
    sget v3, Lk9/l;->k:I

    .line 478
    .line 479
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    if-eqz v3, :cond_2

    .line 484
    .line 485
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 490
    .line 491
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 492
    .line 493
    :cond_2
    sget v2, Lk9/l;->e:I

    .line 494
    .line 495
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/a;->k:I

    .line 500
    .line 501
    sget v2, Lk9/l;->d:I

    .line 502
    .line 503
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/a;->l:I

    .line 508
    .line 509
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    .line 511
    .line 512
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/a;

    .line 513
    .line 514
    const/4 v2, 0x0

    .line 515
    const v3, 0x102002c

    .line 516
    .line 517
    .line 518
    const/4 v4, 0x0

    .line 519
    const/4 v5, 0x0

    .line 520
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 521
    .line 522
    move-object v0, v7

    .line 523
    move-object v1, p1

    .line 524
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y0:Lmiuix/appcompat/internal/view/menu/action/a;

    .line 528
    .line 529
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/a;

    .line 530
    .line 531
    const v3, 0x1020016

    .line 532
    .line 533
    .line 534
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 535
    .line 536
    move-object v0, v7

    .line 537
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 538
    .line 539
    .line 540
    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z0:Lmiuix/appcompat/internal/view/menu/action/a;

    .line 541
    .line 542
    new-instance v0, Lmiuix/appcompat/internal/app/widget/g;

    .line 543
    .line 544
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/g;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 548
    .line 549
    .line 550
    return-void
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
.end method

.method public static synthetic A(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K0()V

    return-void
.end method

.method static synthetic B(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

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

.method private B0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->O:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method static synthetic C(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/springback/view/SpringBackLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

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

.method private C0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v2, v0, Landroidx/appcompat/app/a$a;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroidx/appcompat/app/a$a;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    const/4 v2, 0x0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :cond_1
    move v1, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget v0, v0, Landroidx/appcompat/app/a$a;->a:I

    .line 32
    .line 33
    invoke-static {p0}, Lka/i;->a(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-direct {p0, v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L0(IZ)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const v3, 0x800005

    .line 42
    .line 43
    .line 44
    if-ne v0, v3, :cond_1

    .line 45
    .line 46
    :cond_3
    :goto_1
    return v1
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
.end method

.method static synthetic D(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

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

.method static synthetic E(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lo9/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

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

.method static synthetic F(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

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
.end method

.method private F0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->w0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
    .line 27
.end method

.method static synthetic G(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

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

.method private synthetic G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M0:Landroid/view/View$OnClickListener;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lo9/f;->v(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 15
    .line 16
    invoke-virtual {v0}, Lo9/f;->j()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lo9/f;->x(F)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M0:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lo9/h;->h(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
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
.end method

.method static synthetic H(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

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

.method private synthetic H0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lo9/f;->h()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget v3, Lk9/b;->e:I

    .line 16
    .line 17
    invoke-static {v2, v3}, Lka/d;->g(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr v1, v2

    .line 22
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    new-instance v1, Landroid/view/TouchDelegate;

    .line 25
    .line 26
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 27
    .line 28
    invoke-virtual {v2}, Lo9/f;->i()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

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
.end method

.method static synthetic I(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

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

.method private synthetic I0()V
    .locals 5

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 10
    .line 11
    invoke-virtual {v0, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/a$c;->i(FII)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/a$c;->i(FII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v4, 0x1

    .line 21
    if-ne v0, v4, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 24
    .line 25
    const/16 v4, 0x14

    .line 26
    .line 27
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/appcompat/internal/app/widget/a$c;->i(FII)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/a$c;->i(FII)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
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
.end method

.method static synthetic J(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

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

.method private synthetic J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lo9/f;->j()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lo9/f;->x(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
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

.method static synthetic K(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V:Landroid/widget/Spinner;

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

.method private synthetic K0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lo9/f;->j()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lo9/f;->x(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
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

.method static synthetic L(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

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

.method private L0(IZ)I
    .locals 3

    const v0, 0x800007

    and-int/2addr p1, v0

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const v1, 0x800005

    const v2, 0x800003

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method static synthetic M(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 2
    .line 3
    return p0
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

.method static synthetic N(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->B0:Landroidx/appcompat/app/a$c;

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

.method static synthetic O(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z0()V

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
.end method

.method private O0(ZIIIII)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    .line 5
    .line 6
    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    invoke-static/range {p0 .. p0}, Lka/i;->a(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sub-int v0, p5, v0

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-int v10, v0, v1

    .line 26
    .line 27
    if-gtz v10, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 38
    .line 39
    :goto_0
    move-object v1, v0

    .line 40
    const/16 v11, 0x8

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eq v0, v11, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->a()I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    add-int v2, v7, v12

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    move-object/from16 v0, p0

    .line 58
    .line 59
    move v3, v8

    .line 60
    move v4, v10

    .line 61
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/a;->r(Landroid/view/View;IIIZ)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, v12

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    move-object/from16 v0, p0

    .line 73
    .line 74
    move v2, v7

    .line 75
    move v3, v8

    .line 76
    move v4, v10

    .line 77
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/a;->r(Landroid/view/View;IIIZ)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_1
    add-int/2addr v7, v0

    .line 82
    :cond_3
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 83
    .line 84
    const/4 v12, 0x0

    .line 85
    const/4 v13, 0x1

    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v15, 0x2

    .line 88
    if-nez v0, :cond_f

    .line 89
    .line 90
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->B0()Z

    .line 91
    .line 92
    .line 93
    move-result v16

    .line 94
    if-eqz v16, :cond_7

    .line 95
    .line 96
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 97
    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    move-object/from16 v0, p0

    .line 102
    .line 103
    move v2, v7

    .line 104
    move v3, v8

    .line 105
    move v4, v10

    .line 106
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/a;->r(Landroid/view/View;IIIZ)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    add-int/2addr v7, v0

    .line 111
    :cond_4
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F0()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eq v0, v11, :cond_5

    .line 126
    .line 127
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 128
    .line 129
    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l0(Landroid/view/View;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    move v2, v0

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    move v2, v7

    .line 136
    :goto_2
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput-boolean v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F0:Z

    .line 141
    .line 142
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1()V

    .line 143
    .line 144
    .line 145
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int v4, v2, v0

    .line 152
    .line 153
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    sub-int v1, v10, v0

    .line 160
    .line 161
    div-int/2addr v1, v15

    .line 162
    add-int v3, v8, v1

    .line 163
    .line 164
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 165
    .line 166
    add-int v5, v3, v0

    .line 167
    .line 168
    move-object/from16 v0, p0

    .line 169
    .line 170
    invoke-static/range {v0 .. v5}, Lka/i;->c(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 175
    .line 176
    invoke-virtual {v6, v0, v7, v8, v10}, Lmiuix/appcompat/internal/app/widget/a;->q(Landroid/view/View;III)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    add-int/2addr v7, v0

    .line 181
    :cond_7
    :goto_3
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 182
    .line 183
    if-eq v0, v13, :cond_d

    .line 184
    .line 185
    if-eq v0, v15, :cond_8

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_8
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-ne v0, v13, :cond_9

    .line 195
    .line 196
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 197
    .line 198
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 207
    .line 208
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_9
    move-object v0, v12

    .line 216
    :goto_4
    if-eqz v0, :cond_f

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    sub-int/2addr v2, v1

    .line 231
    div-int/2addr v2, v15

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    add-int/2addr v3, v1

    .line 237
    div-int/2addr v3, v15

    .line 238
    if-eqz v16, :cond_a

    .line 239
    .line 240
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l0:I

    .line 241
    .line 242
    add-int/2addr v2, v1

    .line 243
    sub-int/2addr v3, v1

    .line 244
    :cond_a
    move v7, v3

    .line 245
    if-eqz v9, :cond_b

    .line 246
    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    sub-int/2addr v1, v7

    .line 252
    goto :goto_5

    .line 253
    :cond_b
    move v1, v2

    .line 254
    :goto_5
    if-eqz v9, :cond_c

    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    sub-int/2addr v3, v2

    .line 261
    goto :goto_6

    .line 262
    :cond_c
    move v3, v7

    .line 263
    :goto_6
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 264
    .line 265
    add-int/2addr v0, v8

    .line 266
    invoke-virtual {v2, v1, v8, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 267
    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_d
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W:Landroid/widget/LinearLayout;

    .line 271
    .line 272
    if-eqz v0, :cond_f

    .line 273
    .line 274
    if-eqz v16, :cond_e

    .line 275
    .line 276
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l0:I

    .line 277
    .line 278
    add-int/2addr v7, v1

    .line 279
    :cond_e
    invoke-virtual {v6, v0, v7, v8, v10}, Lmiuix/appcompat/internal/app/widget/a;->q(Landroid/view/View;III)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l0:I

    .line 284
    .line 285
    add-int/2addr v0, v1

    .line 286
    add-int/2addr v7, v0

    .line 287
    :cond_f
    :goto_7
    sub-int v0, p4, p2

    .line 288
    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    sub-int/2addr v0, v1

    .line 294
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 295
    .line 296
    if-eqz v1, :cond_10

    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-ne v1, v6, :cond_10

    .line 303
    .line 304
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 305
    .line 306
    invoke-virtual {v6, v1, v0, v8, v10}, Lmiuix/appcompat/internal/app/widget/a;->s(Landroid/view/View;III)I

    .line 307
    .line 308
    .line 309
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 310
    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    sub-int/2addr v0, v1

    .line 316
    :cond_10
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 317
    .line 318
    if-eqz v1, :cond_11

    .line 319
    .line 320
    invoke-virtual {v6, v1, v0, v8, v10}, Lmiuix/appcompat/internal/app/widget/a;->s(Landroid/view/View;III)I

    .line 321
    .line 322
    .line 323
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    sub-int/2addr v0, v1

    .line 330
    :cond_11
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 331
    .line 332
    if-eqz v1, :cond_12

    .line 333
    .line 334
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eq v1, v11, :cond_12

    .line 339
    .line 340
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 341
    .line 342
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->k0:I

    .line 343
    .line 344
    sub-int v2, v0, v2

    .line 345
    .line 346
    invoke-virtual {v6, v1, v2, v8, v10}, Lmiuix/appcompat/internal/app/widget/a;->s(Landroid/view/View;III)I

    .line 347
    .line 348
    .line 349
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 350
    .line 351
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->k0:I

    .line 356
    .line 357
    mul-int/2addr v2, v15

    .line 358
    sub-int/2addr v1, v2

    .line 359
    sub-int/2addr v0, v1

    .line 360
    :cond_12
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 361
    .line 362
    if-eqz v1, :cond_13

    .line 363
    .line 364
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eq v1, v11, :cond_13

    .line 369
    .line 370
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 371
    .line 372
    invoke-virtual {v6, v1, v0, v8, v10}, Lmiuix/appcompat/internal/app/widget/a;->s(Landroid/view/View;III)I

    .line 373
    .line 374
    .line 375
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 376
    .line 377
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    sub-int/2addr v0, v1

    .line 382
    :cond_13
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 383
    .line 384
    const/16 v2, 0x10

    .line 385
    .line 386
    if-eqz v1, :cond_14

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_14
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 390
    .line 391
    and-int/2addr v1, v2

    .line 392
    if-eqz v1, :cond_15

    .line 393
    .line 394
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 395
    .line 396
    if-eqz v1, :cond_15

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_15
    move-object v1, v12

    .line 400
    :goto_8
    if-eqz v1, :cond_25

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-eq v3, v11, :cond_25

    .line 407
    .line 408
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    instance-of v4, v3, Landroidx/appcompat/app/a$a;

    .line 413
    .line 414
    if-eqz v4, :cond_16

    .line 415
    .line 416
    move-object v12, v3

    .line 417
    check-cast v12, Landroidx/appcompat/app/a$a;

    .line 418
    .line 419
    :cond_16
    if-eqz v12, :cond_17

    .line 420
    .line 421
    iget v3, v12, Landroidx/appcompat/app/a$a;->a:I

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_17
    const v3, 0x800013

    .line 425
    .line 426
    .line 427
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    if-eqz v12, :cond_18

    .line 432
    .line 433
    invoke-virtual {v12}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    add-int/2addr v7, v5

    .line 438
    invoke-virtual {v12}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    sub-int/2addr v0, v5

    .line 443
    iget v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 444
    .line 445
    iget v8, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_18
    move v5, v14

    .line 449
    move v8, v5

    .line 450
    :goto_a
    const v10, 0x800007

    .line 451
    .line 452
    .line 453
    and-int/2addr v10, v3

    .line 454
    const v11, 0x800005

    .line 455
    .line 456
    .line 457
    const/4 v12, -0x1

    .line 458
    const v14, 0x800003

    .line 459
    .line 460
    .line 461
    if-ne v10, v13, :cond_1a

    .line 462
    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 464
    .line 465
    .line 466
    move-result v16

    .line 467
    sub-int v16, v16, v4

    .line 468
    .line 469
    div-int/lit8 v2, v16, 0x2

    .line 470
    .line 471
    if-ge v2, v7, :cond_19

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_19
    add-int/2addr v2, v4

    .line 475
    if-le v2, v0, :cond_1b

    .line 476
    .line 477
    move v10, v11

    .line 478
    goto :goto_c

    .line 479
    :cond_1a
    if-ne v3, v12, :cond_1b

    .line 480
    .line 481
    :goto_b
    move v10, v14

    .line 482
    :cond_1b
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    invoke-direct {v6, v10, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L0(IZ)I

    .line 487
    .line 488
    .line 489
    move-result v10

    .line 490
    if-eq v10, v13, :cond_1d

    .line 491
    .line 492
    if-eq v10, v14, :cond_1e

    .line 493
    .line 494
    if-eq v10, v11, :cond_1c

    .line 495
    .line 496
    move v7, v2

    .line 497
    goto :goto_d

    .line 498
    :cond_1c
    sub-int v7, v0, v4

    .line 499
    .line 500
    goto :goto_d

    .line 501
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    sub-int/2addr v0, v4

    .line 506
    div-int/lit8 v7, v0, 0x2

    .line 507
    .line 508
    :cond_1e
    :goto_d
    and-int/lit8 v0, v3, 0x70

    .line 509
    .line 510
    if-ne v3, v12, :cond_1f

    .line 511
    .line 512
    const/16 v0, 0x10

    .line 513
    .line 514
    :cond_1f
    const/16 v2, 0x10

    .line 515
    .line 516
    if-eq v0, v2, :cond_22

    .line 517
    .line 518
    const/16 v2, 0x30

    .line 519
    .line 520
    if-eq v0, v2, :cond_21

    .line 521
    .line 522
    const/16 v2, 0x50

    .line 523
    .line 524
    if-eq v0, v2, :cond_20

    .line 525
    .line 526
    const/4 v0, 0x0

    .line 527
    goto :goto_e

    .line 528
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    sub-int/2addr v0, v2

    .line 537
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    sub-int/2addr v0, v2

    .line 542
    sub-int/2addr v0, v8

    .line 543
    goto :goto_e

    .line 544
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    add-int/2addr v0, v5

    .line 549
    goto :goto_e

    .line 550
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    sub-int/2addr v2, v3

    .line 563
    sub-int/2addr v2, v0

    .line 564
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    sub-int/2addr v2, v0

    .line 569
    div-int/lit8 v0, v2, 0x2

    .line 570
    .line 571
    :goto_e
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-eqz v9, :cond_23

    .line 576
    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    sub-int/2addr v3, v7

    .line 582
    sub-int/2addr v3, v2

    .line 583
    goto :goto_f

    .line 584
    :cond_23
    move v3, v7

    .line 585
    :goto_f
    if-eqz v9, :cond_24

    .line 586
    .line 587
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    sub-int/2addr v2, v7

    .line 592
    goto :goto_10

    .line 593
    :cond_24
    add-int/2addr v2, v7

    .line 594
    :goto_10
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    add-int/2addr v4, v0

    .line 599
    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 600
    .line 601
    .line 602
    :cond_25
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f0:Landroid/widget/ProgressBar;

    .line 603
    .line 604
    if-eqz v0, :cond_26

    .line 605
    .line 606
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 607
    .line 608
    .line 609
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f0:Landroid/widget/ProgressBar;

    .line 610
    .line 611
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    div-int/2addr v0, v15

    .line 616
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f0:Landroid/widget/ProgressBar;

    .line 617
    .line 618
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->k0:I

    .line 619
    .line 620
    neg-int v3, v0

    .line 621
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    add-int/2addr v4, v2

    .line 626
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 627
    .line 628
    .line 629
    :cond_26
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 630
    .line 631
    if-eqz v0, :cond_29

    .line 632
    .line 633
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_29

    .line 638
    .line 639
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 640
    .line 641
    add-int v7, p2, v0

    .line 642
    .line 643
    sub-int v8, p4, v0

    .line 644
    .line 645
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 646
    .line 647
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 648
    .line 649
    .line 650
    move-result v9

    .line 651
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 652
    .line 653
    add-int v5, p5, p6

    .line 654
    .line 655
    move-object/from16 v0, p0

    .line 656
    .line 657
    move v2, v7

    .line 658
    move/from16 v3, p5

    .line 659
    .line 660
    move v4, v8

    .line 661
    invoke-static/range {v0 .. v5}, Lka/i;->c(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 662
    .line 663
    .line 664
    sub-int/2addr v8, v7

    .line 665
    sub-int/2addr v8, v9

    .line 666
    div-int/2addr v8, v15

    .line 667
    const/4 v0, 0x0

    .line 668
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    int-to-float v0, v1

    .line 673
    invoke-static/range {p0 .. p0}, Lka/i;->a(Landroid/view/View;)Z

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    if-eqz v1, :cond_27

    .line 678
    .line 679
    neg-float v0, v0

    .line 680
    :cond_27
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 681
    .line 682
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 683
    .line 684
    .line 685
    invoke-static/range {p0 .. p0}, Lka/i;->a(Landroid/view/View;)Z

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    if-eqz v0, :cond_28

    .line 690
    .line 691
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 692
    .line 693
    mul-int/lit8 v1, v0, 0x2

    .line 694
    .line 695
    sub-int v1, p4, v1

    .line 696
    .line 697
    sub-int/2addr v1, v9

    .line 698
    mul-int/2addr v0, v15

    .line 699
    sub-int v9, p4, v0

    .line 700
    .line 701
    move v0, v1

    .line 702
    goto :goto_11

    .line 703
    :cond_28
    const/4 v0, 0x0

    .line 704
    :goto_11
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 705
    .line 706
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    const/4 v3, 0x0

    .line 711
    invoke-virtual {v1, v0, v3, v9, v2}, Landroid/view/View;->layout(IIII)V

    .line 712
    .line 713
    .line 714
    :cond_29
    return-void
.end method

.method static synthetic P(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 2
    .line 3
    return p0
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

.method static synthetic Q(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0:Landroid/widget/Scroller;

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

.method static synthetic R(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 2
    .line 3
    return p1
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

.method static synthetic S(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T0:I

    .line 2
    .line 3
    return p0
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

.method static synthetic T(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

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

.method static synthetic U(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a1:Z

    .line 2
    .line 3
    return p0
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

.method static synthetic V(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a1:Z

    .line 2
    .line 3
    return p1
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

.method private V0(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
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

.method static synthetic W(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c1:Z

    .line 2
    .line 3
    return p0
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

.method static synthetic X(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

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

.method static synthetic Y(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y0:Lmiuix/appcompat/internal/view/menu/action/a;

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

.method static synthetic Z(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z0:Lmiuix/appcompat/internal/view/menu/action/a;

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

.method private Z0(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/16 v1, 0x2710

    .line 21
    .line 22
    if-ge p2, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
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

.method static synthetic a0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lo9/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

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

.method private a1(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x2710

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, -0x1

    .line 13
    if-ne p1, v4, :cond_3

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    if-ge p1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move p1, v3

    .line 33
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-eqz v0, :cond_9

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const/4 v4, -0x2

    .line 43
    if-ne p1, v4, :cond_5

    .line 44
    .line 45
    const/16 p1, 0x8

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_4
    if-eqz v0, :cond_9

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    const/4 v4, -0x3

    .line 59
    if-ne p1, v4, :cond_6

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_6
    const/4 v4, -0x4

    .line 67
    if-ne p1, v4, :cond_7

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_7
    if-ltz p1, :cond_9

    .line 74
    .line 75
    if-gt p1, v2, :cond_9

    .line 76
    .line 77
    add-int/lit8 v3, p1, 0x0

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 80
    .line 81
    .line 82
    if-ge p1, v2, :cond_8

    .line 83
    .line 84
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_8
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u0(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 89
    .line 90
    .line 91
    :cond_9
    :goto_2
    return-void
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

.method static synthetic b0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->v0()V

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
.end method

.method private b1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    const/16 v2, 0x8

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F0:Z

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    move v3, v2

    .line 31
    :goto_2
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 32
    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Lo9/f;->A(I)V

    .line 36
    .line 37
    .line 38
    :cond_3
    if-nez v0, :cond_4

    .line 39
    .line 40
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F0:Z

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 45
    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    :cond_4
    move v1, v2

    .line 53
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lo9/f;->y(I)V

    .line 58
    .line 59
    .line 60
    :cond_6
    return-void
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
.end method

.method static synthetic c0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

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

.method private c1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lo9/f;->C(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
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

.method static synthetic d0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

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

.method private e0(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 2
    .line 3
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 4
    .line 5
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 6
    .line 7
    iput-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 8
    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x0

    .line 16
    const/4 p3, -0x1

    .line 17
    const/4 p4, -0x2

    .line 18
    if-eqz p1, :cond_7

    .line 19
    .line 20
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 21
    .line 22
    and-int/lit8 p1, p1, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v0, 0x1

    .line 43
    if-ne p1, v0, :cond_a

    .line 44
    .line 45
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {p1}, Lq9/a;->b(Landroid/content/Context;)Lq9/a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1}, Lq9/a;->g()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    instance-of p1, p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 83
    .line 84
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 104
    .line 105
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 119
    .line 120
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    .line 122
    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-nez p1, :cond_a

    .line 135
    .line 136
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 137
    .line 138
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 139
    .line 140
    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 153
    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 157
    .line 158
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 167
    .line 168
    if-eqz p1, :cond_a

    .line 169
    .line 170
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 171
    .line 172
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 182
    .line 183
    if-eqz p1, :cond_8

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 189
    .line 190
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 201
    .line 202
    if-eqz p1, :cond_9

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 208
    .line 209
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 222
    .line 223
    .line 224
    :cond_a
    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 225
    .line 226
    invoke-direct {p0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 230
    .line 231
    invoke-direct {p0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    if-eqz p1, :cond_b

    .line 241
    .line 242
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 243
    .line 244
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    .line 246
    :cond_b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_c

    .line 253
    .line 254
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 255
    .line 256
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    .line 258
    :cond_c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    if-eqz p1, :cond_d

    .line 265
    .line 266
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    .line 268
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    .line 270
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    if-eqz p1, :cond_e

    .line 277
    .line 278
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    .line 280
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 281
    .line 282
    :cond_e
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1()V

    .line 283
    .line 284
    .line 285
    return-void
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

.method private f0(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 31
    .line 32
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 36
    .line 37
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 47
    .line 48
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 52
    .line 53
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    return-void
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

.method private g0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lk9/g;->e:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->q0(Landroid/view/View;)Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->p0()Z

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->O:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/a$c;->b(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Lo9/h;->k(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Lo9/h;->l(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lo9/h;->m(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 48
    .line 49
    const/16 v2, 0x8

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lo9/h;->j(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 57
    .line 58
    invoke-virtual {v2}, Lo9/h;->c()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N0:Landroid/text/TextWatcher;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
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
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-object v0
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

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f0:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-object v0
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

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 8
    .line 9
    instance-of v2, v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 18
    .line 19
    check-cast v2, Landroid/app/Activity;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v2, "ActionBarView"

    .line 34
    .line 35
    const-string v3, "Activity component name not found!"

    .line 36
    .line 37
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    .line 63
    .line 64
    or-int/2addr v0, v1

    .line 65
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    return-object v0
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
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 8
    .line 9
    instance-of v2, v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 18
    .line 19
    check-cast v2, Landroid/app/Activity;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v2, "ActionBarView"

    .line 34
    .line 35
    const-string v3, "Activity component name not found!"

    .line 36
    .line 37
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    .line 63
    .line 64
    or-int/2addr v0, v1

    .line 65
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    return-object v0
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
.end method

.method private h0(F)V
    .locals 11

    .line 1
    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sub-float p1, v0, p1

    .line 11
    .line 12
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d1:Z

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    move v1, v3

    .line 35
    :cond_0
    const/16 v4, 0x14

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    if-ne v1, v2, :cond_5

    .line 40
    .line 41
    cmpl-float v1, p1, v5

    .line 42
    .line 43
    const/4 v7, 0x3

    .line 44
    const-wide/16 v8, 0x1

    .line 45
    .line 46
    const-string v10, "target"

    .line 47
    .line 48
    if-lez v1, :cond_1

    .line 49
    .line 50
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P0:Z

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P0:Z

    .line 55
    .line 56
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->O0:Z

    .line 57
    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 59
    .line 60
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->b:Ld9/a;

    .line 61
    .line 62
    invoke-virtual {v0, v5, v6, v4, v1}, Lmiuix/appcompat/internal/app/widget/a$c;->a(FIILd9/a;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->o:Lmiuix/appcompat/app/d;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    new-array v0, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object v10, v0, v6

    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    aput-object v1, v0, v3

    .line 78
    .line 79
    invoke-static {v0}, Lmiuix/animation/a;->z([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0, v8, v9}, Lmiuix/animation/f;->a(J)Lmiuix/animation/f;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v0, v1}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-array v1, v2, [Ljava/lang/Object;

    .line 96
    .line 97
    const-string v8, "expand"

    .line 98
    .line 99
    aput-object v8, v1, v6

    .line 100
    .line 101
    iget v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q0:I

    .line 102
    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    aput-object v9, v1, v3

    .line 108
    .line 109
    invoke-interface {v0, v1}, Lmiuix/animation/f;->M([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-array v1, v7, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object v8, v1, v6

    .line 116
    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    aput-object v4, v1, v3

    .line 122
    .line 123
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/a;->d:Ld9/a;

    .line 124
    .line 125
    aput-object v3, v1, v2

    .line 126
    .line 127
    invoke-interface {v0, v1}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->O0:Z

    .line 132
    .line 133
    if-nez v1, :cond_3

    .line 134
    .line 135
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->O0:Z

    .line 136
    .line 137
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P0:Z

    .line 138
    .line 139
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 140
    .line 141
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1:Z

    .line 142
    .line 143
    if-eqz v4, :cond_2

    .line 144
    .line 145
    move v0, v5

    .line 146
    :cond_2
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/a;->a:Ld9/a;

    .line 147
    .line 148
    invoke-virtual {v1, v0, v6, v6, v4}, Lmiuix/appcompat/internal/app/widget/a$c;->a(FIILd9/a;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->o:Lmiuix/appcompat/app/d;

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    new-array v0, v2, [Ljava/lang/Object;

    .line 156
    .line 157
    aput-object v10, v0, v6

    .line 158
    .line 159
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    aput-object v1, v0, v3

    .line 164
    .line 165
    invoke-static {v0}, Lmiuix/animation/a;->z([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v0, v8, v9}, Lmiuix/animation/f;->a(J)Lmiuix/animation/f;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {v0, v1}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-array v1, v2, [Ljava/lang/Object;

    .line 182
    .line 183
    const-string v4, "collapse"

    .line 184
    .line 185
    aput-object v4, v1, v6

    .line 186
    .line 187
    iget v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q0:I

    .line 188
    .line 189
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    aput-object v8, v1, v3

    .line 194
    .line 195
    invoke-interface {v0, v1}, Lmiuix/animation/f;->M([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-array v1, v7, [Ljava/lang/Object;

    .line 200
    .line 201
    aput-object v4, v1, v6

    .line 202
    .line 203
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    aput-object v4, v1, v3

    .line 208
    .line 209
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/a;->c:Ld9/a;

    .line 210
    .line 211
    aput-object v3, v1, v2

    .line 212
    .line 213
    invoke-interface {v0, v1}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 214
    .line 215
    .line 216
    :cond_3
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 217
    .line 218
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1:Z

    .line 219
    .line 220
    if-eqz v1, :cond_4

    .line 221
    .line 222
    move p1, v5

    .line 223
    :cond_4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->e:Ld9/a;

    .line 224
    .line 225
    invoke-virtual {v0, p1, v6, v6, v1}, Lmiuix/appcompat/internal/app/widget/a$c;->a(FIILd9/a;)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_5
    if-ne v1, v3, :cond_7

    .line 230
    .line 231
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 232
    .line 233
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->b:Ld9/a;

    .line 234
    .line 235
    invoke-virtual {p1, v5, v6, v4, v1}, Lmiuix/appcompat/internal/app/widget/a$c;->a(FIILd9/a;)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 239
    .line 240
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1:Z

    .line 241
    .line 242
    if-eqz v1, :cond_6

    .line 243
    .line 244
    move v0, v5

    .line 245
    :cond_6
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->e:Ld9/a;

    .line 246
    .line 247
    invoke-virtual {p1, v0, v6, v6, v1}, Lmiuix/appcompat/internal/app/widget/a$c;->a(FIILd9/a;)V

    .line 248
    .line 249
    .line 250
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q0:I

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_7
    if-nez v1, :cond_9

    .line 254
    .line 255
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 256
    .line 257
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1:Z

    .line 258
    .line 259
    if-eqz v1, :cond_8

    .line 260
    .line 261
    move v0, v5

    .line 262
    :cond_8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->a:Ld9/a;

    .line 263
    .line 264
    invoke-virtual {p1, v0, v6, v6, v1}, Lmiuix/appcompat/internal/app/widget/a$c;->a(FIILd9/a;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 268
    .line 269
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->e:Ld9/a;

    .line 270
    .line 271
    invoke-virtual {p1, v5, v6, v6, v0}, Lmiuix/appcompat/internal/app/widget/a$c;->a(FIILd9/a;)V

    .line 272
    .line 273
    .line 274
    iput v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q0:I

    .line 275
    .line 276
    :cond_9
    :goto_1
    return-void
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

.method private i0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 28
    .line 29
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Lo9/f;->f(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    :cond_2
    const/4 v1, 0x1

    .line 42
    :cond_3
    :goto_0
    return v1
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
.end method

.method private j0(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    return-void
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
.end method

.method private l0(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, v0

    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/2addr v2, p1

    .line 28
    :cond_0
    sub-int/2addr v1, v2

    .line 29
    return v1
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method private m0(Lmiuix/appcompat/internal/view/menu/c;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/c;->b(Lmiuix/appcompat/internal/view/menu/g;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/c;->b(Lmiuix/appcompat/internal/view/menu/g;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 15
    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->d(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/c;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 23
    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->d(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->updateMenuView(Z)V

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
.end method

.method private p0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 41
    .line 42
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 62
    .line 63
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    .line 72
    .line 73
    return v1
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
.end method

.method private q0(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const v0, 0x1020016

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return-object p1
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

.method private s0()Z
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
    .line 26
    .line 27
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lo9/f;->A(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lo9/f;->z(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lo9/h;->k(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 26
    .line 27
    and-int/lit8 v0, v0, 0x8

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v1

    .line 50
    :goto_0
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lo9/f;->y(I)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lmiuix/appcompat/internal/app/widget/c;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/c;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y0:Lmiuix/appcompat/internal/view/menu/action/a;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/a;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z0:Lmiuix/appcompat/internal/view/menu/action/a;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/a;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    :cond_4
    return-void
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

.method private setTitleVisibility(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Lo9/f;->B(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    move v3, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v3, v1

    .line 25
    :goto_1
    invoke-virtual {v0, v3}, Lo9/h;->m(I)V

    .line 26
    .line 27
    .line 28
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_9

    .line 31
    .line 32
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    and-int/lit8 v0, v0, 0x20

    .line 37
    .line 38
    if-nez v0, :cond_9

    .line 39
    .line 40
    if-eqz p1, :cond_8

    .line 41
    .line 42
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 43
    .line 44
    and-int/lit8 v0, p1, 0x4

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    move v0, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    move v0, v2

    .line 52
    :goto_2
    and-int/lit8 p1, p1, 0x2

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    move v3, v2

    .line 58
    :goto_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 59
    .line 60
    if-nez v3, :cond_7

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    move v1, v2

    .line 65
    goto :goto_4

    .line 66
    :cond_6
    const/4 v1, 0x4

    .line 67
    :cond_7
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_9
    :goto_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 77
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_a

    .line 83
    .line 84
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->p0:I

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_a
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->q0:I

    .line 88
    .line 89
    :goto_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 108
    .line 109
    .line 110
    return-void
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

.method private u0(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
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

.method private v0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 19
    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->c(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 27
    .line 28
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K0:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
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
.end method

.method public static synthetic w(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J0()V

    return-void
.end method

.method private w0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 19
    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 21
    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L0:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K:I

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->d(I)V

    .line 45
    .line 46
    .line 47
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K:I

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->e(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
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
.end method

.method public static synthetic x(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G0()V

    return-void
.end method

.method public static synthetic y(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I0()V

    return-void
.end method

.method public static synthetic z(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H0()V

    return-void
.end method

.method private z0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v3}, Lp9/b;->d(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 17
    .line 18
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L0:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    new-array v0, v1, [Landroid/view/View;

    .line 24
    .line 25
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 26
    .line 27
    aput-object v3, v0, v2

    .line 28
    .line 29
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lmiuix/animation/d;->c()Lmiuix/animation/IHoverStyle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/high16 v3, 0x42700000    # 60.0f

    .line 38
    .line 39
    invoke-interface {v0, v3}, Lmiuix/animation/IHoverStyle;->j(F)V

    .line 40
    .line 41
    .line 42
    new-array v0, v1, [Landroid/view/View;

    .line 43
    .line 44
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 45
    .line 46
    aput-object v3, v0, v2

    .line 47
    .line 48
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Lmiuix/animation/d;->c()Lmiuix/animation/IHoverStyle;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v3, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 57
    .line 58
    invoke-interface {v0, v3}, Lmiuix/animation/IHoverStyle;->A(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 63
    .line 64
    new-array v4, v2, [Ld9/a;

    .line 65
    .line 66
    invoke-interface {v0, v3, v4}, Lmiuix/animation/IHoverStyle;->p(Landroid/view/View;[Ld9/a;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 75
    .line 76
    if-nez v0, :cond_9

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->r0:I

    .line 83
    .line 84
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->s0:I

    .line 85
    .line 86
    invoke-static {v0, v3, v4}, Lp9/b;->b(Landroid/content/Context;II)Lo9/f;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lp9/b;->c(Landroid/content/Context;)Lo9/h;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 101
    .line 102
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 103
    .line 104
    and-int/lit8 v3, v0, 0x4

    .line 105
    .line 106
    if-eqz v3, :cond_1

    .line 107
    .line 108
    move v3, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move v3, v2

    .line 111
    :goto_0
    and-int/lit8 v0, v0, 0x2

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    move v0, v1

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    move v0, v2

    .line 118
    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 119
    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    move v5, v2

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/4 v5, 0x4

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    const/16 v5, 0x8

    .line 129
    .line 130
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 134
    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    move v5, v1

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    move v5, v2

    .line 142
    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 146
    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    if-nez v0, :cond_6

    .line 150
    .line 151
    move v5, v1

    .line 152
    goto :goto_4

    .line 153
    :cond_6
    move v5, v2

    .line 154
    :goto_4
    invoke-virtual {v4, v5}, Lo9/f;->u(Z)V

    .line 155
    .line 156
    .line 157
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 158
    .line 159
    if-eqz v3, :cond_7

    .line 160
    .line 161
    if-nez v0, :cond_7

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    move v1, v2

    .line 165
    :goto_5
    invoke-virtual {v4, v1}, Lo9/h;->g(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 169
    .line 170
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lo9/f;->z(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 176
    .line 177
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lo9/f;->w(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 183
    .line 184
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lo9/h;->k(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 190
    .line 191
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lo9/h;->i(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lmiuix/appcompat/internal/app/widget/d;

    .line 197
    .line 198
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/d;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 205
    .line 206
    if-eqz v0, :cond_8

    .line 207
    .line 208
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Lo9/f;->y(I)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Lo9/h;->j(I)V

    .line 216
    .line 217
    .line 218
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1()V

    .line 219
    .line 220
    .line 221
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 222
    .line 223
    invoke-virtual {v0}, Lo9/f;->i()Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 228
    .line 229
    invoke-virtual {v1}, Lo9/h;->c()Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f0(Landroid/view/View;Landroid/view/View;)V

    .line 234
    .line 235
    .line 236
    new-instance v0, Lmiuix/appcompat/internal/app/widget/e;

    .line 237
    .line 238
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/e;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 245
    .line 246
    if-nez v0, :cond_a

    .line 247
    .line 248
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 249
    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_b

    .line 255
    .line 256
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 257
    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_b

    .line 263
    .line 264
    :cond_a
    invoke-direct {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 265
    .line 266
    .line 267
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 268
    .line 269
    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 273
    .line 274
    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    return-void
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
.end method


# virtual methods
.method public A0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->v0:Z

    .line 2
    .line 3
    return v0
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
.end method

.method public D0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/a;->i:Z

    .line 2
    .line 3
    return v0
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
.end method

.method public E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lq9/a;->b(Landroid/content/Context;)Lq9/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lq9/a;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public M0(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c1:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/high16 v3, 0x3f800000    # 1.0f

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/a$c;->h(F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/a$c;->h(F)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/a$c;->h(F)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/a$c;->h(F)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    :cond_4
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/a$c;->g(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/a$c;->g(Z)V

    .line 74
    .line 75
    .line 76
    :cond_5
    return-void
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

.method public N0(ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c1:Z

    .line 5
    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/a$c;->h(F)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/a$c;->h(F)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    :cond_2
    if-eqz p2, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/a$c;->g(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/a$c;->g(Z)V

    .line 49
    .line 50
    .line 51
    :cond_3
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
.end method

.method protected P0(ZIIIIIF)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    move/from16 v9, p5

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->s0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    const/4 v10, 0x2

    .line 21
    const/4 v11, 0x0

    .line 22
    if-ne v0, v10, :cond_2

    .line 23
    .line 24
    cmpg-float v0, p7, v1

    .line 25
    .line 26
    if-gez v0, :cond_1

    .line 27
    .line 28
    move v0, v11

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x4

    .line 31
    :goto_0
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eq v2, v0, :cond_2

    .line 40
    .line 41
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    .line 47
    .line 48
    mul-float v0, v0, p7

    .line 49
    .line 50
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sub-float/2addr v1, v0

    .line 55
    const/4 v0, 0x0

    .line 56
    cmpg-float v0, v1, v0

    .line 57
    .line 58
    if-gtz v0, :cond_3

    .line 59
    .line 60
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T0:I

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v0, v11

    .line 64
    :goto_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    move v12, v1

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move v12, v11

    .line 83
    :goto_2
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    move v13, v1

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    move v13, v11

    .line 110
    :goto_3
    add-int v1, p3, v12

    .line 111
    .line 112
    add-int/2addr v1, v13

    .line 113
    sub-int/2addr v1, v9

    .line 114
    add-int v14, v1, v0

    .line 115
    .line 116
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 117
    .line 118
    const/4 v15, 0x1

    .line 119
    const/16 v16, 0x0

    .line 120
    .line 121
    if-eqz v0, :cond_9

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 130
    .line 131
    if-eqz v0, :cond_9

    .line 132
    .line 133
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 134
    .line 135
    sub-int v1, v9, v12

    .line 136
    .line 137
    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 138
    .line 139
    .line 140
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-ne v0, v15, :cond_6

    .line 147
    .line 148
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 155
    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 159
    .line 160
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    move-object/from16 v0, v16

    .line 168
    .line 169
    :goto_4
    if-eqz v0, :cond_8

    .line 170
    .line 171
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 172
    .line 173
    invoke-static/range {p0 .. p0}, Lka/i;->a(Landroid/view/View;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 180
    .line 181
    sub-int v1, v8, v1

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    sub-int/2addr v1, v2

    .line 188
    :cond_7
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->o0:I

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    add-int/2addr v3, v1

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    iget v5, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->o0:I

    .line 200
    .line 201
    add-int/2addr v4, v5

    .line 202
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 203
    .line 204
    .line 205
    :cond_8
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 206
    .line 207
    add-int v5, v12, v13

    .line 208
    .line 209
    move-object/from16 v0, p0

    .line 210
    .line 211
    move/from16 v2, p2

    .line 212
    .line 213
    move v3, v14

    .line 214
    move/from16 v4, p4

    .line 215
    .line 216
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0(Landroid/view/View;IIII)V

    .line 217
    .line 218
    .line 219
    :cond_9
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 220
    .line 221
    if-eqz v0, :cond_d

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_d

    .line 228
    .line 229
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 230
    .line 231
    if-eqz v0, :cond_d

    .line 232
    .line 233
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 234
    .line 235
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->n0:I

    .line 236
    .line 237
    add-int v2, v7, v0

    .line 238
    .line 239
    add-int v5, v9, p6

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    sub-int v3, v5, v0

    .line 246
    .line 247
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->n0:I

    .line 248
    .line 249
    sub-int v4, v8, v0

    .line 250
    .line 251
    move-object/from16 v0, p0

    .line 252
    .line 253
    invoke-static/range {v0 .. v5}, Lka/i;->c(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 254
    .line 255
    .line 256
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 257
    .line 258
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-ne v0, v15, :cond_a

    .line 263
    .line 264
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 265
    .line 266
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 271
    .line 272
    if-eqz v0, :cond_a

    .line 273
    .line 274
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 275
    .line 276
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    move-object/from16 v16, v0

    .line 281
    .line 282
    check-cast v16, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 283
    .line 284
    :cond_a
    move-object/from16 v0, v16

    .line 285
    .line 286
    if-eqz v0, :cond_c

    .line 287
    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-static/range {p0 .. p0}, Lka/i;->a(Landroid/view/View;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_b

    .line 297
    .line 298
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->n0:I

    .line 299
    .line 300
    mul-int/2addr v1, v10

    .line 301
    sub-int v1, v8, v1

    .line 302
    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    sub-int/2addr v1, v2

    .line 308
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->n0:I

    .line 309
    .line 310
    mul-int/2addr v2, v10

    .line 311
    sub-int v2, v8, v2

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_b
    move v2, v1

    .line 315
    move v1, v11

    .line 316
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 321
    .line 322
    .line 323
    :cond_c
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 324
    .line 325
    sub-int v0, v12, v13

    .line 326
    .line 327
    sub-int v3, v14, v0

    .line 328
    .line 329
    add-int v5, v12, v13

    .line 330
    .line 331
    move-object/from16 v0, p0

    .line 332
    .line 333
    move/from16 v2, p2

    .line 334
    .line 335
    move/from16 v4, p4

    .line 336
    .line 337
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0(Landroid/view/View;IIII)V

    .line 338
    .line 339
    .line 340
    :cond_d
    return-void
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
.end method

.method public Q0(Landroid/view/View;II[II[I)V
    .locals 1

    .line 1
    if-lez p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 8
    .line 9
    if-le p1, p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr p1, p3

    .line 16
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 17
    .line 18
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-lt p1, p5, :cond_0

    .line 22
    .line 23
    sub-int p1, p2, p3

    .line 24
    .line 25
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 26
    .line 27
    aget p1, p4, v0

    .line 28
    .line 29
    add-int/2addr p1, p3

    .line 30
    aput p1, p4, v0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 35
    .line 36
    aget p1, p4, v0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 43
    .line 44
    sub-int/2addr p3, p5

    .line 45
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T0:I

    .line 46
    .line 47
    sub-int/2addr p3, p5

    .line 48
    add-int/2addr p1, p3

    .line 49
    aput p1, p4, v0

    .line 50
    .line 51
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 52
    .line 53
    if-eq p1, p2, :cond_1

    .line 54
    .line 55
    sub-int/2addr p2, p1

    .line 56
    aput p2, p6, v0

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
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
.end method

.method public R0(Landroid/view/View;IIIII[I[I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U0:I

    .line 8
    .line 9
    add-int/2addr p1, p2

    .line 10
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 11
    .line 12
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T0:I

    .line 13
    .line 14
    sub-int/2addr p2, p3

    .line 15
    add-int/2addr p2, p1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-gez p5, :cond_1

    .line 21
    .line 22
    if-ge p3, p2, :cond_1

    .line 23
    .line 24
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 25
    .line 26
    sub-int p6, p3, p5

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-gt p6, p2, :cond_0

    .line 30
    .line 31
    sub-int p1, p4, p5

    .line 32
    .line 33
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 34
    .line 35
    aget p1, p7, v0

    .line 36
    .line 37
    add-int/2addr p1, p5

    .line 38
    aput p1, p7, v0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sub-int/2addr p2, p3

    .line 42
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 43
    .line 44
    aget p1, p7, v0

    .line 45
    .line 46
    neg-int p2, p2

    .line 47
    add-int/2addr p1, p2

    .line 48
    aput p1, p7, v0

    .line 49
    .line 50
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 51
    .line 52
    if-eq p1, p4, :cond_1

    .line 53
    .line 54
    sub-int/2addr p4, p1

    .line 55
    aput p4, p8, v0

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
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
.end method

.method public S0(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->X0:Z

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Y0:Z

    .line 8
    .line 9
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0:Landroid/widget/Scroller;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0:Landroid/widget/Scroller;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 24
    .line 25
    .line 26
    return-void
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

.method public T0(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    const/4 p3, 0x2

    .line 17
    if-ne p1, p3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lka/e;->d(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return p2

    .line 30
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->B0()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    :cond_1
    return p2
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

.method public U0(Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->X0:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->X0:Z

    .line 14
    .line 15
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Y0:Z

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Y0:Z

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Y0:Z

    .line 25
    .line 26
    :goto_0
    move p2, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move p2, v1

    .line 29
    :goto_1
    if-eqz p2, :cond_5

    .line 30
    .line 31
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U0:I

    .line 40
    .line 41
    add-int/2addr v2, p1

    .line 42
    if-ne p2, v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 53
    .line 54
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U0:I

    .line 55
    .line 56
    add-int/2addr v2, p1

    .line 57
    div-int/lit8 v2, v2, 0x2

    .line 58
    .line 59
    add-int/2addr v0, v2

    .line 60
    if-le p2, v0, :cond_4

    .line 61
    .line 62
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0:Landroid/widget/Scroller;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 69
    .line 70
    add-int/2addr v2, p1

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    sub-int/2addr v2, p1

    .line 76
    invoke-virtual {p2, v1, v0, v1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0:Landroid/widget/Scroller;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    sub-int/2addr v0, v2

    .line 93
    invoke-virtual {p1, v1, p2, v1, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f1:Ljava/lang/Runnable;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    return-void
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

.method public W0(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
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

.method public X0(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/g$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x0:Lmiuix/appcompat/internal/view/menu/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/a;->i:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/c;->J(Lmiuix/appcompat/internal/view/menu/g;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x0:Lmiuix/appcompat/internal/view/menu/c;

    .line 21
    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/c;->J(Lmiuix/appcompat/internal/view/menu/g;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    check-cast p1, Lmiuix/appcompat/internal/view/menu/c;

    .line 28
    .line 29
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x0:Lmiuix/appcompat/internal/view/menu/c;

    .line 30
    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->n0(Lmiuix/appcompat/internal/view/menu/g$a;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 57
    .line 58
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->o0()Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 63
    .line 64
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    .line 66
    const/4 v0, -0x2

    .line 67
    const/4 v1, -0x1

    .line 68
    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/a;->i:Z

    .line 72
    .line 73
    if-nez v2, :cond_6

    .line 74
    .line 75
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget v2, Lk9/c;->a:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->V(Z)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0(Lmiuix/appcompat/internal/view/menu/c;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->m(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/h;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/e;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    if-eq v0, p0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->V(Z)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->X(IZ)V

    .line 142
    .line 143
    .line 144
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 145
    .line 146
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lka/e;->d(Landroid/content/Context;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    const/16 v0, 0x11

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_7
    const/16 v0, 0x50

    .line 162
    .line 163
    :goto_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    .line 165
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0(Lmiuix/appcompat/internal/view/menu/c;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->m(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/h;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/e;

    .line 175
    .line 176
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 177
    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 189
    .line 190
    if-eq v0, v1, :cond_8

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getAnimatedVisibility()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 203
    .line 204
    invoke-virtual {v0, p1, v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .line 206
    .line 207
    sget p2, Lk9/g;->F:I

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    if-eqz p2, :cond_a

    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_9
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    :cond_a
    :goto_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 223
    .line 224
    return-void
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

.method public Y0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    return v1
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

.method public a(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d1:Z

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
.end method

.method public b(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d1:Z

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
.end method

.method public g(ZF)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    sub-float p2, p1, p2

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0(F)V

    .line 8
    .line 9
    .line 10
    return-void
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
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/a$a;

    .line 2
    .line 3
    const v1, 0x800013

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/appcompat/app/a$a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-object v0
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

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/a$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getActionBarTransitionListener()Lmiuix/appcompat/app/d;
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->getActionBarTransitionListener()Lmiuix/appcompat/app/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/e;
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->getAnimatedVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
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
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 2
    .line 3
    return v0
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
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->A0:Landroid/widget/SpinnerAdapter;

    .line 2
    .line 3
    return-object v0
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
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V:Landroid/widget/Spinner;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public getEndView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
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
.end method

.method public bridge synthetic getExpandState()I
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->getExpandState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/e;
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public getNavigationMode()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 2
    .line 3
    return v0
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
.end method

.method public getStartView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
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
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
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
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
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
.end method

.method public bridge synthetic i()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public bridge synthetic j()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public bridge synthetic k()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

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
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/e;->collapseActionView()Z

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
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

.method public bridge synthetic l()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method protected n0(Lmiuix/appcompat/internal/view/menu/g$a;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/View;

    .line 6
    .line 7
    :goto_0
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 12
    .line 13
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 14
    .line 15
    move-object v4, v0

    .line 16
    check-cast v4, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 17
    .line 18
    sget v5, Lk9/i;->f:I

    .line 19
    .line 20
    sget v6, Lk9/i;->e:I

    .line 21
    .line 22
    sget v7, Lk9/i;->a:I

    .line 23
    .line 24
    sget v8, Lk9/i;->c:I

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    invoke-direct/range {v2 .. v8}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/a;->o(Lmiuix/appcompat/internal/view/menu/g$a;)V

    .line 31
    .line 32
    .line 33
    sget p1, Lk9/g;->s:I

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/a;->p(I)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    instance-of v1, v1, Landroid/view/View;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/View;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "ActionBarOverlayLayout not found"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
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
.end method

.method protected o(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e1:Lmiuix/animation/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lmiuix/animation/c;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U0:I

    .line 19
    .line 20
    add-int/2addr p1, v2

    .line 21
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-nez p1, :cond_2

    .line 25
    .line 26
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 27
    .line 28
    :cond_2
    :goto_0
    new-instance p1, Ld9/a;

    .line 29
    .line 30
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 31
    .line 32
    .line 33
    new-array v2, v0, [Lg9/b;

    .line 34
    .line 35
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarView$l;

    .line 36
    .line 37
    invoke-direct {v3, p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView$l;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    .line 38
    .line 39
    .line 40
    aput-object v3, v2, v1

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne p2, v0, :cond_3

    .line 47
    .line 48
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v2, v1

    .line 56
    :goto_1
    if-ne p2, v0, :cond_4

    .line 57
    .line 58
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    const/4 v3, 0x4

    .line 61
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 65
    .line 66
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    if-nez p2, :cond_5

    .line 71
    .line 72
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_2
    const-string p2, "actionbar_state_change"

    .line 83
    .line 84
    new-array v3, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v3}, Lmiuix/animation/a;->z([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const-wide/16 v4, 0x1

    .line 91
    .line 92
    invoke-interface {v3, v4, v5}, Lmiuix/animation/f;->a(J)Lmiuix/animation/f;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v4, 0x2

    .line 97
    new-array v5, v4, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object p2, v5, v1

    .line 100
    .line 101
    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 102
    .line 103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    aput-object v6, v5, v0

    .line 108
    .line 109
    invoke-interface {v3, v5}, Lmiuix/animation/f;->M([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const/4 v5, 0x3

    .line 114
    new-array v5, v5, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object p2, v5, v1

    .line 117
    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    aput-object p2, v5, v0

    .line 123
    .line 124
    aput-object p1, v5, v4

    .line 125
    .line 126
    invoke-interface {v3, v5}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e1:Lmiuix/animation/f;

    .line 131
    .line 132
    return-void
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

.method protected o0()Lmiuix/appcompat/internal/app/widget/ActionBarView$k;
    .locals 2

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$b;)V

    .line 5
    .line 6
    .line 7
    return-object v0
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

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/a$c;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/a$c;->c()V

    .line 12
    .line 13
    .line 14
    return-void
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

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F0:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b1()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    and-int/lit8 v0, v0, 0x8

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lo9/f;->r(Landroid/content/res/Configuration;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lo9/h;->f(Landroid/content/res/Configuration;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget v0, Lk9/e;->j:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 39
    .line 40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->p0:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->q0:I

    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget v3, Lk9/e;->l:I

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget v0, Lk9/b;->e:I

    .line 77
    .line 78
    invoke-static {p1, v0}, Lka/d;->g(Landroid/content/Context;I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget v1, Lk9/b;->d:I

    .line 87
    .line 88
    invoke-static {v0, v1}, Lka/d;->g(Landroid/content/Context;I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 104
    .line 105
    const/4 v0, -0x1

    .line 106
    const/4 v1, -0x2

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u0:Z

    .line 110
    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    .line 121
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    .line 123
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 124
    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u0:Z

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_3

    .line 136
    .line 137
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    .line 139
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    .line 141
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 142
    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u0:Z

    .line 146
    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    .line 157
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    .line 159
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 160
    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u0:Z

    .line 164
    .line 165
    if-eqz v2, :cond_5

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_5

    .line 172
    .line 173
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    .line 175
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    .line 177
    :cond_5
    return-void
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

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->O(Z)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 13
    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->P()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/a$c;->d()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 23
    .line 24
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/a$c;->d()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .line 1
    move-object v8, p0

    .line 2
    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d1:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    move v5, v0

    .line 30
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    move v6, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    move v6, v0

    .line 48
    :goto_0
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    move v7, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    move v7, v2

    .line 71
    :goto_1
    iget v2, v8, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 72
    .line 73
    const/4 v3, 0x2

    .line 74
    if-ne v2, v3, :cond_4

    .line 75
    .line 76
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const/4 v3, 0x1

    .line 80
    if-ne v2, v3, :cond_5

    .line 81
    .line 82
    add-int v1, v0, v7

    .line 83
    .line 84
    :cond_5
    :goto_2
    sub-int v2, p5, p3

    .line 85
    .line 86
    sub-int v9, v2, v7

    .line 87
    .line 88
    sub-int v10, v9, v1

    .line 89
    .line 90
    add-int v2, v0, v7

    .line 91
    .line 92
    sub-int/2addr v2, v1

    .line 93
    int-to-float v1, v2

    .line 94
    int-to-float v0, v0

    .line 95
    div-float v11, v1, v0

    .line 96
    .line 97
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/a;->o:Lmiuix/appcompat/app/d;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/a;->v:F

    .line 102
    .line 103
    sub-float/2addr v1, v11

    .line 104
    invoke-interface {v0, v1, v11}, Lmiuix/appcompat/app/d;->a(FF)V

    .line 105
    .line 106
    .line 107
    :cond_6
    const/4 v3, 0x0

    .line 108
    move-object v0, p0

    .line 109
    move v1, p1

    .line 110
    move v2, p2

    .line 111
    move/from16 v4, p4

    .line 112
    .line 113
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->O0(ZIIIII)V

    .line 114
    .line 115
    .line 116
    move v3, v10

    .line 117
    move v5, v9

    .line 118
    move v6, v7

    .line 119
    move v7, v11

    .line 120
    invoke-virtual/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P0(ZIIIIIF)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0(F)V

    .line 124
    .line 125
    .line 126
    iput v11, v8, Lmiuix/appcompat/internal/app/widget/a;->v:F

    .line 127
    .line 128
    return-void
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
.end method

.method protected onMeasure(II)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    const/16 v5, 0x8

    .line 11
    .line 12
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    if-eq v7, v5, :cond_1

    .line 23
    .line 24
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 25
    .line 26
    if-ne v6, v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v3, 0x1

    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 43
    .line 44
    .line 45
    iput-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->v0:Z

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->v0:Z

    .line 49
    .line 50
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/a;->k:I

    .line 55
    .line 56
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_4

    .line 63
    .line 64
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 65
    .line 66
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_4

    .line 71
    .line 72
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 73
    .line 74
    if-eqz v7, :cond_4

    .line 75
    .line 76
    invoke-virtual {v7}, Lo9/f;->l()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eq v7, v5, :cond_4

    .line 81
    .line 82
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/a;->l:I

    .line 83
    .line 84
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    add-int/2addr v7, v8

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-lez v6, :cond_5

    .line 102
    .line 103
    move v10, v6

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    :goto_1
    sub-int/2addr v10, v7

    .line 110
    const/high16 v11, 0x40000000    # 2.0f

    .line 111
    .line 112
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    const/high16 v13, -0x80000000

    .line 117
    .line 118
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    sub-int v15, v4, v8

    .line 123
    .line 124
    sub-int/2addr v15, v9

    .line 125
    div-int/lit8 v16, v15, 0x2

    .line 126
    .line 127
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 128
    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    invoke-virtual {v0, v3, v15, v14, v2}, Lmiuix/appcompat/internal/app/widget/a;->n(Landroid/view/View;III)I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    add-int/2addr v8, v3

    .line 142
    :cond_6
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 143
    .line 144
    if-eqz v3, :cond_7

    .line 145
    .line 146
    invoke-virtual {v0, v3, v15, v14, v2}, Lmiuix/appcompat/internal/app/widget/a;->n(Landroid/view/View;III)I

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    add-int/2addr v9, v3

    .line 157
    :cond_7
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 158
    .line 159
    if-eqz v3, :cond_8

    .line 160
    .line 161
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_8
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 165
    .line 166
    :goto_2
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 167
    .line 168
    if-eqz v2, :cond_9

    .line 169
    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    :cond_9
    if-eqz v3, :cond_b

    .line 176
    .line 177
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eq v2, v5, :cond_b

    .line 182
    .line 183
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    .line 189
    if-gez v2, :cond_a

    .line 190
    .line 191
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    goto :goto_3

    .line 196
    :cond_a
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    :goto_3
    invoke-virtual {v3, v2, v12}, Landroid/view/View;->measure(II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->a()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    add-int/2addr v2, v3

    .line 212
    sub-int/2addr v15, v2

    .line 213
    const/4 v3, 0x0

    .line 214
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    sub-int v13, v15, v2

    .line 219
    .line 220
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    add-int/2addr v8, v2

    .line 225
    goto :goto_4

    .line 226
    :cond_b
    const/4 v3, 0x0

    .line 227
    move/from16 v13, v16

    .line 228
    .line 229
    :goto_4
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 230
    .line 231
    if-eqz v2, :cond_c

    .line 232
    .line 233
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-ne v2, v0, :cond_c

    .line 238
    .line 239
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 240
    .line 241
    invoke-virtual {v0, v2, v15, v14, v3}, Lmiuix/appcompat/internal/app/widget/a;->n(Landroid/view/View;III)I

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 246
    .line 247
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    sub-int v2, v16, v2

    .line 252
    .line 253
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result v16

    .line 257
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 258
    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    add-int/2addr v9, v2

    .line 264
    :cond_c
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 265
    .line 266
    const/4 v3, 0x2

    .line 267
    if-eqz v2, :cond_d

    .line 268
    .line 269
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eq v2, v5, :cond_d

    .line 274
    .line 275
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 276
    .line 277
    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->k0:I

    .line 278
    .line 279
    mul-int/2addr v11, v3

    .line 280
    invoke-virtual {v0, v2, v15, v14, v11}, Lmiuix/appcompat/internal/app/widget/a;->n(Landroid/view/View;III)I

    .line 281
    .line 282
    .line 283
    move-result v15

    .line 284
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 285
    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    sub-int v16, v16, v2

    .line 291
    .line 292
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->k0:I

    .line 293
    .line 294
    mul-int/2addr v2, v3

    .line 295
    sub-int v2, v16, v2

    .line 296
    .line 297
    const/4 v11, 0x0

    .line 298
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 299
    .line 300
    .line 301
    move-result v16

    .line 302
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    add-int/2addr v9, v2

    .line 309
    :cond_d
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 310
    .line 311
    if-eqz v2, :cond_e

    .line 312
    .line 313
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eq v2, v5, :cond_e

    .line 318
    .line 319
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 320
    .line 321
    const/4 v11, 0x0

    .line 322
    invoke-virtual {v0, v2, v15, v14, v11}, Lmiuix/appcompat/internal/app/widget/a;->n(Landroid/view/View;III)I

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 327
    .line 328
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    sub-int v2, v16, v2

    .line 333
    .line 334
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 335
    .line 336
    .line 337
    move-result v16

    .line 338
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 339
    .line 340
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    add-int/2addr v9, v2

    .line 345
    :cond_e
    move/from16 v2, v16

    .line 346
    .line 347
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->B0()Z

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    if-eqz v11, :cond_f

    .line 352
    .line 353
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c1()V

    .line 354
    .line 355
    .line 356
    :cond_f
    iget-object v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 357
    .line 358
    const/16 v16, 0x0

    .line 359
    .line 360
    if-eqz v14, :cond_10

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_10
    iget v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 364
    .line 365
    and-int/lit8 v14, v14, 0x10

    .line 366
    .line 367
    if-eqz v14, :cond_11

    .line 368
    .line 369
    iget-object v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 370
    .line 371
    if-eqz v14, :cond_11

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_11
    move-object/from16 v14, v16

    .line 375
    .line 376
    :goto_5
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 377
    .line 378
    if-nez v3, :cond_12

    .line 379
    .line 380
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 381
    .line 382
    if-eqz v3, :cond_13

    .line 383
    .line 384
    :cond_12
    if-eqz v14, :cond_13

    .line 385
    .line 386
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    .line 387
    .line 388
    .line 389
    :cond_13
    if-eqz v14, :cond_1d

    .line 390
    .line 391
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eq v3, v5, :cond_1d

    .line 396
    .line 397
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    instance-of v5, v3, Landroidx/appcompat/app/a$a;

    .line 406
    .line 407
    if-eqz v5, :cond_14

    .line 408
    .line 409
    move-object/from16 v16, v3

    .line 410
    .line 411
    check-cast v16, Landroidx/appcompat/app/a$a;

    .line 412
    .line 413
    :cond_14
    move-object/from16 v5, v16

    .line 414
    .line 415
    if-eqz v5, :cond_15

    .line 416
    .line 417
    move/from16 v16, v7

    .line 418
    .line 419
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 420
    .line 421
    move/from16 v17, v1

    .line 422
    .line 423
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 424
    .line 425
    add-int/2addr v1, v7

    .line 426
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 427
    .line 428
    move/from16 v18, v1

    .line 429
    .line 430
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 431
    .line 432
    add-int/2addr v1, v7

    .line 433
    goto :goto_6

    .line 434
    :cond_15
    move/from16 v17, v1

    .line 435
    .line 436
    move/from16 v16, v7

    .line 437
    .line 438
    const/4 v1, 0x0

    .line 439
    const/16 v18, 0x0

    .line 440
    .line 441
    :goto_6
    const/4 v7, -0x2

    .line 442
    if-gtz v6, :cond_17

    .line 443
    .line 444
    move/from16 v19, v12

    .line 445
    .line 446
    :cond_16
    const/high16 v12, -0x80000000

    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_17
    move/from16 v19, v12

    .line 450
    .line 451
    iget v12, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 452
    .line 453
    if-eq v12, v7, :cond_16

    .line 454
    .line 455
    const/high16 v12, 0x40000000    # 2.0f

    .line 456
    .line 457
    :goto_7
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 458
    .line 459
    if-ltz v7, :cond_18

    .line 460
    .line 461
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 462
    .line 463
    .line 464
    move-result v10

    .line 465
    :cond_18
    sub-int/2addr v10, v1

    .line 466
    const/4 v1, 0x0

    .line 467
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 468
    .line 469
    .line 470
    move-result v7

    .line 471
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 472
    .line 473
    const/4 v1, -0x2

    .line 474
    if-eq v10, v1, :cond_19

    .line 475
    .line 476
    const/high16 v1, 0x40000000    # 2.0f

    .line 477
    .line 478
    goto :goto_8

    .line 479
    :cond_19
    const/high16 v1, -0x80000000

    .line 480
    .line 481
    :goto_8
    if-ltz v10, :cond_1a

    .line 482
    .line 483
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    .line 484
    .line 485
    .line 486
    move-result v10

    .line 487
    goto :goto_9

    .line 488
    :cond_1a
    move v10, v15

    .line 489
    :goto_9
    sub-int v10, v10, v18

    .line 490
    .line 491
    move/from16 v20, v4

    .line 492
    .line 493
    const/4 v4, 0x0

    .line 494
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    if-eqz v5, :cond_1b

    .line 499
    .line 500
    iget v4, v5, Landroidx/appcompat/app/a$a;->a:I

    .line 501
    .line 502
    goto :goto_a

    .line 503
    :cond_1b
    const v4, 0x800013

    .line 504
    .line 505
    .line 506
    :goto_a
    const v5, 0x800007

    .line 507
    .line 508
    .line 509
    and-int/2addr v4, v5

    .line 510
    const/4 v5, 0x1

    .line 511
    if-ne v4, v5, :cond_1c

    .line 512
    .line 513
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 514
    .line 515
    const/4 v4, -0x1

    .line 516
    if-ne v3, v4, :cond_1c

    .line 517
    .line 518
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    const/4 v3, 0x2

    .line 523
    mul-int/lit8 v10, v2, 0x2

    .line 524
    .line 525
    :cond_1c
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    add-int v18, v18, v1

    .line 541
    .line 542
    sub-int v15, v15, v18

    .line 543
    .line 544
    goto :goto_b

    .line 545
    :cond_1d
    move/from16 v17, v1

    .line 546
    .line 547
    move/from16 v20, v4

    .line 548
    .line 549
    move/from16 v16, v7

    .line 550
    .line 551
    move/from16 v19, v12

    .line 552
    .line 553
    :goto_b
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 554
    .line 555
    if-nez v1, :cond_20

    .line 556
    .line 557
    if-eqz v11, :cond_20

    .line 558
    .line 559
    const/high16 v1, 0x40000000    # 2.0f

    .line 560
    .line 561
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 566
    .line 567
    if-eqz v1, :cond_1e

    .line 568
    .line 569
    const/high16 v1, -0x80000000

    .line 570
    .line 571
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 576
    .line 577
    const/4 v4, 0x0

    .line 578
    invoke-virtual {v0, v1, v15, v3, v4}, Lmiuix/appcompat/internal/app/widget/a;->n(Landroid/view/View;III)I

    .line 579
    .line 580
    .line 581
    move-result v15

    .line 582
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 583
    .line 584
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    add-int/2addr v8, v1

    .line 589
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F0()Z

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    if-eqz v1, :cond_1f

    .line 594
    .line 595
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 600
    .line 601
    const/4 v4, 0x2

    .line 602
    mul-int/2addr v1, v4

    .line 603
    sub-int v4, v20, v1

    .line 604
    .line 605
    const/4 v1, 0x0

    .line 606
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    const/high16 v5, -0x80000000

    .line 611
    .line 612
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    invoke-virtual {v3, v4, v2}, Landroid/view/View;->measure(II)V

    .line 617
    .line 618
    .line 619
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 620
    .line 621
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    sub-int/2addr v15, v2

    .line 626
    goto :goto_c

    .line 627
    :cond_1f
    const/4 v1, 0x0

    .line 628
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 629
    .line 630
    invoke-virtual {v0, v3, v15, v2, v1}, Lmiuix/appcompat/internal/app/widget/a;->n(Landroid/view/View;III)I

    .line 631
    .line 632
    .line 633
    move-result v15

    .line 634
    :cond_20
    :goto_c
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 635
    .line 636
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-eqz v1, :cond_22

    .line 641
    .line 642
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->s0()Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-eqz v1, :cond_21

    .line 647
    .line 648
    const/4 v1, 0x0

    .line 649
    goto :goto_d

    .line 650
    :cond_21
    const/high16 v1, 0x40000000    # 2.0f

    .line 651
    .line 652
    :goto_d
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 653
    .line 654
    move/from16 v3, v20

    .line 655
    .line 656
    const/high16 v4, -0x80000000

    .line 657
    .line 658
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    const/4 v4, 0x0

    .line 663
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    invoke-virtual {v2, v5, v1}, Landroid/view/View;->measure(II)V

    .line 668
    .line 669
    .line 670
    goto :goto_e

    .line 671
    :cond_22
    move/from16 v3, v20

    .line 672
    .line 673
    const/4 v4, 0x0

    .line 674
    :goto_e
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U0:I

    .line 675
    .line 676
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 677
    .line 678
    if-eqz v1, :cond_23

    .line 679
    .line 680
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    if-nez v1, :cond_23

    .line 685
    .line 686
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 687
    .line 688
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-eqz v1, :cond_23

    .line 693
    .line 694
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 695
    .line 696
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 701
    .line 702
    .line 703
    move-result v5

    .line 704
    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    .line 705
    .line 706
    .line 707
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 708
    .line 709
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 714
    .line 715
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    iput v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U0:I

    .line 720
    .line 721
    goto :goto_f

    .line 722
    :cond_23
    const/4 v1, 0x0

    .line 723
    const/4 v2, 0x0

    .line 724
    :goto_f
    const/4 v4, 0x0

    .line 725
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T0:I

    .line 726
    .line 727
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 728
    .line 729
    if-eqz v5, :cond_24

    .line 730
    .line 731
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    if-eqz v5, :cond_24

    .line 736
    .line 737
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 738
    .line 739
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 740
    .line 741
    .line 742
    move-result v5

    .line 743
    if-eqz v5, :cond_24

    .line 744
    .line 745
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 746
    .line 747
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 748
    .line 749
    .line 750
    move-result v7

    .line 751
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 752
    .line 753
    .line 754
    move-result v8

    .line 755
    invoke-virtual {v5, v7, v8}, Landroid/view/View;->measure(II)V

    .line 756
    .line 757
    .line 758
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 759
    .line 760
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 761
    .line 762
    .line 763
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 764
    .line 765
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 766
    .line 767
    .line 768
    move-result v4

    .line 769
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T0:I

    .line 770
    .line 771
    goto :goto_10

    .line 772
    :cond_24
    const/4 v4, 0x0

    .line 773
    :goto_10
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 774
    .line 775
    if-nez v5, :cond_29

    .line 776
    .line 777
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 778
    .line 779
    const/4 v7, 0x1

    .line 780
    if-eq v5, v7, :cond_27

    .line 781
    .line 782
    const/4 v7, 0x2

    .line 783
    if-eq v5, v7, :cond_25

    .line 784
    .line 785
    goto :goto_11

    .line 786
    :cond_25
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 787
    .line 788
    if-eqz v5, :cond_26

    .line 789
    .line 790
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    if-eqz v5, :cond_26

    .line 795
    .line 796
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->m0:I

    .line 797
    .line 798
    mul-int/2addr v5, v7

    .line 799
    sub-int v5, v3, v5

    .line 800
    .line 801
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 802
    .line 803
    const/high16 v8, -0x80000000

    .line 804
    .line 805
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 806
    .line 807
    .line 808
    move-result v5

    .line 809
    const/4 v8, 0x0

    .line 810
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 811
    .line 812
    .line 813
    move-result v9

    .line 814
    invoke-virtual {v7, v5, v9}, Landroid/view/View;->measure(II)V

    .line 815
    .line 816
    .line 817
    :cond_26
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 818
    .line 819
    if-eqz v5, :cond_29

    .line 820
    .line 821
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    if-eqz v5, :cond_29

    .line 826
    .line 827
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->n0:I

    .line 828
    .line 829
    const/4 v7, 0x2

    .line 830
    mul-int/2addr v5, v7

    .line 831
    sub-int v5, v3, v5

    .line 832
    .line 833
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 834
    .line 835
    .line 836
    move-result v1

    .line 837
    const/4 v5, 0x0

    .line 838
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 839
    .line 840
    .line 841
    move-result v1

    .line 842
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 843
    .line 844
    const/high16 v8, -0x80000000

    .line 845
    .line 846
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 851
    .line 852
    .line 853
    move-result v8

    .line 854
    invoke-virtual {v7, v1, v8}, Landroid/view/View;->measure(II)V

    .line 855
    .line 856
    .line 857
    goto :goto_11

    .line 858
    :cond_27
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W:Landroid/widget/LinearLayout;

    .line 859
    .line 860
    if-eqz v1, :cond_29

    .line 861
    .line 862
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l0:I

    .line 863
    .line 864
    if-eqz v11, :cond_28

    .line 865
    .line 866
    const/4 v5, 0x2

    .line 867
    mul-int/2addr v1, v5

    .line 868
    :cond_28
    sub-int/2addr v15, v1

    .line 869
    const/4 v1, 0x0

    .line 870
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    .line 871
    .line 872
    .line 873
    move-result v5

    .line 874
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W:Landroid/widget/LinearLayout;

    .line 875
    .line 876
    const/high16 v8, -0x80000000

    .line 877
    .line 878
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 879
    .line 880
    .line 881
    move-result v5

    .line 882
    move/from16 v8, v19

    .line 883
    .line 884
    invoke-virtual {v7, v5, v8}, Landroid/view/View;->measure(II)V

    .line 885
    .line 886
    .line 887
    goto :goto_12

    .line 888
    :cond_29
    :goto_11
    const/4 v1, 0x0

    .line 889
    :goto_12
    if-gtz v6, :cond_2c

    .line 890
    .line 891
    move v2, v1

    .line 892
    move/from16 v4, v17

    .line 893
    .line 894
    :goto_13
    if-ge v2, v4, :cond_2b

    .line 895
    .line 896
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 897
    .line 898
    .line 899
    move-result-object v5

    .line 900
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 901
    .line 902
    .line 903
    move-result v5

    .line 904
    add-int v5, v5, v16

    .line 905
    .line 906
    if-le v5, v1, :cond_2a

    .line 907
    .line 908
    move v1, v5

    .line 909
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 910
    .line 911
    goto :goto_13

    .line 912
    :cond_2b
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 913
    .line 914
    .line 915
    goto :goto_14

    .line 916
    :cond_2c
    add-int/2addr v4, v6

    .line 917
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 918
    .line 919
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->s0()Z

    .line 920
    .line 921
    .line 922
    move-result v5

    .line 923
    if-eqz v5, :cond_2d

    .line 924
    .line 925
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 926
    .line 927
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    :cond_2d
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 932
    .line 933
    const/4 v7, 0x2

    .line 934
    if-ne v5, v7, :cond_2e

    .line 935
    .line 936
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 937
    .line 938
    add-int/2addr v6, v1

    .line 939
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 944
    .line 945
    .line 946
    goto :goto_14

    .line 947
    :cond_2e
    const/4 v7, 0x1

    .line 948
    if-ne v5, v7, :cond_2f

    .line 949
    .line 950
    add-int/2addr v6, v1

    .line 951
    add-int/2addr v6, v2

    .line 952
    invoke-virtual {v0, v3, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 953
    .line 954
    .line 955
    goto :goto_14

    .line 956
    :cond_2f
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 957
    .line 958
    .line 959
    :goto_14
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f0:Landroid/widget/ProgressBar;

    .line 960
    .line 961
    if-eqz v1, :cond_30

    .line 962
    .line 963
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 964
    .line 965
    .line 966
    move-result v1

    .line 967
    const/16 v2, 0x8

    .line 968
    .line 969
    if-eq v1, v2, :cond_30

    .line 970
    .line 971
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->f0:Landroid/widget/ProgressBar;

    .line 972
    .line 973
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->k0:I

    .line 974
    .line 975
    const/4 v4, 0x2

    .line 976
    mul-int/2addr v2, v4

    .line 977
    sub-int v4, v3, v2

    .line 978
    .line 979
    const/high16 v2, 0x40000000    # 2.0f

    .line 980
    .line 981
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    const/high16 v4, -0x80000000

    .line 990
    .line 991
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 996
    .line 997
    .line 998
    :cond_30
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x0:Lmiuix/appcompat/internal/view/menu/c;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/c;->findItem(I)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->t()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 41
    .line 42
    .line 43
    return-void
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
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/e;->getItemId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 33
    .line 34
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/a;->p:I

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-ne v0, v3, :cond_1

    .line 38
    .line 39
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 43
    .line 44
    :goto_1
    return-object v1
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
.end method

.method protected p(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 6
    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0:Landroid/widget/Scroller;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Z0:Landroid/widget/Scroller;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    if-nez p2, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    const/16 p2, 0x8

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S0:I

    .line 53
    .line 54
    sub-int/2addr p1, p2

    .line 55
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T0:I

    .line 56
    .line 57
    add-int/2addr p1, p2

    .line 58
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R0:I

    .line 59
    .line 60
    :goto_0
    return-void
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->C0:Lmiuix/appcompat/internal/app/widget/ActionBarView$k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
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

.method public bridge synthetic setActionBarTransitionListener(Lmiuix/appcompat/app/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/a;->setActionBarTransitionListener(Lmiuix/appcompat/app/d;)V

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
.end method

.method public setCallback(Landroidx/appcompat/app/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->B0:Landroidx/appcompat/app/a$c;

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

.method public setCollapsable(Z)V
    .locals 0

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0:Lmiuix/appcompat/internal/app/widget/a$c;

    .line 33
    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/a$c;->b(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
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

.method public setDisplayOptions(I)V
    .locals 10

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    xor-int v1, p1, v0

    .line 8
    .line 9
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 10
    .line 11
    and-int/lit8 v0, v1, 0x1f

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x4

    .line 15
    if-eqz v0, :cond_1b

    .line 16
    .line 17
    and-int/lit8 v0, p1, 0x2

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move v0, v5

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, v4

    .line 26
    :goto_1
    const/16 v6, 0x8

    .line 27
    .line 28
    if-eqz v0, :cond_7

    .line 29
    .line 30
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->w0()V

    .line 31
    .line 32
    .line 33
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 34
    .line 35
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 36
    .line 37
    if-nez v8, :cond_2

    .line 38
    .line 39
    move v8, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v8, v6

    .line 42
    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    and-int/lit8 v7, v1, 0x4

    .line 46
    .line 47
    if-eqz v7, :cond_4

    .line 48
    .line 49
    and-int/lit8 v7, p1, 0x4

    .line 50
    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    move v7, v5

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move v7, v4

    .line 56
    :goto_3
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 57
    .line 58
    invoke-virtual {v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->c(Z)V

    .line 59
    .line 60
    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 64
    .line 65
    .line 66
    :cond_4
    and-int/lit8 v7, v1, 0x1

    .line 67
    .line 68
    if-eqz v7, :cond_8

    .line 69
    .line 70
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    if-eqz v7, :cond_5

    .line 75
    .line 76
    and-int/lit8 v8, p1, 0x1

    .line 77
    .line 78
    if-eqz v8, :cond_5

    .line 79
    .line 80
    move v8, v5

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    move v8, v4

    .line 83
    :goto_4
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 84
    .line 85
    if-eqz v8, :cond_6

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    :goto_5
    invoke-virtual {v9, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 97
    .line 98
    if-eqz v7, :cond_8

    .line 99
    .line 100
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_8
    :goto_6
    and-int/lit8 v7, v1, 0x8

    .line 104
    .line 105
    if-eqz v7, :cond_10

    .line 106
    .line 107
    and-int/lit8 v7, p1, 0x8

    .line 108
    .line 109
    const/4 v8, 0x2

    .line 110
    if-eqz v7, :cond_c

    .line 111
    .line 112
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-ne v7, v8, :cond_b

    .line 117
    .line 118
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 119
    .line 120
    invoke-direct {p0, p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 124
    .line 125
    invoke-direct {p0, p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 129
    .line 130
    if-eqz v7, :cond_9

    .line 131
    .line 132
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 133
    .line 134
    invoke-direct {p0, v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 138
    .line 139
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 140
    .line 141
    invoke-virtual {v7, v8}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 142
    .line 143
    .line 144
    :cond_9
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 145
    .line 146
    if-eqz v7, :cond_a

    .line 147
    .line 148
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 149
    .line 150
    invoke-direct {p0, v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 154
    .line 155
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    :cond_a
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 161
    .line 162
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 163
    .line 164
    .line 165
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 166
    .line 167
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    .line 169
    .line 170
    :cond_b
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z0()V

    .line 171
    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_c
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 175
    .line 176
    if-eqz v7, :cond_d

    .line 177
    .line 178
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 179
    .line 180
    invoke-virtual {v7}, Lo9/f;->i()Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    :cond_d
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 188
    .line 189
    if-eqz v7, :cond_e

    .line 190
    .line 191
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 192
    .line 193
    invoke-virtual {v7}, Lo9/h;->c()Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    .line 199
    .line 200
    :cond_e
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 201
    .line 202
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 206
    .line 207
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 208
    .line 209
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 210
    .line 211
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-ne v7, v8, :cond_10

    .line 216
    .line 217
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 218
    .line 219
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 223
    .line 224
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 225
    .line 226
    .line 227
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->Q:Lmiuix/springback/view/SpringBackLayout;

    .line 228
    .line 229
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 230
    .line 231
    .line 232
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->R:Lmiuix/springback/view/SpringBackLayout;

    .line 233
    .line 234
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 235
    .line 236
    .line 237
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 238
    .line 239
    if-eqz v7, :cond_f

    .line 240
    .line 241
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N:Landroid/widget/FrameLayout;

    .line 242
    .line 243
    invoke-direct {p0, v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    :cond_f
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 247
    .line 248
    if-eqz v7, :cond_10

    .line 249
    .line 250
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P:Landroid/widget/FrameLayout;

    .line 251
    .line 252
    invoke-direct {p0, v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 253
    .line 254
    .line 255
    :cond_10
    :goto_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 256
    .line 257
    if-eqz v7, :cond_18

    .line 258
    .line 259
    and-int/lit8 v8, v1, 0x6

    .line 260
    .line 261
    if-eqz v8, :cond_18

    .line 262
    .line 263
    iget v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 264
    .line 265
    and-int/2addr v8, v3

    .line 266
    if-eqz v8, :cond_11

    .line 267
    .line 268
    move v8, v5

    .line 269
    goto :goto_8

    .line 270
    :cond_11
    move v8, v4

    .line 271
    :goto_8
    invoke-virtual {v7}, Lo9/f;->m()I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-eqz v7, :cond_12

    .line 276
    .line 277
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    and-int/lit8 v7, v7, 0x20

    .line 282
    .line 283
    if-eqz v7, :cond_15

    .line 284
    .line 285
    :cond_12
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->U:Landroid/view/View;

    .line 286
    .line 287
    if-nez v0, :cond_14

    .line 288
    .line 289
    if-eqz v8, :cond_13

    .line 290
    .line 291
    move v6, v4

    .line 292
    goto :goto_9

    .line 293
    :cond_13
    move v6, v3

    .line 294
    :cond_14
    :goto_9
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    :cond_15
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 298
    .line 299
    if-nez v0, :cond_16

    .line 300
    .line 301
    if-eqz v8, :cond_16

    .line 302
    .line 303
    move v7, v5

    .line 304
    goto :goto_a

    .line 305
    :cond_16
    move v7, v4

    .line 306
    :goto_a
    invoke-virtual {v6, v7}, Lo9/f;->u(Z)V

    .line 307
    .line 308
    .line 309
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 310
    .line 311
    if-nez v0, :cond_17

    .line 312
    .line 313
    if-eqz v8, :cond_17

    .line 314
    .line 315
    move v4, v5

    .line 316
    :cond_17
    invoke-virtual {v6, v4}, Lo9/h;->g(Z)V

    .line 317
    .line 318
    .line 319
    :cond_18
    and-int/lit8 v0, v1, 0x10

    .line 320
    .line 321
    if-eqz v0, :cond_1a

    .line 322
    .line 323
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0:Landroid/view/View;

    .line 324
    .line 325
    if-eqz v0, :cond_1a

    .line 326
    .line 327
    and-int/lit8 v1, p1, 0x10

    .line 328
    .line 329
    if-eqz v1, :cond_19

    .line 330
    .line 331
    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V0(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 332
    .line 333
    .line 334
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0()V

    .line 335
    .line 336
    .line 337
    goto :goto_b

    .line 338
    :cond_19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    .line 340
    .line 341
    :cond_1a
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 342
    .line 343
    .line 344
    goto :goto_c

    .line 345
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 346
    .line 347
    .line 348
    :goto_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 349
    .line 350
    if-eqz v0, :cond_1e

    .line 351
    .line 352
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-nez v0, :cond_1c

    .line 357
    .line 358
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 359
    .line 360
    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 361
    .line 362
    .line 363
    goto :goto_d

    .line 364
    :cond_1c
    and-int/2addr p1, v3

    .line 365
    if-eqz p1, :cond_1d

    .line 366
    .line 367
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 368
    .line 369
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 370
    .line 371
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    sget v1, Lk9/j;->b:I

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_1d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 386
    .line 387
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 388
    .line 389
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    sget v1, Lk9/j;->a:I

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    :cond_1e
    :goto_d
    return-void
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

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->A0:Landroid/widget/SpinnerAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V:Landroid/widget/Spinner;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
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

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->V:Landroid/widget/Spinner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

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
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v1, v0, [Landroid/view/View;

    .line 17
    .line 18
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 34
    .line 35
    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const v2, 0x3f19999a    # 0.6f

    .line 40
    .line 41
    .line 42
    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 43
    .line 44
    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->z(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-array v2, v3, [Ld9/a;

    .line 49
    .line 50
    invoke-interface {v1, p1, v2}, Lmiuix/animation/ITouchStyle;->P(Landroid/view/View;[Ld9/a;)V

    .line 51
    .line 52
    .line 53
    new-array p1, v0, [Landroid/view/View;

    .line 54
    .line 55
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 56
    .line 57
    aput-object v1, p1, v3

    .line 58
    .line 59
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Lmiuix/animation/d;->c()Lmiuix/animation/IHoverStyle;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/high16 v1, 0x42700000    # 60.0f

    .line 68
    .line 69
    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->j(F)V

    .line 70
    .line 71
    .line 72
    new-array p1, v0, [Landroid/view/View;

    .line 73
    .line 74
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 75
    .line 76
    aput-object v0, p1, v3

    .line 77
    .line 78
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Lmiuix/animation/d;->c()Lmiuix/animation/IHoverStyle;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 87
    .line 88
    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->A(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->j0:Landroid/view/View;

    .line 93
    .line 94
    new-array v1, v3, [Ld9/a;

    .line 95
    .line 96
    invoke-interface {p1, v0, v1}, Lmiuix/animation/IHoverStyle;->p(Landroid/view/View;[Ld9/a;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
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

.method public bridge synthetic setExpandState(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/a;->setExpandState(I)V

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
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->d(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J:Landroid/graphics/drawable/Drawable;

    .line 8
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K:I

    :goto_0
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->e(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K:I

    :goto_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 23
    .line 24
    and-int/lit8 p1, p1, 0x4

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 29
    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget v1, Lk9/j;->b:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 47
    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget v1, Lk9/j;->a:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
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
.end method

.method public setIcon(I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    if-eqz p1, :cond_1

    .line 3
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E:I

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    if-eq p1, v1, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u0:Z

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 35
    .line 36
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 37
    .line 38
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e0(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->x:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 48
    .line 49
    const-string v0, "MIUIX Deleted"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_5
    :goto_2
    return-void
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
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a1(I)V

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
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x3

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, -0x4

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a1(I)V

    .line 7
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

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, -0x2

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a1(I)V

    .line 7
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

.method public setProgressBarVisibility(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, -0x2

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a1(I)V

    .line 7
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

.method public bridge synthetic setResizable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/a;->setResizable(Z)V

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
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/a;->i:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, -0x1

    .line 40
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, -0x2

    .line 55
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->f:Lmiuix/appcompat/internal/view/menu/action/e;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    move v2, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const/16 v2, 0x8

    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    if-nez p1, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget v2, Lk9/c;->a:I

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->V(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->V(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->g:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->X(IZ)V

    .line 117
    .line 118
    .line 119
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/a;->setSplitActionBar(Z)V

    .line 120
    .line 121
    .line 122
    :cond_8
    return-void
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/a;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

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
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/a;->setSplitWhenNarrow(Z)V

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
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v1, v0, [Landroid/view/View;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p1, v1, v2

    .line 20
    .line 21
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    .line 31
    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 32
    .line 33
    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v3, 0x3f19999a    # 0.6f

    .line 38
    .line 39
    .line 40
    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 41
    .line 42
    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->z(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-array v3, v2, [Ld9/a;

    .line 47
    .line 48
    invoke-interface {v1, p1, v3}, Lmiuix/animation/ITouchStyle;->P(Landroid/view/View;[Ld9/a;)V

    .line 49
    .line 50
    .line 51
    new-array p1, v0, [Landroid/view/View;

    .line 52
    .line 53
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 54
    .line 55
    aput-object v1, p1, v2

    .line 56
    .line 57
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Lmiuix/animation/d;->c()Lmiuix/animation/IHoverStyle;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/high16 v1, 0x42700000    # 60.0f

    .line 66
    .line 67
    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->j(F)V

    .line 68
    .line 69
    .line 70
    new-array p1, v0, [Landroid/view/View;

    .line 71
    .line 72
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 73
    .line 74
    aput-object v0, p1, v2

    .line 75
    .line 76
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Lmiuix/animation/d;->c()Lmiuix/animation/IHoverStyle;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 85
    .line 86
    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->A(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->i0:Landroid/view/View;

    .line 91
    .line 92
    new-array v1, v2, [Ld9/a;

    .line 93
    .line 94
    invoke-interface {p1, v0, v1}, Lmiuix/animation/IHoverStyle;->p(Landroid/view/View;[Ld9/a;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
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

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lo9/f;->w(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lo9/h;->i(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->S:Lo9/f;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    move v3, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v2

    .line 25
    :goto_0
    invoke-virtual {v0, v3}, Lo9/f;->y(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->T:Lo9/h;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    move p1, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p1, v2

    .line 35
    :goto_1
    invoke-virtual {v0, p1}, Lo9/h;->j(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 39
    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 43
    .line 44
    and-int/2addr p1, v2

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z:Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D:Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    :cond_2
    const/4 v1, 0x1

    .line 64
    :cond_3
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lmiuix/appcompat/internal/app/widget/f;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/f;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void
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

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->t0:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    return-void
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

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/a;->setVisibility(I)V

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
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E0:Landroid/view/Window$Callback;

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

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->t0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
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
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic t()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->t()V

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

.method public t0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
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

.method public bridge synthetic u(IZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/a;->u(IZZ)V

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
.end method

.method public bridge synthetic v()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/a;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public x0(ILmiuix/appcompat/app/c;)V
    .locals 3

    .line 1
    const-string v0, "ActionBarView"

    .line 2
    .line 3
    if-gtz p1, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "Try to initialize invalid layout for immersion more button: "

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->y:I

    .line 27
    .line 28
    and-int/lit8 v2, v1, 0x10

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-string p1, "Don\'t show immersion menu button for custom action bar"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    if-nez v1, :cond_2

    .line 39
    .line 40
    const-string p1, "Don\'t show immersion menu button for null display option"

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->h0:Landroid/view/View;

    .line 65
    .line 66
    sget v0, Lk9/g;->J:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$j;

    .line 75
    .line 76
    invoke-direct {v0, p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$j;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/app/c;Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    const/4 p2, 0x1

    .line 83
    new-array v0, p2, [Landroid/view/View;

    .line 84
    .line 85
    aput-object p1, v0, v1

    .line 86
    .line 87
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Lmiuix/animation/d;->c()Lmiuix/animation/IHoverStyle;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/high16 v2, 0x42700000    # 60.0f

    .line 96
    .line 97
    invoke-interface {v0, v2}, Lmiuix/animation/IHoverStyle;->j(F)V

    .line 98
    .line 99
    .line 100
    new-array p2, p2, [Landroid/view/View;

    .line 101
    .line 102
    aput-object p1, p2, v1

    .line 103
    .line 104
    invoke-static {p2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-interface {p2}, Lmiuix/animation/d;->c()Lmiuix/animation/IHoverStyle;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 113
    .line 114
    invoke-interface {p2, v0}, Lmiuix/animation/IHoverStyle;->A(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    new-array v0, v1, [Ld9/a;

    .line 119
    .line 120
    invoke-interface {p2, p1, v0}, Lmiuix/animation/IHoverStyle;->p(Landroid/view/View;[Ld9/a;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    return-void
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

.method public y0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ProgressBar;

    .line 2
    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H:Landroid/content/Context;

    .line 4
    .line 5
    sget v2, Lk9/b;->b:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    sget v1, Lk9/g;->K:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->g0:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    return-void
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
.end method
