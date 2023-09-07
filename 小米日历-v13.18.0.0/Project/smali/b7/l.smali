.class public Lb7/l;
.super Ljava/lang/Object;
.source "LoginPreferenceConfig.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/data/LoginPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "processType"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v0, "sid"

    .line 13
    .line 14
    invoke-virtual {p2, v0, p3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string p3, "phone"

    .line 19
    .line 20
    invoke-virtual {p2, p3, p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p2, "region"

    .line 25
    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object p1, Lb7/n;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    const/4 p3, 0x1

    .line 38
    invoke-static {p1, p0, p2, p3}, La6/l;->j(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)La6/k$h;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->A(La6/k$h;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "code"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    const-string p3, "description"

    .line 60
    .line 61
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    new-instance v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;-><init>(Lorg/json/JSONObject;)V

    .line 68
    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    const p1, 0x11178

    .line 73
    .line 74
    .line 75
    if-eq p2, p1, :cond_0

    .line 76
    .line 77
    new-instance p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 78
    .line 79
    invoke-direct {p1, p2, p3, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(ILjava/lang/String;Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_0
    new-instance p1, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    .line 84
    .line 85
    invoke-direct {p1, p3}, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_1
    const-string p2, "data"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "idcZone"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string p3, "userRegion"

    .line 102
    .line 103
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    const-string v0, "type"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance v0, Lcom/xiaomi/passport/data/LoginPreference;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {v0, p2, p3, p1}, Lcom/xiaomi/passport/data/LoginPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    return-object v0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    const-string p2, "PhoneLoginPreferenceConfig"

    .line 125
    .line 126
    const-string p3, "realBody"

    .line 127
    .line 128
    invoke-static {p2, p3, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    new-instance p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 132
    .line 133
    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_2
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 138
    .line 139
    const-string p1, "result content is null"

    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
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
