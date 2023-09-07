.class public Lcom/miui/maml/data/BaseFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/BaseFunctions$NullObjFunction;,
        Lcom/miui/maml/data/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lcom/miui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lcom/miui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

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

.method private digit(II)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gtz p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    if-ne p2, v2, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 13
    .line 14
    add-int/lit8 v3, p2, -0x1

    .line 15
    .line 16
    if-ge v1, v3, :cond_2

    .line 17
    .line 18
    div-int/lit8 p1, p1, 0xa

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    if-lez p1, :cond_3

    .line 24
    .line 25
    rem-int/lit8 v0, p1, 0xa

    .line 26
    .line 27
    :cond_3
    return v0
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

.method public static load()V
    .locals 5

    .line 1
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 2
    .line 3
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "rand"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 15
    .line 16
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 20
    .line 21
    .line 22
    const-string v1, "sin"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 28
    .line 29
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->COS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 32
    .line 33
    .line 34
    const-string v1, "cos"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 40
    .line 41
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->TAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 44
    .line 45
    .line 46
    const-string v1, "tan"

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 52
    .line 53
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 56
    .line 57
    .line 58
    const-string v1, "asin"

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 64
    .line 65
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 66
    .line 67
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 68
    .line 69
    .line 70
    const-string v1, "acos"

    .line 71
    .line 72
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 76
    .line 77
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 78
    .line 79
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 80
    .line 81
    .line 82
    const-string v1, "atan"

    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 88
    .line 89
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 90
    .line 91
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 92
    .line 93
    .line 94
    const-string v1, "sinh"

    .line 95
    .line 96
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 100
    .line 101
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 102
    .line 103
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 104
    .line 105
    .line 106
    const-string v1, "cosh"

    .line 107
    .line 108
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 112
    .line 113
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 114
    .line 115
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 116
    .line 117
    .line 118
    const-string v1, "sqrt"

    .line 119
    .line 120
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 124
    .line 125
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 126
    .line 127
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 128
    .line 129
    .line 130
    const-string v1, "abs"

    .line 131
    .line 132
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 136
    .line 137
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 138
    .line 139
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 140
    .line 141
    .line 142
    const-string v1, "len"

    .line 143
    .line 144
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 148
    .line 149
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 150
    .line 151
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 152
    .line 153
    .line 154
    const-string v1, "eval"

    .line 155
    .line 156
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 160
    .line 161
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 162
    .line 163
    const/4 v3, 0x2

    .line 164
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 165
    .line 166
    .line 167
    const-string v1, "preciseeval"

    .line 168
    .line 169
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 173
    .line 174
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 175
    .line 176
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 177
    .line 178
    .line 179
    const-string v1, "round"

    .line 180
    .line 181
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 182
    .line 183
    .line 184
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 185
    .line 186
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->INT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 187
    .line 188
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 189
    .line 190
    .line 191
    const-string v1, "int"

    .line 192
    .line 193
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 197
    .line 198
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 199
    .line 200
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 201
    .line 202
    .line 203
    const-string v1, "num"

    .line 204
    .line 205
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 209
    .line 210
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 211
    .line 212
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 213
    .line 214
    .line 215
    const-string v1, "isnull"

    .line 216
    .line 217
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 221
    .line 222
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 223
    .line 224
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 225
    .line 226
    .line 227
    const-string v1, "not"

    .line 228
    .line 229
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 233
    .line 234
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 235
    .line 236
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 237
    .line 238
    .line 239
    const-string v1, "min"

    .line 240
    .line 241
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 245
    .line 246
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 247
    .line 248
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 249
    .line 250
    .line 251
    const-string v1, "max"

    .line 252
    .line 253
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 257
    .line 258
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->POW:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 259
    .line 260
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 261
    .line 262
    .line 263
    const-string v1, "pow"

    .line 264
    .line 265
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 269
    .line 270
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 271
    .line 272
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 273
    .line 274
    .line 275
    const-string v1, "log"

    .line 276
    .line 277
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 281
    .line 282
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 283
    .line 284
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 285
    .line 286
    .line 287
    const-string v1, "log10"

    .line 288
    .line 289
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 290
    .line 291
    .line 292
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 293
    .line 294
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 295
    .line 296
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 297
    .line 298
    .line 299
    const-string v1, "digit"

    .line 300
    .line 301
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 302
    .line 303
    .line 304
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 305
    .line 306
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 307
    .line 308
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 309
    .line 310
    .line 311
    const-string v1, "eq"

    .line 312
    .line 313
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 317
    .line 318
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 319
    .line 320
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 321
    .line 322
    .line 323
    const-string v1, "ne"

    .line 324
    .line 325
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 326
    .line 327
    .line 328
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 329
    .line 330
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->GE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 331
    .line 332
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 333
    .line 334
    .line 335
    const-string v1, "ge"

    .line 336
    .line 337
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 338
    .line 339
    .line 340
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 341
    .line 342
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->GT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 343
    .line 344
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 345
    .line 346
    .line 347
    const-string v1, "gt"

    .line 348
    .line 349
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 350
    .line 351
    .line 352
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 353
    .line 354
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 355
    .line 356
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 357
    .line 358
    .line 359
    const-string v1, "le"

    .line 360
    .line 361
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 362
    .line 363
    .line 364
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 365
    .line 366
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 367
    .line 368
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 369
    .line 370
    .line 371
    const-string v1, "lt"

    .line 372
    .line 373
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 374
    .line 375
    .line 376
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 377
    .line 378
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 379
    .line 380
    const/4 v4, 0x3

    .line 381
    invoke-direct {v0, v1, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 382
    .line 383
    .line 384
    const-string v1, "ifelse"

    .line 385
    .line 386
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 387
    .line 388
    .line 389
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 390
    .line 391
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->AND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 392
    .line 393
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 394
    .line 395
    .line 396
    const-string v1, "and"

    .line 397
    .line 398
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 399
    .line 400
    .line 401
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 402
    .line 403
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->OR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 404
    .line 405
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 406
    .line 407
    .line 408
    const-string v1, "or"

    .line 409
    .line 410
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 411
    .line 412
    .line 413
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 414
    .line 415
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 416
    .line 417
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 418
    .line 419
    .line 420
    const-string v1, "eqs"

    .line 421
    .line 422
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 426
    .line 427
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 428
    .line 429
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 430
    .line 431
    .line 432
    const-string v1, "substr"

    .line 433
    .line 434
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 435
    .line 436
    .line 437
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 438
    .line 439
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 440
    .line 441
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 442
    .line 443
    .line 444
    const-string v1, "hash"

    .line 445
    .line 446
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 447
    .line 448
    .line 449
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;

    .line 450
    .line 451
    invoke-direct {v0}, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;-><init>()V

    .line 452
    .line 453
    .line 454
    const-string v1, "nullobj"

    .line 455
    .line 456
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 457
    .line 458
    .line 459
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 460
    .line 461
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 462
    .line 463
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 464
    .line 465
    .line 466
    const-string v1, "floor"

    .line 467
    .line 468
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 472
    .line 473
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 474
    .line 475
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 476
    .line 477
    .line 478
    const-string v1, "ceil"

    .line 479
    .line 480
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 481
    .line 482
    .line 483
    return-void
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
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 10

    .line 1
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v1, v0, v1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_19

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aget-object v3, p1, v1

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-object v5, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    aget v0, v0, v5

    .line 28
    .line 29
    const-string v5, "Expression"

    .line 30
    .line 31
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 32
    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    packed-switch v0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string p2, "fail to evalute FunctionExpression, invalid function: "

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-wide v8

    .line 65
    :pswitch_0
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    return-wide p1

    .line 70
    :pswitch_1
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    return-wide p1

    .line 75
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/BaseFunctions;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1, v8, v9}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    .line 80
    .line 81
    .line 82
    move-result-wide p1

    .line 83
    return-wide p1

    .line 84
    :pswitch_3
    aget-object p2, p1, v1

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    aget-object p1, p1, v2

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    move-wide v6, v8

    .line 104
    :goto_0
    return-wide v6

    .line 105
    :pswitch_4
    array-length p2, p1

    .line 106
    :goto_1
    if-ge v1, p2, :cond_2

    .line 107
    .line 108
    aget-object v0, p1, v1

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    cmpl-double v0, v2, v8

    .line 115
    .line 116
    if-lez v0, :cond_1

    .line 117
    .line 118
    return-wide v6

    .line 119
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    return-wide v8

    .line 123
    :pswitch_5
    array-length p2, p1

    .line 124
    :goto_2
    if-ge v1, p2, :cond_4

    .line 125
    .line 126
    aget-object v0, p1, v1

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    cmpg-double v0, v2, v8

    .line 133
    .line 134
    if-gtz v0, :cond_3

    .line 135
    .line 136
    return-wide v8

    .line 137
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    return-wide v6

    .line 141
    :pswitch_6
    array-length p2, p1

    .line 142
    rem-int/lit8 v0, p2, 0x2

    .line 143
    .line 144
    if-eq v0, v2, :cond_5

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string p2, "function parameter number should be 2*n+1: "

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    return-wide v8

    .line 173
    :cond_5
    :goto_3
    add-int/lit8 v0, p2, -0x1

    .line 174
    .line 175
    div-int/lit8 v3, v0, 0x2

    .line 176
    .line 177
    if-ge v1, v3, :cond_7

    .line 178
    .line 179
    mul-int/lit8 v0, v1, 0x2

    .line 180
    .line 181
    aget-object v3, p1, v0

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 184
    .line 185
    .line 186
    move-result-wide v3

    .line 187
    cmpl-double v3, v3, v8

    .line 188
    .line 189
    if-lez v3, :cond_6

    .line 190
    .line 191
    add-int/2addr v0, v2

    .line 192
    aget-object p1, p1, v0

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 195
    .line 196
    .line 197
    move-result-wide p1

    .line 198
    return-wide p1

    .line 199
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    aget-object p1, p1, v0

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 205
    .line 206
    .line 207
    move-result-wide p1

    .line 208
    return-wide p1

    .line 209
    :pswitch_7
    aget-object p1, p1, v2

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 212
    .line 213
    .line 214
    move-result-wide p1

    .line 215
    cmpg-double p1, v3, p1

    .line 216
    .line 217
    if-gez p1, :cond_8

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_8
    move-wide v6, v8

    .line 221
    :goto_4
    return-wide v6

    .line 222
    :pswitch_8
    aget-object p1, p1, v2

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 225
    .line 226
    .line 227
    move-result-wide p1

    .line 228
    cmpg-double p1, v3, p1

    .line 229
    .line 230
    if-gtz p1, :cond_9

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_9
    move-wide v6, v8

    .line 234
    :goto_5
    return-wide v6

    .line 235
    :pswitch_9
    aget-object p1, p1, v2

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 238
    .line 239
    .line 240
    move-result-wide p1

    .line 241
    cmpl-double p1, v3, p1

    .line 242
    .line 243
    if-lez p1, :cond_a

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_a
    move-wide v6, v8

    .line 247
    :goto_6
    return-wide v6

    .line 248
    :pswitch_a
    aget-object p1, p1, v2

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 251
    .line 252
    .line 253
    move-result-wide p1

    .line 254
    cmpl-double p1, v3, p1

    .line 255
    .line 256
    if-ltz p1, :cond_b

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_b
    move-wide v6, v8

    .line 260
    :goto_7
    return-wide v6

    .line 261
    :pswitch_b
    aget-object p1, p1, v2

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 264
    .line 265
    .line 266
    move-result-wide p1

    .line 267
    cmpl-double p1, v3, p1

    .line 268
    .line 269
    if-eqz p1, :cond_c

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_c
    move-wide v6, v8

    .line 273
    :goto_8
    return-wide v6

    .line 274
    :pswitch_c
    aget-object p1, p1, v2

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 277
    .line 278
    .line 279
    move-result-wide p1

    .line 280
    cmpl-double p1, v3, p1

    .line 281
    .line 282
    if-nez p1, :cond_d

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_d
    move-wide v6, v8

    .line 286
    :goto_9
    return-wide v6

    .line 287
    :pswitch_d
    double-to-int p2, v3

    .line 288
    aget-object p1, p1, v2

    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 291
    .line 292
    .line 293
    move-result-wide v0

    .line 294
    double-to-int p1, v0

    .line 295
    invoke-direct {p0, p2, p1}, Lcom/miui/maml/data/BaseFunctions;->digit(II)I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    int-to-double p1, p1

    .line 300
    return-wide p1

    .line 301
    :pswitch_e
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    .line 302
    .line 303
    .line 304
    move-result-wide p1

    .line 305
    return-wide p1

    .line 306
    :pswitch_f
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 307
    .line 308
    .line 309
    move-result-wide p1

    .line 310
    return-wide p1

    .line 311
    :pswitch_10
    aget-object p1, p1, v2

    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 314
    .line 315
    .line 316
    move-result-wide p1

    .line 317
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->pow(DD)D

    .line 318
    .line 319
    .line 320
    move-result-wide p1

    .line 321
    return-wide p1

    .line 322
    :pswitch_11
    aget-object p1, p1, v2

    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 325
    .line 326
    .line 327
    move-result-wide p1

    .line 328
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(DD)D

    .line 329
    .line 330
    .line 331
    move-result-wide p1

    .line 332
    return-wide p1

    .line 333
    :pswitch_12
    aget-object p1, p1, v2

    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 336
    .line 337
    .line 338
    move-result-wide p1

    .line 339
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    .line 340
    .line 341
    .line 342
    move-result-wide p1

    .line 343
    return-wide p1

    .line 344
    :pswitch_13
    cmpl-double p1, v3, v8

    .line 345
    .line 346
    if-lez p1, :cond_e

    .line 347
    .line 348
    move-wide v6, v8

    .line 349
    :cond_e
    return-wide v6

    .line 350
    :pswitch_14
    aget-object p1, p1, v1

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_f

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_f
    move-wide v6, v8

    .line 360
    :goto_a
    return-wide v6

    .line 361
    :pswitch_15
    return-wide v3

    .line 362
    :pswitch_16
    double-to-long p1, v3

    .line 363
    long-to-int p1, p1

    .line 364
    int-to-double p1, p1

    .line 365
    return-wide p1

    .line 366
    :pswitch_17
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 367
    .line 368
    .line 369
    move-result-wide p1

    .line 370
    long-to-double p1, p1

    .line 371
    return-wide p1

    .line 372
    :pswitch_18
    aget-object v0, p1, v1

    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    if-nez v0, :cond_10

    .line 379
    .line 380
    return-wide v8

    .line 381
    :cond_10
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_11

    .line 388
    .line 389
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 390
    .line 391
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    iput-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 396
    .line 397
    :cond_11
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 398
    .line 399
    if-eqz p2, :cond_12

    .line 400
    .line 401
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    .line 402
    .line 403
    .line 404
    move-result-object p2

    .line 405
    goto :goto_b

    .line 406
    :cond_12
    const/4 p2, 0x0

    .line 407
    :goto_b
    if-eqz p2, :cond_14

    .line 408
    .line 409
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    aget-object p1, p1, v2

    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 416
    .line 417
    .line 418
    move-result-wide v1

    .line 419
    double-to-int p1, v1

    .line 420
    if-lez p1, :cond_13

    .line 421
    .line 422
    if-le v0, p1, :cond_13

    .line 423
    .line 424
    const/4 v0, 0x4

    .line 425
    invoke-virtual {p2, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    :cond_13
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    .line 430
    .line 431
    .line 432
    move-result-wide p1

    .line 433
    return-wide p1

    .line 434
    :cond_14
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 435
    .line 436
    return-wide p1

    .line 437
    :pswitch_19
    aget-object p1, p1, v1

    .line 438
    .line 439
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    if-nez p1, :cond_15

    .line 444
    .line 445
    return-wide v8

    .line 446
    :cond_15
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-nez v0, :cond_16

    .line 453
    .line 454
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 461
    .line 462
    :cond_16
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 463
    .line 464
    if-nez p1, :cond_17

    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_17
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 468
    .line 469
    .line 470
    move-result-wide v8

    .line 471
    :goto_c
    return-wide v8

    .line 472
    :pswitch_1a
    aget-object p1, p1, v1

    .line 473
    .line 474
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    if-nez p1, :cond_18

    .line 479
    .line 480
    return-wide v8

    .line 481
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    int-to-double p1, p1

    .line 486
    return-wide p1

    .line 487
    :pswitch_1b
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 488
    .line 489
    .line 490
    move-result-wide p1

    .line 491
    return-wide p1

    .line 492
    :pswitch_1c
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 493
    .line 494
    .line 495
    move-result-wide p1

    .line 496
    return-wide p1

    .line 497
    :pswitch_1d
    invoke-static {v3, v4}, Ljava/lang/Math;->cosh(D)D

    .line 498
    .line 499
    .line 500
    move-result-wide p1

    .line 501
    return-wide p1

    .line 502
    :pswitch_1e
    invoke-static {v3, v4}, Ljava/lang/Math;->sinh(D)D

    .line 503
    .line 504
    .line 505
    move-result-wide p1

    .line 506
    return-wide p1

    .line 507
    :pswitch_1f
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    .line 508
    .line 509
    .line 510
    move-result-wide p1

    .line 511
    return-wide p1

    .line 512
    :pswitch_20
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    .line 513
    .line 514
    .line 515
    move-result-wide p1

    .line 516
    return-wide p1

    .line 517
    :pswitch_21
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    .line 518
    .line 519
    .line 520
    move-result-wide p1

    .line 521
    return-wide p1

    .line 522
    :pswitch_22
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    .line 523
    .line 524
    .line 525
    move-result-wide p1

    .line 526
    return-wide p1

    .line 527
    :pswitch_23
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 528
    .line 529
    .line 530
    move-result-wide p1

    .line 531
    return-wide p1

    .line 532
    :pswitch_24
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 533
    .line 534
    .line 535
    move-result-wide p1

    .line 536
    return-wide p1

    .line 537
    :cond_19
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 538
    .line 539
    .line 540
    move-result-wide p1

    .line 541
    return-wide p1

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eq v0, v1, :cond_b

    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v0, v1, :cond_7

    .line 21
    .line 22
    const/16 v1, 0x24

    .line 23
    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/BaseFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_0
    aget-object p2, p1, v2

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    aget-object p1, p1, v4

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p2, p1}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_2
    :goto_0
    return-object v3

    .line 62
    :cond_3
    aget-object p2, p1, v2

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    return-object v3

    .line 71
    :cond_4
    array-length v0, p1

    .line 72
    aget-object v1, p1, v4

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    double-to-int v1, v1

    .line 79
    const/4 v2, 0x3

    .line 80
    if-lt v0, v2, :cond_6

    .line 81
    .line 82
    const/4 v0, 0x2

    .line 83
    :try_start_0
    aget-object p1, p1, v0

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    double-to-int p1, v4

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-le p1, v0, :cond_5

    .line 95
    .line 96
    move p1, v0

    .line 97
    :cond_5
    add-int/2addr p1, v1

    .line 98
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-object p1

    .line 108
    :catch_0
    return-object v3

    .line 109
    :cond_7
    array-length p2, p1

    .line 110
    rem-int/lit8 v0, p2, 0x2

    .line 111
    .line 112
    if-eq v0, v4, :cond_8

    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string p2, "function parameter number should be 2*n+1: "

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string p2, "Expression"

    .line 138
    .line 139
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    return-object v3

    .line 143
    :cond_8
    :goto_1
    add-int/lit8 v0, p2, -0x1

    .line 144
    .line 145
    div-int/lit8 v1, v0, 0x2

    .line 146
    .line 147
    if-ge v2, v1, :cond_a

    .line 148
    .line 149
    mul-int/lit8 v0, v2, 0x2

    .line 150
    .line 151
    aget-object v1, p1, v0

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    const-wide/16 v7, 0x0

    .line 158
    .line 159
    cmpl-double v1, v5, v7

    .line 160
    .line 161
    if-lez v1, :cond_9

    .line 162
    .line 163
    add-int/2addr v0, v4

    .line 164
    aget-object p1, p1, v0

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    return-object p1

    .line 171
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_a
    aget-object p1, p1, v0

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    return-object p1

    .line 181
    :cond_b
    aget-object p1, p1, v2

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-nez p1, :cond_c

    .line 188
    .line 189
    return-object v3

    .line 190
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_d

    .line 197
    .line 198
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 205
    .line 206
    :cond_d
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 207
    .line 208
    if-nez p1, :cond_e

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_e
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_2
    return-object v3
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

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

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
