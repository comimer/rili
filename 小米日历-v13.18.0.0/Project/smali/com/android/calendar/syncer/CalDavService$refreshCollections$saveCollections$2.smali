.class final Lcom/android/calendar/syncer/CalDavService$refreshCollections$saveCollections$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CalDavService.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalDavService;->k(Lcom/android/calendar/syncer/model/CollectionDao;JLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/p<",
        "Lcom/android/calendar/syncer/model/Collection;",
        "Lcom/android/calendar/syncer/model/Collection;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/Collection;",
        "new",
        "old",
        "Lkotlin/u;",
        "invoke",
        "(Lcom/android/calendar/syncer/model/Collection;Lcom/android/calendar/syncer/model/Collection;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/calendar/syncer/CalDavService$refreshCollections$saveCollections$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$saveCollections$2;

    invoke-direct {v0}, Lcom/android/calendar/syncer/CalDavService$refreshCollections$saveCollections$2;-><init>()V

    sput-object v0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$saveCollections$2;->INSTANCE:Lcom/android/calendar/syncer/CalDavService$refreshCollections$saveCollections$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/model/Collection;

    check-cast p2, Lcom/android/calendar/syncer/model/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/CalDavService$refreshCollections$saveCollections$2;->invoke(Lcom/android/calendar/syncer/model/Collection;Lcom/android/calendar/syncer/model/Collection;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lcom/android/calendar/syncer/model/Collection;Lcom/android/calendar/syncer/model/Collection;)V
    .locals 1

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getForceReadOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/syncer/model/Collection;->setForceReadOnly(Z)V

    .line 3
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getSync()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/calendar/syncer/model/Collection;->setSync(Z)V

    return-void
.end method
