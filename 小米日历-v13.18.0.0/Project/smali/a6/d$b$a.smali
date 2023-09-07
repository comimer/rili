.class La6/d$b$a;
.super La6/g$b;
.source "PassportLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/d$b;->e(La6/f;)La6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:La6/d$b;


# direct methods
.method constructor <init>(La6/d$b;La6/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, La6/d$b$a;->b:La6/d$b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, La6/g$b;-><init>(La6/f;)V

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
.method public a()La6/k$h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, La6/d$b$a;->b:La6/d$b;

    .line 2
    .line 3
    invoke-static {v0}, La6/d$b;->f(La6/d$b;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, La6/d$b$a;->b:La6/d$b;

    .line 10
    .line 11
    invoke-static {v0}, La6/d$b;->g(La6/d$b;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, La6/d$b$a;->b:La6/d$b;

    .line 16
    .line 17
    invoke-static {v1}, La6/d$b;->h(La6/d$b;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    .line 29
    .line 30
    new-instance v1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 31
    .line 32
    const-string v2, "Empty meta login data"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/InvalidResponseException;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :catch_1
    move-exception v0

    .line 49
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :catch_2
    move-exception v0

    .line 56
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AccessDeniedException;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :catch_3
    move-exception v0

    .line 63
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/InvalidResponseException;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :catch_4
    move-exception v0

    .line 70
    throw v0

    .line 71
    :cond_1
    :goto_0
    iget-object v1, p0, La6/g;->a:La6/f;

    .line 72
    .line 73
    iget-object v1, v1, La6/f;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->sign:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, "_sign"

    .line 78
    .line 79
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, La6/g;->a:La6/f;

    .line 83
    .line 84
    iget-object v1, v1, La6/f;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 85
    .line 86
    iget-object v2, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->qs:Ljava/lang/String;

    .line 87
    .line 88
    const-string v3, "qs"

    .line 89
    .line 90
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, La6/g;->a:La6/f;

    .line 94
    .line 95
    iget-object v1, v1, La6/f;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->callback:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "callback"

    .line 100
    .line 101
    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 102
    .line 103
    .line 104
    invoke-super {p0}, La6/g$b;->a()La6/k$h;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0
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
