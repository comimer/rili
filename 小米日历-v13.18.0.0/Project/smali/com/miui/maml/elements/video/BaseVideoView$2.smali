.class Lcom/miui/maml/elements/video/BaseVideoView$2;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/video/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

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
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getDuration()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$500(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$600(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$700(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 37
    .line 38
    .line 39
    :cond_0
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
.end method
