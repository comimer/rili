.class public abstract Lat/bitfire/ical4android/AndroidTask;
.super Ljava/lang/Object;
.source "AndroidTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/ical4android/AndroidTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0011\u0008&\u0018\u0000 72\u00020\u0001:\u00017B\u0015\u0012\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"\u00a2\u0006\u0004\u00083\u00104B\u001f\u0008\u0016\u0012\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u00083\u00105B\u001f\u0008\u0016\u0012\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u00083\u00106J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0015J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014J\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cJ\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0006\u0010\u0017\u001a\u00020\u0016J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u001aH\u0015J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0012\u0010\u001f\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001aH\u0004J\u0008\u0010!\u001a\u00020 H\u0016R\u001d\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00000\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R$\u0010(\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R$\u0010\r\u001a\u0004\u0018\u00010\u000c8F@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u00068"
    }
    d2 = {
        "Lat/bitfire/ical4android/AndroidTask;",
        "",
        "Landroid/content/ContentValues;",
        "values",
        "Lkotlin/u;",
        "populateTask",
        "row",
        "populateProperty",
        "populateAlarm",
        "populateRelatedTo",
        "Landroid/net/Uri;",
        "add",
        "Lat/bitfire/ical4android/Task;",
        "task",
        "update",
        "Lat/bitfire/ical4android/BatchOperation;",
        "batch",
        "insertProperties",
        "insertAlarms",
        "insertCategories",
        "insertRelatedTo",
        "insertUnknownProperties",
        "",
        "delete",
        "Landroid/content/ContentProviderOperation$Builder;",
        "builder",
        "",
        "buildTask",
        "Ljava/util/TimeZone;",
        "getTimeZone",
        "loadProperties",
        "taskSyncURI",
        "",
        "toString",
        "Lat/bitfire/ical4android/AndroidTaskList;",
        "taskList",
        "Lat/bitfire/ical4android/AndroidTaskList;",
        "getTaskList",
        "()Lat/bitfire/ical4android/AndroidTaskList;",
        "",
        "id",
        "Ljava/lang/Long;",
        "getId",
        "()Ljava/lang/Long;",
        "setId",
        "(Ljava/lang/Long;)V",
        "Lat/bitfire/ical4android/Task;",
        "getTask",
        "()Lat/bitfire/ical4android/Task;",
        "setTask",
        "(Lat/bitfire/ical4android/Task;)V",
        "<init>",
        "(Lat/bitfire/ical4android/AndroidTaskList;)V",
        "(Lat/bitfire/ical4android/AndroidTaskList;Landroid/content/ContentValues;)V",
        "(Lat/bitfire/ical4android/AndroidTaskList;Lat/bitfire/ical4android/Task;)V",
        "Companion",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lat/bitfire/ical4android/AndroidTask$Companion;

.field public static final UNKNOWN_PROPERTY_DATA:Ljava/lang/String; = "data0"


# instance fields
.field private id:Ljava/lang/Long;

.field private task:Lat/bitfire/ical4android/Task;

.field private final taskList:Lat/bitfire/ical4android/AndroidTaskList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/bitfire/ical4android/AndroidTaskList<",
            "Lat/bitfire/ical4android/AndroidTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lat/bitfire/ical4android/AndroidTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/bitfire/ical4android/AndroidTask$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lat/bitfire/ical4android/AndroidTask;->Companion:Lat/bitfire/ical4android/AndroidTask$Companion;

    return-void
.end method

.method public constructor <init>(Lat/bitfire/ical4android/AndroidTaskList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/bitfire/ical4android/AndroidTaskList<",
            "+",
            "Lat/bitfire/ical4android/AndroidTask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "taskList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    return-void
.end method

.method public constructor <init>(Lat/bitfire/ical4android/AndroidTaskList;Landroid/content/ContentValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/bitfire/ical4android/AndroidTaskList<",
            "+",
            "Lat/bitfire/ical4android/AndroidTask;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    const-string v0, "taskList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lat/bitfire/ical4android/AndroidTask;-><init>(Lat/bitfire/ical4android/AndroidTaskList;)V

    const-string p1, "_id"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lat/bitfire/ical4android/AndroidTaskList;Lat/bitfire/ical4android/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/bitfire/ical4android/AndroidTaskList<",
            "+",
            "Lat/bitfire/ical4android/AndroidTask;",
            ">;",
            "Lat/bitfire/ical4android/Task;",
            ")V"
        }
    .end annotation

    const-string v0, "taskList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lat/bitfire/ical4android/AndroidTask;-><init>(Lat/bitfire/ical4android/AndroidTaskList;)V

    .line 6
    iput-object p2, p0, Lat/bitfire/ical4android/AndroidTask;->task:Lat/bitfire/ical4android/Task;

    return-void
.end method

.method public static synthetic taskSyncURI$default(Lat/bitfire/ical4android/AndroidTask;ZILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidTask;->taskSyncURI(Z)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: taskSyncURI"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
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


# virtual methods
.method public final add()Landroid/net/Uri;
    .locals 9

    .line 1
    new-instance v0, Lat/bitfire/ical4android/BatchOperation;

    .line 2
    .line 3
    iget-object v1, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 4
    .line 5
    invoke-virtual {v1}, Lat/bitfire/ical4android/AndroidTaskList;->getProvider()Lat/bitfire/ical4android/TaskProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lat/bitfire/ical4android/TaskProvider;->getClient()Landroid/content/ContentProviderClient;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lat/bitfire/ical4android/BatchOperation;-><init>(Landroid/content/ContentProviderClient;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v1, v2, v3, v4}, Lat/bitfire/ical4android/AndroidTaskList;->tasksSyncUri$default(Lat/bitfire/ical4android/AndroidTaskList;ZILjava/lang/Object;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v1, "newInsert(taskList.tasksSyncUri())"

    .line 30
    .line 31
    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v4, v2}, Lat/bitfire/ical4android/AndroidTask;->buildTask(Landroid/content/ContentProviderOperation$Builder;Z)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x6

    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v3, v1

    .line 44
    invoke-direct/range {v3 .. v8}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lat/bitfire/ical4android/BatchOperation;->commit()I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/BatchOperation;->getResult(I)Landroid/content/ContentProviderResult;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v2, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 72
    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lat/bitfire/ical4android/AndroidTask;->insertProperties(Lat/bitfire/ical4android/BatchOperation;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lat/bitfire/ical4android/BatchOperation;->commit()I

    .line 77
    .line 78
    .line 79
    iget-object v0, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_1
    new-instance v0, Lat/bitfire/ical4android/CalendarStorageException;

    .line 86
    .line 87
    const-string v1, "Empty result from provider when adding a task"

    .line 88
    .line 89
    invoke-direct {v0, v1}, Lat/bitfire/ical4android/CalendarStorageException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0
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

.method protected buildTask(Landroid/content/ContentProviderOperation$Builder;Z)V
    .locals 7

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 9
    .line 10
    invoke-virtual {p2}, Lat/bitfire/ical4android/AndroidTaskList;->getId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "list_id"

    .line 19
    .line 20
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_12

    .line 28
    .line 29
    invoke-virtual {p2}, Lat/bitfire/ical4android/ICalendar;->getUid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "_uid"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "_dirty"

    .line 45
    .line 46
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2}, Lat/bitfire/ical4android/ICalendar;->getSequence()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "sync_version"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getSummary()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "title"

    .line 65
    .line 66
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getLocation()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "location"

    .line 75
    .line 76
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getGeoPosition()Lnet/fortuna/ical4j/model/property/Geo;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/4 v3, 0x0

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Geo;->getValue()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object v2, v3

    .line 93
    :goto_0
    const-string v4, "geo"

    .line 94
    .line 95
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getDescription()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v4, "description"

    .line 104
    .line 105
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getColor()Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v4, "task_color"

    .line 114
    .line 115
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getUrl()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v4, "url"

    .line 124
    .line 125
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v2, "parent_id"

    .line 130
    .line 131
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v2, 0x1

    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    :try_start_0
    new-instance v4, Ljava/net/URI;

    .line 142
    .line 143
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Organizer;->getValue()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v5, "mailto"

    .line 155
    .line 156
    invoke-static {v0, v5, v2}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    goto :goto_2

    .line 167
    :cond_2
    sget-object v0, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 168
    .line 169
    invoke-virtual {v0}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 174
    .line 175
    const-string v6, "Found non-mailto ORGANIZER URI, ignoring"

    .line 176
    .line 177
    invoke-virtual {v0, v5, v6, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    sget-object v4, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 183
    .line 184
    invoke-virtual {v4}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 189
    .line 190
    const-string v6, "Invalid ORGANIZER URI, ignoring"

    .line 191
    .line 192
    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :cond_3
    :goto_1
    move-object v0, v3

    .line 196
    :goto_2
    const-string v4, "organizer"

    .line 197
    .line 198
    invoke-virtual {p1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getPriority()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v4, "priority"

    .line 210
    .line 211
    invoke-virtual {p1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getClassification()Lnet/fortuna/ical4j/model/property/Clazz;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    sget-object v5, Lnet/fortuna/ical4j/model/property/Clazz;->PUBLIC:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 220
    .line 221
    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    const/4 v6, 0x2

    .line 226
    if-eqz v5, :cond_4

    .line 227
    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    goto :goto_3

    .line 233
    :cond_4
    sget-object v5, Lnet/fortuna/ical4j/model/property/Clazz;->CONFIDENTIAL:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 234
    .line 235
    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_5

    .line 240
    .line 241
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    goto :goto_3

    .line 246
    :cond_5
    if-nez v4, :cond_6

    .line 247
    .line 248
    sget-object v4, Loc/a$e;->a:Ljava/lang/Integer;

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    :goto_3
    const-string v5, "class"

    .line 256
    .line 257
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getCompletedAt()Lnet/fortuna/ical4j/model/property/Completed;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_7

    .line 265
    .line 266
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-eqz v0, :cond_7

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    goto :goto_4

    .line 281
    :cond_7
    move-object v0, v3

    .line 282
    :goto_4
    const-string v4, "completed"

    .line 283
    .line 284
    invoke-virtual {p1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    const-string v5, "completed_is_allday"

    .line 293
    .line 294
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getPercentComplete()Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    const-string v5, "percent_complete"

    .line 303
    .line 304
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getStatus()Lnet/fortuna/ical4j/model/property/Status;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    sget-object v4, Lnet/fortuna/ical4j/model/property/Status;->VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

    .line 312
    .line 313
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_8

    .line 318
    .line 319
    move v6, v2

    .line 320
    goto :goto_5

    .line 321
    :cond_8
    sget-object v4, Lnet/fortuna/ical4j/model/property/Status;->VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

    .line 322
    .line 323
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_9

    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_9
    sget-object v4, Lnet/fortuna/ical4j/model/property/Status;->VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 331
    .line 332
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_a

    .line 337
    .line 338
    const/4 v6, 0x3

    .line 339
    goto :goto_5

    .line 340
    :cond_a
    move v6, v1

    .line 341
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v4, "status"

    .line 346
    .line 347
    invoke-virtual {p1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->isAllDay()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    const-string v4, "tz"

    .line 355
    .line 356
    const-string v5, "is_allday"

    .line 357
    .line 358
    if-eqz v0, :cond_b

    .line 359
    .line 360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {p1, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 369
    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_b
    sget-object v2, Lat/bitfire/ical4android/MiscUtils;->INSTANCE:Lat/bitfire/ical4android/MiscUtils;

    .line 373
    .line 374
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getDtStart()Lnet/fortuna/ical4j/model/property/DtStart;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    invoke-virtual {v2, v6}, Lat/bitfire/ical4android/MiscUtils;->androidifyTimeZone(Lnet/fortuna/ical4j/model/property/DateProperty;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getDue()Lnet/fortuna/ical4j/model/property/Due;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-virtual {v2, v6}, Lat/bitfire/ical4android/MiscUtils;->androidifyTimeZone(Lnet/fortuna/ical4j/model/property/DateProperty;)V

    .line 386
    .line 387
    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {p1, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTimeZone()Ljava/util/TimeZone;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 405
    .line 406
    .line 407
    :goto_6
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getCreatedAt()Ljava/lang/Long;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const-string v2, "created"

    .line 412
    .line 413
    invoke-virtual {p1, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getLastModified()Ljava/lang/Long;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    const-string v4, "last_modified"

    .line 422
    .line 423
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getDtStart()Lnet/fortuna/ical4j/model/property/DtStart;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    if-eqz v2, :cond_c

    .line 432
    .line 433
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    if-eqz v2, :cond_c

    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 440
    .line 441
    .line 442
    move-result-wide v4

    .line 443
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    goto :goto_7

    .line 448
    :cond_c
    move-object v2, v3

    .line 449
    :goto_7
    const-string v4, "dtstart"

    .line 450
    .line 451
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getDue()Lnet/fortuna/ical4j/model/property/Due;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    if-eqz v2, :cond_d

    .line 460
    .line 461
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    if-eqz v2, :cond_d

    .line 466
    .line 467
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 468
    .line 469
    .line 470
    move-result-wide v4

    .line 471
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    goto :goto_8

    .line 476
    :cond_d
    move-object v2, v3

    .line 477
    :goto_8
    const-string v4, "due"

    .line 478
    .line 479
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getDuration()Lnet/fortuna/ical4j/model/property/Duration;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    if-eqz v2, :cond_e

    .line 488
    .line 489
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Duration;->getValue()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    goto :goto_9

    .line 494
    :cond_e
    move-object v2, v3

    .line 495
    :goto_9
    const-string v4, "duration"

    .line 496
    .line 497
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getRDates()Ljava/util/LinkedList;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-eqz v2, :cond_f

    .line 510
    .line 511
    move-object v2, v3

    .line 512
    goto :goto_a

    .line 513
    :cond_f
    sget-object v2, Lat/bitfire/ical4android/DateUtils;->INSTANCE:Lat/bitfire/ical4android/DateUtils;

    .line 514
    .line 515
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getRDates()Ljava/util/LinkedList;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-virtual {v2, v4, v0}, Lat/bitfire/ical4android/DateUtils;->recurrenceSetsToAndroidString(Ljava/util/List;Z)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    :goto_a
    const-string v4, "rdate"

    .line 524
    .line 525
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getRRule()Lnet/fortuna/ical4j/model/property/RRule;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    if-eqz v2, :cond_10

    .line 534
    .line 535
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/RRule;->getValue()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    goto :goto_b

    .line 540
    :cond_10
    move-object v2, v3

    .line 541
    :goto_b
    const-string v4, "rrule"

    .line 542
    .line 543
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getExDates()Ljava/util/LinkedList;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-eqz v2, :cond_11

    .line 556
    .line 557
    goto :goto_c

    .line 558
    :cond_11
    sget-object v2, Lat/bitfire/ical4android/DateUtils;->INSTANCE:Lat/bitfire/ical4android/DateUtils;

    .line 559
    .line 560
    invoke-virtual {p2}, Lat/bitfire/ical4android/Task;->getExDates()Ljava/util/LinkedList;

    .line 561
    .line 562
    .line 563
    move-result-object p2

    .line 564
    invoke-virtual {v2, p2, v0}, Lat/bitfire/ical4android/DateUtils;->recurrenceSetsToAndroidString(Ljava/util/List;Z)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    :goto_c
    const-string p2, "exdate"

    .line 569
    .line 570
    invoke-virtual {v1, p2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 571
    .line 572
    .line 573
    sget-object p2, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 574
    .line 575
    invoke-virtual {p2}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 576
    .line 577
    .line 578
    move-result-object p2

    .line 579
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 580
    .line 581
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    const-string v1, "Built task object"

    .line 586
    .line 587
    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 592
    .line 593
    const-string p2, "Required value was null."

    .line 594
    .line 595
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object p2

    .line 599
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    throw p1
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method public final delete()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lat/bitfire/ical4android/AndroidTaskList;->getProvider()Lat/bitfire/ical4android/TaskProvider;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lat/bitfire/ical4android/TaskProvider;->getClient()Landroid/content/ContentProviderClient;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p0, v1, v2, v3}, Lat/bitfire/ical4android/AndroidTask;->taskSyncURI$default(Lat/bitfire/ical4android/AndroidTask;ZILjava/lang/Object;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lat/bitfire/ical4android/CalendarStorageException;

    .line 25
    .line 26
    const-string v2, "Couldn\'t delete event"

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lat/bitfire/ical4android/CalendarStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1
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
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

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

.method public final getTask()Lat/bitfire/ical4android/Task;
    .locals 14

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->task:Lat/bitfire/ical4android/Task;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 7
    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    iget-object v3, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 16
    .line 17
    invoke-virtual {v3}, Lat/bitfire/ical4android/AndroidTaskList;->getProvider()Lat/bitfire/ical4android/TaskProvider;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lat/bitfire/ical4android/TaskProvider;->getClient()Landroid/content/ContentProviderClient;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v10, 0x1

    .line 26
    invoke-virtual {p0, v10}, Lat/bitfire/ical4android/AndroidTask;->taskSyncURI(Z)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    move-object v4, v3

    .line 35
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-eqz v11, :cond_a

    .line 40
    .line 41
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_9

    .line 46
    .line 47
    new-instance v0, Lat/bitfire/ical4android/Task;

    .line 48
    .line 49
    invoke-direct {v0}, Lat/bitfire/ical4android/Task;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->task:Lat/bitfire/ical4android/Task;

    .line 53
    .line 54
    sget-object v1, Lat/bitfire/ical4android/MiscUtils$CursorHelper;->INSTANCE:Lat/bitfire/ical4android/MiscUtils$CursorHelper;

    .line 55
    .line 56
    invoke-virtual {v1, v11, v10}, Lat/bitfire/ical4android/MiscUtils$CursorHelper;->toValues(Landroid/database/Cursor;Z)Landroid/content/ContentValues;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v4, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 61
    .line 62
    invoke-virtual {v4}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 67
    .line 68
    const-string v6, "Found task"

    .line 69
    .line 70
    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lat/bitfire/ical4android/AndroidTask;->populateTask(Landroid/content/ContentValues;)V

    .line 74
    .line 75
    .line 76
    const-string v4, "property_id"

    .line 77
    .line 78
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lat/bitfire/ical4android/AndroidTask;->populateProperty(Landroid/content/ContentValues;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    sget-object v4, Lat/bitfire/ical4android/MiscUtils$CursorHelper;->INSTANCE:Lat/bitfire/ical4android/MiscUtils$CursorHelper;

    .line 94
    .line 95
    invoke-virtual {v4, v11, v10}, Lat/bitfire/ical4android/MiscUtils$CursorHelper;->toValues(Landroid/database/Cursor;Z)Landroid/content/ContentValues;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {p0, v4}, Lat/bitfire/ical4android/AndroidTask;->populateProperty(Landroid/content/ContentValues;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getRelatedTo()Ljava/util/LinkedList;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    const-string v4, "parent_id"

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    const-string v4, "getAsLong(Tasks.PARENT_ID)"

    .line 116
    .line 117
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    instance-of v1, v12, Ljava/util/Collection;

    .line 125
    .line 126
    const/4 v13, 0x0

    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    :cond_2
    move v1, v13

    .line 136
    goto :goto_3

    .line 137
    :cond_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_2

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Lnet/fortuna/ical4j/model/property/RelatedTo;

    .line 152
    .line 153
    const-string v7, "RELTYPE"

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 160
    .line 161
    sget-object v7, Lnet/fortuna/ical4j/model/parameter/RelType;->PARENT:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 162
    .line 163
    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-nez v7, :cond_6

    .line 168
    .line 169
    if-nez v6, :cond_5

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    move v6, v13

    .line 173
    goto :goto_2

    .line 174
    :cond_6
    :goto_1
    move v6, v10

    .line 175
    :goto_2
    if-eqz v6, :cond_4

    .line 176
    .line 177
    move v1, v10

    .line 178
    :goto_3
    if-nez v1, :cond_8

    .line 179
    .line 180
    iget-object v1, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 181
    .line 182
    invoke-static {v1, v13, v10, v2}, Lat/bitfire/ical4android/AndroidTaskList;->tasksSyncUri$default(Lat/bitfire/ical4android/AndroidTaskList;ZILjava/lang/Object;)Landroid/net/Uri;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const-string v1, "withAppendedId(taskList.tasksSyncUri(), parentId)"

    .line 191
    .line 192
    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v1, "_uid"

    .line 196
    .line 197
    filled-new-array {v1}, [Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    const/4 v7, 0x0

    .line 202
    const/4 v8, 0x0

    .line 203
    const/4 v9, 0x0

    .line 204
    move-object v4, v3

    .line 205
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 206
    .line 207
    .line 208
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 209
    if-eqz v1, :cond_8

    .line 210
    .line 211
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_7

    .line 216
    .line 217
    new-instance v3, Lnet/fortuna/ical4j/model/property/RelatedTo;

    .line 218
    .line 219
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/property/RelatedTo;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    :cond_7
    sget-object v3, Lkotlin/u;->a:Lkotlin/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .line 231
    :try_start_3
    invoke-static {v1, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    :catchall_1
    move-exception v3

    .line 238
    :try_start_5
    invoke-static {v1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    throw v3

    .line 242
    :cond_8
    :goto_4
    iput-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->task:Lat/bitfire/ical4android/Task;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 243
    .line 244
    :try_start_6
    invoke-static {v11, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 245
    .line 246
    .line 247
    return-object v0

    .line 248
    :cond_9
    :try_start_7
    sget-object v3, Lkotlin/u;->a:Lkotlin/u;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 249
    .line 250
    :try_start_8
    invoke-static {v11, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :catchall_2
    move-exception v0

    .line 255
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 256
    :catchall_3
    move-exception v1

    .line 257
    :try_start_a
    invoke-static {v11, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 261
    :cond_a
    :goto_5
    new-instance v2, Ljava/io/FileNotFoundException;

    .line 262
    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v4, "Couldn\'t find task #"

    .line 269
    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    iput-object v2, p0, Lat/bitfire/ical4android/AndroidTask;->task:Lat/bitfire/ical4android/Task;

    .line 286
    .line 287
    throw v0

    .line 288
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    const-string v1, "Required value was null."

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method public final getTaskList()Lat/bitfire/ical4android/AndroidTaskList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lat/bitfire/ical4android/AndroidTaskList<",
            "Lat/bitfire/ical4android/AndroidTask;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

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

.method public final getTimeZone()Ljava/util/TimeZone;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getDtStart()Lnet/fortuna/ical4j/model/property/DtStart;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    if-nez v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getDue()Lnet/fortuna/ical4j/model/property/Due;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_1
    move-object v1, v2

    .line 35
    :cond_2
    if-nez v1, :cond_3

    .line 36
    .line 37
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v0, "getDefault()"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-object v1

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v1, "Required value was null."

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
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

.method protected insertAlarms(Lat/bitfire/ical4android/BatchOperation;)V
    .locals 11

    .line 1
    const-string v0, "batch"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getAlarms()Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_7

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 31
    .line 32
    sget-object v3, Lat/bitfire/ical4android/ICalendar;->Companion:Lat/bitfire/ical4android/ICalendar$Companion;

    .line 33
    .line 34
    const-string v4, "alarm"

    .line 35
    .line 36
    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-virtual {v3, v2, v0, v4}, Lat/bitfire/ical4android/ICalendar$Companion;->vAlarmToMin(Lnet/fortuna/ical4j/model/component/VAlarm;Lat/bitfire/ical4android/ICalendar;Z)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lnet/fortuna/ical4j/model/parameter/Related;

    .line 52
    .line 53
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    sget-object v6, Lnet/fortuna/ical4j/model/parameter/Related;->END:Lnet/fortuna/ical4j/model/parameter/Related;

    .line 64
    .line 65
    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/4 v6, 0x2

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    move v5, v4

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v5, v6

    .line 75
    :goto_1
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getAction()Lnet/fortuna/ical4j/model/property/Action;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-eqz v7, :cond_2

    .line 80
    .line 81
    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/Action;->getValue()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 88
    .line 89
    const-string v9, "US"

    .line 90
    .line 91
    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const-string v8, "this as java.lang.String).toUpperCase(locale)"

    .line 99
    .line 100
    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    const/4 v7, 0x0

    .line 105
    :goto_2
    sget-object v8, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    .line 106
    .line 107
    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/property/Action;->getValue()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_3

    .line 116
    .line 117
    const/4 v4, 0x4

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    sget-object v8, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    .line 120
    .line 121
    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/property/Action;->getValue()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_4

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    sget-object v4, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    .line 133
    .line 134
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Action;->getValue()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v7, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    move v4, v6

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    const/4 v4, 0x0

    .line 147
    :goto_3
    iget-object v6, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 148
    .line 149
    invoke-virtual {v6}, Lat/bitfire/ical4android/AndroidTaskList;->tasksPropertiesSyncUri()Landroid/net/Uri;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    iget-object v7, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 158
    .line 159
    const-string v8, "task_id"

    .line 160
    .line 161
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const-string v7, "mimetype"

    .line 166
    .line 167
    const-string v8, "vnd.android.cursor.item/alarm"

    .line 168
    .line 169
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v7, "data0"

    .line 178
    .line 179
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    const-string v6, "data1"

    .line 188
    .line 189
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getDescription()Lnet/fortuna/ical4j/model/property/Description;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    if-eqz v5, :cond_6

    .line 198
    .line 199
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/property/Description;->getValue()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    if-eqz v5, :cond_6

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_6
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getSummary()Lnet/fortuna/ical4j/model/property/Summary;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    :goto_4
    const-string v2, "data2"

    .line 211
    .line 212
    invoke-virtual {v3, v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    const-string v4, "data3"

    .line 221
    .line 222
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const-string v2, "newInsert(taskList.tasks\u2026rm.ALARM_TYPE, alarmType)"

    .line 227
    .line 228
    invoke-static {v6, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    sget-object v2, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 232
    .line 233
    invoke-virtual {v2}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 238
    .line 239
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    const-string v5, "Inserting alarm"

    .line 244
    .line 245
    invoke-virtual {v2, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    new-instance v2, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 249
    .line 250
    const/4 v7, 0x0

    .line 251
    const/4 v8, 0x0

    .line 252
    const/4 v9, 0x6

    .line 253
    const/4 v10, 0x0

    .line 254
    move-object v5, v2

    .line 255
    invoke-direct/range {v5 .. v10}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v2}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 259
    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_7
    return-void

    .line 264
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 265
    .line 266
    const-string v0, "Required value was null."

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p1
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method protected insertCategories(Lat/bitfire/ical4android/BatchOperation;)V
    .locals 10

    .line 1
    const-string v0, "batch"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getCategories()Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 33
    .line 34
    invoke-virtual {v2}, Lat/bitfire/ical4android/AndroidTaskList;->tasksPropertiesSyncUri()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 43
    .line 44
    const-string v4, "task_id"

    .line 45
    .line 46
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "mimetype"

    .line 51
    .line 52
    const-string v4, "vnd.android.cursor.item/category"

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "data1"

    .line 59
    .line 60
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const-string v1, "newInsert(taskList.tasks\u2026.CATEGORY_NAME, category)"

    .line 65
    .line 66
    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 70
    .line 71
    invoke-virtual {v1}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "Inserting category"

    .line 82
    .line 83
    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v8, 0x6

    .line 91
    const/4 v9, 0x0

    .line 92
    move-object v4, v1

    .line 93
    invoke-direct/range {v4 .. v9}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    return-void

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string v0, "Required value was null."

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
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

.method protected insertProperties(Lat/bitfire/ical4android/BatchOperation;)V
    .locals 1

    .line 1
    const-string v0, "batch"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidTask;->insertAlarms(Lat/bitfire/ical4android/BatchOperation;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidTask;->insertCategories(Lat/bitfire/ical4android/BatchOperation;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidTask;->insertRelatedTo(Lat/bitfire/ical4android/BatchOperation;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidTask;->insertUnknownProperties(Lat/bitfire/ical4android/BatchOperation;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected insertRelatedTo(Lat/bitfire/ical4android/BatchOperation;)V
    .locals 10

    .line 1
    const-string v0, "batch"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getRelatedTo()Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lnet/fortuna/ical4j/model/property/RelatedTo;

    .line 31
    .line 32
    const-string v2, "RELTYPE"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 39
    .line 40
    sget-object v3, Lnet/fortuna/ical4j/model/parameter/RelType;->CHILD:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 41
    .line 42
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    sget-object v3, Lnet/fortuna/ical4j/model/parameter/RelType;->SIBLING:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 61
    :goto_1
    iget-object v3, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 62
    .line 63
    invoke-virtual {v3}, Lat/bitfire/ical4android/AndroidTaskList;->tasksPropertiesSyncUri()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 72
    .line 73
    const-string v5, "task_id"

    .line 74
    .line 75
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "mimetype"

    .line 80
    .line 81
    const-string v5, "vnd.android.cursor.item/relation"

    .line 82
    .line 83
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/RelatedTo;->getValue()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v4, "data3"

    .line 92
    .line 93
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "data2"

    .line 102
    .line 103
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const-string v1, "newInsert(taskList.tasks\u2026on.RELATED_TYPE, relType)"

    .line 108
    .line 109
    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 113
    .line 114
    invoke-virtual {v1}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 119
    .line 120
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v4, "Inserting relation"

    .line 125
    .line 126
    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 130
    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v7, 0x0

    .line 133
    const/4 v8, 0x6

    .line 134
    const/4 v9, 0x0

    .line 135
    move-object v4, v1

    .line 136
    invoke-direct/range {v4 .. v9}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    return-void

    .line 144
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string v0, "Required value was null."

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
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

.method protected insertUnknownProperties(Lat/bitfire/ical4android/BatchOperation;)V
    .locals 10

    .line 1
    const-string v0, "batch"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getUnknownProperties()Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 31
    .line 32
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0x61a8

    .line 41
    .line 42
    if-le v2, v3, :cond_0

    .line 43
    .line 44
    sget-object p1, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 45
    .line 46
    invoke-virtual {p1}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "Ignoring unknown property with "

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " octets (too long)"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 85
    .line 86
    invoke-virtual {v2}, Lat/bitfire/ical4android/AndroidTaskList;->tasksPropertiesSyncUri()Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object v3, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 95
    .line 96
    const-string v4, "task_id"

    .line 97
    .line 98
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v3, "mimetype"

    .line 103
    .line 104
    const-string v4, "vnd.android.cursor.item/vnd.ical4android.unknown-property"

    .line 105
    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    sget-object v3, Lat/bitfire/ical4android/UnknownProperty;->INSTANCE:Lat/bitfire/ical4android/UnknownProperty;

    .line 111
    .line 112
    const-string v4, "property"

    .line 113
    .line 114
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v1}, Lat/bitfire/ical4android/UnknownProperty;->toJsonString(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v3, "data0"

    .line 122
    .line 123
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const-string v1, "newInsert(taskList.tasks\u2026y.toJsonString(property))"

    .line 128
    .line 129
    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object v1, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 133
    .line 134
    invoke-virtual {v1}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-string v4, "Inserting unknown property"

    .line 145
    .line 146
    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 150
    .line 151
    const/4 v6, 0x0

    .line 152
    const/4 v7, 0x0

    .line 153
    const/4 v8, 0x6

    .line 154
    const/4 v9, 0x0

    .line 155
    move-object v4, v1

    .line 156
    invoke-direct/range {v4 .. v9}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_1
    return-void

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v0, "Required value was null."

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method protected populateAlarm(Landroid/content/ContentValues;)V
    .locals 6

    .line 1
    const-string v0, "row"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    new-instance v1, Lnet/fortuna/ical4j/model/PropertyList;

    .line 13
    .line 14
    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lnet/fortuna/ical4j/model/property/Trigger;

    .line 18
    .line 19
    const-string v3, "data0"

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    neg-long v3, v3

    .line 30
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/property/Trigger;-><init>(Ljava/time/temporal/TemporalAmount;)V

    .line 35
    .line 36
    .line 37
    const-string v3, "data1"

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x2

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ne v5, v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v5, Lnet/fortuna/ical4j/model/parameter/Related;->START:Lnet/fortuna/ical4j/model/parameter/Related;

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v3, v5, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sget-object v5, Lnet/fortuna/ical4j/model/parameter/Related;->END:Lnet/fortuna/ical4j/model/parameter/Related;

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    const-string v2, "data3"

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ne v3, v4, :cond_5

    .line 99
    .line 100
    sget-object v2, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    :goto_2
    const/4 v3, 0x4

    .line 104
    if-nez v2, :cond_6

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-ne v2, v3, :cond_7

    .line 112
    .line 113
    sget-object v2, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_7
    :goto_3
    sget-object v2, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    .line 117
    .line 118
    :goto_4
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v2, Lnet/fortuna/ical4j/model/property/Description;

    .line 122
    .line 123
    const-string v3, "data2"

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_8

    .line 130
    .line 131
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getSummary()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :cond_8
    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/model/property/Description;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getAlarms()Ljava/util/LinkedList;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 146
    .line 147
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/VAlarm;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    const-string v0, "Required value was null."

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
    .line 166
    .line 167
.end method

.method protected populateProperty(Landroid/content/ContentValues;)V
    .locals 4

    .line 1
    const-string v0, "row"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 7
    .line 8
    invoke-virtual {v0}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 13
    .line 14
    const-string v3, "Found property"

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    const-string v2, "mimetype"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sparse-switch v3, :sswitch_data_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :sswitch_0
    const-string v3, "vnd.android.cursor.item/category"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Lat/bitfire/ical4android/Task;->getCategories()Ljava/util/LinkedList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "data1"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/relation"

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidTask;->populateRelatedTo(Landroid/content/ContentValues;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :sswitch_2
    const-string v3, "vnd.android.cursor.item/vnd.ical4android.unknown-property"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v1}, Lat/bitfire/ical4android/Task;->getUnknownProperties()Ljava/util/LinkedList;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sget-object v1, Lat/bitfire/ical4android/UnknownProperty;->INSTANCE:Lat/bitfire/ical4android/UnknownProperty;

    .line 91
    .line 92
    const-string v2, "data0"

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v2, "row.getAsString(UNKNOWN_PROPERTY_DATA)"

    .line 99
    .line 100
    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Lat/bitfire/ical4android/UnknownProperty;->fromJsonString(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/alarm"

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_3

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidTask;->populateAlarm(Landroid/content/ContentValues;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v1, "Found unknown property of type "

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    return-void

    .line 149
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string v0, "Required value was null."

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x352c4d6c -> :sswitch_3
        0x41d4997f -> :sswitch_2
        0x54088d01 -> :sswitch_1
        0x78175003 -> :sswitch_0
    .end sparse-switch
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method protected populateRelatedTo(Landroid/content/ContentValues;)V
    .locals 4

    .line 1
    const-string v0, "row"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data3"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 15
    .line 16
    invoke-virtual {p1}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "Task relation doesn\'t refer to same task list; can\'t be synchronized"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v1, Lnet/fortuna/ical4j/model/property/RelatedTo;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/property/RelatedTo;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "data2"

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v2, 0x1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v3, v2, :cond_2

    .line 50
    .line 51
    sget-object p1, Lnet/fortuna/ical4j/model/parameter/RelType;->CHILD:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_0
    const/4 v2, 0x2

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v2, :cond_4

    .line 63
    .line 64
    sget-object p1, Lnet/fortuna/ical4j/model/parameter/RelType;->SIBLING:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_1
    sget-object p1, Lnet/fortuna/ical4j/model/parameter/RelType;->PARENT:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 68
    .line 69
    :goto_2
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1}, Lat/bitfire/ical4android/Task;->getRelatedTo()Ljava/util/LinkedList;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string v0, "Required value was null."

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
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

.method protected populateTask(Landroid/content/ContentValues;)V
    .locals 8

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidTask;->getTask()Lat/bitfire/ical4android/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_20

    .line 11
    .line 12
    const-string v1, "_uid"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/ICalendar;->setUid(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "sync_version"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/ICalendar;->setSequence(Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "title"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setSummary(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "location"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setLocation(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "geo"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    new-instance v2, Lnet/fortuna/ical4j/model/property/Geo;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/property/Geo;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setGeoPosition(Lnet/fortuna/ical4j/model/property/Geo;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    const-string v1, "description"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setDescription(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "task_color"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setColor(Ljava/lang/Integer;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "url"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setUrl(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "organizer"

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    :try_start_0
    new-instance v2, Lnet/fortuna/ical4j/model/property/Organizer;

    .line 100
    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v4, "mailto:"

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/property/Organizer;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/Task;->setOrganizer(Lnet/fortuna/ical4j/model/property/Organizer;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    sget-object v2, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 127
    .line 128
    invoke-virtual {v2}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 133
    .line 134
    const-string v4, "Invalid ORGANIZER email"

    .line 135
    .line 136
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    :goto_0
    const-string v1, "priority"

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_2

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setPriority(I)V

    .line 152
    .line 153
    .line 154
    :cond_2
    const-string v1, "class"

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const/4 v2, 0x2

    .line 161
    const/4 v3, 0x0

    .line 162
    const/4 v4, 0x1

    .line 163
    if-nez v1, :cond_3

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-nez v5, :cond_4

    .line 171
    .line 172
    sget-object v1, Lnet/fortuna/ical4j/model/property/Clazz;->PUBLIC:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-ne v5, v4, :cond_6

    .line 183
    .line 184
    sget-object v1, Lnet/fortuna/ical4j/model/property/Clazz;->PRIVATE:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-ne v1, v2, :cond_8

    .line 195
    .line 196
    sget-object v1, Lnet/fortuna/ical4j/model/property/Clazz;->CONFIDENTIAL:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_8
    :goto_3
    move-object v1, v3

    .line 200
    :goto_4
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setClassification(Lnet/fortuna/ical4j/model/property/Clazz;)V

    .line 201
    .line 202
    .line 203
    const-string v1, "completed"

    .line 204
    .line 205
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    new-instance v1, Lnet/fortuna/ical4j/model/property/Completed;

    .line 216
    .line 217
    new-instance v7, Lnet/fortuna/ical4j/model/DateTime;

    .line 218
    .line 219
    invoke-direct {v7, v5, v6}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 220
    .line 221
    .line 222
    invoke-direct {v1, v7}, Lnet/fortuna/ical4j/model/property/Completed;-><init>(Lnet/fortuna/ical4j/model/DateTime;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setCompletedAt(Lnet/fortuna/ical4j/model/property/Completed;)V

    .line 226
    .line 227
    .line 228
    :cond_9
    const-string v1, "percent_complete"

    .line 229
    .line 230
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_a

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setPercentComplete(Ljava/lang/Integer;)V

    .line 245
    .line 246
    .line 247
    :cond_a
    const-string v1, "status"

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-nez v1, :cond_b

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-ne v5, v4, :cond_c

    .line 261
    .line 262
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_c
    :goto_5
    if-nez v1, :cond_d

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-ne v5, v2, :cond_e

    .line 273
    .line 274
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

    .line 275
    .line 276
    goto :goto_8

    .line 277
    :cond_e
    :goto_6
    const/4 v2, 0x3

    .line 278
    if-nez v1, :cond_f

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-ne v1, v2, :cond_10

    .line 286
    .line 287
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_10
    :goto_7
    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VTODO_NEEDS_ACTION:Lnet/fortuna/ical4j/model/property/Status;

    .line 291
    .line 292
    :goto_8
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setStatus(Lnet/fortuna/ical4j/model/property/Status;)V

    .line 293
    .line 294
    .line 295
    const-string v1, "is_allday"

    .line 296
    .line 297
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    const/4 v2, 0x0

    .line 302
    if-eqz v1, :cond_12

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_11

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_11
    move v4, v2

    .line 312
    :goto_9
    move v2, v4

    .line 313
    :cond_12
    const-string v1, "tz"

    .line 314
    .line 315
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    if-eqz v1, :cond_13

    .line 320
    .line 321
    sget-object v4, Lat/bitfire/ical4android/DateUtils;->INSTANCE:Lat/bitfire/ical4android/DateUtils;

    .line 322
    .line 323
    invoke-virtual {v4}, Lat/bitfire/ical4android/DateUtils;->getTzRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-interface {v4, v1}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    goto :goto_a

    .line 332
    :cond_13
    move-object v1, v3

    .line 333
    :goto_a
    const-string v4, "created"

    .line 334
    .line 335
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    if-eqz v4, :cond_14

    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 342
    .line 343
    .line 344
    move-result-wide v4

    .line 345
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-virtual {v0, v4}, Lat/bitfire/ical4android/Task;->setCreatedAt(Ljava/lang/Long;)V

    .line 350
    .line 351
    .line 352
    :cond_14
    const-string v4, "last_modified"

    .line 353
    .line 354
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    if-eqz v4, :cond_15

    .line 359
    .line 360
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 361
    .line 362
    .line 363
    move-result-wide v4

    .line 364
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-virtual {v0, v4}, Lat/bitfire/ical4android/Task;->setLastModified(Ljava/lang/Long;)V

    .line 369
    .line 370
    .line 371
    :cond_15
    const-string v4, "dtstart"

    .line 372
    .line 373
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    if-eqz v4, :cond_18

    .line 378
    .line 379
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 380
    .line 381
    .line 382
    move-result-wide v4

    .line 383
    if-eqz v2, :cond_16

    .line 384
    .line 385
    new-instance v6, Lnet/fortuna/ical4j/model/Date;

    .line 386
    .line 387
    invoke-direct {v6, v4, v5}, Lnet/fortuna/ical4j/model/Date;-><init>(J)V

    .line 388
    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_16
    new-instance v6, Lnet/fortuna/ical4j/model/DateTime;

    .line 392
    .line 393
    invoke-direct {v6, v4, v5}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 394
    .line 395
    .line 396
    if-eqz v1, :cond_17

    .line 397
    .line 398
    invoke-virtual {v6, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 399
    .line 400
    .line 401
    :cond_17
    :goto_b
    new-instance v4, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 402
    .line 403
    invoke-direct {v4, v6}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v4}, Lat/bitfire/ical4android/Task;->setDtStart(Lnet/fortuna/ical4j/model/property/DtStart;)V

    .line 407
    .line 408
    .line 409
    :cond_18
    const-string v4, "due"

    .line 410
    .line 411
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    if-eqz v4, :cond_1b

    .line 416
    .line 417
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 418
    .line 419
    .line 420
    move-result-wide v4

    .line 421
    if-eqz v2, :cond_19

    .line 422
    .line 423
    new-instance v1, Lnet/fortuna/ical4j/model/Date;

    .line 424
    .line 425
    invoke-direct {v1, v4, v5}, Lnet/fortuna/ical4j/model/Date;-><init>(J)V

    .line 426
    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_19
    new-instance v6, Lnet/fortuna/ical4j/model/DateTime;

    .line 430
    .line 431
    invoke-direct {v6, v4, v5}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 432
    .line 433
    .line 434
    if-eqz v1, :cond_1a

    .line 435
    .line 436
    invoke-virtual {v6, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 437
    .line 438
    .line 439
    :cond_1a
    move-object v1, v6

    .line 440
    :goto_c
    new-instance v4, Lnet/fortuna/ical4j/model/property/Due;

    .line 441
    .line 442
    invoke-direct {v4, v1}, Lnet/fortuna/ical4j/model/property/Due;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v4}, Lat/bitfire/ical4android/Task;->setDue(Lnet/fortuna/ical4j/model/property/Due;)V

    .line 446
    .line 447
    .line 448
    :cond_1b
    const-string v1, "duration"

    .line 449
    .line 450
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    if-eqz v1, :cond_1c

    .line 455
    .line 456
    sget-object v4, Lat/bitfire/ical4android/DateUtils;->INSTANCE:Lat/bitfire/ical4android/DateUtils;

    .line 457
    .line 458
    invoke-virtual {v4, v1}, Lat/bitfire/ical4android/DateUtils;->fixDuration(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    new-instance v4, Lnet/fortuna/ical4j/model/property/Duration;

    .line 463
    .line 464
    invoke-direct {v4, v3, v1}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v4}, Lat/bitfire/ical4android/Task;->setDuration(Lnet/fortuna/ical4j/model/property/Duration;)V

    .line 468
    .line 469
    .line 470
    :cond_1c
    const-string v1, "rdate"

    .line 471
    .line 472
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    if-eqz v1, :cond_1d

    .line 477
    .line 478
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getRDates()Ljava/util/LinkedList;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    sget-object v4, Lat/bitfire/ical4android/DateUtils;->INSTANCE:Lat/bitfire/ical4android/DateUtils;

    .line 483
    .line 484
    const-class v5, Lnet/fortuna/ical4j/model/property/RDate;

    .line 485
    .line 486
    invoke-virtual {v4, v1, v5, v2}, Lat/bitfire/ical4android/DateUtils;->androidStringToRecurrenceSet(Ljava/lang/String;Ljava/lang/Class;Z)Lnet/fortuna/ical4j/model/property/DateListProperty;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    :cond_1d
    const-string v1, "exdate"

    .line 494
    .line 495
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    if-eqz v1, :cond_1e

    .line 500
    .line 501
    invoke-virtual {v0}, Lat/bitfire/ical4android/Task;->getExDates()Ljava/util/LinkedList;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    sget-object v4, Lat/bitfire/ical4android/DateUtils;->INSTANCE:Lat/bitfire/ical4android/DateUtils;

    .line 506
    .line 507
    const-class v5, Lnet/fortuna/ical4j/model/property/ExDate;

    .line 508
    .line 509
    invoke-virtual {v4, v1, v5, v2}, Lat/bitfire/ical4android/DateUtils;->androidStringToRecurrenceSet(Ljava/lang/String;Ljava/lang/Class;Z)Lnet/fortuna/ical4j/model/property/DateListProperty;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    :cond_1e
    const-string v1, "rrule"

    .line 517
    .line 518
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    if-eqz p1, :cond_1f

    .line 523
    .line 524
    new-instance v1, Lnet/fortuna/ical4j/model/property/RRule;

    .line 525
    .line 526
    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/RRule;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/Task;->setRRule(Lnet/fortuna/ical4j/model/property/RRule;)V

    .line 530
    .line 531
    .line 532
    :cond_1f
    return-void

    .line 533
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 534
    .line 535
    const-string v0, "Required value was null."

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw p1
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public final setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
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

.method public final setTask(Lat/bitfire/ical4android/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/AndroidTask;->task:Lat/bitfire/ical4android/Task;

    .line 2
    .line 3
    return-void
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

.method protected final taskSyncURI(Z)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Lat/bitfire/ical4android/AndroidTaskList;->tasksSyncUri(Z)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "withAppendedId(taskList.\u2026cUri(loadProperties), id)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Required value was null."

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/ical4android/MiscUtils;->INSTANCE:Lat/bitfire/ical4android/MiscUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lat/bitfire/ical4android/MiscUtils;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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

.method public final update(Lat/bitfire/ical4android/Task;)Landroid/net/Uri;
    .locals 10

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lat/bitfire/ical4android/AndroidTask;->task:Lat/bitfire/ical4android/Task;

    .line 7
    .line 8
    new-instance p1, Lat/bitfire/ical4android/BatchOperation;

    .line 9
    .line 10
    iget-object v0, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 11
    .line 12
    invoke-virtual {v0}, Lat/bitfire/ical4android/AndroidTaskList;->getProvider()Lat/bitfire/ical4android/TaskProvider;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lat/bitfire/ical4android/TaskProvider;->getClient()Landroid/content/ContentProviderClient;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Lat/bitfire/ical4android/BatchOperation;-><init>(Landroid/content/ContentProviderClient;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p0, v0, v1, v2}, Lat/bitfire/ical4android/AndroidTask;->taskSyncURI$default(Lat/bitfire/ical4android/AndroidTask;ZILjava/lang/Object;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v3, "newUpdate(uri)"

    .line 35
    .line 36
    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v4, v1}, Lat/bitfire/ical4android/AndroidTask;->buildTask(Landroid/content/ContentProviderOperation$Builder;Z)V

    .line 40
    .line 41
    .line 42
    new-instance v9, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x6

    .line 47
    const/4 v8, 0x0

    .line 48
    move-object v3, v9

    .line 49
    invoke-direct/range {v3 .. v8}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v9}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lat/bitfire/ical4android/AndroidTask;->taskList:Lat/bitfire/ical4android/AndroidTaskList;

    .line 56
    .line 57
    invoke-virtual {v3}, Lat/bitfire/ical4android/AndroidTaskList;->tasksPropertiesSyncUri()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    new-array v1, v1, [Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, p0, Lat/bitfire/ical4android/AndroidTask;->id:Ljava/lang/Long;

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    aput-object v4, v1, v0

    .line 74
    .line 75
    const-string v0, "task_id=?"

    .line 76
    .line 77
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v0, "newDelete(taskList.tasks\u2026, arrayOf(id.toString()))"

    .line 82
    .line 83
    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v8, 0x6

    .line 91
    const/4 v9, 0x0

    .line 92
    move-object v4, v0

    .line 93
    invoke-direct/range {v4 .. v9}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidTask;->insertProperties(Lat/bitfire/ical4android/BatchOperation;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lat/bitfire/ical4android/BatchOperation;->commit()I

    .line 103
    .line 104
    .line 105
    return-object v2
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
