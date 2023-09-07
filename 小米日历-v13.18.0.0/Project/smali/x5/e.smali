.class public Lx5/e;
.super Ljava/lang/Object;
.source "UserInfoSaver.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "UserInfoSaver"

    .line 2
    .line 3
    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-nez p3, :cond_2

    .line 28
    .line 29
    :cond_0
    const/4 p3, 0x0

    .line 30
    :try_start_0
    invoke-static {p1, p3, p3}, La6/k;->i(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)La6/k$g;

    .line 31
    .line 32
    .line 33
    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    const-string v1, "auth failed when download avatar"

    .line 37
    .line 38
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p1

    .line 43
    const-string v1, "access denied when download avatar"

    .line 44
    .line 45
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_2
    move-exception p1

    .line 50
    const-string v1, "IO error when download avatar"

    .line 51
    .line 52
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    if-eqz p3, :cond_2

    .line 56
    .line 57
    :try_start_1
    invoke-virtual {p3}, La6/k$g;->i()Ljava/io/InputStream;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0, p1, p2}, Lx5/c;->d(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    invoke-virtual {p3}, La6/k$g;->h()V

    .line 69
    .line 70
    .line 71
    return p0

    .line 72
    :cond_1
    :goto_1
    invoke-virtual {p3}, La6/k$g;->h()V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :catch_3
    move-exception p0

    .line 79
    :try_start_2
    const-string p1, "failed to save avatar"

    .line 80
    .line 81
    invoke-static {v0, p1, p0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :goto_2
    invoke-virtual {p3}, La6/k$g;->h()V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_2
    :goto_3
    const/4 p0, 0x0

    .line 90
    return p0
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
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "UserInfoSaver"

    .line 4
    .line 5
    const-string p1, "no Xiaomi account, skip to save user info"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "acc_user_name"

    .line 18
    .line 19
    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->c:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "acc_nick_name"

    .line 25
    .line 26
    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->h:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "acc_user_email"

    .line 32
    .line 33
    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->e:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "acc_user_phone"

    .line 39
    .line 40
    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->i:Lcom/xiaomi/accountsdk/account/data/Gender;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/Gender;->getType()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "acc_user_gender"

    .line 52
    .line 53
    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->r:Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, "acc_family_count"

    .line 59
    .line 60
    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "acc_avatar_url"

    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/accountmanager/g;->o(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "xiaomi_user_avatar_"

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {p0, p2, v3, v2}, Lx5/e;->a(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    iget-object p0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->d:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, p1, v1, p0}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p0, "acc_avatar_file_name"

    .line 100
    .line 101
    invoke-virtual {v0, p1, p0, v3}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
    .line 105
.end method
