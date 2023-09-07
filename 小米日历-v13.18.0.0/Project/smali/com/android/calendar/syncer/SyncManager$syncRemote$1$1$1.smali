.class final Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/p<",
        "Lat/bitfire/dav4jvm/Response;",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\r\u001a\u00020\n\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "Lat/bitfire/dav4jvm/Response;",
        "response",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "relation",
        "Lkotlin/u;",
        "invoke",
        "(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V",
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
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/k0;

.field final synthetic $$this$runBlocking:Lkotlinx/coroutines/k0;

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

.field final synthetic this$0:Lcom/android/calendar/syncer/SyncManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;TCollectionType;TRemoteType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/k0;Lcom/android/calendar/syncer/SyncManager;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
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
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/k0;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$toDownload:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p7, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$$this$runBlocking:Lkotlinx/coroutines/k0;

    iput-object p8, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/Response;

    check-cast p2, Lat/bitfire/dav4jvm/Response$HrefRelation;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V
    .locals 13

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lat/bitfire/dav4jvm/Response$HrefRelation;->MEMBER:Lat/bitfire/dav4jvm/Response$HrefRelation;

    if-eq p2, v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-class p2, Lat/bitfire/dav4jvm/property/ResourceType;

    invoke-virtual {p1, p2}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object p2

    check-cast p2, Lat/bitfire/dav4jvm/property/ResourceType;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lat/bitfire/dav4jvm/property/ResourceType;->getTypes()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v2, Lat/bitfire/dav4jvm/property/ResourceType;->Companion:Lat/bitfire/dav4jvm/property/ResourceType$Companion;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/ResourceType$Companion;->getCOLLECTION()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->hrefName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found remote resource: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CalSync:D:SyncManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/k0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v12, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1;

    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iget-object v6, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$nInserted:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v7, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$nSkipped:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v8, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$nUpdated:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$toDownload:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v10, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$$this$runBlocking:Lkotlinx/coroutines/k0;

    const/4 v11, 0x0

    move-object v2, v12

    move-object v5, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$1;-><init>(Lcom/android/calendar/syncer/SyncManager;Ljava/lang/String;Lat/bitfire/dav4jvm/Response;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/LinkedBlockingQueue;Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v12

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->getStatus()Lvb/k;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p1, p1, Lvb/k;->b:I

    const/16 p2, 0x194

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 9
    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/k0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$2;

    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iget-object p2, p0, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1;->$nDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v8, p1, v4, p2, v0}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1$1$1$2;-><init>(Lcom/android/calendar/syncer/SyncManager;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    :cond_5
    :goto_2
    return-void
.end method
