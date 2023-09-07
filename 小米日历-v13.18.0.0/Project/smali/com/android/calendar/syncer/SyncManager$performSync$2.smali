.class final Lcom/android/calendar/syncer/SyncManager$performSync$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/q<",
        "Ljava/lang/Throwable;",
        "TResourceType;",
        "Lokhttp3/t;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u000e\u001a\u00020\u000b\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\n\u00a2\u0006\u0004\u0008\u000c\u0010\r"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "",
        "e",
        "local",
        "Lokhttp3/t;",
        "remote",
        "Lkotlin/u;",
        "invoke",
        "(Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V",
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

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$performSync$2;->this$0:Lcom/android/calendar/syncer/SyncManager;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lcom/android/calendar/syncer/resource/d;

    check-cast p3, Lokhttp3/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/syncer/SyncManager$performSync$2;->invoke(Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TResourceType;",
            "Lokhttp3/t;",
            ")V"
        }
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    :goto_0
    if-nez v0, :cond_4

    .line 4
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "CalSync:D:SyncManager"

    if-eqz v0, :cond_1

    const-string v0, "SSL handshake failed"

    .line 5
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$2;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/calendar/syncer/SyncManager;->c(Lcom/android/calendar/syncer/SyncManager;Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V

    goto :goto_1

    .line 8
    :cond_1
    instance-of v0, p1, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;

    if-eqz v0, :cond_2

    const-string p2, "Got 503 Service unavailable, trying again later"

    .line 9
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    check-cast p1, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;

    invoke-virtual {p1}, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;->getRetryAfter()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/calendar/syncer/SyncManager$performSync$2;->this$0:Lcom/android/calendar/syncer/SyncManager;

    .line 11
    invoke-virtual {p2}, Lcom/android/calendar/syncer/SyncManager;->V()Landroid/content/SyncResult;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p1, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p2, Landroid/content/SyncResult;->delayUntil:J

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$performSync$2;->this$0:Lcom/android/calendar/syncer/SyncManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/calendar/syncer/SyncManager;->c(Lcom/android/calendar/syncer/SyncManager;Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V

    :cond_3
    :goto_1
    return-void

    .line 13
    :cond_4
    throw p1
.end method
