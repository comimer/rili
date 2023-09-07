.class public abstract Lcom/android/calendar/cards/b;
.super Ljava/lang/Object;
.source "AbsCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/calendar/cards/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/cards/m1<",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/android/calendar/cards/t;

.field protected d:Ljava/util/Calendar;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/cards/b;->a:Lcom/android/calendar/cards/m1;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/calendar/cards/b;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/calendar/cards/b;->e:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/calendar/cards/b;->c:Lcom/android/calendar/cards/t;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/calendar/cards/t;->t()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public static synthetic a(Lcom/android/calendar/cards/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/cards/b;->f()V

    return-void
.end method

.method private synthetic f()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/cards/b;->e:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/calendar/cards/b;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/calendar/cards/b;->a:Lcom/android/calendar/cards/m1;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/cards/b;->c:Lcom/android/calendar/cards/t;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->c()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/calendar/cards/t;->H(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/cards/b;->a:Lcom/android/calendar/cards/m1;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->b()Lcom/android/calendar/cards/m1;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/calendar/cards/b;->a:Lcom/android/calendar/cards/m1;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/cards/b;->a:Lcom/android/calendar/cards/m1;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->d()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/calendar/cards/m1;->a(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/calendar/cards/b;->c:Lcom/android/calendar/cards/t;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/calendar/cards/b;->a:Lcom/android/calendar/cards/m1;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/android/calendar/cards/t;->j(Lcom/android/calendar/cards/m1;)V

    .line 52
    .line 53
    .line 54
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


# virtual methods
.method abstract b()Lcom/android/calendar/cards/m1;
.end method

.method abstract c()I
.end method

.method abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method abstract e()Z
.end method

.method public g()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/calendar/cards/CardHelper;->d:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/calendar/cards/a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/calendar/cards/a;-><init>(Lcom/android/calendar/cards/b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

.method abstract h()V
.end method

.method public i()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/cards/b;->b:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/cards/b;->c:Lcom/android/calendar/cards/t;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/calendar/cards/b;->a:Lcom/android/calendar/cards/m1;

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
.end method

.method public j()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/cards/b;->e:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->h()V

    .line 5
    .line 6
    .line 7
    return-void
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
