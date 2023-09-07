.class public interface abstract Lcom/android/calendar/syncer/model/ServiceDao;
.super Ljava/lang/Object;
.source "ServiceDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0008g\u0018\u00002\u00020\u0001J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\'J!\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u0007H\'J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c2\u0006\u0010\u0004\u001a\u00020\u0002H\'J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0005H\'J\u0008\u0010\u0011\u001a\u00020\u0010H\'J\u001d\u0010\u0014\u001a\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012H\'\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0002H\'\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/ServiceDao;",
        "",
        "",
        "accountName",
        "type",
        "Lcom/android/calendar/syncer/model/Service;",
        "getByAccountAndType",
        "",
        "getIdByAccountAndType",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;",
        "id",
        "get",
        "",
        "getByType",
        "service",
        "insertOrReplace",
        "Lkotlin/u;",
        "deleteAll",
        "",
        "accountNames",
        "deleteExceptAccounts",
        "([Ljava/lang/String;)V",
        "oldName",
        "newName",
        "renameAccount",
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
.method public abstract deleteAll()V
.end method

.method public abstract deleteExceptAccounts([Ljava/lang/String;)V
.end method

.method public abstract get(J)Lcom/android/calendar/syncer/model/Service;
.end method

.method public abstract getByAccountAndType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/syncer/model/Service;
.end method

.method public abstract getByType(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Service;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIdByAccountAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract insertOrReplace(Lcom/android/calendar/syncer/model/Service;)J
.end method

.method public abstract renameAccount(Ljava/lang/String;Ljava/lang/String;)V
.end method
