.class public Lmiuix/appcompat/internal/app/widget/b;
.super Lmiuix/appcompat/app/a;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/b$e;
    }
.end annotation


# static fields
.field private static J:Landroidx/appcompat/app/a$e;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

.field private D:Lq9/b$a;

.field private E:Lmiuix/animation/f;

.field private F:Lmiuix/animation/f;

.field private G:I

.field private H:Z

.field private I:I

.field a:Landroid/view/ActionMode;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Context;

.field private d:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private g:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field private h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private i:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private m:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private n:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private o:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private p:Lmiuix/appcompat/internal/app/widget/h;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroidx/fragment/app/FragmentManager;

.field private s:I

.field private t:Z

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmiuix/appcompat/internal/app/widget/b;->J:Landroidx/appcompat/app/a$e;

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
.end method

.method public constructor <init>(Lmiuix/appcompat/app/m;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->q:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/b;->s:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->u:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/b;->w:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->A:Z

    .line 26
    .line 27
    new-instance v0, Lmiuix/appcompat/internal/app/widget/b$b;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/b$b;-><init>(Lmiuix/appcompat/internal/app/widget/b;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->D:Lq9/b$a;

    .line 33
    .line 34
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->r:Landroidx/fragment/app/FragmentManager;

    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/b;->X(Landroid/view/ViewGroup;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void
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

.method static synthetic I(Lmiuix/appcompat/internal/app/widget/b;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/b;->i:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

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

.method static synthetic J(Lmiuix/appcompat/internal/app/widget/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/b;->A:Z

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

.method private static L(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private M(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1
    instance-of v0, p1, Lmiuix/view/h$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq9/d;

    .line 6
    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Lq9/d;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lq9/c;

    .line 14
    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Lq9/c;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object v0
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

.method private P(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/b;->Q(ZLe9/a;)V

    .line 3
    .line 4
    .line 5
    return-void
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

.method private Q(ZLe9/a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->E:Lmiuix/animation/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lmiuix/animation/f;->B()Le9/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->E:Lmiuix/animation/f;

    .line 11
    .line 12
    invoke-interface {v2}, Lmiuix/animation/c;->cancel()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->a0()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p1, v3

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 30
    :goto_2
    const/16 v2, 0x8

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    const-string v5, "HideActionBar"

    .line 36
    .line 37
    invoke-direct {p0, v3, v5, v0, p2}, Lmiuix/appcompat/internal/app/widget/b;->i0(ZLjava/lang/String;Le9/a;Le9/a;)Lmiuix/animation/f;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->E:Lmiuix/animation/f;

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    neg-int v0, v0

    .line 51
    int-to-float v0, v0

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 56
    .line 57
    invoke-virtual {p2, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 61
    .line 62
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_3
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 66
    .line 67
    if-eqz p2, :cond_6

    .line 68
    .line 69
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->F:Lmiuix/animation/f;

    .line 70
    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    invoke-interface {p2}, Lmiuix/animation/f;->B()Le9/a;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->F:Lmiuix/animation/f;

    .line 78
    .line 79
    invoke-interface {p2}, Lmiuix/animation/c;->cancel()V

    .line 80
    .line 81
    .line 82
    :cond_4
    if-eqz p1, :cond_5

    .line 83
    .line 84
    const-string p1, "SpliterHide"

    .line 85
    .line 86
    invoke-direct {p0, v3, p1, v1}, Lmiuix/appcompat/internal/app/widget/b;->j0(ZLjava/lang/String;Le9/a;)Lmiuix/animation/f;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->F:Lmiuix/animation/f;

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 94
    .line 95
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/b;->V()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    int-to-float p2, p2

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 104
    .line 105
    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :goto_4
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/b;->k0(Z)V

    .line 114
    .line 115
    .line 116
    :cond_6
    return-void
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

.method private R(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/b;->S(ZLe9/a;)V

    .line 3
    .line 4
    .line 5
    return-void
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

.method private S(ZLe9/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->E:Lmiuix/animation/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lmiuix/animation/f;->B()Le9/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->E:Lmiuix/animation/f;

    .line 11
    .line 12
    invoke-interface {v2}, Lmiuix/animation/c;->cancel()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->a0()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move p1, v3

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    move p1, v4

    .line 31
    :goto_2
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 32
    .line 33
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/b;->a:Landroid/view/ActionMode;

    .line 34
    .line 35
    instance-of v5, v5, Lmiuix/view/h;

    .line 36
    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    const/16 v5, 0x8

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    move v5, v3

    .line 43
    :goto_3
    invoke-virtual {v2, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    const-string v6, "ShowActionBar"

    .line 52
    .line 53
    invoke-direct {p0, v4, v6, v0, p2}, Lmiuix/appcompat/internal/app/widget/b;->i0(ZLjava/lang/String;Le9/a;Le9/a;)Lmiuix/animation/f;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->E:Lmiuix/animation/f;

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 61
    .line 62
    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 66
    .line 67
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 68
    .line 69
    .line 70
    :goto_4
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 71
    .line 72
    if-eqz p2, :cond_8

    .line 73
    .line 74
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->F:Lmiuix/animation/f;

    .line 75
    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    invoke-interface {p2}, Lmiuix/animation/f;->B()Le9/a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->F:Lmiuix/animation/f;

    .line 83
    .line 84
    invoke-interface {p2}, Lmiuix/animation/c;->cancel()V

    .line 85
    .line 86
    .line 87
    :cond_5
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 88
    .line 89
    invoke-virtual {p2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    const-string p1, "SpliterShow"

    .line 95
    .line 96
    invoke-direct {p0, v4, p1, v1}, Lmiuix/appcompat/internal/app/widget/b;->j0(ZLjava/lang/String;Le9/a;)Lmiuix/animation/f;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->F:Lmiuix/animation/f;

    .line 101
    .line 102
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 103
    .line 104
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-lez p1, :cond_7

    .line 117
    .line 118
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 119
    .line 120
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    instance-of p2, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 127
    .line 128
    if-eqz p2, :cond_7

    .line 129
    .line 130
    move-object p2, p1

    .line 131
    check-cast p2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 132
    .line 133
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->u()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    xor-int/2addr p2, v4

    .line 138
    if-eqz p2, :cond_7

    .line 139
    .line 140
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/e;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 143
    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 147
    .line 148
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 152
    .line 153
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_5
    invoke-direct {p0, v4}, Lmiuix/appcompat/internal/app/widget/b;->k0(Z)V

    .line 157
    .line 158
    .line 159
    :cond_8
    return-void
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

.method private V()I
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    instance-of v2, v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 30
    .line 31
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->u()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getCollapsedHeight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :cond_0
    return v0
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

.method private e0(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 8
    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->l:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 10
    .line 11
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->m:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 12
    .line 13
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->n:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 14
    .line 15
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/b;->o:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->W0(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->U()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x2

    .line 27
    if-ne p1, v2, :cond_0

    .line 28
    .line 29
    move p1, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p1, v1

    .line 32
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->l:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->l:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->m:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_2
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->m:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->n:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :goto_3
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->n:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 86
    .line 87
    .line 88
    :cond_6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->o:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 89
    .line 90
    if-eqz v2, :cond_8

    .line 91
    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    :goto_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->o:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 104
    .line 105
    .line 106
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCollapsable(Z)V

    .line 109
    .line 110
    .line 111
    return-void
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

.method private i0(ZLjava/lang/String;Le9/a;Le9/a;)Lmiuix/animation/f;
    .locals 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, -0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    new-instance p1, Ld9/a;

    .line 16
    .line 17
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 18
    .line 19
    .line 20
    new-array v0, v3, [F

    .line 21
    .line 22
    fill-array-data v0, :array_0

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v0}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 30
    .line 31
    .line 32
    if-nez p4, :cond_0

    .line 33
    .line 34
    new-instance p4, Le9/a;

    .line 35
    .line 36
    invoke-direct {p4, p2}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 40
    .line 41
    invoke-virtual {p4, v0, v1, v2}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    sget-object v0, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 46
    .line 47
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 48
    .line 49
    invoke-virtual {p4, v0, v1, v2}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    :cond_0
    new-array v0, v6, [Landroid/view/View;

    .line 54
    .line 55
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 56
    .line 57
    aput-object v1, v0, v5

    .line 58
    .line 59
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz p3, :cond_1

    .line 68
    .line 69
    invoke-virtual {p3, p2}, Le9/a;->v(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, p3}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :cond_1
    new-array p2, v6, [Ld9/a;

    .line 77
    .line 78
    aput-object p1, p2, v5

    .line 79
    .line 80
    invoke-interface {v0, p4, p2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    new-instance p1, Ld9/a;

    .line 86
    .line 87
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 88
    .line 89
    .line 90
    new-array v3, v3, [F

    .line 91
    .line 92
    fill-array-data v3, :array_1

    .line 93
    .line 94
    .line 95
    invoke-static {v4, v3}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1, v3}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 100
    .line 101
    .line 102
    new-array v3, v6, [Lg9/b;

    .line 103
    .line 104
    new-instance v4, Lmiuix/appcompat/internal/app/widget/b$e;

    .line 105
    .line 106
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 107
    .line 108
    invoke-direct {v4, v7, p0}, Lmiuix/appcompat/internal/app/widget/b$e;-><init>(Landroid/view/View;Lmiuix/appcompat/internal/app/widget/b;)V

    .line 109
    .line 110
    .line 111
    aput-object v4, v3, v5

    .line 112
    .line 113
    invoke-virtual {p1, v3}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 114
    .line 115
    .line 116
    if-nez p4, :cond_3

    .line 117
    .line 118
    new-instance p4, Le9/a;

    .line 119
    .line 120
    invoke-direct {p4, p2}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v3, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 124
    .line 125
    neg-int v0, v0

    .line 126
    add-int/lit8 v0, v0, -0x64

    .line 127
    .line 128
    int-to-double v7, v0

    .line 129
    invoke-virtual {p4, v3, v7, v8}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    sget-object v0, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 134
    .line 135
    invoke-virtual {p4, v0, v1, v2}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    :cond_3
    new-array v0, v6, [Landroid/view/View;

    .line 140
    .line 141
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 142
    .line 143
    aput-object v1, v0, v5

    .line 144
    .line 145
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {v0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz p3, :cond_4

    .line 154
    .line 155
    invoke-virtual {p3, p2}, Le9/a;->v(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v0, p3}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :cond_4
    new-array p2, v6, [Ld9/a;

    .line 163
    .line 164
    aput-object p1, p2, v5

    .line 165
    .line 166
    invoke-interface {v0, p4, p2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    :goto_0
    return-object p1

    .line 171
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
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

.method private j0(ZLjava/lang/String;Le9/a;)Lmiuix/animation/f;
    .locals 9

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/b;->V()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, -0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Ld9/a;

    .line 14
    .line 15
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 16
    .line 17
    .line 18
    new-array v0, v3, [F

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    invoke-static {v4, v0}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 28
    .line 29
    .line 30
    new-instance v0, Le9/a;

    .line 31
    .line 32
    invoke-direct {v0, p2}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1, v2}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 42
    .line 43
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-array v1, v6, [Landroid/view/View;

    .line 50
    .line 51
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 52
    .line 53
    aput-object v2, v1, v5

    .line 54
    .line 55
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz p3, :cond_0

    .line 64
    .line 65
    invoke-virtual {p3, p2}, Le9/a;->v(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, p3}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_0
    new-array p2, v6, [Ld9/a;

    .line 73
    .line 74
    aput-object p1, p2, v5

    .line 75
    .line 76
    invoke-interface {v1, v0, p2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance p1, Ld9/a;

    .line 82
    .line 83
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 84
    .line 85
    .line 86
    new-array v3, v3, [F

    .line 87
    .line 88
    fill-array-data v3, :array_1

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v3}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v3}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 96
    .line 97
    .line 98
    new-array v3, v6, [Lg9/b;

    .line 99
    .line 100
    new-instance v4, Lmiuix/appcompat/internal/app/widget/b$e;

    .line 101
    .line 102
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 103
    .line 104
    invoke-direct {v4, v7, p0}, Lmiuix/appcompat/internal/app/widget/b$e;-><init>(Landroid/view/View;Lmiuix/appcompat/internal/app/widget/b;)V

    .line 105
    .line 106
    .line 107
    aput-object v4, v3, v5

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 110
    .line 111
    .line 112
    new-instance v3, Le9/a;

    .line 113
    .line 114
    invoke-direct {v3, p2}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sget-object v4, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 118
    .line 119
    add-int/lit8 v0, v0, 0x64

    .line 120
    .line 121
    int-to-double v7, v0

    .line 122
    invoke-virtual {v3, v4, v7, v8}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v3, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 127
    .line 128
    invoke-virtual {v0, v3, v1, v2}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-array v1, v6, [Landroid/view/View;

    .line 133
    .line 134
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 135
    .line 136
    aput-object v2, v1, v5

    .line 137
    .line 138
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz p3, :cond_2

    .line 147
    .line 148
    invoke-virtual {p3, p2}, Le9/a;->v(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, p3}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    :cond_2
    new-array p2, v6, [Ld9/a;

    .line 156
    .line 157
    aput-object p1, p2, v5

    .line 158
    .line 159
    invoke-interface {v1, v0, p2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_0
    return-object p1

    .line 164
    nop

    .line 165
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
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

.method private k0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 28
    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->i:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 30
    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->u()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->j:Landroid/view/View;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->d:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 44
    .line 45
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->k:Landroid/view/View$OnClickListener;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->l(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$c;->b()Landroid/animation/Animator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->d:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->l(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$c;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$c;->a()Landroid/animation/Animator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
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

.method private l0(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/b;->m0(ZLe9/a;)V

    .line 3
    .line 4
    .line 5
    return-void
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

.method private m0(ZLe9/a;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->x:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/b;->y:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/b;->z:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/b;->L(ZZZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->A:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->A:Z

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/b;->S(ZLe9/a;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->A:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->A:Z

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/b;->Q(ZLe9/a;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
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


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/b;->B(Ljava/lang/CharSequence;)V

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
.end method

.method public B(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

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

.method public E(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEndView(Landroid/view/View;)V

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

.method public F(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

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

.method public G(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

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

.method public H(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setStartView(Landroid/view/View;)V

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

.method K(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->g0()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->W()V

    .line 8
    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/h;->d(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->l:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E0()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->A0()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->l:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 36
    .line 37
    xor-int/lit8 v1, p1, 0x1

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->m:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 43
    .line 44
    xor-int/lit8 v1, p1, 0x1

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->n:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 50
    .line 51
    xor-int/lit8 v1, p1, 0x1

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->o:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 57
    .line 58
    xor-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
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

.method public N(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/h;
    .locals 1

    .line 1
    instance-of p1, p1, Lmiuix/view/h$a;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->O()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->d:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 16
    .line 17
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBaseInnerInsets()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 24
    .line 25
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setStatusBarPaddingTop(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->d:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 31
    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eq p1, v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->d:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 41
    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 48
    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->f(Lmiuix/view/a;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->g:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    :goto_0
    return-object p1

    .line 62
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "not set windowSplitActionBar true in activity style!"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
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

.method public O()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lk9/i;->A:I

    .line 10
    .line 11
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->d:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 19
    .line 20
    new-instance v1, Lmiuix/appcompat/internal/app/widget/b$d;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/b$d;-><init>(Lmiuix/appcompat/internal/app/widget/b;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    return-object v0
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
.end method

.method public T()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

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

.method public U()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

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

.method W()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->z:Z

    .line 7
    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 9
    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->k()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v3, 0x8000

    .line 15
    .line 16
    .line 17
    and-int/2addr v2, v3

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v0

    .line 24
    :goto_0
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M0(Z)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/b;->l0(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/b;->G(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 34
    .line 35
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/b;->G:I

    .line 40
    .line 41
    invoke-virtual {p0, v0, v3}, Lmiuix/appcompat/internal/app/widget/b;->d0(IZ)V

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->H:Z

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/b;->G(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 51
    .line 52
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/b;->G:I

    .line 57
    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 59
    .line 60
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 61
    .line 62
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->l()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->H:Z

    .line 67
    .line 68
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/b;->G:I

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/b;->F(I)V

    .line 71
    .line 72
    .line 73
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->H:Z

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/b;->G(Z)V

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 79
    .line 80
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/b;->I:I

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void
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

.method protected X(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p1

    .line 5
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 6
    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->d:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setActionBar(Lmiuix/appcompat/app/a;)V

    .line 10
    .line 11
    .line 12
    sget v0, Lk9/g;->a:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 19
    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 21
    .line 22
    sget v0, Lk9/g;->o:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 29
    .line 30
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->g:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 31
    .line 32
    sget v0, Lk9/g;->d:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 39
    .line 40
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 41
    .line 42
    sget v0, Lk9/g;->T:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 49
    .line 50
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 51
    .line 52
    sget v0, Lk9/g;->A:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->j:Landroid/view/View;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    new-instance p1, Lmiuix/appcompat/internal/app/widget/b$c;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/b$c;-><init>(Lmiuix/appcompat/internal/app/widget/b;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->k:Landroid/view/View$OnClickListener;

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->g:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " can only be used with a compatible window decor layout"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/b;->v:I

    .line 118
    .line 119
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 120
    .line 121
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    and-int/lit8 p1, p1, 0x4

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    const/4 v1, 0x1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    move p1, v1

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    move p1, v0

    .line 134
    :goto_1
    if-eqz p1, :cond_5

    .line 135
    .line 136
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/b;->t:Z

    .line 137
    .line 138
    :cond_5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 139
    .line 140
    invoke-static {v2}, Lq9/a;->b(Landroid/content/Context;)Lq9/a;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lq9/a;->a()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_6

    .line 149
    .line 150
    if-eqz p1, :cond_7

    .line 151
    .line 152
    :cond_6
    move v0, v1

    .line 153
    :cond_7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/b;->f0(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Lq9/a;->f()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/b;->e0(Z)V

    .line 161
    .line 162
    .line 163
    return-void
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
.end method

.method public Y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->l()Z

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

.method a0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->B:Z

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

.method public b0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setIsMiuixFloating(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->T(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
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
.end method

.method public c0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

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

.method public d0(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->u(IZZ)V

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

.method public f0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

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

.method g0()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->z:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/b;->l0(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->T()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/b;->G:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->Z()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/b;->H:Z

    .line 23
    .line 24
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 25
    .line 26
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/b;->d0(IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/b;->G(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 38
    .line 39
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/b;->G:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 45
    .line 46
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 47
    .line 48
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/b;->H:Z

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/b;->I:I

    .line 60
    .line 61
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 62
    .line 63
    const/4 v3, 0x4

    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 68
    .line 69
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 70
    .line 71
    instance-of v3, v3, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 72
    .line 73
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->k()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const v5, 0x8000

    .line 78
    .line 79
    .line 80
    and-int/2addr v4, v5

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move v0, v1

    .line 85
    :goto_1
    invoke-virtual {v2, v3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->N0(ZZ)V

    .line 86
    .line 87
    .line 88
    :cond_2
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
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public h0(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->a:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/b;->M(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 13
    .line 14
    instance-of v2, v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    instance-of v2, v0, Lq9/d;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    :cond_1
    instance-of v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    instance-of v2, v0, Lq9/c;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    :cond_2
    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/h;->h()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 34
    .line 35
    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/h;->e()V

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/b;->N(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/h;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 43
    .line 44
    if-eqz p1, :cond_7

    .line 45
    .line 46
    instance-of v1, v0, Lq9/b;

    .line 47
    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    check-cast v1, Lq9/b;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lq9/b;->i(Lmiuix/appcompat/internal/app/widget/h;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->D:Lq9/b$a;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lq9/b;->h(Lq9/b$a;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lq9/b;->d()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 71
    .line 72
    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/app/widget/h;->c(Landroid/view/ActionMode;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/b;->K(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/b;->v:I

    .line 84
    .line 85
    if-ne v2, p1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->p:Lmiuix/appcompat/internal/app/widget/h;

    .line 100
    .line 101
    instance-of v1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 106
    .line 107
    const/16 v1, 0x20

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 110
    .line 111
    .line 112
    :cond_5
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->a:Landroid/view/ActionMode;

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_6
    const/4 p1, 0x0

    .line 116
    return-object p1

    .line 117
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-string v0, "not set windowSplitActionBar true in activity style!"

    .line 120
    .line 121
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1
    .line 125
    .line 126
    .line 127
.end method

.method public j()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

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

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

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

.method public l()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x1010397

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->c:Landroid/content/Context;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->c:Landroid/content/Context;

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->c:Landroid/content/Context;

    .line 42
    .line 43
    return-object v0
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

.method public m()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

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

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/b;->A:Z

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

.method public p(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lq9/a;->b(Landroid/content/Context;)Lq9/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lq9/a;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/b;->e0(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->C:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public u(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x8000

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    :cond_1
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    return-void
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

.method public v(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/b;->c0(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
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

.method public x(I)V
    .locals 5

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/b;->t:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/b;->e:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    const v4, 0x8000

    .line 25
    .line 26
    .line 27
    and-int/2addr v0, v4

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v0, v3

    .line 33
    :goto_0
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->r(Z)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    and-int/lit16 p1, p1, 0x4000

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->r(Z)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->h:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->r(Z)Z

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_1
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

.method public y(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/b;->B:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/b;->o()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/b;->R(Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/b;->P(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
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

.method public z(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->f:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

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
