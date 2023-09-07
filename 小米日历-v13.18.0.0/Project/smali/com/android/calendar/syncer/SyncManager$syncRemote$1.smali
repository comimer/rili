.class final Lcom/android/calendar/syncer/SyncManager$syncRemote$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager;->y0(Lw7/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lw7/p<",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/u;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0008\u001a\u00020\u0007\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u0004*\u00020\u0006H\u008a@"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/u;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.android.calendar.syncer.SyncManager$syncRemote$1"
    f = "SyncManager.kt"
    l = {
        0x1dd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $listRemote:Lw7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/l<",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/syncer/SyncManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;TCollectionType;TRemoteType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw7/l;Lcom/android/calendar/syncer/SyncManager;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l<",
            "-",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;",
            "Lkotlin/u;",
            ">;",
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;+TCollectionType;TRemoteType;>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/syncer/SyncManager$syncRemote$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$listRemote:Lw7/l;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$download(Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;Lokhttp3/t;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->invokeSuspend$download(Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;Lokhttp3/t;)V

    return-void
.end method

.method private static final invokeSuspend$download(Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;Lokhttp3/t;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType::",
            "Lcom/android/calendar/syncer/resource/d<",
            "*>;CollectionType::",
            "Lcom/android/calendar/syncer/resource/b<",
            "+TResourceType;>;RemoteType:",
            "Lat/bitfire/dav4jvm/DavCollection;",
            ">(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lokhttp3/t;",
            ">;",
            "Lkotlinx/coroutines/k0;",
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;+TCollectionType;TRemoteType;>;",
            "Lokhttp3/t;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    if-nez p3, :cond_2

    .line 15
    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-lez p3, :cond_2

    .line 21
    .line 22
    new-instance p3, Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    new-instance v5, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$download$1;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {v5, p2, p3, v0}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$download$1;-><init>(Lcom/android/calendar/syncer/SyncManager;Ljava/util/LinkedList;Lkotlin/coroutines/c;)V

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x3

    .line 39
    const/4 v7, 0x0

    .line 40
    move-object v2, p1

    .line 41
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
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
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    new-instance v8, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$listRemote:Lw7/l;

    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;-><init>(Lw7/l;Lcom/android/calendar/syncer/SyncManager;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/c;)V

    iput-object p1, v8, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lkotlinx/coroutines/k0;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v1, p1

    .line 38
    check-cast v1, Lkotlinx/coroutines/k0;

    .line 39
    .line 40
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v13, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$listRemote:Lw7/l;

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    .line 50
    .line 51
    iget-object v6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    iget-object v7, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    iget-object v8, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    iget-object v11, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->$nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    move-object v3, v13

    .line 61
    move-object v9, p1

    .line 62
    move-object v10, v1

    .line 63
    invoke-direct/range {v3 .. v12}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;-><init>(Lw7/l;Lcom/android/calendar/syncer/SyncManager;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/c;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->L$1:Ljava/lang/Object;

    .line 69
    .line 70
    iput v2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->label:I

    .line 71
    .line 72
    invoke-static {v13, p0}, Lkotlinx/coroutines/l0;->b(Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-ne v2, v0, :cond_2

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_2
    move-object v0, p1

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-static {v0, v1, p1, v2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->invokeSuspend$download(Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;Lokhttp3/t;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 87
    .line 88
    return-object p1
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
