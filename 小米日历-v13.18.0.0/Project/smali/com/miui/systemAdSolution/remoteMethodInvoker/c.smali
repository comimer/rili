.class Lcom/miui/systemAdSolution/remoteMethodInvoker/c;
.super Ljava/lang/Thread;
.source "RemoteMethodInvoker.java"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;


# direct methods
.method constructor <init>(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/c;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/c;->a:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
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
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/c;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->access$300(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/c;->a:Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/c;->b:Lcom/miui/systemAdSolution/remoteMethodInvoker/d;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
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
    const-string v1, "RemoteMethodInvoker"

    .line 18
    .line 19
    const-string v2, "invokeInNewThread: "

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
