.class public Lcom/google/android/material/imageview/ShapeableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ShapeableImageView.java"

# interfaces
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final destination:Landroid/graphics/RectF;

.field private maskPath:Landroid/graphics/Path;

.field private final maskRect:Landroid/graphics/RectF;

.field private final path:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private strokeColor:Landroid/content/res/ColorStateList;

.field private strokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ShapeableImageView:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/imageview/ShapeableImageView;->DEF_STYLE_RES:I

    .line 4
    .line 5
    return-void
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    sget v0, Lcom/google/android/material/imageview/ShapeableImageView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-direct {p1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->clearPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, -0x1

    .line 9
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    .line 13
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 14
    sget-object v1, Lcom/google/android/material/R$styleable;->ShapeableImageView:[I

    .line 15
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 16
    sget v3, Lcom/google/android/material/R$styleable;->ShapeableImageView_strokeColor:I

    .line 17
    invoke-static {p1, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 18
    sget v3, Lcom/google/android/material/R$styleable;->ShapeableImageView_strokeWidth:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 19
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 20
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 23
    new-instance p1, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;

    invoke-direct {p1, p0}, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;-><init>(Lcom/google/android/material/imageview/ShapeableImageView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

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

.method static synthetic access$100(Lcom/google/android/material/imageview/ShapeableImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

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

.method private drawStroke(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    cmpl-float v1, v1, v2

    .line 33
    .line 34
    if-lez v1, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
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

.method private updateShapeMask(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int v3, p1, v3

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sub-int v4, p2, v4

    .line 25
    .line 26
    int-to-float v4, v4

    .line 27
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    .line 37
    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    .line 56
    .line 57
    int-to-float p1, p1

    .line 58
    int-to-float p2, p2

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    .line 66
    .line 67
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 68
    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 70
    .line 71
    .line 72
    return-void
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


# virtual methods
.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

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

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

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

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

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

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7
    .line 8
    .line 9
    return-void
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

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 7
    .line 8
    .line 9
    return-void
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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->clearPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->drawStroke(Landroid/graphics/Canvas;)V

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

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;->updateShapeMask(II)V

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

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->updateShapeMask(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

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

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

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

.method public setStrokeColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

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

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    :cond_0
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

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    .line 11
    .line 12
    .line 13
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
