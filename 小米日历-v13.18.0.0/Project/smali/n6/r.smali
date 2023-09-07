.class public Ln6/r;
.super Lm6/b;
.source "PassportJsbMethodSetAccountInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm6/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
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
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "setAccountInfo"

    return-object v0
.end method

.method public invoke(Lcom/xiaomi/passport/webview/a;Lorg/json/JSONObject;)Lm6/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/jsb/PassportJsbMethodException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lm6/b;->checkUrlDomainPermission(Lcom/xiaomi/passport/webview/a;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "userId"

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0}, Lm6/b;->getParamsStringFieldOrThrow(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "passToken"

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "addAccountIfNotExists"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v4, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    .line 28
    .line 29
    invoke-direct {v4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->F(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->w(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->r()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/xiaomi/passport/accountmanager/g;->q(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    new-instance p1, Lm6/d;

    .line 67
    .line 68
    invoke-direct {p1, v3}, Lm6/d;-><init>(Z)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_0
    new-instance p1, Lm6/d;

    .line 73
    .line 74
    invoke-direct {p1, v3}, Lm6/d;-><init>(Z)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_1
    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/xiaomi/passport/accountmanager/g;->q(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z

    .line 87
    .line 88
    .line 89
    :cond_2
    const-string v0, "userData"

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {p1, v4, v1, v2}, Lcom/xiaomi/passport/accountmanager/g;->u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception p1

    .line 122
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string v0, "should never happen"

    .line 125
    .line 126
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p2

    .line 130
    :cond_3
    new-instance p1, Lm6/d;

    .line 131
    .line 132
    const/4 p2, 0x1

    .line 133
    invoke-direct {p1, p2}, Lm6/d;-><init>(Z)V

    .line 134
    .line 135
    .line 136
    return-object p1

    .line 137
    :cond_4
    new-instance p1, Lm6/d;

    .line 138
    .line 139
    invoke-direct {p1, v3}, Lm6/d;-><init>(Z)V

    .line 140
    .line 141
    .line 142
    return-object p1
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
