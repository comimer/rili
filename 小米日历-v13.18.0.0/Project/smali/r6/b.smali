.class public Lr6/b;
.super Landroid/os/AsyncTask;
.source "QueryUserInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr6/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private final b:Lr6/b$a;

.field private final c:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr6/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr6/b;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lr6/b;->b:Lr6/b$a;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lr6/b;->c:Landroid/accounts/Account;

    .line 17
    .line 18
    return-void
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

.method public static b(Landroid/content/Context;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "QueryUserInfoTask"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p0, "no Xiaomi account, skip to query user info"

    .line 15
    .line 16
    invoke-static {v2, p0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    const-string v3, "passportapi"

    .line 21
    .line 22
    invoke-static {p0, v3}, Lcom/xiaomi/passport/data/a;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/a;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v6, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->BASE_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 32
    .line 33
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    sget-object v6, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->BIND_ADDRESS:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 37
    .line 38
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v6, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->EXTRA_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 42
    .line 43
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    sget-object v6, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->SETTING_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 47
    .line 48
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    sget-object v6, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->FAMILY_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 52
    .line 53
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    const-string p0, "passportInfo is null"

    .line 59
    .line 60
    invoke-static {v2, p0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_1
    const/4 v6, 0x0

    .line 65
    :goto_0
    const/4 v7, 0x2

    .line 66
    if-ge v6, v7, :cond_3

    .line 67
    .line 68
    :try_start_0
    invoke-static {v4, v3, v5}, Lcom/xiaomi/accountsdk/account/XMPassport;->j(Lcom/xiaomi/accountsdk/account/data/c;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    invoke-static {p0, v0, v7}, Lx5/e;->b(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-object v7

    .line 78
    :catch_0
    move-exception p0

    .line 79
    const-string v0, "access denied when get user info"

    .line 80
    .line 81
    invoke-static {v2, v0, p0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception v7

    .line 86
    const-string v8, "auth failure when get user info"

    .line 87
    .line 88
    invoke-static {v2, v8, v7}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, p0}, Lcom/xiaomi/passport/data/a;->i(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_2
    move-exception p0

    .line 98
    const-string v0, "IOException when get user info"

    .line 99
    .line 100
    invoke-static {v2, v0, p0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_3
    move-exception p0

    .line 105
    const-string v0, "CipherException when get user info"

    .line 106
    .line 107
    invoke-static {v2, v0, p0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_4
    move-exception p0

    .line 112
    const-string v0, "invalid response when get user info"

    .line 113
    .line 114
    invoke-static {v2, v0, p0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_1
    return-object v1
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


# virtual methods
.method protected a([Ljava/lang/Void;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
    .locals 0

    .line 1
    iget-object p1, p0, Lr6/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lr6/b;->b(Landroid/content/Context;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

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

.method protected c(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr6/b;->b:Lr6/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lr6/b$a;->a(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr6/b;->a([Ljava/lang/Void;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

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
    check-cast p1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr6/b;->c(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V

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
