.class public Lcom/xiaomi/passport/ui/settings/e;
.super Landroid/os/AsyncTask;
.source "UploadMiUserProfileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/settings/e$c;,
        Lcom/xiaomi/passport/ui/settings/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/passport/ui/settings/e$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/xiaomi/accountsdk/account/data/Gender;

.field private c:Lcom/xiaomi/passport/ui/settings/e$b;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;Lcom/xiaomi/passport/ui/settings/e$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/xiaomi/passport/ui/settings/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/xiaomi/passport/ui/settings/e;->b:Lcom/xiaomi/accountsdk/account/data/Gender;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/xiaomi/passport/ui/settings/e;->c:Lcom/xiaomi/passport/ui/settings/e$b;

    .line 9
    .line 10
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/xiaomi/passport/ui/settings/e;->d:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    return-void
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
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/xiaomi/passport/ui/settings/e$c;
    .locals 12

    .line 1
    const-string p1, "UploadUserInfoTask error"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/settings/e;->d:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "UploadMiUserProfileTask"

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string p1, "context is null"

    .line 22
    .line 23
    invoke-static {v4, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/xiaomi/passport/ui/settings/e$c;

    .line 27
    .line 28
    invoke-direct {p1, p0, v3, v2, v3}, Lcom/xiaomi/passport/ui/settings/e$c;-><init>(Lcom/xiaomi/passport/ui/settings/e;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;Ljava/lang/Integer;Lcom/xiaomi/passport/ui/settings/e$a;)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v5, "passportapi"

    .line 37
    .line 38
    invoke-static {v0, v5}, Lcom/xiaomi/passport/data/a;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/a;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    const-string p1, "null passportInfo"

    .line 45
    .line 46
    invoke-static {v4, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/xiaomi/passport/ui/settings/e$c;

    .line 50
    .line 51
    invoke-direct {p1, p0, v3, v2, v3}, Lcom/xiaomi/passport/ui/settings/e$c;-><init>(Lcom/xiaomi/passport/ui/settings/e;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;Ljava/lang/Integer;Lcom/xiaomi/passport/ui/settings/e$a;)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 56
    move v6, v2

    .line 57
    :goto_0
    const/4 v7, 0x3

    .line 58
    const/4 v8, 0x2

    .line 59
    if-ge v6, v8, :cond_3

    .line 60
    .line 61
    :try_start_0
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/f;

    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/xiaomi/accountsdk/account/data/c;->e()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    iget-object v10, p0, Lcom/xiaomi/passport/ui/settings/e;->a:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v11, p0, Lcom/xiaomi/passport/ui/settings/e;->b:Lcom/xiaomi/accountsdk/account/data/Gender;

    .line 70
    .line 71
    invoke-direct {v1, v9, v10, v3, v11}, Lcom/xiaomi/accountsdk/account/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->G(Lcom/xiaomi/accountsdk/account/data/c;Lcom/xiaomi/accountsdk/account/data/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {v4, p1, v0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    const/16 v2, 0x10

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    invoke-static {v4, p1, v0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    move v2, v7

    .line 90
    goto :goto_1

    .line 91
    :catch_2
    move-exception v0

    .line 92
    invoke-static {v4, p1, v0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->getServerError()Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    new-instance v0, Lcom/xiaomi/passport/ui/settings/e$c;

    .line 102
    .line 103
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {v0, p0, p1, v1, v3}, Lcom/xiaomi/passport/ui/settings/e$c;-><init>(Lcom/xiaomi/passport/ui/settings/e;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;Ljava/lang/Integer;Lcom/xiaomi/passport/ui/settings/e$a;)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :catch_3
    move-exception v0

    .line 112
    invoke-static {v4, p1, v0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    const/4 v2, 0x4

    .line 116
    goto :goto_1

    .line 117
    :catch_4
    move-exception v1

    .line 118
    invoke-static {v4, p1, v1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v0}, Lcom/xiaomi/passport/data/a;->i(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    goto :goto_0

    .line 128
    :catch_5
    move-exception v0

    .line 129
    invoke-static {v4, p1, v0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    move v2, v8

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    move v2, v1

    .line 135
    :goto_1
    new-instance p1, Lcom/xiaomi/passport/ui/settings/e$c;

    .line 136
    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {p1, p0, v3, v0, v3}, Lcom/xiaomi/passport/ui/settings/e$c;-><init>(Lcom/xiaomi/passport/ui/settings/e;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;Ljava/lang/Integer;Lcom/xiaomi/passport/ui/settings/e$a;)V

    .line 142
    .line 143
    .line 144
    return-object p1
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
.end method

.method protected b(Lcom/xiaomi/passport/ui/settings/e$c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xiaomi/passport/ui/settings/a;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/xiaomi/passport/ui/settings/e$c;->a(Lcom/xiaomi/passport/ui/settings/e$c;)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/settings/a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/settings/a;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-static {p1}, Lcom/xiaomi/passport/ui/settings/e$c;->a(Lcom/xiaomi/passport/ui/settings/e$c;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v2, 0x10

    .line 32
    .line 33
    if-ne v1, v2, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/xiaomi/passport/ui/settings/e;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    sget v0, Ln5/g;->j:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/settings/a;->a()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/settings/e;->d:Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/app/Activity;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    iget-object p1, p1, Lcom/xiaomi/passport/ui/settings/e$c;->a:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    invoke-static {v1, p1}, La7/b;->d(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)La7/b;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, La7/b;->show()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 p1, 0x0

    .line 81
    invoke-static {v1, v0, p1}, Lz6/a;->b(Landroid/content/Context;II)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/passport/ui/settings/e;->c:Lcom/xiaomi/passport/ui/settings/e$b;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/xiaomi/passport/ui/settings/e;->a:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/xiaomi/passport/ui/settings/e;->b:Lcom/xiaomi/accountsdk/account/data/Gender;

    .line 90
    .line 91
    invoke-interface {p1, v0, v1}, Lcom/xiaomi/passport/ui/settings/e$b;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    return-void
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
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/settings/e;->a([Ljava/lang/Void;)Lcom/xiaomi/passport/ui/settings/e$c;

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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xiaomi/passport/ui/settings/e$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/settings/e;->b(Lcom/xiaomi/passport/ui/settings/e$c;)V

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
