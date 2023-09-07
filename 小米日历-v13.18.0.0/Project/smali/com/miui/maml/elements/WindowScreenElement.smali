.class public Lcom/miui/maml/elements/WindowScreenElement;
.super Lcom/miui/maml/elements/ElementGroupRC;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;,
        Lcom/miui/maml/elements/WindowScreenElement$WindowView;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Window"


# instance fields
.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

.field private mViewAdded:Z

.field private mWindowContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroupRC;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    .line 11
    .line 12
    new-instance p1, Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/elements/WindowScreenElement$WindowView;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v0, "window"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/view/WindowManager;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    .line 32
    .line 33
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    float-to-int v0, v0

    .line 40
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    float-to-int p2, p2

    .line 45
    invoke-direct {p1, v0, p2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 52
    .line 53
    const/16 p2, 0x100

    .line 54
    .line 55
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 56
    .line 57
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
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

.method static synthetic access$000(Lcom/miui/maml/elements/WindowScreenElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->addView()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method static synthetic access$100(Lcom/miui/maml/elements/WindowScreenElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->removeView()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method static synthetic access$200(Lcom/miui/maml/elements/WindowScreenElement;)Lcom/miui/maml/elements/WindowScreenElement$WindowView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

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

.method private final addView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    .line 16
    .line 17
    :cond_0
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private final removeView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroupRC;->init()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->addView()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
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
    new-instance v0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Lcom/miui/maml/elements/WindowScreenElement$1;)V

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

.method protected onVisibilityChange(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/miui/maml/elements/WindowScreenElement$1;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WindowScreenElement$1;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
