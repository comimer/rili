.class public Lcom/miui/maml/elements/GLLayerScreenElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;,
        Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML GLLayerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "GLLayer"


# instance fields
.field private mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

.field private mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

.field private mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

.field private mView:Landroid/opengl/GLSurfaceView;

.field private mViewVar:Lcom/miui/maml/data/IndexedVariable;

.field private mWVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 5
    .line 6
    .line 7
    return-void
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

.method static synthetic access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method static synthetic access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method static synthetic access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method static synthetic access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method static synthetic access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method static synthetic access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method static synthetic access$700(Lcom/miui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    new-instance p1, Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 15
    .line 16
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    float-to-int v0, v0

    .line 25
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    float-to-int v1, v1

    .line 32
    invoke-direct {p1, v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 39
    .line 40
    const/16 v1, 0x100

    .line 41
    .line 42
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    .line 44
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 45
    .line 46
    new-instance v1, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, p0, v2}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    move p1, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move p1, v0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    const-string v2, "create"

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 81
    .line 82
    const-string v2, "change"

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 91
    .line 92
    const-string v2, "draw"

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 99
    .line 100
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 101
    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    const-string p1, "GLLayerScreenElement"

    .line 105
    .line 106
    const-string v2, "no draw commands."

    .line 107
    .line 108
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 116
    .line 117
    const-string v3, "__objGLCanvas"

    .line 118
    .line 119
    invoke-direct {v2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 123
    .line 124
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 125
    .line 126
    const-string v3, "__objGLView"

    .line 127
    .line 128
    invoke-direct {v2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mViewVar:Lcom/miui/maml/data/IndexedVariable;

    .line 132
    .line 133
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 134
    .line 135
    const-string v2, "__w"

    .line 136
    .line 137
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 138
    .line 139
    .line 140
    iput-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 141
    .line 142
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 143
    .line 144
    const-string v2, "__h"

    .line 145
    .line 146
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 150
    .line 151
    return-void
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method


# virtual methods
.method protected doTick(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTickSelf(J)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateView()V

    .line 5
    .line 6
    .line 7
    return-void
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

.method protected getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mViewVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    .line 9
    .line 10
    .line 11
    return-void
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

.method protected onControllerCreated(Lcom/miui/maml/RendererController;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

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
