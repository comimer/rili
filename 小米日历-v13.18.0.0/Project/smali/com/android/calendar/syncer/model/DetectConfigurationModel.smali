.class public final Lcom/android/calendar/syncer/model/DetectConfigurationModel;
.super Landroidx/lifecycle/a;
.source "DetectConfigurationModel.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/model/DetectConfigurationModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0014R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001f\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/DetectConfigurationModel;",
        "Landroidx/lifecycle/a;",
        "Lcom/android/calendar/syncer/model/LoginModel;",
        "loginModel",
        "Lkotlin/u;",
        "detectConfiguration",
        "onCleared",
        "Ljava/lang/ref/WeakReference;",
        "Ljava/lang/Thread;",
        "detectionThread",
        "Ljava/lang/ref/WeakReference;",
        "Landroidx/lifecycle/u;",
        "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;",
        "result",
        "Landroidx/lifecycle/u;",
        "getResult",
        "()Landroidx/lifecycle/u;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Companion",
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
.field public static final Companion:Lcom/android/calendar/syncer/model/DetectConfigurationModel$Companion;

.field public static final TAG:Ljava/lang/String; = "CalSync:D:DetectConfigurationModel"


# instance fields
.field private detectionThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Landroidx/lifecycle/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/u<",
            "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/model/DetectConfigurationModel$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->Companion:Lcom/android/calendar/syncer/model/DetectConfigurationModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/lifecycle/u;

    .line 10
    .line 11
    invoke-direct {p1}, Landroidx/lifecycle/u;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->result:Landroidx/lifecycle/u;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static final synthetic access$setDetectionThread$p(Lcom/android/calendar/syncer/model/DetectConfigurationModel;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->detectionThread:Ljava/lang/ref/WeakReference;

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
.method public final detectConfiguration(Lcom/android/calendar/syncer/model/LoginModel;)V
    .locals 10

    .line 1
    const-string v0, "loginModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->result:Landroidx/lifecycle/u;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->detectionThread:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Thread;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v3

    .line 31
    :goto_0
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string p1, "CalSync:D:DetectConfigurationModel"

    .line 34
    .line 35
    const-string v1, "detection already running"

    .line 36
    .line 37
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->result:Landroidx/lifecycle/u;

    .line 41
    .line 42
    new-instance v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    sget-object v3, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_BLOCK:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    .line 46
    .line 47
    invoke-direct {v1, v2, v3}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;-><init>(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_1
    :try_start_1
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    monitor-exit v0

    .line 58
    const/4 v2, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    new-instance v7, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;

    .line 64
    .line 65
    invoke-direct {v7, p0, p1}, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;-><init>(Lcom/android/calendar/syncer/model/DetectConfigurationModel;Lcom/android/calendar/syncer/model/LoginModel;)V

    .line 66
    .line 67
    .line 68
    const/16 v8, 0x1f

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    invoke-static/range {v2 .. v9}, Lr7/a;->b(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILw7/a;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v0

    .line 77
    throw p1
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
.end method

.method public final getResult()Landroidx/lifecycle/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/u<",
            "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->result:Landroidx/lifecycle/u;

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

.method protected onCleared()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->result:Landroidx/lifecycle/u;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->detectionThread:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Thread;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v2, "CalSync:D:DetectConfigurationModel"

    .line 17
    .line 18
    const-string v3, "Aborting resource detection"

    .line 19
    .line 20
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->detectionThread:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0

    .line 35
    throw v1
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
