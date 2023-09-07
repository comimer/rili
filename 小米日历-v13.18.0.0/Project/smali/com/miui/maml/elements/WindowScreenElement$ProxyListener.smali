.class Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Lcom/miui/maml/elements/WindowScreenElement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/WindowScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/WindowScreenElement;->access$200(Lcom/miui/maml/elements/WindowScreenElement;)Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 8
    .line 9
    .line 10
    return-void
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

.method public forceUpdate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 10
    .line 11
    .line 12
    return-void
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

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

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

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

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

.method public tick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

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

.method public triggerUpdate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 10
    .line 11
    .line 12
    return-void
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
