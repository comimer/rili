.class Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;
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
    name = "SymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 4
    .line 5
    iget v2, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 6
    .line 7
    int-to-float v3, v2

    .line 8
    iget-object v4, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 9
    .line 10
    aget v4, v4, p2

    .line 11
    .line 12
    const/high16 v5, 0x3f800000    # 1.0f

    .line 13
    .line 14
    sub-float/2addr v5, v4

    .line 15
    mul-float/2addr v3, v5

    .line 16
    iget v10, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 17
    .line 18
    int-to-float v4, v10

    .line 19
    div-float/2addr v3, v4

    .line 20
    float-to-double v3, v3

    .line 21
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .line 22
    .line 23
    add-double/2addr v3, v14

    .line 24
    double-to-int v3, v3

    .line 25
    mul-int v9, v3, v10

    .line 26
    .line 27
    if-ge v9, v2, :cond_0

    .line 28
    .line 29
    iget-object v5, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    .line 30
    .line 31
    mul-int v6, v10, v9

    .line 32
    .line 33
    mul-int v8, v10, p2

    .line 34
    .line 35
    sub-int v11, v2, v9

    .line 36
    .line 37
    const/4 v12, 0x1

    .line 38
    iget-object v13, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    move-object/from16 v4, p1

    .line 41
    .line 42
    move v7, v10

    .line 43
    invoke-virtual/range {v4 .. v13}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 47
    .line 48
    iget v2, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 49
    .line 50
    int-to-float v3, v2

    .line 51
    iget-object v4, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 52
    .line 53
    aget v4, v4, p2

    .line 54
    .line 55
    mul-float/2addr v3, v4

    .line 56
    iget v10, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 57
    .line 58
    int-to-float v4, v10

    .line 59
    div-float/2addr v3, v4

    .line 60
    float-to-double v3, v3

    .line 61
    add-double/2addr v3, v14

    .line 62
    double-to-int v3, v3

    .line 63
    mul-int/2addr v3, v10

    .line 64
    if-le v3, v2, :cond_1

    .line 65
    .line 66
    move v11, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v11, v3

    .line 69
    :goto_0
    if-lez v11, :cond_2

    .line 70
    .line 71
    iget-object v5, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    mul-int v8, v10, p2

    .line 75
    .line 76
    iget v9, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 77
    .line 78
    const/4 v12, 0x1

    .line 79
    iget-object v13, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 80
    .line 81
    move-object/from16 v4, p1

    .line 82
    .line 83
    move v7, v10

    .line 84
    invoke-virtual/range {v4 .. v13}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
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
