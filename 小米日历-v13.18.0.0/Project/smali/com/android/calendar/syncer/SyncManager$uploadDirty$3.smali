.class final Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager;->C0(Lcom/android/calendar/syncer/resource/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lat/bitfire/dav4jvm/DavResource;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u000b\u001a\u00020\u0008\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "Lat/bitfire/dav4jvm/DavResource;",
        "remote",
        "Lkotlin/u;",
        "invoke",
        "(Lat/bitfire/dav4jvm/DavResource;)V",
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
.field final synthetic $existingFileName:Ljava/lang/String;

.field final synthetic $local:Lcom/android/calendar/syncer/resource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResourceType;"
        }
    .end annotation
.end field

.field final synthetic $readTagsFromResponse:Lw7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/l<",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
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
.method constructor <init>(Lcom/android/calendar/syncer/resource/d;Ljava/lang/String;Lcom/android/calendar/syncer/SyncManager;Lw7/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResourceType;",
            "Ljava/lang/String;",
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;+TCollectionType;TRemoteType;>;",
            "Lw7/l<",
            "-",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$local:Lcom/android/calendar/syncer/resource/d;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$existingFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$readTagsFromResponse:Lw7/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/DavResource;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->invoke(Lat/bitfire/dav4jvm/DavResource;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/DavResource;)V
    .locals 9

    const-string v0, "remote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-interface {v0}, Lcom/android/calendar/syncer/resource/d;->d()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-interface {v0}, Lcom/android/calendar/syncer/resource/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uploading modified record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-interface {v1}, Lcom/android/calendar/syncer/resource/d;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$existingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (ETag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Schedule-Tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalSync:D:SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$local:Lcom/android/calendar/syncer/resource/d;

    invoke-virtual {v0, v1}, Lcom/android/calendar/syncer/SyncManager;->m(Lcom/android/calendar/syncer/resource/d;)Lokhttp3/z;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;->$readTagsFromResponse:Lw7/l;

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lat/bitfire/dav4jvm/DavResource;->put$default(Lat/bitfire/dav4jvm/DavResource;Lokhttp3/z;Ljava/lang/String;Ljava/lang/String;ZLw7/l;ILjava/lang/Object;)V

    return-void
.end method
