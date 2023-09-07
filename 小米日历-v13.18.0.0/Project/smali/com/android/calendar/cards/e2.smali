.class public Lcom/android/calendar/cards/e2;
.super Lcom/android/calendar/cards/b;
.source "TodoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Ljava/util/List<",
        "Lr4/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/calendar/cards/e2;->f:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Lcom/android/calendar/cards/e2$a;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, p0, v0}, Lcom/android/calendar/cards/e2$a;-><init>(Lcom/android/calendar/cards/e2;Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/calendar/cards/e2;->h:Landroid/database/ContentObserver;

    .line 17
    .line 18
    sget-object p1, Lcom/android/calendar/cards/CardHelper;->c:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    new-instance v0, Lcom/android/calendar/cards/c2;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/calendar/cards/c2;-><init>(Lcom/android/calendar/cards/e2;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
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

.method public static synthetic k(Lcom/android/calendar/cards/e2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/cards/e2;->n()V

    return-void
.end method

.method private synthetic n()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/cards/e2;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lo4/a;->b:Landroid/net/Uri;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lcom/android/calendar/cards/e2;->h:Landroid/database/ContentObserver;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string v1, "Cal:D:TodoPresenter"

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
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
.method bridge synthetic b()Lcom/android/calendar/cards/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/e2;->l()Lcom/android/calendar/cards/b2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method c()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/e2;->m()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/e2;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
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

.method h()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/cards/e2;->f:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Lo4/b;->d(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/calendar/cards/e2;->f:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/calendar/settings/j;->l(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lq4/a;->a()Lq4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/calendar/cards/e2;->f:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lq4/a;->b(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_0
    iput-object v0, p0, Lcom/android/calendar/cards/e2;->g:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 37
    .line 38
    .line 39
    return-void
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

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/e2;->h:Landroid/database/ContentObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/cards/e2;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/calendar/cards/e2;->h:Landroid/database/ContentObserver;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/cards/b;->i()V

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method l()Lcom/android/calendar/cards/b2;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/cards/b2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/b2;-><init>(Ljava/util/Calendar;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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

.method m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/e2;->g:Ljava/util/List;

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
