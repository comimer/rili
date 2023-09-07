.class Landroidx/room/i$c;
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
    iput-object p1, p0, Landroidx/room/i$c;->a:Landroidx/room/i;

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/i$c;->a:Landroidx/room/i;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/room/i;->f:Landroidx/room/f;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/room/i;->h:Landroidx/room/e;

    .line 8
    .line 9
    iget-object v3, v0, Landroidx/room/i;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v1, v2, v3}, Landroidx/room/f;->A(Landroidx/room/e;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Landroidx/room/i;->c:I

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/room/i$c;->a:Landroidx/room/i;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/room/i;->d:Landroidx/room/h;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/room/i;->e:Landroidx/room/h$c;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/room/h;->a(Landroidx/room/h$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "ROOM"

    .line 29
    .line 30
    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
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
