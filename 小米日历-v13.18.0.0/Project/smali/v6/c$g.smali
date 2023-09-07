.class Lv6/c$g;
.super Landroid/os/AsyncTask;
.source "UserAvatarUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lv6/c$f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private b:La7/b;

.field private c:Landroid/content/Context;

.field final synthetic d:Lv6/c;


# direct methods
.method constructor <init>(Lv6/c;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv6/c$g;->d:Lv6/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lv6/c$g;->a:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lv6/c$g;->c:Landroid/content/Context;

    .line 13
    .line 14
    new-instance p2, La7/b;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-direct {p2, p3}, La7/b;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lv6/c$g;->b:La7/b;

    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    invoke-virtual {p2, p3}, La7/b;->f(Z)La7/b;

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lv6/c$g;->b:La7/b;

    .line 30
    .line 31
    sget p3, Ln5/g;->X0:I

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p2, p3}, La7/b;->h(Ljava/lang/String;)La7/b;

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lv6/c$g;->b:La7/b;

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lv6/c$g;->b:La7/b;

    .line 47
    .line 48
    new-instance p3, Lv6/c$g$a;

    .line 49
    .line 50
    invoke-direct {p3, p0, p1}, Lv6/c$g$a;-><init>(Lv6/c$g;Lv6/c;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lv6/c$g;->b:La7/b;

    .line 57
    .line 58
    invoke-virtual {p1}, La7/b;->show()V

    .line 59
    .line 60
    .line 61
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
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lv6/c$f;
    .locals 14

    .line 1
    const-string p1, "uploadInfoToServer error"

    .line 2
    .line 3
    const-string v0, "fileInputStream"

    .line 4
    .line 5
    iget-object v1, p0, Lv6/c$g;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const-string v3, "UserAvatarUpdateFragment"

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p1, "no xiaomi account"

    .line 21
    .line 22
    invoke-static {v3, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    iget-object v4, p0, Lv6/c$g;->d:Lv6/c;

    .line 27
    .line 28
    invoke-static {v4}, Lv6/c;->e(Lv6/c;)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, p0, Lv6/c$g;->a:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static {v5, v6}, Lcom/xiaomi/passport/ui/internal/util/a;->g(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    iget-object v5, p0, Lv6/c$g;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v5

    .line 47
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    move-object v5, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :goto_0
    if-nez v5, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lv6/c$g;->d:Lv6/c;

    .line 63
    .line 64
    invoke-static {p1, v4}, Lv6/c;->f(Lv6/c;Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_2
    iget-object v6, p0, Lv6/c$g;->c:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v6}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iget-object v7, p0, Lv6/c$g;->d:Lv6/c;

    .line 75
    .line 76
    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    const-string v8, "passportapi"

    .line 81
    .line 82
    invoke-static {v7, v8}, Lcom/xiaomi/passport/data/a;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/a;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const/4 v8, -0x1

    .line 87
    const/4 v9, 0x0

    .line 88
    move v10, v9

    .line 89
    move v9, v8

    .line 90
    move-object v8, v2

    .line 91
    :goto_1
    const/4 v11, 0x2

    .line 92
    if-ge v10, v11, :cond_6

    .line 93
    .line 94
    :try_start_1
    invoke-static {v7, v5}, Lcom/xiaomi/accountsdk/account/XMPassport;->F(Lcom/xiaomi/accountsdk/account/data/c;Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    const-string v12, "acc_avatar_url"

    .line 99
    .line 100
    invoke-virtual {v6, v1, v12, v11}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v11, p0, Lv6/c$g;->d:Lv6/c;

    .line 104
    .line 105
    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    iget-object v12, p0, Lv6/c$g;->d:Lv6/c;

    .line 110
    .line 111
    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    sget v13, Ln5/c;->f:I

    .line 120
    .line 121
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    invoke-static {v11, v5, v12}, Lcom/xiaomi/passport/ui/internal/util/a;->d(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    new-instance v11, Ljava/io/FileInputStream;

    .line 130
    .line 131
    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v12, "xiaomi_user_avatar_"

    .line 140
    .line 141
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v12, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object v12, p0, Lv6/c$g;->d:Lv6/c;

    .line 154
    .line 155
    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    invoke-static {v12, v11, v2}, Lx5/c;->d(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    .line 160
    .line 161
    .line 162
    const-string v12, "acc_avatar_file_name"

    .line 163
    .line 164
    invoke-virtual {v6, v1, v12, v2}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    .line 166
    .line 167
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 168
    .line 169
    .line 170
    goto/16 :goto_a

    .line 171
    .line 172
    :catch_1
    move-exception p1

    .line 173
    goto/16 :goto_9

    .line 174
    .line 175
    :catch_2
    move-exception v1

    .line 176
    move-object v2, v11

    .line 177
    goto :goto_2

    .line 178
    :catch_3
    move-exception v1

    .line 179
    move-object v2, v11

    .line 180
    goto :goto_3

    .line 181
    :catch_4
    move-exception v1

    .line 182
    move-object v2, v11

    .line 183
    goto :goto_4

    .line 184
    :catch_5
    move-exception v1

    .line 185
    move-object v2, v11

    .line 186
    goto :goto_5

    .line 187
    :catch_6
    move-exception v2

    .line 188
    goto :goto_6

    .line 189
    :catch_7
    move-exception v1

    .line 190
    move-object v2, v11

    .line 191
    goto/16 :goto_8

    .line 192
    .line 193
    :catchall_0
    move-exception p1

    .line 194
    goto/16 :goto_b

    .line 195
    .line 196
    :catch_8
    move-exception v1

    .line 197
    :goto_2
    :try_start_4
    invoke-static {v3, p1, v1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    sget v9, Ln5/g;->k:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    .line 202
    if-eqz v2, :cond_4

    .line 203
    .line 204
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 205
    .line 206
    .line 207
    goto/16 :goto_a

    .line 208
    .line 209
    :catch_9
    move-exception p1

    .line 210
    goto/16 :goto_9

    .line 211
    .line 212
    :catch_a
    move-exception v1

    .line 213
    :goto_3
    :try_start_6
    invoke-static {v3, p1, v1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    sget v9, Ln5/g;->W:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 217
    .line 218
    if-eqz v2, :cond_4

    .line 219
    .line 220
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 221
    .line 222
    .line 223
    goto :goto_a

    .line 224
    :catch_b
    move-exception p1

    .line 225
    goto :goto_9

    .line 226
    :catch_c
    move-exception v1

    .line 227
    :goto_4
    :try_start_8
    invoke-static {v3, p1, v1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    sget v9, Ln5/g;->W:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 231
    .line 232
    if-eqz v2, :cond_4

    .line 233
    .line 234
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 235
    .line 236
    .line 237
    goto :goto_a

    .line 238
    :catch_d
    move-exception p1

    .line 239
    goto :goto_9

    .line 240
    :catch_e
    move-exception v1

    .line 241
    :goto_5
    :try_start_a
    invoke-static {v3, p1, v1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    .line 243
    .line 244
    sget v9, Ln5/g;->c:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 245
    .line 246
    if-eqz v2, :cond_4

    .line 247
    .line 248
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f

    .line 249
    .line 250
    .line 251
    goto :goto_a

    .line 252
    :catch_f
    move-exception p1

    .line 253
    goto :goto_9

    .line 254
    :catch_10
    move-exception v9

    .line 255
    move-object v11, v2

    .line 256
    move-object v2, v9

    .line 257
    :goto_6
    :try_start_c
    invoke-static {v3, p1, v2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    iget-object v2, p0, Lv6/c$g;->d:Lv6/c;

    .line 261
    .line 262
    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v7, v2}, Lcom/xiaomi/passport/data/a;->i(Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    sget v9, Ln5/g;->z:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 270
    .line 271
    if-eqz v11, :cond_3

    .line 272
    .line 273
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :catch_11
    move-exception v2

    .line 278
    invoke-static {v3, v0, v2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    :cond_3
    :goto_7
    iget-object v2, p0, Lv6/c$g;->d:Lv6/c;

    .line 282
    .line 283
    invoke-static {v2, v4}, Lv6/c;->f(Lv6/c;Ljava/io/File;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    .line 288
    .line 289
    add-int/lit8 v10, v10, 0x1

    .line 290
    .line 291
    move-object v2, v11

    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :catchall_1
    move-exception p1

    .line 295
    move-object v2, v11

    .line 296
    goto :goto_b

    .line 297
    :catch_12
    move-exception v1

    .line 298
    :goto_8
    :try_start_e
    invoke-static {v3, p1, v1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    sget v9, Ln5/g;->T:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 302
    .line 303
    if-eqz v2, :cond_4

    .line 304
    .line 305
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_13

    .line 306
    .line 307
    .line 308
    goto :goto_a

    .line 309
    :catch_13
    move-exception p1

    .line 310
    :goto_9
    invoke-static {v3, v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    :cond_4
    :goto_a
    iget-object p1, p0, Lv6/c$g;->d:Lv6/c;

    .line 314
    .line 315
    invoke-static {p1, v4}, Lv6/c;->f(Lv6/c;Ljava/io/File;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    .line 320
    .line 321
    goto :goto_d

    .line 322
    :goto_b
    if-eqz v2, :cond_5

    .line 323
    .line 324
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14

    .line 325
    .line 326
    .line 327
    goto :goto_c

    .line 328
    :catch_14
    move-exception v1

    .line 329
    invoke-static {v3, v0, v1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    :cond_5
    :goto_c
    iget-object v0, p0, Lv6/c$g;->d:Lv6/c;

    .line 333
    .line 334
    invoke-static {v0, v4}, Lv6/c;->f(Lv6/c;Ljava/io/File;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    .line 339
    .line 340
    throw p1

    .line 341
    :cond_6
    :goto_d
    new-instance p1, Lv6/c$f;

    .line 342
    .line 343
    iget-object v0, p0, Lv6/c$g;->d:Lv6/c;

    .line 344
    .line 345
    invoke-direct {p1, v0, v9, v8}, Lv6/c$f;-><init>(Lv6/c;ILandroid/graphics/Bitmap;)V

    .line 346
    .line 347
    .line 348
    return-object p1
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

.method protected b(Lv6/c$f;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Lv6/c$f;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

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

.method protected c(Lv6/c$f;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv6/c$g;->d:Lv6/c;

    .line 5
    .line 6
    invoke-static {v0}, Lv6/c;->b(Lv6/c;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lv6/c$g;->b:La7/b;

    .line 10
    .line 11
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p1, Lv6/c$f;->b:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget p1, p1, Lv6/c$f;->a:I

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    sget p1, Ln5/g;->c0:I

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lv6/c$g;->c:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lz6/a;->a(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    :cond_2
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
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv6/c$g;->a([Ljava/lang/Void;)Lv6/c$f;

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

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv6/c$f;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv6/c$g;->b(Lv6/c$f;)V

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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv6/c$f;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv6/c$g;->c(Lv6/c$f;)V

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
