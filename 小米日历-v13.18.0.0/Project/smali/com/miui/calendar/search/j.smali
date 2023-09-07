.class public final Lcom/miui/calendar/search/j;
.super Lfb/f;
.source "SearchHistoryFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/miui/calendar/search/j;",
        "Lfb/f;",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/u;",
        "onAttach",
        "<init>",
        "()V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/calendar/search/j;->d:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lfb/f;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/search/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lfb/f;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/miui/calendar/search/RecentSearchProvider;->b:Lcom/miui/calendar/search/RecentSearchProvider$a;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/miui/calendar/search/RecentSearchProvider$a;->a(Landroid/content/Context;)Lcom/miui/calendar/search/RecentSearchProvider;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/miui/calendar/search/RecentSearchProvider;->c()Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lfb/f;->k(Lfb/i;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lfb/f;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/calendar/search/j;->n()V

    return-void
.end method
