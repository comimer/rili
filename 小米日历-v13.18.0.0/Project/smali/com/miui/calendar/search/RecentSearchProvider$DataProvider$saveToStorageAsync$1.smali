.class final Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RecentSearchProvider.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lw7/p<",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/u;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/u;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.miui.calendar.search.RecentSearchProvider$DataProvider$saveToStorageAsync$1"
    f = "RecentSearchProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;


# direct methods
.method constructor <init>(Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;->this$0:Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;

    iget-object v0, p0, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;->this$0:Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;

    invoke-direct {p1, v0, p2}, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;-><init>(Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;->this$0:Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider$saveToStorageAsync$1;->this$0:Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;->a(Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v1, v1, [Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v0, [Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "key_recent_search_history"

    .line 38
    .line 39
    invoke-static {p1, v1, v0}, Lb2/a;->m(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
