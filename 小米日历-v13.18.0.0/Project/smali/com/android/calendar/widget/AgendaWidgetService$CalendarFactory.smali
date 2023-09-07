.class public Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;
.super Landroid/content/BroadcastReceiver;
.source "AgendaWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/AgendaWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static k:J = 0x1499700L

.field private static l:Lcom/android/calendar/widget/a;

.field private static volatile m:Ljava/lang/Integer;

.field private static final n:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Resources;

.field private c:I

.field private d:Landroid/content/CursorLoader;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m:Ljava/lang/Integer;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->n:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->e:Landroid/os/Handler;

    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->e:Landroid/os/Handler;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->f:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b:Landroid/content/res/Resources;

    const-string p1, "appWidgetId"

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->g:I

    .line 7
    iget-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b:Landroid/content/res/Resources;

    const p2, 0x7f060047

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->h:I

    .line 8
    iget-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b:Landroid/content/res/Resources;

    const p2, 0x7f060048

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->i:I

    .line 9
    iget-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b:Landroid/content/res/Resources;

    const p2, 0x7f060046

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->j:I

    return-void
.end method

.method static synthetic a(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/content/CursorLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->d:Landroid/content/CursorLoader;

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

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->n:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method static synthetic c(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method static synthetic d()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m:Ljava/lang/Integer;

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

.method static synthetic e(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    sput-object p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m:Ljava/lang/Integer;

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

.method static synthetic f(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->c:I

    .line 2
    .line 3
    return p1
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

.method static synthetic g(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method static synthetic h(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->g:I

    .line 2
    .line 3
    return p1
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

.method static synthetic i(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->e:Landroid/os/Handler;

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

.method static synthetic j(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->n(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method protected static k(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/calendar/widget/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/widget/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/android/calendar/widget/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/widget/a;->a(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
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

.method private l(Lcom/android/calendar/widget/a;JLjava/lang/String;)J
    .locals 6

    .line 1
    invoke-static {p4}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->o(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p1, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    check-cast p4, Lcom/android/calendar/widget/a$b;

    .line 22
    .line 23
    iget-wide v2, p4, Lcom/android/calendar/widget/a$b;->i:J

    .line 24
    .line 25
    iget-wide v4, p4, Lcom/android/calendar/widget/a$b;->j:J

    .line 26
    .line 27
    cmp-long p4, p2, v2

    .line 28
    .line 29
    if-gez p4, :cond_1

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    cmp-long p4, p2, v4

    .line 37
    .line 38
    if-gez p4, :cond_0

    .line 39
    .line 40
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-wide v0
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

.method private m()Landroid/net/Uri;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x5265c00

    .line 6
    .line 7
    .line 8
    sub-long v4, v0, v2

    .line 9
    .line 10
    const-wide/32 v6, 0x240c8400

    .line 11
    .line 12
    .line 13
    add-long/2addr v0, v6

    .line 14
    add-long/2addr v0, v2

    .line 15
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_URI:Landroid/net/Uri;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, "/"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "/ "

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
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

.method private n(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;-><init>(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;ILjava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method private static o(Ljava/lang/String;)J
    .locals 5

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->M()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->q()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    add-int/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {v0, p0}, Lcom/miui/calendar/util/r0;->L(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->M()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->q()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    add-int/2addr p0, v2

    .line 43
    invoke-virtual {v0, p0}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    return-wide v0
    .line 64
    .line 65
.end method

.method private r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->E(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "visible=1"

    .line 13
    .line 14
    :goto_0
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static s(Landroid/widget/RemoteViews;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
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
.method public getCount()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/android/calendar/widget/a;->c:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getItemId(I)J
    .locals 7

    .line 1
    sget-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/calendar/widget/a;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->getCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/calendar/widget/a;->c:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/calendar/widget/a$c;

    .line 29
    .line 30
    iget v0, p1, Lcom/android/calendar/widget/a$c;->a:I

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget p1, p1, Lcom/android/calendar/widget/a$c;->b:I

    .line 35
    .line 36
    int-to-long v0, p1

    .line 37
    return-wide v0

    .line 38
    :cond_1
    sget-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 41
    .line 42
    iget p1, p1, Lcom/android/calendar/widget/a$c;->b:I

    .line 43
    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/calendar/widget/a$b;

    .line 49
    .line 50
    iget-wide v0, p1, Lcom/android/calendar/widget/a$b;->h:J

    .line 51
    .line 52
    const/16 v2, 0x20

    .line 53
    .line 54
    ushr-long v3, v0, v2

    .line 55
    .line 56
    xor-long/2addr v0, v3

    .line 57
    long-to-int v0, v0

    .line 58
    int-to-long v0, v0

    .line 59
    const-wide/16 v3, 0x1f

    .line 60
    .line 61
    add-long/2addr v0, v3

    .line 62
    mul-long/2addr v0, v3

    .line 63
    iget-wide v3, p1, Lcom/android/calendar/widget/a$b;->i:J

    .line 64
    .line 65
    ushr-long v5, v3, v2

    .line 66
    .line 67
    xor-long v2, v3, v5

    .line 68
    .line 69
    long-to-int p1, v2

    .line 70
    int-to-long v2, p1

    .line 71
    add-long/2addr v0, v2

    .line 72
    return-wide v0

    .line 73
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    .line 74
    .line 75
    return-wide v0
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
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0d0043

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    if-ltz v1, :cond_e

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    sget-object v2, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    new-instance v1, Landroid/widget/RemoteViews;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f0d0043

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    const-wide/16 v7, 0x0

    .line 38
    .line 39
    const-wide/16 v9, 0x0

    .line 40
    .line 41
    const/4 v11, 0x0

    .line 42
    invoke-static/range {v4 .. v11}, Lcom/android/calendar/widget/AgendaWidgetProvider;->c(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const v3, 0x7f0a0085

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_1
    iget-object v2, v2, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_d

    .line 60
    .line 61
    sget-object v2, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/calendar/widget/a;->c:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_2
    sget-object v2, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/android/calendar/widget/a;->c:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/calendar/widget/a$c;

    .line 82
    .line 83
    iget v2, v1, Lcom/android/calendar/widget/a$c;->a:I

    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    const-string v4, "setBackgroundResource"

    .line 87
    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    new-instance v2, Landroid/widget/RemoteViews;

    .line 91
    .line 92
    iget-object v5, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const v6, 0x7f0d0042

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    sget-object v5, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 105
    .line 106
    iget-object v5, v5, Lcom/android/calendar/widget/a;->e:Ljava/util/List;

    .line 107
    .line 108
    iget v6, v1, Lcom/android/calendar/widget/a$c;->b:I

    .line 109
    .line 110
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/android/calendar/widget/a$a;

    .line 115
    .line 116
    const v6, 0x7f0a01c7

    .line 117
    .line 118
    .line 119
    iget-object v5, v5, Lcom/android/calendar/widget/a$a;->b:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v2, v6, v3, v5}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->s(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget v1, v1, Lcom/android/calendar/widget/a$c;->b:I

    .line 125
    .line 126
    const v3, 0x7f0a0084

    .line 127
    .line 128
    .line 129
    if-nez v1, :cond_3

    .line 130
    .line 131
    sget-object v1, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 132
    .line 133
    iget-boolean v1, v1, Lcom/android/calendar/widget/a;->j:Z

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    const v1, 0x7f0806f0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_3
    const v1, 0x7f0806ef

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    :goto_0
    return-object v2

    .line 151
    :cond_4
    sget-object v2, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 152
    .line 153
    iget-object v2, v2, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 154
    .line 155
    iget v5, v1, Lcom/android/calendar/widget/a$c;->b:I

    .line 156
    .line 157
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lcom/android/calendar/widget/a$b;

    .line 162
    .line 163
    iget-boolean v5, v2, Lcom/android/calendar/widget/a$b;->k:Z

    .line 164
    .line 165
    if-eqz v5, :cond_5

    .line 166
    .line 167
    new-instance v5, Landroid/widget/RemoteViews;

    .line 168
    .line 169
    iget-object v6, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const v7, 0x7f0d025c

    .line 176
    .line 177
    .line 178
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_5
    new-instance v5, Landroid/widget/RemoteViews;

    .line 183
    .line 184
    iget-object v6, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 185
    .line 186
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    iget v7, v2, Lcom/android/calendar/widget/a$b;->a:I

    .line 191
    .line 192
    if-nez v7, :cond_6

    .line 193
    .line 194
    iget v7, v2, Lcom/android/calendar/widget/a$b;->c:I

    .line 195
    .line 196
    if-nez v7, :cond_6

    .line 197
    .line 198
    const v7, 0x7f0d0262

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_6
    const v7, 0x7f0d0261

    .line 203
    .line 204
    .line 205
    :goto_1
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    iget-boolean v8, v2, Lcom/android/calendar/widget/a$b;->k:Z

    .line 213
    .line 214
    const v9, 0x7f0806ed

    .line 215
    .line 216
    .line 217
    const v10, 0x7f0a06fa

    .line 218
    .line 219
    .line 220
    if-nez v8, :cond_7

    .line 221
    .line 222
    iget-wide v11, v2, Lcom/android/calendar/widget/a$b;->i:J

    .line 223
    .line 224
    cmp-long v8, v11, v6

    .line 225
    .line 226
    if-gtz v8, :cond_7

    .line 227
    .line 228
    iget-wide v11, v2, Lcom/android/calendar/widget/a$b;->j:J

    .line 229
    .line 230
    cmp-long v6, v6, v11

    .line 231
    .line 232
    if-gtz v6, :cond_7

    .line 233
    .line 234
    const v6, 0x7f0806ee

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v10, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_7
    invoke-virtual {v5, v10, v4, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    :goto_3
    iget-boolean v6, v2, Lcom/android/calendar/widget/a$b;->k:Z

    .line 245
    .line 246
    if-nez v6, :cond_9

    .line 247
    .line 248
    const v6, 0x7f0a06e6

    .line 249
    .line 250
    .line 251
    iget v7, v2, Lcom/android/calendar/widget/a$b;->a:I

    .line 252
    .line 253
    iget-object v8, v2, Lcom/android/calendar/widget/a$b;->b:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v5, v6, v7, v8}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->s(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const v6, 0x7f0a06f0

    .line 259
    .line 260
    .line 261
    iget v7, v2, Lcom/android/calendar/widget/a$b;->c:I

    .line 262
    .line 263
    iget-object v8, v2, Lcom/android/calendar/widget/a$b;->d:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v5, v6, v7, v8}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->s(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const v6, 0x7f0a0240

    .line 269
    .line 270
    .line 271
    iget-boolean v1, v1, Lcom/android/calendar/widget/a$c;->c:Z

    .line 272
    .line 273
    if-eqz v1, :cond_8

    .line 274
    .line 275
    move v1, v3

    .line 276
    goto :goto_4

    .line 277
    :cond_8
    const/16 v1, 0x8

    .line 278
    .line 279
    :goto_4
    invoke-virtual {v5, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 280
    .line 281
    .line 282
    :cond_9
    iget v1, v2, Lcom/android/calendar/widget/a$b;->e:I

    .line 283
    .line 284
    iget-object v6, v2, Lcom/android/calendar/widget/a$b;->f:Ljava/lang/String;

    .line 285
    .line 286
    const v7, 0x7f0a062d

    .line 287
    .line 288
    .line 289
    invoke-static {v5, v7, v1, v6}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->s(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const v1, 0x7f0a007d

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 296
    .line 297
    .line 298
    iget-object v3, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b:Landroid/content/res/Resources;

    .line 299
    .line 300
    iget-object v6, v2, Lcom/android/calendar/widget/a$b;->n:Ljava/lang/String;

    .line 301
    .line 302
    iget-object v8, v2, Lcom/android/calendar/widget/a$b;->o:Ljava/lang/String;

    .line 303
    .line 304
    iget-object v11, v2, Lcom/android/calendar/widget/a$b;->m:Ljava/lang/String;

    .line 305
    .line 306
    iget v12, v2, Lcom/android/calendar/widget/a$b;->l:I

    .line 307
    .line 308
    invoke-static {v3, v6, v8, v11, v12}, Lcom/android/calendar/common/Utils;->x(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    iget-boolean v6, v2, Lcom/android/calendar/widget/a$b;->k:Z

    .line 313
    .line 314
    if-eqz v6, :cond_b

    .line 315
    .line 316
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-static {v6}, Lcom/miui/calendar/util/x0;->s0(Landroid/content/Context;)Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-eqz v6, :cond_a

    .line 325
    .line 326
    invoke-virtual {v5, v10, v4, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_a
    iget-object v4, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b:Landroid/content/res/Resources;

    .line 331
    .line 332
    const v6, 0x7f0708e4

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    iget-object v6, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b:Landroid/content/res/Resources;

    .line 340
    .line 341
    const v8, 0x7f0708e1

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    sget-object v8, Lcom/android/calendar/common/Utils$DisplayType;->BORDER:Lcom/android/calendar/common/Utils$DisplayType;

    .line 349
    .line 350
    invoke-static {v3, v8}, Lcom/android/calendar/common/Utils;->z(ILcom/android/calendar/common/Utils$DisplayType;)I

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    sget-object v9, Lcom/android/calendar/common/Utils$DisplayType;->FILL:Lcom/android/calendar/common/Utils$DisplayType;

    .line 355
    .line 356
    invoke-static {v3, v9}, Lcom/android/calendar/common/Utils;->z(ILcom/android/calendar/common/Utils$DisplayType;)I

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    invoke-static {v4, v6, v8, v9}, Lcom/miui/calendar/util/x0;->L(IIII)Landroid/graphics/Bitmap;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v5, v1, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 365
    .line 366
    .line 367
    :goto_5
    invoke-virtual {v5, v7, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 368
    .line 369
    .line 370
    goto :goto_6

    .line 371
    :cond_b
    iget-object v4, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b:Landroid/content/res/Resources;

    .line 372
    .line 373
    const v6, 0x7f070220

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    invoke-static {v4, v3, v6}, Lcom/miui/calendar/util/x0;->n(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v5, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 385
    .line 386
    .line 387
    :goto_6
    iget-wide v3, v2, Lcom/android/calendar/widget/a$b;->i:J

    .line 388
    .line 389
    iget-wide v6, v2, Lcom/android/calendar/widget/a$b;->j:J

    .line 390
    .line 391
    iget-boolean v1, v2, Lcom/android/calendar/widget/a$b;->k:Z

    .line 392
    .line 393
    if-eqz v1, :cond_c

    .line 394
    .line 395
    iget-object v1, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 396
    .line 397
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    new-instance v8, Lcom/miui/calendar/util/r0;

    .line 402
    .line 403
    invoke-direct {v8}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-static {v8, v3, v4, v1}, Lcom/android/calendar/common/Utils;->e(Lcom/miui/calendar/util/r0;JLjava/lang/String;)J

    .line 407
    .line 408
    .line 409
    move-result-wide v3

    .line 410
    invoke-static {v8, v6, v7, v1}, Lcom/android/calendar/common/Utils;->e(Lcom/miui/calendar/util/r0;JLjava/lang/String;)J

    .line 411
    .line 412
    .line 413
    move-result-wide v6

    .line 414
    :cond_c
    move-wide v14, v3

    .line 415
    move-wide/from16 v16, v6

    .line 416
    .line 417
    iget-object v11, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 418
    .line 419
    iget-wide v12, v2, Lcom/android/calendar/widget/a$b;->h:J

    .line 420
    .line 421
    iget-boolean v1, v2, Lcom/android/calendar/widget/a$b;->k:Z

    .line 422
    .line 423
    move/from16 v18, v1

    .line 424
    .line 425
    invoke-static/range {v11 .. v18}, Lcom/android/calendar/widget/AgendaWidgetProvider;->c(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    iget v2, v2, Lcom/android/calendar/widget/a$b;->p:I

    .line 430
    .line 431
    const-string v3, "extra_key_event_type"

    .line 432
    .line 433
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5, v10, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 437
    .line 438
    .line 439
    return-object v5

    .line 440
    :cond_d
    :goto_7
    new-instance v1, Landroid/widget/RemoteViews;

    .line 441
    .line 442
    iget-object v2, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 443
    .line 444
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    const v3, 0x7f0d0044

    .line 449
    .line 450
    .line 451
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 452
    .line 453
    .line 454
    iget-object v4, v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 455
    .line 456
    const-wide/16 v5, 0x0

    .line 457
    .line 458
    const-wide/16 v7, 0x0

    .line 459
    .line 460
    const-wide/16 v9, 0x0

    .line 461
    .line 462
    const/4 v11, 0x0

    .line 463
    invoke-static/range {v4 .. v11}, Lcom/android/calendar/widget/AgendaWidgetProvider;->c(Landroid/content/Context;JJJZ)Landroid/content/Intent;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    const v3, 0x7f0a0086

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 471
    .line 472
    .line 473
    return-object v1

    .line 474
    :cond_e
    :goto_8
    const/4 v1, 0x0

    .line 475
    return-object v1
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

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->p(Ljava/lang/String;)V

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
.end method

.method public onDataSetChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->d:Landroid/content/CursorLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
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
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->q(Landroid/content/Loader;Landroid/database/Cursor;)V

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

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onReceive(): AgendaWidgetService received an intent. It was "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v0, "Cal:D:CalendarWidget"

    .line 23
    .line 24
    invoke-static {v0, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->f:Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    new-instance v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;-><init>(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 41
    .line 42
    .line 43
    return-void
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public p(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lg4/a;->c(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "Cal:D:CalendarWidget"

    .line 11
    .line 12
    const-string v1, "initLoader(): Querying for widget events"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v0, Landroid/content/CursorLoader;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 24
    .line 25
    sget-object v5, Lcom/android/calendar/widget/AgendaWidgetService;->a:[Ljava/lang/String;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const-string v8, "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 100"

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    move-object v6, p1

    .line 32
    invoke-direct/range {v2 .. v8}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->d:Landroid/content/CursorLoader;

    .line 36
    .line 37
    const-wide/16 v1, 0x1f4

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m:Ljava/lang/Integer;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    sget-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m:Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m:Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->c:I

    .line 64
    .line 65
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->d:Landroid/content/CursorLoader;

    .line 67
    .line 68
    iget v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->g:I

    .line 69
    .line 70
    invoke-virtual {p1, v0, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 71
    .line 72
    .line 73
    :try_start_1
    iget-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->d:Landroid/content/CursorLoader;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Loader;->startLoading()V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    const-string v0, "Cal:D:CalendarWidget"

    .line 81
    .line 82
    const-string v1, "initLoader"

    .line 83
    .line 84
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw v0
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

.method public q(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string p1, "Cal:D:CalendarWidget"

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onLoadComplete(): cursor.getCount():"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m:Ljava/lang/Integer;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string p2, "Cal:D:CalendarWidget"

    .line 40
    .line 41
    const-string v0, "onLoadComplete(): Got a closed cursor from onLoadComplete"

    .line 42
    .line 43
    invoke-static {p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :cond_1
    iget v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->c:I

    .line 49
    .line 50
    sget-object v1, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->m:Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eq v0, v1, :cond_2

    .line 57
    .line 58
    monitor-exit p1

    .line 59
    return-void

    .line 60
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iget-object v2, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {p2}, Lcom/android/calendar/common/Utils;->Q0(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    .line 71
    .line 72
    .line 73
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    iget-object v4, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v4, v3, v2}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->k(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/calendar/widget/a;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    sput-object v4, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    :try_start_2
    invoke-virtual {v3}, Landroid/database/AbstractCursor;->close()V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 88
    .line 89
    .line 90
    sget-object p2, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l:Lcom/android/calendar/widget/a;

    .line 91
    .line 92
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->l(Lcom/android/calendar/widget/a;JLjava/lang/String;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    cmp-long p2, v2, v0

    .line 97
    .line 98
    if-gez p2, :cond_4

    .line 99
    .line 100
    const-string p2, "Cal:D:CalendarWidget"

    .line 101
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v5, "Encountered bad trigger time "

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/widget/AgendaWidgetService;->a(JJ)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {p2, v2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-wide/32 v2, 0x1499700

    .line 127
    .line 128
    .line 129
    add-long/2addr v2, v0

    .line 130
    :cond_4
    iget-object p2, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 131
    .line 132
    const-string v0, "alarm"

    .line 133
    .line 134
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Landroid/app/AlarmManager;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/android/calendar/widget/AgendaWidgetProvider;->f(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 147
    .line 148
    .line 149
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    .line 151
    const/16 v4, 0x1f

    .line 152
    .line 153
    const/4 v5, 0x1

    .line 154
    if-lt v1, v4, :cond_5

    .line 155
    .line 156
    invoke-static {p2}, Lo1/b;->a(Landroid/app/AlarmManager;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_5

    .line 161
    .line 162
    const-string p2, "Cal:D:CalendarWidget"

    .line 163
    .line 164
    const-string v0, "Alarm can not schedule"

    .line 165
    .line 166
    invoke-static {p2, v0}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_5
    invoke-virtual {p2, v5, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 171
    .line 172
    .line 173
    :goto_0
    new-instance p2, Lcom/miui/calendar/util/r0;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-direct {p2, v0}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/miui/calendar/util/r0;->M()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v5}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 188
    .line 189
    .line 190
    move-result-wide v0

    .line 191
    sget-wide v2, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->k:J

    .line 192
    .line 193
    cmp-long v0, v0, v2

    .line 194
    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 200
    .line 201
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sget-wide v1, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->k:J

    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v5}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/miui/calendar/util/r0;->v()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->v()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-ne v1, v2, :cond_6

    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/miui/calendar/util/r0;->w()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->w()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eq v1, v0, :cond_7

    .line 235
    .line 236
    :cond_6
    new-instance v0, Landroid/content/Intent;

    .line 237
    .line 238
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 239
    .line 240
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->h0(Landroid/content/Context;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 248
    .line 249
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 257
    .line 258
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    .line 260
    .line 261
    :cond_7
    invoke-virtual {p2, v5}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 262
    .line 263
    .line 264
    move-result-wide v0

    .line 265
    sput-wide v0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->k:J

    .line 266
    .line 267
    :cond_8
    iget-object p2, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 268
    .line 269
    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    iget v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->g:I

    .line 274
    .line 275
    const/4 v1, -0x1

    .line 276
    const v2, 0x7f0a0281

    .line 277
    .line 278
    .line 279
    if-ne v0, v1, :cond_9

    .line 280
    .line 281
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a:Landroid/content/Context;

    .line 282
    .line 283
    invoke-static {v0}, Lcom/android/calendar/widget/AgendaWidgetProvider;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p2, v0, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_9
    invoke-virtual {p2, v0, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 296
    .line 297
    .line 298
    :goto_1
    monitor-exit p1

    .line 299
    return-void

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    if-eqz v3, :cond_a

    .line 302
    .line 303
    invoke-virtual {v3}, Landroid/database/AbstractCursor;->close()V

    .line 304
    .line 305
    .line 306
    :cond_a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 307
    .line 308
    .line 309
    throw v0

    .line 310
    :catchall_1
    move-exception p2

    .line 311
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    throw p2
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
.end method
