.class Lcom/miui/maml/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/SoundManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/SoundManager;


# direct methods
.method constructor <init>(Lcom/miui/maml/SoundManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 2
    .line 3
    new-instance v1, Landroid/media/SoundPool;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/16 v4, 0x64

    .line 9
    .line 10
    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/miui/maml/SoundManager;->access$002(Lcom/miui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/miui/maml/SoundManager;->access$000(Lcom/miui/maml/SoundManager;)Landroid/media/SoundPool;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/miui/maml/SoundManager;->access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-static {v1, v2}, Lcom/miui/maml/SoundManager;->access$202(Lcom/miui/maml/SoundManager;Z)Z

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/miui/maml/SoundManager;->access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v1
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
