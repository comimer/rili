.class public final Lcom/miui/calendar/search/SearchResultFragment$b;
.super Landroid/database/ContentObserver;
.source "SearchResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/search/SearchResultFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/miui/calendar/search/SearchResultFragment$b",
        "Landroid/database/ContentObserver;",
        "",
        "deliverSelfNotifications",
        "selfChange",
        "Lkotlin/u;",
        "onChange",
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
.field final synthetic a:Lcom/miui/calendar/search/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/calendar/search/SearchResultFragment;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$b;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 7

    .line 1
    const-string p1, "Cal:D:SearchResultFragment"

    .line 2
    .line 3
    const-string v0, "mEventObserver: onChange()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$b;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/miui/calendar/search/SearchResultFragment;->r(Lcom/miui/calendar/search/SearchResultFragment;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/miui/calendar/search/SearchResultFragment$b;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment;->p(Lcom/miui/calendar/search/SearchResultFragment;)Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$b;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/miui/calendar/search/SearchResultFragment;->q(Lcom/miui/calendar/search/SearchResultFragment;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$b;->a:Lcom/miui/calendar/search/SearchResultFragment;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/miui/calendar/search/SearchResultFragment;->r(Lcom/miui/calendar/search/SearchResultFragment;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x0

    .line 47
    const/16 v5, 0x8

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static/range {v0 .. v6}, Lcom/miui/calendar/search/SearchResultFragment;->z(Lcom/miui/calendar/search/SearchResultFragment;Ljava/util/Calendar;ILjava/lang/String;Ljava/lang/Runnable;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
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
