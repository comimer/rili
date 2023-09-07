.class final Lcom/android/calendar/syncer/resource/DavResourceFinder$providesService$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DavResourceFinder.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/resource/DavResourceFinder;->x(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/p<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lokhttp3/a0;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "",
        "",
        "capabilities",
        "Lokhttp3/a0;",
        "<anonymous parameter 1>",
        "Lkotlin/u;",
        "invoke",
        "(Ljava/util/Set;Lokhttp3/a0;)V",
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
.field final synthetic $provided:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $service:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$providesService$1;->$service:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

    iput-object p2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$providesService$1;->$provided:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    check-cast p2, Lokhttp3/a0;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder$providesService$1;->invoke(Ljava/util/Set;Lokhttp3/a0;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Ljava/util/Set;Lokhttp3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/a0;",
            ")V"
        }
    .end annotation

    const-string v0, "capabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$providesService$1;->$service:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

    sget-object v0, Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;->CALDAV:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

    if-ne p2, v0, :cond_0

    const-string p2, "calendar-access"

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$providesService$1;->$provided:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_0
    return-void
.end method
