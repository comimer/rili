.class Lcom/xiaomi/passport/accountmanager/f$e;
.super Lcom/xiaomi/passport/accountmanager/i;
.source "VisibleSystemXiaomiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/accountmanager/f;->c(Lcom/xiaomi/passport/accountmanager/h;Landroid/os/Handler;)Lcom/xiaomi/passport/accountmanager/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/accountmanager/i<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/xiaomi/passport/accountmanager/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/accountmanager/f;Lcom/xiaomi/passport/accountmanager/h;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/f$e;->d:Lcom/xiaomi/passport/accountmanager/f;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/accountmanager/i;-><init>(Lcom/xiaomi/passport/accountmanager/h;Landroid/os/Handler;)V

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


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/f$e;->f()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

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

.method public f()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .locals 6

    .line 1
    const-string v0, "makeAccountVisible"

    .line 2
    .line 3
    const-string v1, "XiaomiAccountManagerFuture"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/xiaomi/passport/accountmanager/f$e;->d:Lcom/xiaomi/passport/accountmanager/f;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/xiaomi/passport/accountmanager/e;->l()Landroid/accounts/Account;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;

    .line 15
    .line 16
    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 17
    .line 18
    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->g(ZLandroid/accounts/Account;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->h()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v2, Ly5/c;

    .line 32
    .line 33
    invoke-direct {v2}, Ly5/c;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lcom/xiaomi/passport/accountmanager/f$e$a;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/xiaomi/passport/accountmanager/f$e;->d:Lcom/xiaomi/passport/accountmanager/f;

    .line 39
    .line 40
    iget-object v5, v5, Lcom/xiaomi/passport/accountmanager/e;->e:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v4, p0, v5, v2}, Lcom/xiaomi/passport/accountmanager/f$e$a;-><init>(Lcom/xiaomi/passport/accountmanager/f$e;Landroid/content/Context;Ly5/a;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ly5/b;->b()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v2}, Ly5/a;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    return-object v2

    .line 58
    :catch_0
    move-exception v2

    .line 59
    invoke-static {v1, v0, v2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;

    .line 63
    .line 64
    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_EXECUTION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->h()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :catch_1
    move-exception v2

    .line 79
    invoke-static {v1, v0, v2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;

    .line 83
    .line 84
    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 85
    .line 86
    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->h()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string v1, "bind service failed"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
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
