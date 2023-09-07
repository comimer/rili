.class final Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager;->i0()Z
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0010\n\u001a\u00020\u0007\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "it",
        "",
        "invoke",
        "(Lcom/android/calendar/syncer/resource/d;)Ljava/lang/Long;",
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
.field final synthetic $local:Lcom/android/calendar/syncer/resource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResourceType;"
        }
    .end annotation
.end field

.field final synthetic $numDeleted:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/android/calendar/syncer/SyncManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;TCollectionType;TRemoteType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/resource/d;Lcom/android/calendar/syncer/SyncManager;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResourceType;",
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;+TCollectionType;TRemoteType;>;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->$local:Lcom/android/calendar/syncer/resource/d;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->$numDeleted:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/calendar/syncer/resource/d;)Ljava/lang/Long;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResourceType;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-interface {p1}, Lcom/android/calendar/syncer/resource/d;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalSync:D:SyncManager"

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-interface {v1}, Lcom/android/calendar/syncer/resource/d;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-interface {v2}, Lcom/android/calendar/syncer/resource/d;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has been deleted locally -> deleting from server (ETag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / schedule-tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    new-instance v9, Lat/bitfire/dav4jvm/DavResource;

    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v3}, Lcom/android/calendar/syncer/SyncManager;->E()Lcom/android/calendar/syncer/net/CalDavHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d()Lokhttp3/x;

    move-result-object v4

    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v3}, Lcom/android/calendar/syncer/SyncManager;->s()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/t;->j()Lokhttp3/t$a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lokhttp3/t$a;->b(Ljava/lang/String;)Lokhttp3/t$a;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/t$a;->d()Lokhttp3/t;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    new-instance v3, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;

    iget-object v4, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->$numDeleted:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3, v2, v1, v4, p1}, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v3}, Lcom/android/calendar/syncer/SyncManager;->q0(Lat/bitfire/dav4jvm/DavResource;Lw7/l;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing local record #"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-interface {v1}, Lcom/android/calendar/syncer/resource/d;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which has been deleted locally and was never uploaded"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-interface {p1}, Lcom/android/calendar/syncer/resource/d;->delete()I

    .line 9
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {p1}, Lcom/android/calendar/syncer/SyncManager;->V()Landroid/content/SyncResult;

    move-result-object p1

    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p1, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p1, Landroid/content/SyncStats;->numDeletes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/resource/d;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->invoke(Lcom/android/calendar/syncer/resource/d;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
