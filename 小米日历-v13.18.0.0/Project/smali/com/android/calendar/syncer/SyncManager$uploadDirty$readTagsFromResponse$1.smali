.class final Lcom/android/calendar/syncer/SyncManager$uploadDirty$readTagsFromResponse$1;
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
        "Lokhttp3/a0;",
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
        "Lokhttp3/a0;",
        "response",
        "Lkotlin/u;",
        "invoke",
        "(Lokhttp3/a0;)V",
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
.field final synthetic $eTag:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scheduleTag:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$readTagsFromResponse$1;->$eTag:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$readTagsFromResponse$1;->$scheduleTag:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/a0;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/SyncManager$uploadDirty$readTagsFromResponse$1;->invoke(Lokhttp3/a0;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lokhttp3/a0;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$readTagsFromResponse$1;->$eTag:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v1, Lat/bitfire/dav4jvm/property/GetETag;->Companion:Lat/bitfire/dav4jvm/property/GetETag$Companion;

    invoke-virtual {v1, p1}, Lat/bitfire/dav4jvm/property/GetETag$Companion;->fromResponse(Lokhttp3/a0;)Lat/bitfire/dav4jvm/property/GetETag;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/GetETag;->getETag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager$uploadDirty$readTagsFromResponse$1;->$scheduleTag:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v1, Lat/bitfire/dav4jvm/property/ScheduleTag;->Companion:Lat/bitfire/dav4jvm/property/ScheduleTag$Companion;

    invoke-virtual {v1, p1}, Lat/bitfire/dav4jvm/property/ScheduleTag$Companion;->fromResponse(Lokhttp3/a0;)Lat/bitfire/dav4jvm/property/ScheduleTag;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lat/bitfire/dav4jvm/property/ScheduleTag;->getScheduleTag()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
