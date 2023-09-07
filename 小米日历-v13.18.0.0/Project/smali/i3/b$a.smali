.class Li3/b$a;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Li3/b;


# direct methods
.method private constructor <init>(Li3/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li3/b$a;->a:Li3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li3/b;Li3/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Li3/b$a;-><init>(Li3/b;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Li3/b$a;->a:Li3/b;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Li3/b;->s0(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Li3/b$a$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Li3/b$a$a;-><init>(Li3/b$a;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Li3/b$a;->a:Li3/b;

    .line 12
    .line 13
    invoke-static {p2}, Li3/b;->n0(Li3/b;)Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Ljava/lang/Void;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    .line 22
    .line 23
    return-void
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

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Li3/b$a;->a:Li3/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Li3/b;->t0()V

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
