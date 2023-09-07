.class final Lcom/android/calendar/syncer/SyncManager$performSync$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/SyncManager$performSync$1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\t\u001a\u00020\u0006\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "Lkotlin/u;",
        "invoke",
        "()V",
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
.field final synthetic this$0:Lcom/android/calendar/syncer/SyncManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;TCollectionType;TRemoteType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/SyncManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/syncer/SyncManager<",
            "TResourceType;+TCollectionType;TRemoteType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/syncer/SyncManager$performSync$1;->invoke()V

    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    const-string v0, "CalSync:D:SyncManager"

    const-string v1, "Preparing synchronization"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->h0()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "No reason to synchronize, aborting"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "Querying server capabilities"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->l0()Lcom/android/calendar/syncer/model/SyncState;

    move-result-object v1

    const-string v2, "Sending local deletes/updates to server"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v2}, Lcom/android/calendar/syncer/SyncManager;->i0()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v2}, Lcom/android/calendar/syncer/SyncManager;->D0()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 9
    :goto_1
    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v5}, Lcom/android/calendar/syncer/SyncManager;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "full_resync"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const-string v1, "Forcing re-synchronization of all entries"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->H()Lcom/android/calendar/syncer/resource/b;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/android/calendar/syncer/resource/b;->e(Lcom/android/calendar/syncer/model/SyncState;)V

    .line 12
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->H()Lcom/android/calendar/syncer/resource/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/syncer/resource/b;->d()V

    move-object v1, v6

    :cond_3
    if-nez v2, :cond_5

    .line 13
    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v5, v1}, Lcom/android/calendar/syncer/SyncManager;->z0(Lcom/android/calendar/syncer/model/SyncState;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "Remote collection didn\'t change, no reason to sync"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 15
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v5}, Lcom/android/calendar/syncer/SyncManager;->x0()Lcom/android/calendar/syncer/SyncManager$SyncAlgorithm;

    move-result-object v5

    sget-object v7, Lcom/android/calendar/syncer/SyncManager$performSync$1$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    const-string v7, "Saving sync state:"

    if-eq v5, v4, :cond_c

    const/4 v1, 0x2

    if-eq v5, v1, :cond_6

    goto/16 :goto_4

    .line 16
    :cond_6
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->H()Lcom/android/calendar/syncer/resource/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/syncer/resource/b;->b()Lcom/android/calendar/syncer/model/SyncState;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/calendar/syncer/model/SyncState;->getType()Lcom/android/calendar/syncer/model/SyncState$Type;

    move-result-object v2

    sget-object v8, Lcom/android/calendar/syncer/model/SyncState$Type;->SYNC_TOKEN:Lcom/android/calendar/syncer/model/SyncState$Type;

    if-ne v2, v8, :cond_7

    move v3, v4

    :cond_7
    if-eqz v3, :cond_8

    move-object v6, v1

    :cond_8
    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 17
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 18
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_9

    const-string v1, "Starting initial sync"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 21
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->s0()V

    goto :goto_3

    .line 22
    :cond_9
    check-cast v1, Lcom/android/calendar/syncer/model/SyncState;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/model/SyncState;->getInitialSync()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Continuing initial sync"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 25
    :cond_a
    :goto_3
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 26
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listing changes since "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    new-instance v2, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;

    invoke-direct {v2, v1, v5, v3, v4}, Lcom/android/calendar/syncer/SyncManager$performSync$1$2;-><init>(Lcom/android/calendar/syncer/SyncManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/syncer/SyncManager;->y0(Lw7/l;)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->H()Lcom/android/calendar/syncer/resource/b;

    move-result-object v1

    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/calendar/syncer/model/SyncState;

    invoke-interface {v1, v2}, Lcom/android/calendar/syncer/resource/b;->e(Lcom/android/calendar/syncer/model/SyncState;)V

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server has further changes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_b

    .line 32
    iget-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_e

    const-string v1, "Deleting local resources which are not on server (anymore)"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->e()V

    .line 35
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/calendar/syncer/model/SyncState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/android/calendar/syncer/model/SyncState;->setInitialSync(Ljava/lang/Boolean;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial sync completed, saving sync state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v0}, Lcom/android/calendar/syncer/SyncManager;->H()Lcom/android/calendar/syncer/resource/b;

    move-result-object v0

    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/calendar/syncer/model/SyncState;

    invoke-interface {v0, v1}, Lcom/android/calendar/syncer/resource/b;->e(Lcom/android/calendar/syncer/model/SyncState;)V

    goto :goto_4

    :cond_c
    const-string v3, "Sync algorithm: full listing as one result (PROPFIND/REPORT)"

    .line 38
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v3, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v3}, Lcom/android/calendar/syncer/SyncManager;->s0()V

    if-eqz v2, :cond_d

    .line 40
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-static {v1}, Lcom/android/calendar/syncer/SyncManager;->d(Lcom/android/calendar/syncer/SyncManager;)Lcom/android/calendar/syncer/model/SyncState;

    move-result-object v1

    :cond_d
    const-string v2, "Processing remote entries"

    .line 41
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    new-instance v3, Lcom/android/calendar/syncer/SyncManager$performSync$1$1;

    invoke-direct {v3, v2}, Lcom/android/calendar/syncer/SyncManager$performSync$1$1;-><init>(Lcom/android/calendar/syncer/SyncManager;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/syncer/SyncManager;->y0(Lw7/l;)V

    const-string v2, "Deleting entries which are not present remotely anymore"

    .line 43
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v2, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v2}, Lcom/android/calendar/syncer/SyncManager;->e()V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v0}, Lcom/android/calendar/syncer/SyncManager;->H()Lcom/android/calendar/syncer/resource/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/calendar/syncer/resource/b;->e(Lcom/android/calendar/syncer/model/SyncState;)V

    :cond_e
    :goto_4
    return-void
.end method
