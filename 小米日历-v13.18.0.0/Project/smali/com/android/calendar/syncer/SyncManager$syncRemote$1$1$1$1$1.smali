.class final Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "TResourceType;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\n\u001a\u00020\u0007\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00018\u0000H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "local",
        "Lkotlin/u;",
        "invoke",
        "(Lcom/android/calendar/syncer/resource/d;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $$this$runBlocking:Lkotlinx/coroutines/k0;

.field final synthetic $nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $response:Lat/bitfire/dav4jvm/Response;

.field final synthetic $toDownload:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/calendar/syncer/SyncManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;TCollectionType;TRemoteType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lat/bitfire/dav4jvm/Response;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lat/bitfire/dav4jvm/Response;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lokhttp3/t;",
            ">;",
            "Lkotlinx/coroutines/k0;",
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;+TCollectionType;TRemoteType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$toDownload:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p7, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$$this$runBlocking:Lkotlinx/coroutines/k0;

    iput-object p8, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/resource/d;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->invoke(Lcom/android/calendar/syncer/resource/d;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lcom/android/calendar/syncer/resource/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResourceType;)V"
        }
    .end annotation

    const-string v0, "CalSync:D:SyncManager"

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been added remotely, queueing download"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$toDownload:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$$this$runBlocking:Lkotlinx/coroutines/k0;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->access$invokeSuspend$download(Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;Lokhttp3/t;)V

    .line 4
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/android/calendar/syncer/resource/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    const-class v3, Lat/bitfire/dav4jvm/property/GetETag;

    invoke-virtual {v2, v3}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object v2

    check-cast v2, Lat/bitfire/dav4jvm/property/GetETag;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/GetETag;->getETag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x29

    if-eqz v3, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has not been changed on server (ETag still "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 10
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has been changed on server (current ETag="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", last known ETag="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$toDownload:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$$this$runBlocking:Lkotlinx/coroutines/k0;

    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    invoke-virtual {v3}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;->access$invokeSuspend$download(Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;Lokhttp3/t;)V

    .line 12
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_0
    const/4 v0, 0x1

    .line 13
    invoke-interface {p1, v0}, Lcom/android/calendar/syncer/resource/d;->c(I)V

    :goto_1
    return-void

    .line 14
    :cond_2
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "Server didn\'t provide ETag"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    throw p1
.end method
