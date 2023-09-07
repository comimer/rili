.class public Lcom/miui/calendar/util/h$a;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/h$a$a;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/calendar/util/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field private static g:Ljava/lang/StringBuilder;

.field private static h:Ljava/util/Formatter;

.field private static volatile i:Z

.field private static volatile j:Z

.field private static volatile k:Ljava/lang/String;

.field private static l:I


# instance fields
.field private a:Lcom/miui/calendar/util/h$a$a;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "timezoneType"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/miui/calendar/util/h$a;->d:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "timezoneInstances"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/miui/calendar/util/h$a;->e:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "key"

    .line 18
    .line 19
    const-string v1, "value"

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/miui/calendar/util/h$a;->f:[Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/16 v1, 0x32

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/miui/calendar/util/h$a;->g:Ljava/lang/StringBuilder;

    .line 35
    .line 36
    new-instance v0, Ljava/util/Formatter;

    .line 37
    .line 38
    sget-object v1, Lcom/miui/calendar/util/h$a;->g:Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/miui/calendar/util/h$a;->h:Ljava/util/Formatter;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Lcom/miui/calendar/util/h$a;->i:Z

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    sput-boolean v1, Lcom/miui/calendar/util/h$a;->j:Z

    .line 54
    .line 55
    invoke-static {}, Lcom/miui/calendar/util/r0;->j()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sput-object v1, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

    .line 60
    .line 61
    sput v0, Lcom/miui/calendar/util/h$a;->l:I

    .line 62
    .line 63
    return-void
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

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/miui/calendar/util/h$a;->b:Ljava/lang/String;

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

.method static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/miui/calendar/util/h$a;->i:Z

    .line 2
    .line 3
    return p0
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

.method static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/calendar/util/h$a;->j:Z

    .line 2
    .line 3
    return v0
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

.method static synthetic c(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/miui/calendar/util/h$a;->j:Z

    .line 2
    .line 3
    return p0
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

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

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

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

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

.method static synthetic f(Lcom/miui/calendar/util/h$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/util/h$a;->b:Ljava/lang/String;

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

.method public static declared-synchronized h(Ljava/lang/String;)Lcom/miui/calendar/util/h$a;
    .locals 3

    .line 1
    const-class v0, Lcom/miui/calendar/util/h$a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sget-object v2, Lcom/miui/calendar/util/h$a;->c:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/miui/calendar/util/h$a;

    .line 14
    .line 15
    :cond_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/miui/calendar/util/h$a;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/miui/calendar/util/h$a;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sput-object p0, Lcom/miui/calendar/util/h$a;->c:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    :cond_1
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0

    .line 33
    throw p0
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


# virtual methods
.method public g(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 9

    .line 1
    and-int/lit16 v0, p6, 0x2000

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "UTC"

    .line 6
    .line 7
    :goto_0
    move-object v8, v0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/high16 v0, 0x100000

    .line 10
    .line 11
    and-int/2addr v0, p6

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/miui/calendar/util/r0;->j()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/calendar/util/h$a;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    sget-object v0, Lcom/miui/calendar/util/h$a;->g:Ljava/lang/StringBuilder;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/miui/calendar/util/h$a;->g:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lcom/miui/calendar/util/h$a;->h:Ljava/util/Formatter;

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    move-wide v3, p2

    .line 37
    move-wide v5, p4

    .line 38
    move v7, p6

    .line 39
    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    monitor-exit v0

    .line 48
    return-object p1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1
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
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .line 1
    sget-boolean v0, Lcom/miui/calendar/util/h$a;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sput-boolean v1, Lcom/miui/calendar/util/h$a;->i:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/miui/calendar/util/h$a;->a:Lcom/miui/calendar/util/h$a$a;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/miui/calendar/util/h$a$a;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v0, v2, p0}, Lcom/miui/calendar/util/h$a$a;-><init>(Landroid/content/ContentResolver;Lcom/miui/calendar/util/h$a;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/miui/calendar/util/h$a;->a:Lcom/miui/calendar/util/h$a$a;

    .line 28
    .line 29
    :cond_0
    iget-object v3, p0, Lcom/miui/calendar/util/h$a;->a:Lcom/miui/calendar/util/h$a$a;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v6, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    .line 33
    .line 34
    sget-object v7, Lcom/miui/calendar/util/h$a;->f:[Ljava/lang/String;

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v10, 0x0

    .line 39
    move-object v5, p1

    .line 40
    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/miui/calendar/util/h$a;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/miui/calendar/util/h;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "preferences_home_tz_enabled"

    .line 54
    .line 55
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sput-boolean v0, Lcom/miui/calendar/util/h$a;->j:Z

    .line 60
    .line 61
    invoke-static {}, Lcom/miui/calendar/util/h;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "preferences_home_tz"

    .line 66
    .line 67
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sput-object p1, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

    .line 72
    .line 73
    sget-boolean p1, Lcom/miui/calendar/util/h$a;->j:Z

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    sget-object p1, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lcom/miui/calendar/util/h;->a()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_0
    return-object p1
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
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "auto"

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    sget-boolean p2, Lcom/miui/calendar/util/h$a;->j:Z

    .line 19
    .line 20
    sput-boolean v2, Lcom/miui/calendar/util/h$a;->j:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-boolean v1, Lcom/miui/calendar/util/h$a;->j:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    sget-object v1, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    :cond_2
    move v2, v3

    .line 36
    :cond_3
    sput-boolean v3, Lcom/miui/calendar/util/h$a;->j:Z

    .line 37
    .line 38
    sput-object p2, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

    .line 39
    .line 40
    move p2, v2

    .line 41
    :goto_0
    if-eqz p2, :cond_7

    .line 42
    .line 43
    iget-object p2, p0, Lcom/miui/calendar/util/h$a;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/miui/calendar/util/h;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    sget-boolean v1, Lcom/miui/calendar/util/h$a;->j:Z

    .line 50
    .line 51
    const-string v2, "preferences_home_tz_enabled"

    .line 52
    .line 53
    invoke-static {p2, v2, v1}, Lcom/miui/calendar/util/h;->f(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    sget-object v1, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, "preferences_home_tz"

    .line 59
    .line 60
    invoke-static {p2, v2, v1}, Lcom/miui/calendar/util/h;->e(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Landroid/content/ContentValues;

    .line 64
    .line 65
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/miui/calendar/util/h$a;->a:Lcom/miui/calendar/util/h$a$a;

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    sget v1, Lcom/miui/calendar/util/h$a;->l:I

    .line 73
    .line 74
    invoke-virtual {p2, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 75
    .line 76
    .line 77
    :cond_4
    new-instance p2, Lcom/miui/calendar/util/h$a$a;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1, p0}, Lcom/miui/calendar/util/h$a$a;-><init>(Landroid/content/ContentResolver;Lcom/miui/calendar/util/h$a;)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lcom/miui/calendar/util/h$a;->a:Lcom/miui/calendar/util/h$a$a;

    .line 87
    .line 88
    sget p1, Lcom/miui/calendar/util/h$a;->l:I

    .line 89
    .line 90
    add-int/2addr p1, v3

    .line 91
    sput p1, Lcom/miui/calendar/util/h$a;->l:I

    .line 92
    .line 93
    if-nez p1, :cond_5

    .line 94
    .line 95
    sput v3, Lcom/miui/calendar/util/h$a;->l:I

    .line 96
    .line 97
    :cond_5
    sget-boolean p1, Lcom/miui/calendar/util/h$a;->j:Z

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    const-string v0, "home"

    .line 102
    .line 103
    :cond_6
    const-string p1, "value"

    .line 104
    .line 105
    invoke-virtual {v8, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/miui/calendar/util/h$a;->a:Lcom/miui/calendar/util/h$a$a;

    .line 109
    .line 110
    sget v5, Lcom/miui/calendar/util/h$a;->l:I

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    sget-object v7, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    .line 114
    .line 115
    sget-object v10, Lcom/miui/calendar/util/h$a;->d:[Ljava/lang/String;

    .line 116
    .line 117
    const-string v9, "key=?"

    .line 118
    .line 119
    invoke-virtual/range {v4 .. v10}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-boolean p2, Lcom/miui/calendar/util/h$a;->j:Z

    .line 123
    .line 124
    if-eqz p2, :cond_7

    .line 125
    .line 126
    new-instance v4, Landroid/content/ContentValues;

    .line 127
    .line 128
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .line 130
    .line 131
    sget-object p2, Lcom/miui/calendar/util/h$a;->k:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/miui/calendar/util/h$a;->a:Lcom/miui/calendar/util/h$a$a;

    .line 137
    .line 138
    sget v1, Lcom/miui/calendar/util/h$a;->l:I

    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    .line 142
    .line 143
    sget-object v6, Lcom/miui/calendar/util/h$a;->e:[Ljava/lang/String;

    .line 144
    .line 145
    const-string v5, "key=?"

    .line 146
    .line 147
    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    return-void
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
