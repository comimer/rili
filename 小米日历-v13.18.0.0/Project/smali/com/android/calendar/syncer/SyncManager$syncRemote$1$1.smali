.class final Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.android.calendar.syncer.SyncManager$syncRemote$1$1"
    f = "SyncManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$runBlocking:Lkotlinx/coroutines/k0;

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

.field final synthetic $toDownload:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

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
.method constructor <init>(Lw7/l;Lcom/android/calendar/syncer/SyncManager;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/c;)V
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
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lokhttp3/t;",
            ">;",
            "Lkotlinx/coroutines/k0;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$listRemote:Lw7/l;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$toDownload:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p7, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$$this$runBlocking:Lkotlinx/coroutines/k0;

    iput-object p8, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 11
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

    new-instance v10, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$listRemote:Lw7/l;

    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$toDownload:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v7, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$$this$runBlocking:Lkotlinx/coroutines/k0;

    iget-object v8, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;-><init>(Lw7/l;Lcom/android/calendar/syncer/SyncManager;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/c;)V

    iput-object p1, v10, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->L$0:Ljava/lang/Object;

    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    check-cast v1, Lkotlinx/coroutines/k0;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$listRemote:Lw7/l;

    .line 17
    .line 18
    new-instance v9, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    iget-object v6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$toDownload:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    .line 30
    iget-object v7, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$$this$runBlocking:Lkotlinx/coroutines/k0;

    .line 31
    .line 32
    iget-object v8, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->$nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    move-object v0, v9

    .line 35
    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;-><init>(Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v9}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
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
.end method
