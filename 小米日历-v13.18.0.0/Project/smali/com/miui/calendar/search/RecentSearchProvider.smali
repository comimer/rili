.class public final Lcom/miui/calendar/search/RecentSearchProvider;
.super Ljava/lang/Object;
.source "RecentSearchProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/search/RecentSearchProvider$a;,
        Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000c2\u00020\u0001:\u0002\u0003\rB\u0011\u0008\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0007\u001a\u00060\u0002R\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/miui/calendar/search/RecentSearchProvider;",
        "",
        "Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;",
        "a",
        "Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;",
        "c",
        "()Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;",
        "dataProvider",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "b",
        "DataProvider",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final b:Lcom/miui/calendar/search/RecentSearchProvider$a;

.field private static c:Lcom/miui/calendar/search/RecentSearchProvider;


# instance fields
.field private final a:Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/search/RecentSearchProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/search/RecentSearchProvider$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/search/RecentSearchProvider;->b:Lcom/miui/calendar/search/RecentSearchProvider$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;-><init>(Lcom/miui/calendar/search/RecentSearchProvider;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/miui/calendar/search/RecentSearchProvider;->a:Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;

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

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/calendar/search/RecentSearchProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a()Lcom/miui/calendar/search/RecentSearchProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/calendar/search/RecentSearchProvider;->c:Lcom/miui/calendar/search/RecentSearchProvider;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
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

.method public static final synthetic b(Lcom/miui/calendar/search/RecentSearchProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/miui/calendar/search/RecentSearchProvider;->c:Lcom/miui/calendar/search/RecentSearchProvider;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
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
.method public final c()Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/search/RecentSearchProvider;->a:Lcom/miui/calendar/search/RecentSearchProvider$DataProvider;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
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
