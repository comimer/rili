.class Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

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
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 2
    .line 3
    iget v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 4
    .line 5
    int-to-float v2, v1

    .line 6
    iget-object v3, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 7
    .line 8
    aget v3, v3, p2

    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    sub-float/2addr v4, v3

    .line 13
    mul-float/2addr v2, v4

    .line 14
    iget v9, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 15
    .line 16
    int-to-float v3, v9

    .line 17
    div-float/2addr v2, v3

    .line 18
    float-to-double v2, v2

    .line 19
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 20
    .line 21
    add-double/2addr v2, v4

    .line 22
    double-to-int v2, v2

    .line 23
    mul-int v8, v2, v9

    .line 24
    .line 25
    if-ge v8, v1, :cond_0

    .line 26
    .line 27
    iget-object v4, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    .line 28
    .line 29
    mul-int v5, v9, v8

    .line 30
    .line 31
    mul-int v7, v9, p2

    .line 32
    .line 33
    sub-int v10, v1, v8

    .line 34
    .line 35
    const/4 v11, 0x1

    .line 36
    iget-object v12, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    move-object v3, p1

    .line 39
    move v6, v9

    .line 40
    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
    .line 44
    .line 45
    .line 46
    .line 47
.end method
