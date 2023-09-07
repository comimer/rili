.class final Lcom/android/calendar/syncer/SyncManager$performSync$1$1;
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

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lw7/p;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/SyncManager$performSync$1$1;->invoke(Lw7/p;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lw7/p;)V
    .locals 1
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
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$1$1;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/syncer/SyncManager;->W(Lw7/p;)V

    return-void
.end method
