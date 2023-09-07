.class Lpc/a;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lpc/k;


# instance fields
.field private final a:Lpc/j;

.field private final b:Lpc/c;


# direct methods
.method constructor <init>(Lpc/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpc/a;->b:Lpc/c;

    .line 5
    .line 6
    new-instance p1, Lpc/j;

    .line 7
    .line 8
    invoke-direct {p1}, Lpc/j;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lpc/a;->a:Lpc/j;

    .line 12
    .line 13
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
.end method


# virtual methods
.method public a(Lpc/p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lpc/i;->a(Lpc/p;Ljava/lang/Object;)Lpc/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lpc/a;->a:Lpc/j;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lpc/j;->a(Lpc/i;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lpc/a;->b:Lpc/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lpc/c;->d()Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
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
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpc/a;->a:Lpc/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/j;->b()Lpc/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lpc/a;->b:Lpc/c;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lpc/c;->g(Lpc/i;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "No pending post available"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
