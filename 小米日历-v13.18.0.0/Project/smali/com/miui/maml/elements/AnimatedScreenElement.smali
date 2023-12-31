.class public abstract Lcom/miui/maml/elements/AnimatedScreenElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AnimatedScreenElement"

.field private static final S_PAINT_COLOR:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mActualYVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mAlpha:I

.field public mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

.field private mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

.field private mCamera:Landroid/graphics/Camera;

.field protected mContentDescription:Ljava/lang/String;

.field protected mContentDescriptionExp:Lcom/miui/maml/data/Expression;

.field private mFolmeMode:Z

.field protected mHasContentDescription:Z

.field public mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mListener:Lcom/miui/maml/folme/MamlTransitionListener;

.field private mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

.field private mMarginBottom:F

.field private mMarginLeft:F

.field private mMarginRight:F

.field private mMarginTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field public mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mPositions:Lcom/miui/maml/animation/PositionAnimation;

.field protected mPressed:Z

.field public mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mRotations:Lcom/miui/maml/animation/RotationAnimation;

.field private mScaleExpression:Lcom/miui/maml/data/Expression;

.field public mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mScales:Lcom/miui/maml/animation/ScaleAnimation;

.field private mSizes:Lcom/miui/maml/animation/SizeAnimation;

.field protected mTickListener:Lcom/miui/maml/elements/FunctionElement;

.field protected mTintChanged:Z

.field protected mTintColor:I

.field protected mTintColorParser:Lcom/miui/maml/util/ColorParser;

.field public mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected mTintMode:Landroid/graphics/PorterDuff$Mode;

.field protected mTintModeExp:Lcom/miui/maml/data/Expression;

.field public mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lmiuix/animation/property/b;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchable:Z

.field private mVirtualViewId:I

.field public mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mYProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    .line 11
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 17
    .line 18
    new-instance p2, Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 24
    .line 25
    new-instance p2, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/high16 p2, -0x80000000

    .line 33
    .line 34
    iput p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 35
    .line 36
    new-instance p2, Lcom/miui/maml/folme/MamlTransitionListener;

    .line 37
    .line 38
    invoke-direct {p2, p0}, Lcom/miui/maml/folme/MamlTransitionListener;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListener:Lcom/miui/maml/folme/MamlTransitionListener;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 44
    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    const/high16 p2, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 70
    .line 71
    const p2, -0x4c06f6

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 78
    .line 79
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListener:Lcom/miui/maml/folme/MamlTransitionListener;

    .line 80
    .line 81
    invoke-direct {p1, p2}, Lcom/miui/maml/folme/TransitionListenerWrapper;-><init>(Lcom/miui/maml/folme/MamlTransitionListener;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 85
    .line 86
    return-void
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

.method private createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p1, p3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2, p4}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    :cond_0
    return-object p3
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method private folmeFromToImpl(Le9/a;Le9/a;Ld9/a;)V
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
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$3;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement$3;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Le9/a;Le9/a;Ld9/a;)V

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

.method private folmeSetToImpl(Le9/a;)V
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
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$2;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement$2;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Le9/a;)V

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

.method private folmeToImpl(Le9/a;Ld9/a;)V
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
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$1;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement$1;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Le9/a;Ld9/a;)V

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

.method private handleCancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 12
    .line 13
    const-string v0, "cancel"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
    .line 22
.end method

.method private isInMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    return v0
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
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    const-string v3, "scale"

    .line 13
    .line 14
    invoke-direct {v0, v8, v1, v3, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iput-object v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 19
    .line 20
    const-string v3, "x"

    .line 21
    .line 22
    const-string v4, "left"

    .line 23
    .line 24
    invoke-direct {v0, v8, v1, v3, v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "y"

    .line 29
    .line 30
    const-string v5, "top"

    .line 31
    .line 32
    invoke-direct {v0, v8, v1, v4, v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "w"

    .line 37
    .line 38
    const-string v6, "width"

    .line 39
    .line 40
    invoke-direct {v0, v8, v1, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "h"

    .line 45
    .line 46
    const-string v7, "height"

    .line 47
    .line 48
    invoke-direct {v0, v8, v1, v6, v7}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v7, "angle"

    .line 53
    .line 54
    const-string v9, "rotation"

    .line 55
    .line 56
    invoke-direct {v0, v8, v1, v7, v9}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-string v9, "centerX"

    .line 61
    .line 62
    const-string v10, "pivotX"

    .line 63
    .line 64
    invoke-direct {v0, v8, v1, v9, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const-string v10, "centerY"

    .line 69
    .line 70
    const-string v11, "pivotY"

    .line 71
    .line 72
    invoke-direct {v0, v8, v1, v10, v11}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    const-string v11, "alpha"

    .line 77
    .line 78
    invoke-direct {v0, v8, v1, v11, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    const-string v12, "scaleX"

    .line 83
    .line 84
    invoke-direct {v0, v8, v1, v12, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    const-string v13, "scaleY"

    .line 89
    .line 90
    invoke-direct {v0, v8, v1, v13, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v13, "angleX"

    .line 95
    .line 96
    const-string v14, "rotationX"

    .line 97
    .line 98
    invoke-direct {v0, v8, v1, v13, v14}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    const-string v14, "angleY"

    .line 103
    .line 104
    const-string v15, "rotationY"

    .line 105
    .line 106
    invoke-direct {v0, v8, v1, v14, v15}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    const-string v15, "angleZ"

    .line 111
    .line 112
    move-object/from16 v16, v2

    .line 113
    .line 114
    const-string v2, "rotationZ"

    .line 115
    .line 116
    invoke-direct {v0, v8, v1, v15, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string v15, "centerZ"

    .line 121
    .line 122
    move-object/from16 v17, v2

    .line 123
    .line 124
    const-string v2, "pivotZ"

    .line 125
    .line 126
    invoke-direct {v0, v8, v1, v15, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-boolean v15, v0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 131
    .line 132
    move-object/from16 v18, v2

    .line 133
    .line 134
    if-eqz v15, :cond_0

    .line 135
    .line 136
    new-instance v15, Lcom/miui/maml/data/IndexedVariable;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    move-object/from16 v20, v3

    .line 144
    .line 145
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, "."

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-object/from16 v21, v4

    .line 156
    .line 157
    const-string v4, "actual_x"

    .line 158
    .line 159
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const/4 v4, 0x1

    .line 167
    invoke-direct {v15, v2, v8, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 168
    .line 169
    .line 170
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 171
    .line 172
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 173
    .line 174
    new-instance v15, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    iget-object v4, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v3, "actual_y"

    .line 188
    .line 189
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const/4 v4, 0x1

    .line 197
    invoke-direct {v2, v3, v8, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 198
    .line 199
    .line 200
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_0
    move-object/from16 v20, v3

    .line 204
    .line 205
    move-object/from16 v21, v4

    .line 206
    .line 207
    const/4 v4, 0x1

    .line 208
    :goto_0
    const-string v2, "touchable"

    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 219
    .line 220
    const-string v2, "interceptTouch"

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 231
    .line 232
    const-string v2, "haptic"

    .line 233
    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 243
    .line 244
    const-string v2, "contentDescription"

    .line 245
    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 251
    .line 252
    const-string v2, "contentDescriptionExp"

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v8, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 263
    .line 264
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    const/4 v3, 0x0

    .line 271
    if-eqz v2, :cond_2

    .line 272
    .line 273
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 274
    .line 275
    if-eqz v2, :cond_1

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_1
    move v2, v3

    .line 279
    goto :goto_2

    .line 280
    :cond_2
    :goto_1
    move v2, v4

    .line 281
    :goto_2
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 282
    .line 283
    const-string v2, "marginLeft"

    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    .line 291
    .line 292
    const-string v2, "marginRight"

    .line 293
    .line 294
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    .line 299
    .line 300
    const-string v2, "marginTop"

    .line 301
    .line 302
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    .line 307
    .line 308
    const-string v2, "marginBottom"

    .line 309
    .line 310
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    .line 315
    .line 316
    const-string v2, "tint"

    .line 317
    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-nez v4, :cond_3

    .line 327
    .line 328
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    .line 329
    .line 330
    invoke-direct {v4, v8, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iput-object v4, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 334
    .line 335
    :cond_3
    const-string v2, "tintmode"

    .line 336
    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-static {v8, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lcom/miui/maml/data/Expression;

    .line 346
    .line 347
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 348
    .line 349
    if-eqz v2, :cond_4

    .line 350
    .line 351
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    :cond_4
    iput v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 356
    .line 357
    const-string v2, "folmeMode"

    .line 358
    .line 359
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    iput-boolean v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    .line 368
    .line 369
    move-object/from16 v19, v10

    .line 370
    .line 371
    move-object v15, v12

    .line 372
    move-object/from16 v4, v20

    .line 373
    .line 374
    move-object v10, v6

    .line 375
    move-object v12, v11

    .line 376
    move-object/from16 v20, v18

    .line 377
    .line 378
    move-object v11, v7

    .line 379
    move-object/from16 v18, v9

    .line 380
    .line 381
    move-object v9, v5

    .line 382
    goto :goto_3

    .line 383
    :cond_5
    move-object v4, v2

    .line 384
    move-object v9, v4

    .line 385
    move-object v10, v9

    .line 386
    move-object v11, v10

    .line 387
    move-object v12, v11

    .line 388
    move-object v13, v12

    .line 389
    move-object v14, v13

    .line 390
    move-object v15, v14

    .line 391
    move-object/from16 v16, v15

    .line 392
    .line 393
    move-object/from16 v17, v16

    .line 394
    .line 395
    move-object/from16 v18, v17

    .line 396
    .line 397
    move-object/from16 v19, v18

    .line 398
    .line 399
    move-object/from16 v20, v19

    .line 400
    .line 401
    move-object/from16 v21, v20

    .line 402
    .line 403
    :goto_3
    new-instance v6, Lcom/miui/maml/folme/PropertyWrapper;

    .line 404
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v2, ".x"

    .line 416
    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    const-wide/16 v22, 0x0

    .line 429
    .line 430
    move-object v1, v6

    .line 431
    move-object v3, v8

    .line 432
    move-object/from16 p1, v15

    .line 433
    .line 434
    move-object v15, v6

    .line 435
    move-wide/from16 v6, v22

    .line 436
    .line 437
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 438
    .line 439
    .line 440
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 441
    .line 442
    new-instance v15, Lcom/miui/maml/folme/PropertyWrapper;

    .line 443
    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v2, ".y"

    .line 455
    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    const-wide/16 v6, 0x0

    .line 468
    .line 469
    move-object v1, v15

    .line 470
    move-object/from16 v4, v21

    .line 471
    .line 472
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 473
    .line 474
    .line 475
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 476
    .line 477
    new-instance v15, Lcom/miui/maml/folme/PropertyWrapper;

    .line 478
    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v2, ".w"

    .line 490
    .line 491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 503
    .line 504
    move-object v1, v15

    .line 505
    move-object v4, v9

    .line 506
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 507
    .line 508
    .line 509
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 510
    .line 511
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 512
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v2, ".h"

    .line 524
    .line 525
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    move-object v1, v9

    .line 537
    move-object v4, v10

    .line 538
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 539
    .line 540
    .line 541
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 542
    .line 543
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 544
    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .line 549
    .line 550
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v2, ".rotation"

    .line 556
    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 565
    .line 566
    .line 567
    move-result v5

    .line 568
    const-wide/16 v6, 0x0

    .line 569
    .line 570
    move-object v1, v9

    .line 571
    move-object v4, v11

    .line 572
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 573
    .line 574
    .line 575
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 576
    .line 577
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 578
    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .line 583
    .line 584
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 585
    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    const-string v2, ".alpha"

    .line 590
    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    move-object v1, v9

    .line 608
    move-object v4, v12

    .line 609
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 610
    .line 611
    .line 612
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 613
    .line 614
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 615
    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .line 620
    .line 621
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 622
    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v2, ".rotationX"

    .line 627
    .line 628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    const-wide/16 v6, 0x0

    .line 640
    .line 641
    move-object v1, v9

    .line 642
    move-object v4, v13

    .line 643
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 644
    .line 645
    .line 646
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 647
    .line 648
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 649
    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .line 654
    .line 655
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const-string v2, ".rotationY"

    .line 661
    .line 662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 670
    .line 671
    .line 672
    move-result v5

    .line 673
    move-object v1, v9

    .line 674
    move-object v4, v14

    .line 675
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 676
    .line 677
    .line 678
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 679
    .line 680
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 681
    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .line 686
    .line 687
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 688
    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    const-string v2, ".rotationZ"

    .line 693
    .line 694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 702
    .line 703
    .line 704
    move-result v5

    .line 705
    move-object v1, v9

    .line 706
    move-object/from16 v4, v17

    .line 707
    .line 708
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 709
    .line 710
    .line 711
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 712
    .line 713
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 714
    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .line 719
    .line 720
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 721
    .line 722
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    const-string v2, ".scaleX"

    .line 726
    .line 727
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 735
    .line 736
    .line 737
    move-result v5

    .line 738
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 739
    .line 740
    move-object v1, v9

    .line 741
    move-object/from16 v4, p1

    .line 742
    .line 743
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 744
    .line 745
    .line 746
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 747
    .line 748
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 749
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .line 754
    .line 755
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 756
    .line 757
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const-string v2, ".scaleY"

    .line 761
    .line 762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 770
    .line 771
    .line 772
    move-result v5

    .line 773
    move-object v1, v9

    .line 774
    move-object/from16 v4, v16

    .line 775
    .line 776
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 777
    .line 778
    .line 779
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 780
    .line 781
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 782
    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .line 787
    .line 788
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 789
    .line 790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    const-string v2, ".tintColor"

    .line 794
    .line 795
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    const/4 v4, 0x0

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 804
    .line 805
    .line 806
    move-result v5

    .line 807
    iget v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 808
    .line 809
    int-to-double v6, v1

    .line 810
    move-object v1, v9

    .line 811
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 812
    .line 813
    .line 814
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 815
    .line 816
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 817
    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .line 822
    .line 823
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 824
    .line 825
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    const-string v2, ".pivotX"

    .line 829
    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 838
    .line 839
    .line 840
    move-result v5

    .line 841
    const-wide/16 v6, 0x0

    .line 842
    .line 843
    move-object v1, v9

    .line 844
    move-object/from16 v4, v18

    .line 845
    .line 846
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 847
    .line 848
    .line 849
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 850
    .line 851
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 852
    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    .line 854
    .line 855
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .line 857
    .line 858
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 859
    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    const-string v2, ".pivotY"

    .line 864
    .line 865
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 873
    .line 874
    .line 875
    move-result v5

    .line 876
    move-object v1, v9

    .line 877
    move-object/from16 v4, v19

    .line 878
    .line 879
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 880
    .line 881
    .line 882
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 883
    .line 884
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 885
    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    .line 887
    .line 888
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .line 890
    .line 891
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    const-string v2, ".pivotZ"

    .line 897
    .line 898
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 906
    .line 907
    .line 908
    move-result v5

    .line 909
    move-object v1, v9

    .line 910
    move-object/from16 v4, v20

    .line 911
    .line 912
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 913
    .line 914
    .line 915
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 916
    .line 917
    return-void
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
.end method

.method private setupToProperties(Lcom/miui/maml/elements/StateElement;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/elements/StateElement;->getProperties()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
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


# virtual methods
.method protected doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationX()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationY()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationZ()F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    cmpl-float v5, v1, v4

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    cmpl-float v5, v2, v4

    .line 28
    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    cmpl-float v5, v3, v4

    .line 32
    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    :cond_0
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    new-instance v5, Landroid/graphics/Camera;

    .line 40
    .line 41
    invoke-direct {v5}, Landroid/graphics/Camera;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 45
    .line 46
    :cond_1
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 52
    .line 53
    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotZ()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    cmpl-float v2, v1, v4

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 65
    .line 66
    invoke-virtual {v2, v4, v4, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    cmpl-float v2, v1, v4

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const/high16 v3, 0x3f800000    # 1.0f

    .line 103
    .line 104
    cmpl-float v5, v1, v3

    .line 105
    .line 106
    if-nez v5, :cond_5

    .line 107
    .line 108
    cmpl-float v3, v2, v3

    .line 109
    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 113
    .line 114
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    sub-float v5, v1, v5

    .line 134
    .line 135
    sub-float/2addr v3, v5

    .line 136
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    sub-float v6, v2, v6

    .line 145
    .line 146
    sub-float/2addr v5, v6

    .line 147
    iget-object v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 148
    .line 149
    neg-float v7, v3

    .line 150
    neg-float v8, v5

    .line 151
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 152
    .line 153
    .line 154
    iget-object v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 155
    .line 156
    add-float/2addr v3, v1

    .line 157
    add-float/2addr v5, v2

    .line 158
    invoke-virtual {v6, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 170
    .line 171
    iget-boolean v1, v1, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 172
    .line 173
    if-eqz v1, :cond_7

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    cmpl-float v3, v1, v4

    .line 184
    .line 185
    if-lez v3, :cond_7

    .line 186
    .line 187
    cmpl-float v3, v2, v4

    .line 188
    .line 189
    if-lez v3, :cond_7

    .line 190
    .line 191
    invoke-virtual {p0, v4, v1}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    invoke-virtual {p0, v4, v2}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    add-float v8, v6, v1

    .line 200
    .line 201
    add-float v9, v7, v2

    .line 202
    .line 203
    iget-object v10, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 204
    .line 205
    move-object v5, p1

    .line 206
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 210
    .line 211
    .line 212
    return-void
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method protected doTick(J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    float-to-double v0, p2

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    float-to-double v0, p2

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    if-gez p1, :cond_1

    .line 44
    .line 45
    move p1, p2

    .line 46
    :cond_1
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 47
    .line 48
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTintColor()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    if-eq p1, p2, :cond_2

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 60
    .line 61
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 62
    .line 63
    :cond_2
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lcom/miui/maml/data/Expression;

    .line 70
    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 74
    .line 75
    .line 76
    move-result-wide p1

    .line 77
    double-to-int p1, p1

    .line 78
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :cond_3
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 85
    .line 86
    if-eq p2, p1, :cond_4

    .line 87
    .line 88
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 91
    .line 92
    :cond_4
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 93
    .line 94
    if-nez p2, :cond_5

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 97
    .line 98
    :cond_5
    iget-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 99
    .line 100
    if-eqz p2, :cond_7

    .line 101
    .line 102
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 103
    .line 104
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 105
    .line 106
    invoke-direct {p2, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    .line 108
    .line 109
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 114
    .line 115
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 116
    .line 117
    if-eqz p1, :cond_8

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 120
    .line 121
    .line 122
    :cond_8
    return-void
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

.method protected evaluateAlpha()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-long v0, v0

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/animation/AlphaAnimation;->getAlpha()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v1, 0xff

    .line 25
    .line 26
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    instance-of v2, v1, Lcom/miui/maml/elements/LayerScreenElement;

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    instance-of v2, v1, Lcom/miui/maml/elements/ElementGroup;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->isLayered()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :cond_3
    :goto_1
    return v0
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

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object p0, v0, v1

    .line 24
    .line 25
    invoke-static {v0}, Lmiuix/animation/a;->g([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void
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

.method public folmeCancel([Lcom/miui/maml/data/Expression;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ln/b;

    .line 4
    .line 5
    invoke-direct {v0}, Ln/b;-><init>()V

    .line 6
    .line 7
    .line 8
    array-length v1, p1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/b;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ln/b;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lmiuix/animation/a;->x(Lmiuix/animation/b;)Lmiuix/animation/d;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0}, Ln/b;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    new-array v1, v1, [Lmiuix/animation/property/b;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ln/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, [Lmiuix/animation/property/b;

    .line 58
    .line 59
    invoke-interface {p1, v0}, Lmiuix/animation/c;->H([Lmiuix/animation/property/b;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lmiuix/animation/a;->x(Lmiuix/animation/b;)Lmiuix/animation/d;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Lmiuix/animation/c;->cancel()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
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

.method public folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p3}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    instance-of v2, v0, Lcom/miui/maml/elements/StateElement;

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    instance-of v2, v1, Lcom/miui/maml/elements/StateElement;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 35
    .line 36
    check-cast v1, Lcom/miui/maml/elements/StateElement;

    .line 37
    .line 38
    instance-of p1, p3, Lcom/miui/maml/elements/ConfigElement;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    check-cast p3, Lcom/miui/maml/elements/ConfigElement;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p3, 0x0

    .line 46
    :goto_0
    if-eqz p3, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 49
    .line 50
    invoke-virtual {p3, p1}, Lcom/miui/maml/elements/ConfigElement;->getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)Ld9/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance p1, Ld9/a;

    .line 56
    .line 57
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_1
    const-string p2, "from"

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Le9/a;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string p3, "to"

    .line 67
    .line 68
    invoke-virtual {v1, p3}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Le9/a;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setupToProperties(Lcom/miui/maml/elements/StateElement;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p2, p3, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromToImpl(Le9/a;Le9/a;Ld9/a;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "folmeFromTo: wrong state name "

    .line 85
    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, " "

    .line 93
    .line 94
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "AnimatedScreenElement"

    .line 105
    .line 106
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    return-void
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public folmeSetTo(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/miui/maml/elements/StateElement;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "folmeSetTo: wrong state name "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "AnimatedScreenElement"

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 37
    .line 38
    const-string p1, "setTo"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Le9/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetToImpl(Le9/a;)V

    .line 45
    .line 46
    .line 47
    return-void
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

.method public folmeTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    instance-of v1, v0, Lcom/miui/maml/elements/StateElement;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "folmeTo: wrong state name "

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "AnimatedScreenElement"

    .line 39
    .line 40
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 45
    .line 46
    instance-of p1, p2, Lcom/miui/maml/elements/ConfigElement;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    check-cast p2, Lcom/miui/maml/elements/ConfigElement;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p2, 0x0

    .line 54
    :goto_0
    if-eqz p2, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/ConfigElement;->getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)Ld9/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance p1, Ld9/a;

    .line 64
    .line 65
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 66
    .line 67
    .line 68
    :goto_1
    const-string p2, "to"

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Le9/a;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setupToProperties(Lcom/miui/maml/elements/StateElement;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p2, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeToImpl(Le9/a;Ld9/a;)V

    .line 78
    .line 79
    .line 80
    return-void
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

.method public getAbsoluteLeft()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    add-float/2addr v0, v1

    .line 16
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getAbsoluteTop()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    add-float/2addr v0, v1

    .line 16
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 2
    .line 3
    return v0
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

.method protected getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sCreator:Lmiuix/animation/g;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lmiuix/animation/a;->q(Ljava/lang/Object;Lmiuix/animation/g;)Lmiuix/animation/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/maml/folme/AnimatedTarget;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 16
    .line 17
    return-object v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "element.getContentDescription() == null "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "AnimatedScreenElement"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const-string v0, ""

    .line 36
    .line 37
    :cond_0
    return-object v0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
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

.method public getHeight()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
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

.method public getHeightRaw()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/animation/SizeAnimation;->getHeight()D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_0
    return v0
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

.method protected getLeft()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
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

.method public final getMarginBottom()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
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

.method public final getMarginLeft()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
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

.method public final getMarginRight()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
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

.method public final getMarginTop()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
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

.method protected getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

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

.method protected getPivotX()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
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

.method protected getPivotY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
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

.method protected getPivotZ()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
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

.method public getRotation()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/animation/RotationAnimation;->getAngle()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-float/2addr v0, v1

    .line 23
    :cond_0
    return v0
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

.method public getRotationX()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
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

.method public getRotationY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
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

.method public getRotationZ()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
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

.method public getScaleX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    float-to-double v2, v0

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/animation/ScaleAnimation;->getScaleX()D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    mul-double/2addr v2, v0

    .line 33
    double-to-float v0, v2

    .line 34
    :cond_1
    return v0
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

.method public getScaleY()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    float-to-double v2, v0

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/animation/ScaleAnimation;->getScaleY()D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    mul-double/2addr v2, v0

    .line 33
    double-to-float v0, v2

    .line 34
    :cond_1
    return v0
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

.method protected getTintColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-long v0, v0

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :cond_0
    return v0
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

.method protected getTop()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
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

.method public getWidth()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
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

.method public getWidthRaw()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/animation/SizeAnimation;->getWidth()D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_0
    return v0
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

.method protected getX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    float-to-double v2, v0

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getX()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    add-double/2addr v2, v0

    .line 24
    double-to-float v0, v2

    .line 25
    :cond_0
    float-to-double v0, v0

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
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

.method protected getY()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    float-to-double v2, v0

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getY()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    add-double/2addr v2, v0

    .line 24
    double-to-float v0, v2

    .line 25
    :cond_0
    float-to-double v0, v0

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
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

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

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

.method protected initProperties()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 74
    .line 75
    .line 76
    return-void
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method protected isInFolmeMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
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

.method protected onActionCancel()V
    .locals 0

    return-void
.end method

.method protected onActionDown(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    .line 3
    const-string p2, "down"

    .line 4
    .line 5
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

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

.method protected onActionMove(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    .line 3
    const-string p2, "move"

    .line 4
    .line 5
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

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

.method protected onActionUp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    .line 3
    const-string v1, "up"

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

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
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 1

    .line 1
    const-string v0, "AlphaAnimation"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 10
    .line 11
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    const-string v0, "PositionAnimation"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 26
    .line 27
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    const-string v0, "RotationAnimation"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 42
    .line 43
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    const-string v0, "SizeAnimation"

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    new-instance p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 58
    .line 59
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    const-string v0, "ScaleAnimation"

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    new-instance p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 74
    .line 75
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1
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

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v5, 0x7

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eq p1, v5, :cond_3

    .line 36
    .line 37
    const/16 v5, 0x9

    .line 38
    .line 39
    if-eq p1, v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    .line 50
    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    move v4, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getHoverElement()Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eq p1, p0, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 70
    .line 71
    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 78
    .line 79
    .line 80
    :cond_5
    if-eqz v4, :cond_6

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 83
    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    move v1, v6

    .line 87
    :cond_6
    :goto_2
    return v1
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

.method protected onSetAnimBefore()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

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

.method protected onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    check-cast p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    instance-of v0, p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    check-cast p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    instance-of v0, p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    check-cast p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 44
    .line 45
    :cond_4
    :goto_0
    return-void
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

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eqz p1, :cond_6

    .line 32
    .line 33
    if-eq p1, v4, :cond_3

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    if-eq p1, v5, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 47
    .line 48
    if-eqz p1, :cond_8

    .line 49
    .line 50
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const-string p1, "move"

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 64
    .line 65
    if-eqz p1, :cond_8

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 68
    .line 69
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 80
    .line 81
    invoke-virtual {p1, v4}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 82
    .line 83
    .line 84
    :cond_4
    const-string p1, "up"

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const-string p1, "cancel"

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_8

    .line 107
    .line 108
    iput-boolean v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 109
    .line 110
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 115
    .line 116
    invoke-virtual {p1, v4}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 117
    .line 118
    .line 119
    :cond_7
    const-string p1, "down"

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 125
    .line 126
    .line 127
    :goto_0
    move v3, v4

    .line 128
    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 131
    .line 132
    .line 133
    :cond_9
    if-eqz v3, :cond_a

    .line 134
    .line 135
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 136
    .line 137
    if-eqz p1, :cond_a

    .line 138
    .line 139
    move v1, v4

    .line 140
    :cond_a
    :goto_2
    return v1
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

.method protected onVisibilityChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 10
    .line 11
    const/high16 v0, -0x80000000

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/customview/widget/a;->getFocusedVirtualView()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 38
    .line 39
    if-ne p1, v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 50
    .line 51
    const/16 v1, 0x80

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/util/MamlAccessHelper;->performAccessibilityAction(II)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
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

.method public pause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 20
    .line 21
    invoke-static {v0}, Lmiuix/animation/a;->x(Lmiuix/animation/b;)Lmiuix/animation/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->toArray()[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Lmiuix/animation/c;->C([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void
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

.method public render(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    :cond_0
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
.end method

.method public setHeight(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

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

.method public setOnTickListener(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 2
    .line 3
    return-void
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

.method public setVirtualViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 2
    .line 3
    return-void
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

.method public setWidth(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

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

.method public setX(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

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

.method public setY(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

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

.method public touched(FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result p1

    return p1
.end method

.method public touched(FFZ)Z
    .locals 4

    if-eqz p3, :cond_2

    .line 2
    iget-object p3, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result p3

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    :goto_1
    sub-float/2addr p1, p3

    sub-float/2addr p2, v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result p3

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v2

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3

    add-float/2addr p3, v1

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_3

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_3

    add-float/2addr v0, v2

    cmpg-float p1, p2, v0

    if-gtz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public unsetOnTickListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

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
