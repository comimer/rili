.class final Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;
.super Ljava/lang/Object;
.source "HistorySingleCard.kt"

# interfaces
.implements Lu1/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/custom/HistorySingleCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\t\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007H\u0016R%\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b0\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR%\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u00110\u00110\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\r\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;",
        "Lu1/b$a;",
        "Lorg/json/JSONObject;",
        "jsonObject",
        "Lkotlin/u;",
        "a",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "b",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/miui/calendar/card/b$b;",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/ref/WeakReference;",
        "getMListenerReference",
        "()Ljava/lang/ref/WeakReference;",
        "mListenerReference",
        "Lcom/miui/calendar/card/single/custom/HistorySingleCard;",
        "getMCardReference",
        "mCardReference",
        "listener",
        "card",
        "<init>",
        "(Lcom/miui/calendar/card/b$b;Lcom/miui/calendar/card/single/custom/HistorySingleCard;)V",
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
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/calendar/card/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/calendar/card/single/custom/HistorySingleCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/calendar/card/b$b;Lcom/miui/calendar/card/single/custom/HistorySingleCard;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "card"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;->a:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;->b:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    return-void
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
.method public a(Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    const-string v0, "Cal:D:HistorySingleCard"

    .line 2
    .line 3
    const-string v1, "jsonObject"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;->b:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/miui/calendar/card/single/custom/HistorySingleCard;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :try_start_0
    const-string v3, "data"

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    const-string v3, "onResponse history data is null"

    .line 34
    .line 35
    invoke-static {v0, v3}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->H(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->G(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v3, v5}, Lcom/miui/calendar/util/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 50
    .line 51
    iput-object v2, v3, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {v1, v4}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->L(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Z)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->J(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;->a:Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/miui/calendar/card/b$b;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {v1}, Lcom/miui/calendar/card/b$b;->a()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :cond_2
    invoke-static {p1}, Ls4/d;->d(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v3, Lcom/miui/calendar/card/single/custom/HistorySingleCard$c$a;

    .line 77
    .line 78
    invoke-direct {v3}, Lcom/miui/calendar/card/single/custom/HistorySingleCard$c$a;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v5, "object : TypeToken<List<\u2026mCardSchema?>?>() {}.type"

    .line 86
    .line 87
    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v3}, Lcom/miui/calendar/util/x;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/util/List;

    .line 95
    .line 96
    if-eqz v3, :cond_9

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_3
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->F(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_b

    .line 115
    .line 116
    invoke-static {v1, p1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->J(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 v5, 0x1

    .line 120
    invoke-static {v1, v5}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->L(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Z)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->H(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->G(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-static {v6, v7, p1}, Lcom/miui/calendar/util/q;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .line 133
    .line 134
    :try_start_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    xor-int/2addr v6, v5

    .line 139
    if-eqz v6, :cond_8

    .line 140
    .line 141
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 146
    .line 147
    invoke-static {v1, v3}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->K(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->I(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-eqz v3, :cond_7

    .line 155
    .line 156
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->I(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    if-eqz v3, :cond_4

    .line 161
    .line 162
    iget-object v2, v3, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 163
    .line 164
    :cond_4
    if-eqz v2, :cond_6

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_5

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_5
    move v2, v4

    .line 174
    goto :goto_1

    .line 175
    :cond_6
    :goto_0
    move v2, v5

    .line 176
    :goto_1
    if-nez v2, :cond_7

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    move v5, v4

    .line 180
    :goto_2
    invoke-static {v1, v5}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->L(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catch_0
    move-exception v2

    .line 185
    :try_start_3
    const-string v3, "doInBackground() "

    .line 186
    .line 187
    invoke-static {v0, v3, v2}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v4}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->L(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Z)V

    .line 191
    .line 192
    .line 193
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->C()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->a()V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;->a:Ljava/lang/ref/WeakReference;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lcom/miui/calendar/card/b$b;

    .line 206
    .line 207
    if-eqz v1, :cond_b

    .line 208
    .line 209
    invoke-interface {v1}, Lcom/miui/calendar/card/b$b;->a()V

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_9
    :goto_4
    const-string v3, "onResponse history data is []"

    .line 214
    .line 215
    invoke-static {v0, v3}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->H(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->G(Lcom/miui/calendar/card/single/custom/HistorySingleCard;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-static {v3, v5}, Lcom/miui/calendar/util/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v3, v1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 230
    .line 231
    iput-object v2, v3, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 232
    .line 233
    invoke-static {v1, v4}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->L(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Z)V

    .line 234
    .line 235
    .line 236
    invoke-static {v1, v2}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->J(Lcom/miui/calendar/card/single/custom/HistorySingleCard;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/HistorySingleCard$c;->a:Ljava/lang/ref/WeakReference;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Lcom/miui/calendar/card/b$b;

    .line 246
    .line 247
    if-eqz v1, :cond_a

    .line 248
    .line 249
    invoke-interface {v1}, Lcom/miui/calendar/card/b$b;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 250
    .line 251
    .line 252
    :cond_a
    return-void

    .line 253
    :catch_1
    move-exception v1

    .line 254
    move-object v2, p1

    .line 255
    goto :goto_5

    .line 256
    :catch_2
    move-exception v1

    .line 257
    :goto_5
    const-string p1, "ResponseListener:"

    .line 258
    .line 259
    invoke-static {v0, p1, v1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v1, "data:"

    .line 268
    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_b
    :goto_6
    return-void
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

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Cal:D:HistorySingleCard"

    .line 7
    .line 8
    const-string v1, "onErrorResponse"

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
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
