.class public abstract La6/e;
.super Ljava/lang/Object;
.source "PassportRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()La6/k$h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation
.end method

.method public final b()La6/k$h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/exception/PassportCAException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;,
            Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, La6/e;->a()La6/k$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 12
    .line 13
    if-nez v1, :cond_9

    .line 14
    .line 15
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    .line 16
    .line 17
    if-nez v1, :cond_8

    .line 18
    .line 19
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    .line 20
    .line 21
    if-nez v1, :cond_7

    .line 22
    .line 23
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    .line 24
    .line 25
    if-nez v1, :cond_6

    .line 26
    .line 27
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    .line 28
    .line 29
    if-nez v1, :cond_5

    .line 30
    .line 31
    instance-of v1, v0, Ljava/io/IOException;

    .line 32
    .line 33
    if-nez v1, :cond_4

    .line 34
    .line 35
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    instance-of v1, v0, Lcom/xiaomi/account/exception/PassportCAException;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    check-cast v0, Lcom/xiaomi/account/exception/PassportCAException;

    .line 52
    .line 53
    throw v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_1
    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    check-cast v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    .line 66
    .line 67
    throw v0

    .line 68
    :cond_3
    check-cast v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    .line 69
    .line 70
    throw v0

    .line 71
    :cond_4
    check-cast v0, Ljava/io/IOException;

    .line 72
    .line 73
    throw v0

    .line 74
    :cond_5
    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    .line 75
    .line 76
    throw v0

    .line 77
    :cond_6
    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    .line 78
    .line 79
    throw v0

    .line 80
    :cond_7
    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    .line 81
    .line 82
    throw v0

    .line 83
    :cond_8
    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    .line 84
    .line 85
    throw v0

    .line 86
    :cond_9
    check-cast v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 87
    .line 88
    throw v0
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
