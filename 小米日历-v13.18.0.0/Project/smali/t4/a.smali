.class public final Lt4/a;
.super Ljava/lang/Object;
.source "MiuiPullLoadRvHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/a$b;,
        Lt4/a$c;,
        Lt4/a$d;,
        Lt4/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0004\"#\u0006\u0007B\u001d\u0008\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\r\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u000e\u001a\u00020\u0002J\u0006\u0010\u000f\u001a\u00020\u0002J\u0006\u0010\u0010\u001a\u00020\u0002J\u0006\u0010\u0011\u001a\u00020\u0002J\u0016\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014J\u0016\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0018\u00a8\u0006$"
    }
    d2 = {
        "Lt4/a;",
        "",
        "Lkotlin/u;",
        "g",
        "Lkb/a$a;",
        "action",
        "c",
        "d",
        "Lmiuix/springback/view/SpringBackLayout;",
        "springBackLayout",
        "e",
        "Lt4/a$d;",
        "pullListener",
        "o",
        "l",
        "j",
        "k",
        "f",
        "",
        "index",
        "",
        "string",
        "h",
        "i",
        "",
        "enableLoadMore",
        "m",
        "enablePullRefresh",
        "n",
        "Lmiuix/recyclerview/widget/RecyclerView;",
        "mRecyclerView",
        "mPullListener",
        "<init>",
        "(Lmiuix/recyclerview/widget/RecyclerView;Lt4/a$d;)V",
        "a",
        "b",
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
.field public static final h:Lt4/a$a;


# instance fields
.field private a:Lt4/a$d;

.field private b:Lkb/c;

.field private final c:Lt4/a$b;

.field private final d:Lt4/a$c;

.field private e:Z

.field private f:Z

.field private final g:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt4/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt4/a$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lt4/a;->h:Lt4/a$a;

    return-void
.end method

.method public constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;Lt4/a$d;)V
    .locals 2

    const-string v0, "mRecyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lt4/a;->a:Lt4/a$d;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lt4/a;->e:Z

    .line 4
    iput-boolean p2, p0, Lt4/a;->f:Z

    .line 5
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lt4/a;->g:Landroid/util/SparseBooleanArray;

    .line 6
    new-instance p2, Lkb/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lkb/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lt4/a;->b:Lkb/c;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 8
    new-instance p1, Lt4/a$b;

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 9
    fill-array-data v1, :array_0

    .line 10
    invoke-direct {p1, p0, p2, v1}, Lt4/a$b;-><init>(Lt4/a;I[I)V

    iput-object p1, p0, Lt4/a;->c:Lt4/a$b;

    .line 11
    new-instance p1, Lt4/a$c;

    new-array p2, v0, [I

    .line 12
    fill-array-data p2, :array_1

    const/16 v0, 0xfa

    .line 13
    invoke-direct {p1, p0, v0, p2}, Lt4/a$c;-><init>(Lt4/a;I[I)V

    iput-object p1, p0, Lt4/a;->d:Lt4/a$c;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1204e6
        0x7f1204e9
        0x7f1204e8
        0x7f1204e7
    .end array-data

    :array_1
    .array-data 4
        0x7f1202f1
        0x7f120345
        0x7f1203bf
        0x7f120343
    .end array-data
.end method

.method public synthetic constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;Lt4/a$d;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lt4/a;-><init>(Lmiuix/recyclerview/widget/RecyclerView;Lt4/a$d;)V

    return-void
.end method

.method public static final synthetic a(Lt4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt4/a;->d()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method public static final synthetic b(Lt4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt4/a;->g()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method private final c(Lkb/a$a;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lt4/a;->b:Lkb/c;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lkb/c;->f(Lkb/a$a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lt4/a;->b:Lkb/c;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lkb/c;->e(Lkb/a$a;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt4/a;->g:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lt4/a;->g:Landroid/util/SparseBooleanArray;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "Cal:D:MiuiPullRecyclerViewHelper"

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v0, "checkPendingTask remove LoadAction"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lt4/a;->b:Lkb/c;

    .line 27
    .line 28
    iget-object v2, p0, Lt4/a;->c:Lt4/a$b;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lkb/b;->k(Lkb/a$a;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lt4/a;->g:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const-string v0, "checkPendingTask remove LoadUpAction "

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lt4/a;->b:Lkb/c;

    .line 48
    .line 49
    iget-object v1, p0, Lt4/a;->d:Lt4/a$c;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lkb/b;->k(Lkb/a$a;)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt4/a;->a:Lt4/a$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lt4/a$d;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
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
.method public final e(Lmiuix/springback/view/SpringBackLayout;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt4/a;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lt4/a;->c:Lt4/a$b;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lt4/a;->c(Lkb/a$a;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lt4/a;->e:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lt4/a;->d:Lt4/a$c;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lt4/a;->c(Lkb/a$a;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lt4/a;->b:Lkb/c;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lkb/b;->P(Lmiuix/springback/view/SpringBackLayout;)V

    .line 22
    .line 23
    .line 24
    return-void
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
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
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

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt4/a;->a:Lt4/a$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lt4/a$d;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
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

.method public final h(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt4/a;->c:Lt4/a$b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lkb/a$b;->m(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
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

.method public final i(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt4/a;->d:Lt4/a$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lkb/a$c;->p(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
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

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt4/a;->d:Lt4/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lkb/a$c;->o()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
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

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt4/a;->d:Lt4/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lkb/a$c;->n()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
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

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt4/a;->c:Lt4/a$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lkb/a$b;->l()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
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

.method public final m(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lt4/a;->e:Z

    .line 2
    .line 3
    iget-object p1, p0, Lt4/a;->b:Lkb/c;

    .line 4
    .line 5
    iget-object v0, p0, Lt4/a;->d:Lt4/a$c;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lkb/c;->f(Lkb/a$a;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "Cal:D:MiuiPullRecyclerViewHelper"

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-boolean p1, p0, Lt4/a;->e:Z

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lt4/a;->b:Lkb/c;

    .line 21
    .line 22
    invoke-virtual {p1}, Lkb/c;->j()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lt4/a;->g:Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 32
    .line 33
    .line 34
    const-string p1, "setEnableLoadMore false isActionRunning, addTo PendingTask"

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lt4/a;->b:Lkb/c;

    .line 41
    .line 42
    iget-object v0, p0, Lt4/a;->d:Lt4/a$c;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lkb/b;->k(Lkb/a$a;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string p1, "setEnableLoadMore contain, enable, clear loadMore"

    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lt4/a;->g:Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-boolean p1, p0, Lt4/a;->e:Z

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    const-string p1, "setEnableLoadMore addAction"

    .line 64
    .line 65
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lt4/a;->d:Lt4/a$c;

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lt4/a;->c(Lkb/a$a;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    return-void
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public final n(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lt4/a;->f:Z

    .line 2
    .line 3
    iget-object p1, p0, Lt4/a;->b:Lkb/c;

    .line 4
    .line 5
    iget-object v0, p0, Lt4/a;->c:Lt4/a$b;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lkb/c;->f(Lkb/a$a;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "Cal:D:MiuiPullRecyclerViewHelper"

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-boolean p1, p0, Lt4/a;->f:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lt4/a;->b:Lkb/c;

    .line 21
    .line 22
    invoke-virtual {p1}, Lkb/c;->j()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lt4/a;->g:Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lt4/a;->b:Lkb/c;

    .line 35
    .line 36
    iget-object v0, p0, Lt4/a;->c:Lt4/a$b;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lkb/b;->k(Lkb/a$a;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string p1, "setEnablePullRefresh contain, enable, clear refresh"

    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lt4/a;->g:Landroid/util/SparseBooleanArray;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-boolean p1, p0, Lt4/a;->f:Z

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const-string p1, "setEnablePullRefresh addAction"

    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lt4/a;->c:Lt4/a$b;

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lt4/a;->c(Lkb/a$a;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public final o(Lt4/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt4/a;->a:Lt4/a$d;

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
