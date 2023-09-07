.class public final Lcom/android/calendar/syncer/f;
.super Ljava/lang/Object;
.source "ProcessEventsTask.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0006B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\n\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u0006\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/android/calendar/syncer/f;",
        "Ljava/lang/Runnable;",
        "Lkotlin/u;",
        "b",
        "run",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "Lc2/b;",
        "calendar",
        "Lc2/b;",
        "()Lc2/b;",
        "<init>",
        "(Landroid/content/Context;Lc2/b;)V",
        "c",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final c:Lcom/android/calendar/syncer/f$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/syncer/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/f$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/syncer/f;->c:Lcom/android/calendar/syncer/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc2/b;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "calendar"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/calendar/syncer/f;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

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

.method private final b()V
    .locals 6

    .line 1
    const-string v0, "Cal:D:ProcessEventsTask"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc2/b;->p()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "parse(calendar.url)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "Synchronizing "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/calendar/syncer/f;->a:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v3, Lcom/android/calendar/syncer/f$b;

    .line 46
    .line 47
    invoke-direct {v3, v1, p0, v0, v2}, Lcom/android/calendar/syncer/f$b;-><init>(Landroid/net/Uri;Lcom/android/calendar/syncer/f;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lc2/a;->a:Lc2/a;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/calendar/syncer/f;->a:Landroid/content/Context;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 55
    .line 56
    invoke-virtual {v1, v2, v4}, Lc2/a;->a(Landroid/content/Context;Lc2/b;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Lcom/android/calendar/syncer/b;->l(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v1}, Lcom/android/calendar/syncer/b;->k(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 79
    .line 80
    invoke-virtual {v1}, Lc2/b;->l()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 87
    .line 88
    invoke-virtual {v1}, Lc2/b;->l()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v3, v1}, Lcom/android/calendar/syncer/b;->i(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 96
    .line 97
    invoke-virtual {v1}, Lc2/b;->m()J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    const-wide/16 v4, 0x0

    .line 102
    .line 103
    cmp-long v1, v1, v4

    .line 104
    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 108
    .line 109
    invoke-virtual {v1}, Lc2/b;->m()J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v3, v1}, Lcom/android/calendar/syncer/b;->h(Ljava/lang/Long;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-virtual {v3}, Lcom/android/calendar/syncer/b;->run()V

    .line 121
    .line 122
    .line 123
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/calendar/syncer/f;->a:Landroid/content/Context;

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Lc2/b;->s(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    const-string v2, "Invalid calendar URL"

    .line 147
    .line 148
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v2, "e.localizedMessage"

    .line 158
    .line 159
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lc2/b;->s(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void
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


# virtual methods
.method public final a()Lc2/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 2
    .line 3
    return-object v0
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

.method public run()V
    .locals 4

    .line 1
    const-string v0, "Cal:D:ProcessEventsTask"

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/calendar/syncer/f;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object v1, Lat/bitfire/ical4android/AndroidCalendar;->Companion:Lat/bitfire/ical4android/AndroidCalendar$Companion;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 19
    .line 20
    invoke-virtual {v2}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 25
    .line 26
    invoke-virtual {v3}, Lat/bitfire/ical4android/AndroidCalendar;->getAccount()Landroid/accounts/Account;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v2, v3}, Lat/bitfire/ical4android/AndroidCalendar$Companion;->insertColors(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/android/calendar/syncer/f;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    const-string v2, "Couldn\'t sync calendar"

    .line 39
    .line 40
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/calendar/syncer/f;->b:Lc2/b;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v3, "e.localizedMessage"

    .line 50
    .line 51
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lc2/b;->s(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    const-string v1, "iCalendar file completely processed"

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
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
