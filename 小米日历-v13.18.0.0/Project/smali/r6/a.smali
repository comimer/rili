.class public Lr6/a;
.super Landroid/os/AsyncTask;
.source "BgTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr6/a$b;,
        Lr6/a$d;,
        Lr6/a$a;,
        Lr6/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lr6/a$c<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lx5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx5/d<",
            "Lr6/a$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Lx5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx5/d<",
            "Lr6/a$d<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Lx5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx5/d<",
            "Lr6/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr6/a$a;Lr6/a$d;Lr6/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/a$a<",
            "TT;>;",
            "Lr6/a$d<",
            "TT;>;",
            "Lr6/a$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx5/d;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lx5/d;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr6/a;->a:Lx5/d;

    .line 10
    .line 11
    new-instance p1, Lx5/d;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lx5/d;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lr6/a;->b:Lx5/d;

    .line 17
    .line 18
    new-instance p1, Lx5/d;

    .line 19
    .line 20
    invoke-direct {p1, p3}, Lx5/d;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lr6/a;->c:Lx5/d;

    .line 24
    .line 25
    return-void
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
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr6/a;->a:Lx5/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lx5/d;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lr6/a;->b:Lx5/d;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lx5/d;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lr6/a;->c:Lx5/d;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lx5/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method

.method protected varargs b([Ljava/lang/Void;)Lr6/a$c;
    .locals 2

    .line 1
    iget-object p1, p0, Lr6/a;->a:Lx5/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lx5/d;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lr6/a$a;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lr6/a$c;

    .line 13
    .line 14
    invoke-interface {p1}, Lr6/a$a;->run()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v1, p1, v0}, Lr6/a$c;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    new-instance v1, Lr6/a$c;

    .line 24
    .line 25
    invoke-direct {v1, v0, p1}, Lr6/a$c;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    new-instance p1, Lr6/a$c;

    .line 30
    .line 31
    invoke-direct {p1, v0, v0}, Lr6/a$c;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-object p1
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

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Lb7/r;->a()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

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

.method protected d(Lr6/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/a$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lr6/a$c;->b:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lr6/a;->b:Lx5/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lx5/d;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lr6/a$d;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lr6/a$c;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lr6/a$d;->a(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lr6/a;->c:Lx5/d;

    .line 22
    .line 23
    invoke-virtual {v0}, Lx5/d;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lr6/a$b;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p1, Lr6/a$c;->b:Ljava/lang/Throwable;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lr6/a$b;->a(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr6/a;->b([Ljava/lang/Void;)Lr6/a$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lr6/a$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr6/a;->d(Lr6/a$c;)V

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
.end method
