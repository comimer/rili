.class Lcom/xiaomi/analytics/BaseLogger;
.super Ljava/lang/Object;
.source "BaseLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
    }
.end annotation


# static fields
.field private static volatile c:Lg6/a;

.field private static d:Ljava/lang/String;

.field private static e:Landroid/content/Context;

.field private static f:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/xiaomi/analytics/BaseLogger$PendingUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Le6/c$f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    new-instance v0, Lcom/xiaomi/analytics/BaseLogger$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/xiaomi/analytics/BaseLogger$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->g:Le6/c$f;

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->b:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->e:Landroid/content/Context;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/xiaomi/analytics/BaseLogger;->b:Ljava/lang/String;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "Do you forget to do Logger.init ?"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
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
.end method

.method static synthetic a(Lg6/a;)Lg6/a;
    .locals 0

    .line 1
    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    .line 2
    .line 3
    return-object p0
    .line 4
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

.method static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/analytics/BaseLogger;->c()V

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

.method private static c()V
    .locals 7

    .line 1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const-string v0, "BaseLogger"

    .line 14
    .line 15
    const-string v1, "drainPendingEvents "

    .line 16
    .line 17
    invoke-static {v0, v1}, Lf6/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    .line 40
    .line 41
    iget-object v3, v2, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->d:Lcom/xiaomi/analytics/LogEvent;

    .line 42
    .line 43
    iget-object v4, v2, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->a:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v5, v2, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->b:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v4, v5, v2}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/16 v2, 0x64

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-ge v3, v4, :cond_2

    .line 65
    .line 66
    new-instance v4, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-ge v5, v2, :cond_1

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-ge v3, v5, :cond_1

    .line 82
    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v6, "trackEvents "

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v0, v5}, Lf6/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object v5, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    .line 118
    .line 119
    const-class v6, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v4, v6}, Lf6/n;->c(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, [Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v5, v4}, Lg6/a;->trackEvents([Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    return-void
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

.method static declared-synchronized d(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lcom/xiaomi/analytics/BaseLogger;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lf6/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->e:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lcom/xiaomi/analytics/BaseLogger;->e:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p0}, Le6/c;->F(Landroid/content/Context;)Le6/c;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->g:Le6/c$f;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Le6/c;->a0(Le6/c$f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string v1, "Context is not a application context."

    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0

    .line 45
    throw p0
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
.end method


# virtual methods
.method public endSession()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-void
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

.method protected log(Lcom/xiaomi/analytics/LogEvent;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->e:Landroid/content/Context;

    invoke-static {v0}, Le6/c;->F(Landroid/content/Context;)Le6/c;

    move-result-object v0

    invoke-virtual {v0}, Le6/c;->C()Lg6/a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    .line 2
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->e:Landroid/content/Context;

    invoke-static {v0}, Le6/c;->F(Landroid/content/Context;)Le6/c;

    move-result-object v0

    invoke-virtual {v0}, Le6/c;->U()V

    .line 3
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lg6/a;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/analytics/BaseLogger;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->e:Landroid/content/Context;

    invoke-static {v0}, Le6/c;->F(Landroid/content/Context;)Le6/c;

    move-result-object v0

    invoke-virtual {v0}, Le6/c;->C()Lg6/a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    .line 8
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->e:Landroid/content/Context;

    invoke-static {v0}, Le6/c;->F(Landroid/content/Context;)Le6/c;

    move-result-object v0

    invoke-virtual {v0}, Le6/c;->U()V

    .line 9
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->c:Lg6/a;

    iget-object v1, p0, Lcom/xiaomi/analytics/BaseLogger;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lg6/a;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->a:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startSession()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "startSession "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/xiaomi/analytics/BaseLogger;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "BaseLogger"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lf6/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
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
.end method
