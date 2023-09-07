.class Landroidx/room/i$e;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/i;


# direct methods
.method constructor <init>(Landroidx/room/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/i$e;->a:Landroidx/room/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/i$e;->a:Landroidx/room/i;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/room/i;->d:Landroidx/room/h;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/room/i;->e:Landroidx/room/h$c;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/room/h;->j(Landroidx/room/h$c;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Landroidx/room/i$e;->a:Landroidx/room/i;

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/room/i;->f:Landroidx/room/f;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/room/i;->h:Landroidx/room/e;

    .line 17
    .line 18
    iget v0, v0, Landroidx/room/i;->c:I

    .line 19
    .line 20
    invoke-interface {v1, v2, v0}, Landroidx/room/f;->h0(Landroidx/room/e;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v1, "ROOM"

    .line 26
    .line 27
    const-string v2, "Cannot unregister multi-instance invalidation callback"

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/room/i$e;->a:Landroidx/room/i;

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/room/i;->a:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v0, v0, Landroidx/room/i;->j:Landroid/content/ServiceConnection;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 39
    .line 40
    .line 41
    return-void
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
