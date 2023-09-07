.class final Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
.super Lcom/miui/maml/MamlDisplayEventReceiver;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/RenderVsyncUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;-><init>(Landroid/os/Looper;)V

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
.method public onVsync(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/miui/maml/RenderVsyncUpdater;->access$222(Lcom/miui/maml/RenderVsyncUpdater;J)J

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/miui/maml/RenderVsyncUpdater;->access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-wide/32 v2, 0xf4240

    .line 25
    .line 26
    .line 27
    div-long/2addr p1, v2

    .line 28
    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 29
    .line 30
    .line 31
    return-void
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

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$200(Lcom/miui/maml/RenderVsyncUpdater;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$100(Lcom/miui/maml/RenderVsyncUpdater;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
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
