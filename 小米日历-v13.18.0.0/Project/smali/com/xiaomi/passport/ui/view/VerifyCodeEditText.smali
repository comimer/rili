.class public Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;
.super Landroidx/appcompat/widget/h;
.source "VerifyCodeEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;

.field private final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->a:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$b;

    invoke-direct {p1, p0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$b;-><init>(Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->p:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    const/4 p3, 0x1

    .line 7
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    new-array p3, p3, [Landroid/text/InputFilter;

    .line 8
    new-instance v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$a;-><init>(Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;)V

    aput-object v0, p3, p1

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 9
    invoke-direct {p0, p2}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->e(Landroid/util/AttributeSet;)V

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->h()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

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

.method static synthetic b(Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->a:I

    .line 2
    .line 3
    return p0
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

.method static synthetic c(Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->g()V

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

.method private e(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Ln5/b;->h:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->f:I

    .line 12
    .line 13
    sget v0, Ln5/b;->f:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->g:I

    .line 20
    .line 21
    sget v0, Ln5/b;->g:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->h:I

    .line 28
    .line 29
    sget v0, Ln5/c;->e:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->i:F

    .line 36
    .line 37
    sget v0, Ln5/c;->d:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->j:F

    .line 44
    .line 45
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

.method private f(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->a:I

    .line 2
    .line 3
    mul-int/lit8 v1, v0, 0xc

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    sub-int/2addr v0, v2

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    int-to-float v0, p1

    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    mul-float/2addr v0, v3

    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v0, v1

    .line 16
    const/high16 v1, 0x41400000    # 12.0f

    .line 17
    .line 18
    mul-float/2addr v1, v0

    .line 19
    iput v1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->b:F

    .line 20
    .line 21
    const/high16 v1, 0x40000000    # 2.0f

    .line 22
    .line 23
    mul-float/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->d:F

    .line 25
    .line 26
    int-to-float v0, p2

    .line 27
    iput v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->c:F

    .line 28
    .line 29
    div-int/lit8 p1, p1, 0x2

    .line 30
    .line 31
    div-int/lit8 p2, p2, 0x3

    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-float p1, p1

    .line 38
    iput p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->e:F

    .line 39
    .line 40
    new-instance p1, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->k:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->k:Landroid/graphics/Paint;

    .line 51
    .line 52
    iget p2, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->f:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->k:Landroid/graphics/Paint;

    .line 58
    .line 59
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->k:Landroid/graphics/Paint;

    .line 65
    .line 66
    iget p2, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->e:F

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->k:Landroid/graphics/Paint;

    .line 72
    .line 73
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->k:Landroid/graphics/Paint;

    .line 79
    .line 80
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 81
    .line 82
    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 87
    .line 88
    .line 89
    new-instance p1, Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->l:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->l:Landroid/graphics/Paint;

    .line 100
    .line 101
    iget p2, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->g:I

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->l:Landroid/graphics/Paint;

    .line 107
    .line 108
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->m:Landroid/graphics/Paint;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->m:Landroid/graphics/Paint;

    .line 124
    .line 125
    iget p2, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->h:I

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->m:Landroid/graphics/Paint;

    .line 131
    .line 132
    iget p2, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->i:F

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->m:Landroid/graphics/Paint;

    .line 138
    .line 139
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    .line 143
    .line 144
    return-void
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

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->o:Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Character;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->o:Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v1, v0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
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

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->p:Ljava/lang/Runnable;

    .line 2
    .line 3
    const-wide/16 v1, 0x1f4

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

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


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->h()V

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

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->p:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    iget v1, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->b:F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    cmpg-float v1, v1, v2

    .line 9
    .line 10
    if-gtz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->f(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v1, v3, :cond_1

    .line 30
    .line 31
    move v10, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v10, v2

    .line 34
    :goto_0
    const/high16 v11, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const/high16 v12, -0x40800000    # -1.0f

    .line 37
    .line 38
    const/high16 v13, 0x40000000    # 2.0f

    .line 39
    .line 40
    if-eqz v10, :cond_2

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    int-to-float v1, v1

    .line 50
    div-float/2addr v1, v13

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    int-to-float v3, v3

    .line 56
    div-float/2addr v3, v13

    .line 57
    invoke-virtual {v9, v12, v11, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 58
    .line 59
    .line 60
    :cond_2
    move v14, v2

    .line 61
    :goto_1
    iget v1, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->a:I

    .line 62
    .line 63
    if-ge v14, v1, :cond_6

    .line 64
    .line 65
    int-to-float v1, v14

    .line 66
    iget v2, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->b:F

    .line 67
    .line 68
    iget v3, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->d:F

    .line 69
    .line 70
    add-float v4, v2, v3

    .line 71
    .line 72
    mul-float/2addr v4, v1

    .line 73
    const/4 v5, 0x0

    .line 74
    add-float/2addr v3, v2

    .line 75
    mul-float/2addr v1, v3

    .line 76
    add-float v6, v1, v2

    .line 77
    .line 78
    iget v7, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->c:F

    .line 79
    .line 80
    iget v8, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->j:F

    .line 81
    .line 82
    iget-object v15, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->l:Landroid/graphics/Paint;

    .line 83
    .line 84
    move-object/from16 v1, p1

    .line 85
    .line 86
    move v2, v4

    .line 87
    move v3, v5

    .line 88
    move v4, v6

    .line 89
    move v5, v7

    .line 90
    move v6, v8

    .line 91
    move v7, v8

    .line 92
    move-object v8, v15

    .line 93
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-ge v14, v1, :cond_4

    .line 103
    .line 104
    int-to-float v1, v14

    .line 105
    iget v2, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->b:F

    .line 106
    .line 107
    iget v3, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->d:F

    .line 108
    .line 109
    add-float/2addr v3, v2

    .line 110
    mul-float/2addr v1, v3

    .line 111
    div-float/2addr v2, v13

    .line 112
    add-float/2addr v1, v2

    .line 113
    iget v2, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->c:F

    .line 114
    .line 115
    iget v3, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->e:F

    .line 116
    .line 117
    sub-float v3, v2, v3

    .line 118
    .line 119
    div-float/2addr v3, v13

    .line 120
    sub-float/2addr v2, v3

    .line 121
    if-eqz v10, :cond_3

    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v12, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 127
    .line 128
    .line 129
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v4, ""

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v4, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iget-object v4, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->k:Landroid/graphics/Paint;

    .line 153
    .line 154
    invoke-virtual {v9, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    if-eqz v10, :cond_4

    .line 158
    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    .line 161
    .line 162
    :cond_4
    iget-object v1, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-ne v14, v1, :cond_5

    .line 169
    .line 170
    int-to-float v1, v14

    .line 171
    iget v2, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->b:F

    .line 172
    .line 173
    iget v3, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->d:F

    .line 174
    .line 175
    add-float v4, v2, v3

    .line 176
    .line 177
    mul-float/2addr v4, v1

    .line 178
    iget v5, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->i:F

    .line 179
    .line 180
    div-float v6, v5, v13

    .line 181
    .line 182
    add-float/2addr v4, v6

    .line 183
    div-float v6, v5, v13

    .line 184
    .line 185
    add-float/2addr v3, v2

    .line 186
    mul-float/2addr v1, v3

    .line 187
    add-float/2addr v1, v2

    .line 188
    div-float v2, v5, v13

    .line 189
    .line 190
    sub-float v7, v1, v2

    .line 191
    .line 192
    iget v1, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->c:F

    .line 193
    .line 194
    div-float/2addr v5, v13

    .line 195
    sub-float v5, v1, v5

    .line 196
    .line 197
    iget v8, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->j:F

    .line 198
    .line 199
    iget-object v15, v0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->m:Landroid/graphics/Paint;

    .line 200
    .line 201
    move-object/from16 v1, p1

    .line 202
    .line 203
    move v2, v4

    .line 204
    move v3, v6

    .line 205
    move v4, v7

    .line 206
    move v6, v8

    .line 207
    move v7, v8

    .line 208
    move-object v8, v15

    .line 209
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 210
    .line 211
    .line 212
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_6
    if-eqz v10, :cond_7

    .line 217
    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    .line 220
    .line 221
    :cond_7
    return-void
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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 p2, 0x43

    .line 2
    .line 3
    if-ne p1, p2, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x1

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sub-int/2addr v0, p2

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    return p2

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return p1
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

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setInputCompleteListener(Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->o:Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;

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

.method public setSmsVerifyCodeIfNeeded(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->n:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v2, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->a:I

    .line 36
    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->g()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

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

.method public setVerifyCodeLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->a:I

    .line 2
    .line 3
    const/high16 p1, -0x40800000    # -1.0f

    .line 4
    .line 5
    iput p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->b:F

    .line 6
    .line 7
    iput p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->c:F

    .line 8
    .line 9
    iput p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->d:F

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->e:F

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
