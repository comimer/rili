.class Lm7/a$e$b;
.super Landroid/webkit/WebViewClient;
.source "VerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/a$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm7/a$e;


# direct methods
.method constructor <init>(Lm7/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

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


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 2
    .line 3
    iget-object v0, v0, Lm7/a$e;->b:Lm7/a;

    .line 4
    .line 5
    invoke-static {v0}, Lm7/a;->i(Lm7/a;)Landroid/widget/LinearLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 15
    .line 16
    iget-object v0, v0, Lm7/a$e;->b:Lm7/a;

    .line 17
    .line 18
    invoke-static {v0}, Lm7/a;->g(Lm7/a;)Landroid/webkit/WebView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x4

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 30
    .line 31
    iget-object v0, v0, Lm7/a$e;->b:Lm7/a;

    .line 32
    .line 33
    invoke-static {v0}, Lm7/a;->g(Lm7/a;)Landroid/webkit/WebView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
    .line 45
    .line 46
    .line 47
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 2
    .line 3
    iget-object v0, v0, Lm7/a$e;->b:Lm7/a;

    .line 4
    .line 5
    invoke-static {v0}, Lm7/a;->i(Lm7/a;)Landroid/widget/LinearLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 14
    .line 15
    iget-object v0, v0, Lm7/a$e;->b:Lm7/a;

    .line 16
    .line 17
    invoke-static {v0}, Lm7/a;->g(Lm7/a;)Landroid/webkit/WebView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 28
    .line 29
    iget-object v0, v0, Lm7/a$e;->b:Lm7/a;

    .line 30
    .line 31
    invoke-static {v0}, Lm7/a;->g(Lm7/a;)Landroid/webkit/WebView;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    return-void
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

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string p1, "/captcha/status"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    invoke-static {p2}, Ln7/f;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_5

    .line 15
    .line 16
    const-string p2, "code"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const-string v1, "errorCode"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "errorStatus"

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "flag"

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "code="

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, ";errorCode="

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v6, ";errorStatus="

    .line 66
    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v7, "VerificationManager"

    .line 78
    .line 79
    invoke-static {v7, v3}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v3, ""

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    if-nez p2, :cond_0

    .line 86
    .line 87
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 88
    .line 89
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 90
    .line 91
    invoke-static {p2}, Lm7/a;->o(Lm7/a;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 95
    .line 96
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 97
    .line 98
    invoke-static {p2, v0}, Lm7/a;->S(Lm7/a;Z)Z

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 102
    .line 103
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 104
    .line 105
    invoke-virtual {p2}, Lm7/a;->e0()V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 109
    .line 110
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 111
    .line 112
    invoke-static {p2, v3}, Lm7/a;->p(Lm7/a;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 116
    .line 117
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 118
    .line 119
    invoke-static {p2, v0}, Lm7/a;->r(Lm7/a;Z)Z

    .line 120
    .line 121
    .line 122
    new-instance p2, Lcom/xiaomi/verificationsdk/internal/d$b;

    .line 123
    .line 124
    invoke-direct {p2}, Lcom/xiaomi/verificationsdk/internal/d$b;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Lcom/xiaomi/verificationsdk/internal/d$b;->e(Ljava/lang/String;)Lcom/xiaomi/verificationsdk/internal/d$b;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {}, Ln7/g;->b()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p1, p2}, Lcom/xiaomi/verificationsdk/internal/d$b;->d(Ljava/lang/String;)Lcom/xiaomi/verificationsdk/internal/d$b;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/xiaomi/verificationsdk/internal/d$b;->c()Lcom/xiaomi/verificationsdk/internal/d;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 144
    .line 145
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 146
    .line 147
    invoke-static {p2}, Lm7/a;->D(Lm7/a;)Landroid/os/Handler;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-instance v0, Lm7/a$e$b$a;

    .line 152
    .line 153
    invoke-direct {v0, p0, p1}, Lm7/a$e$b$a;-><init>(Lm7/a$e$b;Lcom/xiaomi/verificationsdk/internal/d;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    .line 158
    .line 159
    return v7

    .line 160
    :cond_0
    if-ne p2, v7, :cond_1

    .line 161
    .line 162
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 163
    .line 164
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 165
    .line 166
    invoke-static {p1, v0}, Lm7/a;->S(Lm7/a;Z)Z

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 170
    .line 171
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 172
    .line 173
    invoke-static {p1, v7}, Lm7/a;->t(Lm7/a;Z)Z

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 177
    .line 178
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 179
    .line 180
    invoke-virtual {p1}, Lm7/a;->e0()V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 184
    .line 185
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 186
    .line 187
    invoke-static {p1}, Lm7/a;->D(Lm7/a;)Landroid/os/Handler;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance p2, Lm7/a$e$b$b;

    .line 192
    .line 193
    invoke-direct {p2, p0}, Lm7/a$e$b$b;-><init>(Lm7/a$e$b;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_1
    const/4 p1, 0x2

    .line 202
    if-ne p2, p1, :cond_2

    .line 203
    .line 204
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 205
    .line 206
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 207
    .line 208
    invoke-static {p1, v0}, Lm7/a;->S(Lm7/a;Z)Z

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 212
    .line 213
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 214
    .line 215
    invoke-virtual {p1}, Lm7/a;->e0()V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 219
    .line 220
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 221
    .line 222
    invoke-static {p1, v7}, Lm7/a;->r(Lm7/a;Z)Z

    .line 223
    .line 224
    .line 225
    sget-object p1, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_EVENTID_EXPIRED:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->getCode()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    const-string p2, "eventid expired"

    .line 232
    .line 233
    invoke-static {p1, p2}, Lm7/a;->h0(ILjava/lang/String;)Lcom/xiaomi/verificationsdk/internal/b;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 238
    .line 239
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 240
    .line 241
    invoke-static {p2}, Lm7/a;->D(Lm7/a;)Landroid/os/Handler;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    new-instance v1, Lm7/a$e$b$c;

    .line 246
    .line 247
    invoke-direct {v1, p0, p1}, Lm7/a$e$b$c;-><init>(Lm7/a$e$b;Lcom/xiaomi/verificationsdk/internal/b;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_2
    const/4 p1, 0x3

    .line 256
    if-ne p2, p1, :cond_3

    .line 257
    .line 258
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 259
    .line 260
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 261
    .line 262
    invoke-static {p1, v0}, Lm7/a;->S(Lm7/a;Z)Z

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 266
    .line 267
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 268
    .line 269
    invoke-virtual {p1}, Lm7/a;->e0()V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 273
    .line 274
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 275
    .line 276
    invoke-static {p1, v3}, Lm7/a;->p(Lm7/a;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 280
    .line 281
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 282
    .line 283
    invoke-static {p1, v0}, Lm7/a;->r(Lm7/a;Z)Z

    .line 284
    .line 285
    .line 286
    new-instance p1, Lcom/xiaomi/verificationsdk/internal/d$b;

    .line 287
    .line 288
    invoke-direct {p1}, Lcom/xiaomi/verificationsdk/internal/d$b;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-static {}, Lcom/xiaomi/verificationsdk/internal/EnvEncryptUtils;->g()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {p1, p2}, Lcom/xiaomi/verificationsdk/internal/d$b;->e(Ljava/lang/String;)Lcom/xiaomi/verificationsdk/internal/d$b;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lcom/xiaomi/verificationsdk/internal/d$b;->c()Lcom/xiaomi/verificationsdk/internal/d;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 304
    .line 305
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 306
    .line 307
    invoke-static {p2}, Lm7/a;->D(Lm7/a;)Landroid/os/Handler;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    new-instance v1, Lm7/a$e$b$d;

    .line 312
    .line 313
    invoke-direct {v1, p0, p1}, Lm7/a$e$b$d;-><init>(Lm7/a$e$b;Lcom/xiaomi/verificationsdk/internal/d;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    .line 318
    .line 319
    goto :goto_0

    .line 320
    :cond_3
    const p1, 0x17320

    .line 321
    .line 322
    .line 323
    if-eq p2, p1, :cond_4

    .line 324
    .line 325
    const p1, 0x17321

    .line 326
    .line 327
    .line 328
    if-ne p2, p1, :cond_5

    .line 329
    .line 330
    :cond_4
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 331
    .line 332
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 333
    .line 334
    invoke-static {p1, v0}, Lm7/a;->S(Lm7/a;Z)Z

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 338
    .line 339
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 340
    .line 341
    invoke-virtual {p1}, Lm7/a;->e0()V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 345
    .line 346
    iget-object p1, p1, Lm7/a$e;->b:Lm7/a;

    .line 347
    .line 348
    invoke-static {p1, v0}, Lm7/a;->r(Lm7/a;Z)Z

    .line 349
    .line 350
    .line 351
    sget-object p1, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_VERIFY_SERVER:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 352
    .line 353
    invoke-virtual {p1}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->getCode()I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-static {p1, p2}, Lm7/a;->h0(ILjava/lang/String;)Lcom/xiaomi/verificationsdk/internal/b;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    iget-object p2, p0, Lm7/a$e$b;->a:Lm7/a$e;

    .line 389
    .line 390
    iget-object p2, p2, Lm7/a$e;->b:Lm7/a;

    .line 391
    .line 392
    invoke-static {p2}, Lm7/a;->D(Lm7/a;)Landroid/os/Handler;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    new-instance v1, Lm7/a$e$b$e;

    .line 397
    .line 398
    invoke-direct {v1, p0, p1}, Lm7/a$e$b$e;-><init>(Lm7/a$e$b;Lcom/xiaomi/verificationsdk/internal/b;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    .line 403
    .line 404
    nop

    .line 405
    :cond_5
    :goto_0
    return v0
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
