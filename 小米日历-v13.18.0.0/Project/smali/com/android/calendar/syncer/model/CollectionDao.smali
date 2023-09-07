.class public interface abstract Lcom/android/calendar/syncer/model/CollectionDao;
.super Ljava/lang/Object;
.source "CollectionDao.kt"

# interfaces
.implements Lcom/android/calendar/syncer/model/SyncableDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/syncer/model/SyncableDao<",
        "Lcom/android/calendar/syncer/model/Collection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\'J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\'J\u001e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\'J$\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\'J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\'J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0006\u001a\u00020\u0003H\'J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\'J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0002H\'J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0002H\'\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/CollectionDao;",
        "Lcom/android/calendar/syncer/model/SyncableDao;",
        "Lcom/android/calendar/syncer/model/Collection;",
        "",
        "id",
        "get",
        "serviceId",
        "",
        "getByService",
        "",
        "type",
        "getByServiceAndType",
        "Landroidx/paging/b$b;",
        "",
        "pageByServiceAndType",
        "getByServiceAndSync",
        "Landroidx/lifecycle/LiveData;",
        "",
        "observeHasSyncByService",
        "getSyncCalendars",
        "collection",
        "Lkotlin/u;",
        "insertOrReplace",
        "insert",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract get(J)Lcom/android/calendar/syncer/model/Collection;
.end method

.method public abstract getByService(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByServiceAndSync(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByServiceAndType(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncCalendars(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/android/calendar/syncer/model/Collection;)V
.end method

.method public abstract insertOrReplace(Lcom/android/calendar/syncer/model/Collection;)V
.end method

.method public abstract observeHasSyncByService(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pageByServiceAndType(JLjava/lang/String;)Landroidx/paging/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroidx/paging/b$b<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end method
