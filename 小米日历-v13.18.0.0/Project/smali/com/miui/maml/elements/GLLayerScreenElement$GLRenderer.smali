.class Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;
.super Ljava/lang/Object;
.source "GLLayerScreenElement.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
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

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    int-to-double v0, p2

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    int-to-double p2, p3

    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
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

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
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
