.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
.super Ljava/lang/Object;
.source "typeEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;,
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;)V
    .locals 1

    .line 1
    const-string v0, "javaResolverSettings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 10
    .line 11
    return-void
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

.method private final b(Lkotlin/reflect/jvm/internal/impl/types/h0;Lw7/l;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/h0;",
            "Lw7/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;",
            ">;I",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;",
            "ZZ)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p6

    .line 8
    .line 9
    invoke-static/range {p4 .. p4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    if-nez p5, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v7, v5

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v7, v6

    .line 23
    :goto_1
    const/4 v8, 0x0

    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->I0()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;

    .line 37
    .line 38
    invoke-direct {v1, v8, v6, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/h0;IZ)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->K0()Lkotlin/reflect/jvm/internal/impl/types/x0;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/x0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;

    .line 53
    .line 54
    invoke-direct {v1, v8, v6, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/h0;IZ)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-interface {v1, v9}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

    .line 67
    .line 68
    invoke-static {v4, v9, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v9, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;->e(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/x0;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    if-nez v10, :cond_5

    .line 83
    .line 84
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->K0()Lkotlin/reflect/jvm/internal/impl/types/x0;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    :cond_5
    move-object v12, v10

    .line 89
    const-string v10, "enhancedClassifier?.typeConstructor ?: constructor"

    .line 90
    .line 91
    invoke-static {v12, v10}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v10, p3, 0x1

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->I0()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/types/x0;->getParameters()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    const-string v14, "typeConstructor.parameters"

    .line 105
    .line 106
    invoke-static {v13, v14}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    new-instance v6, Ljava/util/ArrayList;

    .line 118
    .line 119
    const/16 v5, 0xa

    .line 120
    .line 121
    invoke-static {v11, v5}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    invoke-static {v13, v5}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    if-eqz v11, :cond_c

    .line 141
    .line 142
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_c

    .line 147
    .line 148
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/x0;

    .line 157
    .line 158
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/z0;

    .line 159
    .line 160
    if-nez v7, :cond_6

    .line 161
    .line 162
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;

    .line 163
    .line 164
    move/from16 p5, v7

    .line 165
    .line 166
    const/4 v7, 0x0

    .line 167
    invoke-direct {v5, v8, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/b0;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    move/from16 p5, v7

    .line 172
    .line 173
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/z0;->c()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_7

    .line 178
    .line 179
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/z0;->getType()Lkotlin/reflect/jvm/internal/impl/types/b0;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/b0;->N0()Lkotlin/reflect/jvm/internal/impl/types/i1;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-direct {v0, v5, v1, v10, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->d(Lkotlin/reflect/jvm/internal/impl/types/i1;Lw7/l;IZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-interface {v1, v5}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

    .line 201
    .line 202
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->d()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 207
    .line 208
    if-ne v5, v7, :cond_8

    .line 209
    .line 210
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/z0;->getType()Lkotlin/reflect/jvm/internal/impl/types/b0;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/b0;->N0()Lkotlin/reflect/jvm/internal/impl/types/i1;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;

    .line 219
    .line 220
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/z;->c(Lkotlin/reflect/jvm/internal/impl/types/b0;)Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    const/4 v1, 0x0

    .line 225
    invoke-virtual {v8, v1}, Lkotlin/reflect/jvm/internal/impl/types/h0;->R0(Z)Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/z;->d(Lkotlin/reflect/jvm/internal/impl/types/b0;)Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    const/4 v5, 0x1

    .line 234
    invoke-virtual {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/h0;->R0(Z)Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {v8, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lkotlin/reflect/jvm/internal/impl/types/h0;Lkotlin/reflect/jvm/internal/impl/types/h0;)Lkotlin/reflect/jvm/internal/impl/types/i1;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-direct {v7, v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/b0;I)V

    .line 243
    .line 244
    .line 245
    move-object v5, v7

    .line 246
    goto :goto_3

    .line 247
    :cond_8
    const/4 v5, 0x1

    .line 248
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;

    .line 249
    .line 250
    const/4 v7, 0x0

    .line 251
    invoke-direct {v1, v7, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/b0;I)V

    .line 252
    .line 253
    .line 254
    move-object v5, v1

    .line 255
    :goto_3
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;->a()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    add-int/2addr v10, v1

    .line 260
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;->b()Lkotlin/reflect/jvm/internal/impl/types/b0;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const-string v7, "arg.projectionKind"

    .line 265
    .line 266
    if-eqz v1, :cond_9

    .line 267
    .line 268
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;->b()Lkotlin/reflect/jvm/internal/impl/types/b0;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/z0;->b()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-static {v5, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v1, v5, v13}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->e(Lkotlin/reflect/jvm/internal/impl/types/b0;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/x0;)Lkotlin/reflect/jvm/internal/impl/types/z0;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    goto :goto_4

    .line 284
    :cond_9
    if-eqz v4, :cond_a

    .line 285
    .line 286
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/z0;->c()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-nez v1, :cond_a

    .line 291
    .line 292
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/z0;->getType()Lkotlin/reflect/jvm/internal/impl/types/b0;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    const-string v5, "arg.type"

    .line 297
    .line 298
    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/z0;->b()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-static {v5, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v1, v5, v13}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->e(Lkotlin/reflect/jvm/internal/impl/types/b0;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/x0;)Lkotlin/reflect/jvm/internal/impl/types/z0;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    goto :goto_4

    .line 313
    :cond_a
    if-eqz v4, :cond_b

    .line 314
    .line 315
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/types/f1;->s(Lkotlin/reflect/jvm/internal/impl/descriptors/x0;)Lkotlin/reflect/jvm/internal/impl/types/z0;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    goto :goto_4

    .line 320
    :cond_b
    const/4 v7, 0x0

    .line 321
    :goto_4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-object/from16 v1, p2

    .line 325
    .line 326
    move/from16 v7, p5

    .line 327
    .line 328
    const/16 v5, 0xa

    .line 329
    .line 330
    const/4 v8, 0x0

    .line 331
    goto/16 :goto_2

    .line 332
    .line 333
    :cond_c
    sub-int v10, v10, p3

    .line 334
    .line 335
    if-nez v4, :cond_11

    .line 336
    .line 337
    if-nez v2, :cond_11

    .line 338
    .line 339
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_e

    .line 344
    .line 345
    :cond_d
    const/4 v7, 0x1

    .line 346
    goto :goto_6

    .line 347
    :cond_e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    if-eqz v3, :cond_d

    .line 356
    .line 357
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/z0;

    .line 362
    .line 363
    if-nez v3, :cond_10

    .line 364
    .line 365
    const/4 v7, 0x1

    .line 366
    goto :goto_5

    .line 367
    :cond_10
    const/4 v7, 0x0

    .line 368
    :goto_5
    if-nez v7, :cond_f

    .line 369
    .line 370
    const/4 v7, 0x0

    .line 371
    :goto_6
    if-eqz v7, :cond_11

    .line 372
    .line 373
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;

    .line 374
    .line 375
    const/4 v3, 0x0

    .line 376
    const/4 v7, 0x0

    .line 377
    invoke-direct {v1, v7, v10, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/h0;IZ)V

    .line 378
    .line 379
    .line 380
    return-object v1

    .line 381
    :cond_11
    const/4 v3, 0x0

    .line 382
    const/4 v7, 0x0

    .line 383
    const/4 v1, 0x3

    .line 384
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    .line 385
    .line 386
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    aput-object v5, v1, v3

    .line 391
    .line 392
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;->c()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    if-eqz v4, :cond_12

    .line 397
    .line 398
    const/4 v4, 0x1

    .line 399
    goto :goto_7

    .line 400
    :cond_12
    move v4, v3

    .line 401
    :goto_7
    if-eqz v4, :cond_13

    .line 402
    .line 403
    goto :goto_8

    .line 404
    :cond_13
    move-object v5, v7

    .line 405
    :goto_8
    const/4 v4, 0x1

    .line 406
    aput-object v5, v1, v4

    .line 407
    .line 408
    const/4 v5, 0x2

    .line 409
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;->d()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    if-eqz v2, :cond_14

    .line 414
    .line 415
    move v11, v4

    .line 416
    goto :goto_9

    .line 417
    :cond_14
    move v11, v3

    .line 418
    :goto_9
    if-eqz v11, :cond_15

    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_15
    move-object v8, v7

    .line 422
    :goto_a
    aput-object v8, v1, v5

    .line 423
    .line 424
    invoke-static {v1}, Lkotlin/collections/t;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/u0;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->I0()Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    new-instance v13, Ljava/util/ArrayList;

    .line 449
    .line 450
    const/16 v8, 0xa

    .line 451
    .line 452
    invoke-static {v6, v8}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    invoke-static {v1, v8}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    .line 466
    .line 467
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_17

    .line 472
    .line 473
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-eqz v1, :cond_17

    .line 478
    .line 479
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v6

    .line 487
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/z0;

    .line 488
    .line 489
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/z0;

    .line 490
    .line 491
    if-nez v1, :cond_16

    .line 492
    .line 493
    goto :goto_c

    .line 494
    :cond_16
    move-object v6, v1

    .line 495
    :goto_c
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_17
    if-eqz v2, :cond_18

    .line 500
    .line 501
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    goto :goto_d

    .line 506
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->L0()Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    :goto_d
    move v14, v1

    .line 511
    const/4 v15, 0x0

    .line 512
    const/16 v16, 0x10

    .line 513
    .line 514
    const/16 v17, 0x0

    .line 515
    .line 516
    invoke-static/range {v11 .. v17}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->i(Lkotlin/reflect/jvm/internal/impl/types/u0;Lkotlin/reflect/jvm/internal/impl/types/x0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/f;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->b()Z

    .line 521
    .line 522
    .line 523
    move-result v5

    .line 524
    if-eqz v5, :cond_19

    .line 525
    .line 526
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->e(Lkotlin/reflect/jvm/internal/impl/types/h0;)Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    :cond_19
    if-eqz v2, :cond_1a

    .line 531
    .line 532
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->e()Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-eqz v2, :cond_1a

    .line 537
    .line 538
    move v5, v4

    .line 539
    goto :goto_e

    .line 540
    :cond_1a
    move v5, v3

    .line 541
    :goto_e
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;

    .line 542
    .line 543
    invoke-direct {v2, v1, v10, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/h0;IZ)V

    .line 544
    .line 545
    .line 546
    return-object v2
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

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;Lkotlin/reflect/jvm/internal/impl/types/h0;Lw7/l;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v7, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v7, p5

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move v8, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v8, p6

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move v5, p3

    .line 20
    move-object v6, p4

    .line 21
    invoke-direct/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->b(Lkotlin/reflect/jvm/internal/impl/types/h0;Lw7/l;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
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
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/types/i1;Lw7/l;IZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/i1;",
            "Lw7/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;",
            ">;IZ)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/c0;->a(Lkotlin/reflect/jvm/internal/impl/types/b0;)Z

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
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-direct {p1, v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/b0;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/w;

    .line 16
    .line 17
    if-eqz v0, :cond_c

    .line 18
    .line 19
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/g0;

    .line 20
    .line 21
    move-object v9, p1

    .line 22
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/w;

    .line 23
    .line 24
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/w;->S0()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    move-object v4, p2

    .line 32
    move v5, p3

    .line 33
    move v7, v0

    .line 34
    move v8, p4

    .line 35
    invoke-direct/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->b(Lkotlin/reflect/jvm/internal/impl/types/h0;Lw7/l;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/w;->T0()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 44
    .line 45
    invoke-direct/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->b(Lkotlin/reflect/jvm/internal/impl/types/h0;Lw7/l;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->b()I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->b()I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    if-nez p3, :cond_1

    .line 60
    .line 61
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    if-nez p3, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->a()Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-nez p3, :cond_8

    .line 73
    .line 74
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->a()Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-eqz p3, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-eqz v0, :cond_5

    .line 82
    .line 83
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    .line 84
    .line 85
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/w;->S0()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_3
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-nez p2, :cond_4

    .line 100
    .line 101
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/w;->T0()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :cond_4
    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/h0;Lkotlin/reflect/jvm/internal/impl/types/h0;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-nez p1, :cond_6

    .line 114
    .line 115
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/w;->S0()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :cond_6
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-nez p2, :cond_7

    .line 124
    .line 125
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/w;->T0()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    :cond_7
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lkotlin/reflect/jvm/internal/impl/types/h0;Lkotlin/reflect/jvm/internal/impl/types/h0;)Lkotlin/reflect/jvm/internal/impl/types/i1;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_1

    .line 134
    :cond_8
    :goto_0
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    if-eqz p2, :cond_a

    .line 139
    .line 140
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    if-nez p3, :cond_9

    .line 145
    .line 146
    move-object p3, p2

    .line 147
    :cond_9
    invoke-static {p3, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lkotlin/reflect/jvm/internal/impl/types/h0;Lkotlin/reflect/jvm/internal/impl/types/h0;)Lkotlin/reflect/jvm/internal/impl/types/i1;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-nez p2, :cond_b

    .line 152
    .line 153
    :cond_a
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_b
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/h1;->d(Lkotlin/reflect/jvm/internal/impl/types/i1;Lkotlin/reflect/jvm/internal/impl/types/b0;)Lkotlin/reflect/jvm/internal/impl/types/i1;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :goto_1
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;

    .line 165
    .line 166
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->b()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-direct {p1, v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/b0;I)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_c
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 175
    .line 176
    if-eqz v0, :cond_e

    .line 177
    .line 178
    move-object v2, p1

    .line 179
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 180
    .line 181
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    const/16 v8, 0x8

    .line 185
    .line 186
    const/4 v9, 0x0

    .line 187
    move-object v1, p0

    .line 188
    move-object v3, p2

    .line 189
    move v4, p3

    .line 190
    move v7, p4

    .line 191
    invoke-static/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->c(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;Lkotlin/reflect/jvm/internal/impl/types/h0;Lw7/l;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;

    .line 196
    .line 197
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->a()Z

    .line 198
    .line 199
    .line 200
    move-result p4

    .line 201
    if-eqz p4, :cond_d

    .line 202
    .line 203
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 204
    .line 205
    .line 206
    move-result-object p4

    .line 207
    invoke-static {p1, p4}, Lkotlin/reflect/jvm/internal/impl/types/h1;->d(Lkotlin/reflect/jvm/internal/impl/types/i1;Lkotlin/reflect/jvm/internal/impl/types/b0;)Lkotlin/reflect/jvm/internal/impl/types/i1;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    goto :goto_2

    .line 212
    :cond_d
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->c()Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    :goto_2
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$b;->b()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    invoke-direct {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/b0;I)V

    .line 221
    .line 222
    .line 223
    move-object p1, p3

    .line 224
    :goto_3
    return-object p1

    .line 225
    :cond_e
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 226
    .line 227
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 228
    .line 229
    .line 230
    throw p1
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

.method private final e(Lkotlin/reflect/jvm/internal/impl/types/h0;)Lkotlin/reflect/jvm/internal/impl/types/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/l0;->h(Lkotlin/reflect/jvm/internal/impl/types/h0;Z)Lkotlin/reflect/jvm/internal/impl/types/h0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;-><init>(Lkotlin/reflect/jvm/internal/impl/types/h0;)V

    .line 18
    .line 19
    .line 20
    move-object p1, v0

    .line 21
    :goto_0
    return-object p1
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


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/types/b0;Lw7/l;Z)Lkotlin/reflect/jvm/internal/impl/types/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/b0;",
            "Lw7/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;",
            ">;Z)",
            "Lkotlin/reflect/jvm/internal/impl/types/b0;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "qualifiers"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->N0()Lkotlin/reflect/jvm/internal/impl/types/i1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->d(Lkotlin/reflect/jvm/internal/impl/types/i1;Lw7/l;IZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c$a;->b()Lkotlin/reflect/jvm/internal/impl/types/b0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
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
