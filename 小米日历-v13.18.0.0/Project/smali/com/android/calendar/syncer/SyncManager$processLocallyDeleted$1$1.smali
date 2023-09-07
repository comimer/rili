.class final Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;->invoke(Lcom/android/calendar/syncer/resource/d;)Ljava/lang/Long;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u000b\u001a\u00020\u0008\"\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u0000\"\u0010\u0008\u0001\u0010\u0003 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0002\u0010\u0005*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
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
        "",
        "invoke",
        "(Lat/bitfire/dav4jvm/DavResource;)Ljava/lang/Integer;",
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
.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $lastETag:Ljava/lang/String;

.field final synthetic $lastScheduleTag:Ljava/lang/String;

.field final synthetic $numDeleted:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->$lastETag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->$lastScheduleTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->$numDeleted:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->$fileName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lat/bitfire/dav4jvm/DavResource;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "remote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->$lastETag:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->$lastScheduleTag:Ljava/lang/String;

    sget-object v2, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1$1;->INSTANCE:Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1$1;

    invoke-virtual {p1, v0, v1, v2}, Lat/bitfire/dav4jvm/DavResource;->delete(Ljava/lang/String;Ljava/lang/String;Lw7/l;)V

    .line 3
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->$numDeleted:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_0
    .catch Lat/bitfire/dav4jvm/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t delete "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from server; ignoring (may be downloaded again)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalSync:D:SyncManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/DavResource;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1$1;->invoke(Lat/bitfire/dav4jvm/DavResource;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
