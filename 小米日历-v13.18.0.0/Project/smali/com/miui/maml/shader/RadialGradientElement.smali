.class public Lcom/miui/maml/shader/RadialGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "RadialGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "RadialGradient"


# instance fields
.field private mRx:F

.field private mRxExp:Lcom/miui/maml/data/Expression;

.field private mRy:F

.field private mRyExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const-string v0, "rX"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRxExp:Lcom/miui/maml/data/Expression;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "rY"

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRyExp:Lcom/miui/maml/data/Expression;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 39
    .line 40
    .line 41
    return-void
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private final getRx()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRxExp:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    float-to-double v2, v2

    .line 19
    mul-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    return v0
    .line 22
.end method

.method private final getRy()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRyExp:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    float-to-double v2, v2

    .line 19
    mul-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    return v0
    .line 22
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 3
    .line 4
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    .line 9
    .line 10
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget-object v7, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 37
    .line 38
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

.method public updateShaderMatrix()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getRx()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getRy()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 18
    .line 19
    cmpl-float v4, v0, v4

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 24
    .line 25
    cmpl-float v4, v1, v4

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    .line 30
    .line 31
    cmpl-float v4, v2, v4

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    .line 36
    .line 37
    cmpl-float v4, v3, v4

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    return v0

    .line 44
    :cond_1
    :goto_0
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 45
    .line 46
    iput v1, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 47
    .line 48
    iput v2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    .line 49
    .line 50
    iput v3, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    .line 51
    .line 52
    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 58
    .line 59
    neg-float v5, v0

    .line 60
    neg-float v6, v1

    .line 61
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 65
    .line 66
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 70
    .line 71
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    return v0
.end method
