.class final Lcom/android/calendar/syncer/SyncManager$performSync$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager$performSync$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lw7/p<",
        "-",
        "Lat/bitfire/dav4jvm/Response;",
        "-",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "+",
        "Lkotlin/u;",
        ">;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u000e\u001a\u00020\t\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u00042\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0006j\u0002`\nH\n\u00a2\u0006\u0004\u0008\u000c\u0010\r"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "Lkotlin/Function2;",
        "Lat/bitfire/dav4jvm/Response;",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "Lkotlin/u;",
        "Lat/bitfire/dav4jvm/DavResponseCallback;",
        "callback",
        "invoke",
        "(Lw7/p;)V",
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
.field final synthetic $furtherChanges:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $initialSync:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $syncState:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/calendar/syncer/model/SyncState;",
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
.method constructor <init>(Lcom/android/calendar/syncer/SyncManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;+TCollectionType;TRemoteType;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/calendar/syncer/model/SyncState;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$syncState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$initialSync:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$furtherChanges:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lw7/p;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->invoke(Lw7/p;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lw7/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->this$0:Lcom/android/calendar/syncer/SyncManager;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$syncState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/calendar/syncer/model/SyncState;

    invoke-virtual {v0, v1, p1}, Lcom/android/calendar/syncer/SyncManager;->Z(Lcom/android/calendar/syncer/model/SyncState;Lw7/p;)Lkotlin/Pair;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$syncState:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v2, Lcom/android/calendar/syncer/model/SyncState;->Companion:Lcom/android/calendar/syncer/model/SyncState$Companion;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lat/bitfire/dav4jvm/property/SyncToken;

    iget-object v4, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$initialSync:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/syncer/model/SyncState$Companion;->fromSyncToken(Lat/bitfire/dav4jvm/property/SyncToken;Ljava/lang/Boolean;)Lcom/android/calendar/syncer/model/SyncState;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$furtherChanges:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_0
    .catch Lat/bitfire/dav4jvm/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/exception/DavException;->getErrors()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lat/bitfire/dav4jvm/Error;->Companion:Lat/bitfire/dav4jvm/Error$Companion;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/Error$Companion;->getVALID_SYNC_TOKEN()Lat/bitfire/dav4jvm/Error;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "CalSync:D:SyncManager"

    const-string v1, "Sync token invalid, performing initial sync"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$initialSync:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 8
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v0}, Lcom/android/calendar/syncer/SyncManager;->s0()V

    .line 9
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->this$0:Lcom/android/calendar/syncer/SyncManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/calendar/syncer/SyncManager;->Z(Lcom/android/calendar/syncer/model/SyncState;Lw7/p;)Lkotlin/Pair;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$syncState:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v1, Lcom/android/calendar/syncer/model/SyncState;->Companion:Lcom/android/calendar/syncer/model/SyncState$Companion;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lat/bitfire/dav4jvm/property/SyncToken;

    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$initialSync:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/syncer/model/SyncState$Companion;->fromSyncToken(Lat/bitfire/dav4jvm/property/SyncToken;Ljava/lang/Boolean;)Lcom/android/calendar/syncer/model/SyncState;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;->$furtherChanges:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_0
    return-void

    .line 12
    :cond_0
    throw v0
.end method
