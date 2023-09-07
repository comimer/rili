.class public final Lkotlin/reflect/jvm/internal/f;
.super Ljava/lang/Object;
.source "KPropertyImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u001a \u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u001a\u000c\u0010\u0006\u001a\u00020\u0001*\u00020\u0005H\u0002\"\"\u0010\n\u001a\u0004\u0018\u00010\u0007*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00008@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$a;",
        "",
        "isGetter",
        "Lkotlin/reflect/jvm/internal/calls/b;",
        "b",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/n0;",
        "g",
        "",
        "f",
        "(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;",
        "boundReceiver",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final synthetic a(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/f;->b(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/b;

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

.method private static final b(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
            "**>;Z)",
            "Lkotlin/reflect/jvm/internal/calls/b<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$a;->a()Lkotlin/text/Regex;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->D()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lkotlin/reflect/jvm/internal/calls/h;->a:Lkotlin/reflect/jvm/internal/calls/h;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/k;->a:Lkotlin/reflect/jvm/internal/k;

    .line 25
    .line 26
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/k;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/n0;)Lkotlin/reflect/jvm/internal/d;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$c;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_e

    .line 42
    .line 43
    check-cast v0, Lkotlin/reflect/jvm/internal/d$c;

    .line 44
    .line 45
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$c;->f()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->hasGetter()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->getGetter()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->hasSetter()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->getSetter()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move-object v1, v2

    .line 74
    :goto_0
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->s()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$c;->d()Lm8/c;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->getName()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-interface {v4, v5}, Lm8/c;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$c;->d()Lm8/c;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->getDesc()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-interface {v0, v1}, Lm8/c;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v3, v4, v0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    move-object v0, v2

    .line 114
    :goto_1
    if-nez v0, :cond_8

    .line 115
    .line 116
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/b1;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 143
    .line 144
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/calls/f;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_5

    .line 167
    .line 168
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/calls/f;->f(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/reflect/Method;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/g$a;

    .line 189
    .line 190
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->f(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :cond_4
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/g$b;

    .line 200
    .line 201
    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/g$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_4

    .line 205
    .line 206
    :cond_5
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    .line 207
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v1, "Underlying property of inline class "

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string p0, " should have a field"

    .line 226
    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p1

    .line 238
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->C()Ljava/lang/reflect/Field;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/f;->c(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;ZLjava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/c;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_7
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    .line 255
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v1, "No accessors or field is found for property "

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p1

    .line 281
    :cond_8
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-nez p1, :cond_a

    .line 290
    .line 291
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_9

    .line 296
    .line 297
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$h$a;

    .line 298
    .line 299
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->f(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-direct {p1, v0, v1}, Lkotlin/reflect/jvm/internal/calls/c$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_9
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$h$d;

    .line 308
    .line 309
    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/calls/c$h$d;-><init>(Ljava/lang/reflect/Method;)V

    .line 310
    .line 311
    .line 312
    :goto_2
    move-object v0, p1

    .line 313
    goto/16 :goto_4

    .line 314
    .line 315
    :cond_a
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->d(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_c

    .line 320
    .line 321
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-eqz p1, :cond_b

    .line 326
    .line 327
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$h$b;

    .line 328
    .line 329
    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/calls/c$h$b;-><init>(Ljava/lang/reflect/Method;)V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_b
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$h$e;

    .line 334
    .line 335
    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/calls/c$h$e;-><init>(Ljava/lang/reflect/Method;)V

    .line 336
    .line 337
    .line 338
    goto :goto_2

    .line 339
    :cond_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-eqz p1, :cond_d

    .line 344
    .line 345
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$h$c;

    .line 346
    .line 347
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->f(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-direct {p1, v0, v1}, Lkotlin/reflect/jvm/internal/calls/c$h$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_d
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$h$f;

    .line 356
    .line 357
    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/calls/c$h$f;-><init>(Ljava/lang/reflect/Method;)V

    .line 358
    .line 359
    .line 360
    goto :goto_2

    .line 361
    :cond_e
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$a;

    .line 362
    .line 363
    if-eqz v1, :cond_f

    .line 364
    .line 365
    check-cast v0, Lkotlin/reflect/jvm/internal/d$a;

    .line 366
    .line 367
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$a;->b()Ljava/lang/reflect/Field;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/f;->c(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;ZLjava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/c;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    goto :goto_4

    .line 376
    :cond_f
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$b;

    .line 377
    .line 378
    if-eqz v1, :cond_13

    .line 379
    .line 380
    if-eqz p1, :cond_10

    .line 381
    .line 382
    check-cast v0, Lkotlin/reflect/jvm/internal/d$b;

    .line 383
    .line 384
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$b;->b()Ljava/lang/reflect/Method;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    goto :goto_3

    .line 389
    :cond_10
    check-cast v0, Lkotlin/reflect/jvm/internal/d$b;

    .line 390
    .line 391
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$b;->c()Ljava/lang/reflect/Method;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    if-eqz p1, :cond_12

    .line 396
    .line 397
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_11

    .line 402
    .line 403
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/c$h$a;

    .line 404
    .line 405
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->f(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/c$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_11
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/c$h$d;

    .line 414
    .line 415
    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/c$h$d;-><init>(Ljava/lang/reflect/Method;)V

    .line 416
    .line 417
    .line 418
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->x()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    const/4 p1, 0x0

    .line 423
    const/4 v1, 0x2

    .line 424
    invoke-static {v0, p0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/calls/f;->c(Lkotlin/reflect/jvm/internal/calls/b;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/calls/b;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    return-object p0

    .line 429
    :cond_12
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    .line 430
    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v1, "No source found for setter of Java method property: "

    .line 437
    .line 438
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$b;->b()Ljava/lang/reflect/Method;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw p0

    .line 456
    :cond_13
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$d;

    .line 457
    .line 458
    if-eqz v1, :cond_18

    .line 459
    .line 460
    if-eqz p1, :cond_14

    .line 461
    .line 462
    check-cast v0, Lkotlin/reflect/jvm/internal/d$d;

    .line 463
    .line 464
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$d;->b()Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    goto :goto_5

    .line 469
    :cond_14
    check-cast v0, Lkotlin/reflect/jvm/internal/d$d;

    .line 470
    .line 471
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/d$d;->c()Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    if-eqz p1, :cond_17

    .line 476
    .line 477
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->s()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;->c()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;->b()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    if-eqz p1, :cond_16

    .line 498
    .line 499
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 504
    .line 505
    .line 506
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    if-eqz v0, :cond_15

    .line 511
    .line 512
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/c$h$a;

    .line 513
    .line 514
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->f(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/calls/c$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    goto :goto_6

    .line 522
    :cond_15
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/c$h$d;

    .line 523
    .line 524
    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/c$h$d;-><init>(Ljava/lang/reflect/Method;)V

    .line 525
    .line 526
    .line 527
    :goto_6
    return-object v0

    .line 528
    :cond_16
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    .line 529
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    const-string v1, "No accessor found for property "

    .line 536
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p0

    .line 551
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    throw p1

    .line 555
    :cond_17
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    .line 556
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    const-string v1, "No setter found for property "

    .line 563
    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 568
    .line 569
    .line 570
    move-result-object p0

    .line 571
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object p0

    .line 578
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw p1

    .line 582
    :cond_18
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 583
    .line 584
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 585
    .line 586
    .line 587
    throw p0
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

.method private static final c(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;ZLjava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
            "**>;Z",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lkotlin/reflect/jvm/internal/calls/c<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/f;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/n0;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->d(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    new-instance p0, Lkotlin/reflect/jvm/internal/calls/c$f$b;

    .line 41
    .line 42
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/calls/c$f$b;-><init>(Ljava/lang/reflect/Field;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    new-instance p0, Lkotlin/reflect/jvm/internal/calls/c$f$d;

    .line 48
    .line 49
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/calls/c$f$d;-><init>(Ljava/lang/reflect/Field;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$g$b;

    .line 60
    .line 61
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->e(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-direct {p1, p2, p0}, Lkotlin/reflect/jvm/internal/calls/c$g$b;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$g$d;

    .line 70
    .line 71
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->e(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-direct {p1, p2, p0}, Lkotlin/reflect/jvm/internal/calls/c$g$d;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    if-eqz p1, :cond_5

    .line 80
    .line 81
    new-instance p0, Lkotlin/reflect/jvm/internal/calls/c$f$e;

    .line 82
    .line 83
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/calls/c$f$e;-><init>(Ljava/lang/reflect/Field;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$g$e;

    .line 88
    .line 89
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->e(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-direct {p1, p2, p0}, Lkotlin/reflect/jvm/internal/calls/c$g$e;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    :goto_0
    if-eqz p1, :cond_8

    .line 98
    .line 99
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$f$a;

    .line 106
    .line 107
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->f(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-direct {p1, p2, p0}, Lkotlin/reflect/jvm/internal/calls/c$f$a;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    new-instance p0, Lkotlin/reflect/jvm/internal/calls/c$f$c;

    .line 116
    .line 117
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/calls/c$f$c;-><init>(Ljava/lang/reflect/Field;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->w()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$g$a;

    .line 128
    .line 129
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->e(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->f(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-direct {p1, p2, v0, p0}, Lkotlin/reflect/jvm/internal/calls/c$g$a;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_9
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$g$c;

    .line 142
    .line 143
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/f;->e(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    invoke-direct {p1, p2, p0}, Lkotlin/reflect/jvm/internal/calls/c$g$c;-><init>(Ljava/lang/reflect/Field;Z)V

    .line 148
    .line 149
    .line 150
    :goto_1
    move-object p0, p1

    .line 151
    :goto_2
    return-object p0
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

.method private static final d(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {}, Lkotlin/reflect/jvm/internal/m;->j()Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->e(Lkotlin/reflect/jvm/internal/impl/name/c;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
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

.method private static final e(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/z0;->getType()Lkotlin/reflect/jvm/internal/impl/types/b0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/f1;->l(Lkotlin/reflect/jvm/internal/impl/types/b0;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0
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

.method public static final f(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->y()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
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

.method private static final g(Lkotlin/reflect/jvm/internal/impl/descriptors/n0;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/z0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "containingDeclaration"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->x(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->C(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->t(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v2, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    .line 43
    .line 44
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;->c1()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Ln8/i;->f(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_2
    return v2
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
