.class abstract Lfb/b;
.super Ljava/lang/Object;
.source "ListDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfb/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Holder:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lmiuix/recyclerview/widget/RecyclerView;

.field c:Lfb/i;

.field d:Landroid/widget/TextView;

.field private e:Lfb/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfb/b<",
            "THolder;>.b;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfb/b;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lfb/b;->c:Lfb/i;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lfb/b;->c(Lfb/i;)Landroidx/recyclerview/widget/RecyclerView$g;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private j(Lfb/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfb/b<",
            "THolder;>.b;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfb/b$b;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lfb/b;->e:Lfb/b$b;

    .line 8
    .line 9
    :cond_0
    return-void
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
.end method


# virtual methods
.method a(Lfb/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfb/b;->c:Lfb/i;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lfb/b;->c:Lfb/i;

    .line 6
    .line 7
    invoke-direct {p0}, Lfb/b;->f()V

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
.end method

.method b(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfb/b;->a:Landroid/content/Context;

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
.end method

.method abstract c(Lfb/i;)Landroidx/recyclerview/widget/RecyclerView$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfb/i;",
            ")",
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "THolder;>;"
        }
    .end annotation
.end method

.method abstract d()Landroidx/recyclerview/widget/RecyclerView$o;
.end method

.method abstract e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lfb/b;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    iput-object v0, p0, Lfb/b;->d:Landroid/widget/TextView;

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
.end method

.method abstract h(Ljava/lang/CharSequence;)V
.end method

.method i(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget p2, Leb/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p2, p0, Lfb/b;->d:Landroid/widget/TextView;

    .line 10
    .line 11
    const p2, 0x102000a

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    iput-object p1, p0, Lfb/b;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {p0}, Lfb/b;->d()Landroidx/recyclerview/widget/RecyclerView$o;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lfb/b;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    new-instance p2, Lbb/b;

    .line 32
    .line 33
    invoke-direct {p2}, Lbb/b;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lfb/b;->f()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lfb/b;->e:Lfb/b$b;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Lfb/b$b;->a()Z

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lfb/b;->e:Lfb/b$b;

    .line 51
    .line 52
    :cond_0
    return-void
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
.end method

.method k(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    new-instance v0, Lfb/b$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lfb/b$a;-><init>(Lfb/b;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lfb/b;->j(Lfb/b$b;)V

    .line 7
    .line 8
    .line 9
    return-void
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
.end method
