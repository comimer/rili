.class Lmiuix/appcompat/internal/app/widget/ActionBarView$k;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field a:Lmiuix/appcompat/internal/view/menu/c;

.field b:Lmiuix/appcompat/internal/view/menu/e;

.field final synthetic c:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public b(Lmiuix/appcompat/internal/view/menu/c;Z)V
    .locals 0

    return-void
.end method

.method public d(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->a:Lmiuix/appcompat/internal/view/menu/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/c;->f(Lmiuix/appcompat/internal/view/menu/e;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->a:Lmiuix/appcompat/internal/view/menu/c;

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

.method public e(Lmiuix/appcompat/internal/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Lmiuix/appcompat/internal/view/menu/c;Lmiuix/appcompat/internal/view/menu/e;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/e;->getActionView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 8
    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 10
    .line 11
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 15
    .line 16
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 21
    .line 22
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 44
    .line 45
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 46
    .line 47
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 54
    .line 55
    if-eq p1, v0, :cond_0

    .line 56
    .line 57
    iget-object p1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 63
    .line 64
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 73
    .line 74
    if-eq p1, v0, :cond_1

    .line 75
    .line 76
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 84
    .line 85
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/16 v0, 0x8

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 94
    .line 95
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 103
    .line 104
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lo9/f;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-static {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 117
    .line 118
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 125
    .line 126
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 134
    .line 135
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 142
    .line 143
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 151
    .line 152
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 159
    .line 160
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 168
    .line 169
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_7

    .line 174
    .line 175
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 176
    .line 177
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 185
    .line 186
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_8

    .line 191
    .line 192
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 193
    .line 194
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 202
    .line 203
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_9

    .line 208
    .line 209
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 210
    .line 211
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 221
    .line 222
    .line 223
    const/4 p1, 0x1

    .line 224
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/e;->n(Z)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 228
    .line 229
    iget-object p2, p2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 230
    .line 231
    instance-of v0, p2, Landroid/view/CollapsibleActionView;

    .line 232
    .line 233
    if-eqz v0, :cond_a

    .line 234
    .line 235
    check-cast p2, Landroid/view/CollapsibleActionView;

    .line 236
    .line 237
    invoke-interface {p2}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 238
    .line 239
    .line 240
    :cond_a
    return p1
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

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Lmiuix/appcompat/internal/view/menu/c;Lmiuix/appcompat/internal/view/menu/e;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    .line 3
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 4
    .line 5
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroid/view/CollapsibleActionView;

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 15
    .line 16
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 22
    .line 23
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D0:Landroid/view/View;

    .line 34
    .line 35
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v1, 0x2

    .line 40
    and-int/2addr p1, v1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 45
    .line 46
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->D(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 54
    .line 55
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    and-int/lit8 p1, p1, 0x8

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 65
    .line 66
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->E(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lo9/f;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 73
    .line 74
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->O(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 79
    .line 80
    invoke-static {p1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->F(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 84
    .line 85
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 92
    .line 93
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-ne p1, v1, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 100
    .line 101
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->G(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 109
    .line 110
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 117
    .line 118
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-ne p1, v1, :cond_5

    .line 123
    .line 124
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 125
    .line 126
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->H(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 134
    .line 135
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_6

    .line 140
    .line 141
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 142
    .line 143
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-ne p1, v1, :cond_6

    .line 148
    .line 149
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 150
    .line 151
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->I(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 159
    .line 160
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 167
    .line 168
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-ne p1, v1, :cond_7

    .line 173
    .line 174
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 175
    .line 176
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->J(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 184
    .line 185
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_8

    .line 190
    .line 191
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 192
    .line 193
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->P(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-ne p1, v3, :cond_8

    .line 198
    .line 199
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 200
    .line 201
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->K(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 209
    .line 210
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-eqz p1, :cond_9

    .line 215
    .line 216
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 217
    .line 218
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->M(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    and-int/lit8 p1, p1, 0x10

    .line 223
    .line 224
    if-eqz p1, :cond_9

    .line 225
    .line 226
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 227
    .line 228
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->L(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 236
    .line 237
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 242
    .line 243
    .line 244
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 245
    .line 246
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->c:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/view/menu/e;->n(Z)V

    .line 252
    .line 253
    .line 254
    return v3
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

.method public updateMenuView(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->a:Lmiuix/appcompat/internal/view/menu/c;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/c;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    move v1, v0

    .line 15
    :goto_0
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->a:Lmiuix/appcompat/internal/view/menu/c;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/view/menu/c;->getItem(I)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->a:Lmiuix/appcompat/internal/view/menu/c;

    .line 35
    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->b:Lmiuix/appcompat/internal/view/menu/e;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$k;->g(Lmiuix/appcompat/internal/view/menu/c;Lmiuix/appcompat/internal/view/menu/e;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
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
