.class Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$b;
.super Ljava/lang/Object;
.source "CookieLoginUrlInterceptor.java"

# interfaces
.implements Lr6/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr6/a$a<",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$b;->a:Ljava/lang/String;

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
.method public a()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .locals 5

    .line 1
    const-string v0, "SNSManager"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$b;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v1, v1, v3}, La6/l;->h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)La6/k$h;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, La6/k$d;->c()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;

    .line 20
    .line 21
    invoke-direct {v3}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "userId"

    .line 25
    .line 26
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "serviceToken"

    .line 37
    .line 38
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "passportsecurity_ph"

    .line 49
    .line 50
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "passportsecurity_slh"

    .line 61
    .line 62
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$b;->a()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object v0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    const-string v3, "auth error"

    .line 79
    .line 80
    invoke-static {v0, v3, v2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_1
    move-exception v2

    .line 85
    const-string v3, "access denied"

    .line 86
    .line 87
    invoke-static {v0, v3, v2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_2
    move-exception v2

    .line 92
    const-string v3, "network error"

    .line 93
    .line 94
    invoke-static {v0, v3, v2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :catch_3
    move-exception v2

    .line 99
    const-string v3, "runtime exception"

    .line 100
    .line 101
    invoke-static {v0, v3, v2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    return-object v1
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
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
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/passport/webview/CookieLoginUrlInterceptor$b;->a()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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
