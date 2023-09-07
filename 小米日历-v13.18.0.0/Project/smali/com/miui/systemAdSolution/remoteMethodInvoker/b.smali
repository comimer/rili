.class Lcom/miui/systemAdSolution/remoteMethodInvoker/b;
.super Ljava/lang/Thread;
.source "RemoteMethodInvoker.java"


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;


# direct methods
.method constructor <init>(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->a:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
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
.method public run()V
    .locals 9

    .line 1
    const-string v0, "RemoteMethodInvoker"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$000(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$000(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, "$Stub"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v4, "asInterface"

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    new-array v6, v5, [Ljava/lang/Class;

    .line 54
    .line 55
    const-class v7, Landroid/os/IBinder;

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    aput-object v7, v6, v8

    .line 59
    .line 60
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-array v4, v5, [Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v5, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->a:Landroid/os/IBinder;

    .line 67
    .line 68
    aput-object v5, v4, v8

    .line 69
    .line 70
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/os/IInterface;

    .line 75
    .line 76
    invoke-static {v3, v2}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$102(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "mService: "

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$100(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/os/IInterface;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v3, ", service: "

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->a:Landroid/os/IBinder;

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    const-string v3, "asInterface error : "

    .line 118
    .line 119
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    :goto_0
    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 123
    .line 124
    invoke-static {v2, v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$202(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$100(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/os/IInterface;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v1, v2}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$202(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    goto :goto_2

    .line 143
    :catch_1
    move-exception v1

    .line 144
    :try_start_2
    const-string v2, "error while invoking service methods: "

    .line 145
    .line 146
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    .line 149
    :goto_1
    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$300(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$200(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$400(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :goto_2
    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 171
    .line 172
    invoke-static {v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$300(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/b;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 179
    .line 180
    .line 181
    throw v0
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
