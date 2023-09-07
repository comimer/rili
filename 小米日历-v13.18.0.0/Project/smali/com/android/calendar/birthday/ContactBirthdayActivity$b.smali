.class Lcom/android/calendar/birthday/ContactBirthdayActivity$b;
.super Landroid/os/AsyncTask;
.source "ContactBirthdayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/birthday/ContactBirthdayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/common/event/schema/BirthdayEvent;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->d:Ljava/lang/ref/WeakReference;

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
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->g(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->a(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_6

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_6

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->e(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_6

    .line 32
    .line 33
    const-string p1, "Cal:D:ContactBirthdayActivity"

    .line 34
    .line 35
    const-string v0, "Import: birthdays start"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->a:Ljava/util/ArrayList;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    move v1, v0

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->g(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/miui/calendar/util/p0$a;->g()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-ge v1, v2, :cond_2

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->g(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Lcom/miui/calendar/util/p0$a;->d(I)Lcom/miui/calendar/util/p0$c;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->fromJson(Ljava/lang/String;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object v4, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 83
    .line 84
    invoke-static {v4}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->b(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_0

    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 91
    .line 92
    invoke-static {v4}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->b(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactId()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_0

    .line 109
    .line 110
    iget-object v4, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 111
    .line 112
    invoke-static {v4}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->b(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactId()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-virtual {v3, v4}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->setContactId(I)V

    .line 135
    .line 136
    .line 137
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 138
    .line 139
    invoke-static {v4}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Ljava/lang/Boolean;

    .line 152
    .line 153
    if-eqz v4, :cond_1

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_1

    .line 160
    .line 161
    iget-object v4, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 162
    .line 163
    invoke-static {v4}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->e(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_1

    .line 182
    .line 183
    invoke-virtual {v2, v0}, Lcom/miui/calendar/util/p0$c;->g(I)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    iget-object v4, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->a:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    iput-object v1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->b:Ljava/util/ArrayList;

    .line 210
    .line 211
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 212
    .line 213
    invoke-static {v1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->a(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lcom/miui/calendar/util/p0$a;->g()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-ge v0, v1, :cond_5

    .line 222
    .line 223
    iget-object v1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 224
    .line 225
    invoke-static {v1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->a(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Lcom/miui/calendar/util/p0$a;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1, v0}, Lcom/miui/calendar/util/p0$a;->d(I)Lcom/miui/calendar/util/p0$c;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->d:Ljava/lang/ref/WeakReference;

    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Landroid/content/Context;

    .line 240
    .line 241
    invoke-static {v2, v1}, Lr1/a;->a(Landroid/content/Context;Lcom/miui/calendar/util/p0$c;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_4

    .line 246
    .line 247
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 248
    .line 249
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-nez v2, :cond_3

    .line 268
    .line 269
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 270
    .line 271
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->e(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Ljava/lang/Boolean;

    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_3

    .line 290
    .line 291
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->b:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 298
    .line 299
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->i(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Ljava/lang/Boolean;

    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_4

    .line 318
    .line 319
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 320
    .line 321
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->m(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    check-cast v2, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 334
    .line 335
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->equals(Lcom/android/calendar/common/event/schema/BirthdayEvent;)Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-nez v2, :cond_4

    .line 340
    .line 341
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 342
    .line 343
    invoke-static {v2}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->e(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Ljava/lang/Boolean;

    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_4

    .line 362
    .line 363
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->a:Ljava/util/ArrayList;

    .line 364
    .line 365
    iget-object v3, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 366
    .line 367
    invoke-static {v3}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->k(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    check-cast v3, Ljava/lang/Long;

    .line 380
    .line 381
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    iget-object v2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->b:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 390
    .line 391
    goto/16 :goto_1

    .line 392
    .line 393
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->d:Ljava/lang/ref/WeakReference;

    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    check-cast v0, Landroid/content/Context;

    .line 400
    .line 401
    invoke-static {v0}, Lr1/a;->p(Landroid/content/Context;)V

    .line 402
    .line 403
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    const-string v1, "Import: birthdays add count = "

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget-object v1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->b:Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v1, ", delete count = "

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    iget-object v1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->a:Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :cond_6
    const/4 p1, 0x0

    .line 445
    return-object p1
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

.method protected b(Ljava/lang/Void;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/content/Context;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lr1/a;->c(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lr1/a;->r(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->p(Z)V

    .line 26
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
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

.method protected onCancelled()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->p(Z)V

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
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->b(Ljava/lang/Void;)V

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

.method protected onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$b;->c:Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->p(Z)V

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
.end method
