.class public Lv4/c;
.super Landroid/text/style/ReplacementSpan;
.source "CustomLabelSpan.java"

# interfaces
.implements Lw4/b;


# instance fields
.field private D:I

.field private a:Lx4/d;

.field private b:Ljava/lang/String;

.field private c:F

.field private d:F

.field private e:I

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Bitmap;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private v:Landroid/graphics/RectF;

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx4/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lv4/c;->e:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lv4/c;->f:F

    .line 9
    .line 10
    iput v0, p0, Lv4/c;->g:I

    .line 11
    .line 12
    iput v0, p0, Lv4/c;->h:I

    .line 13
    .line 14
    iput v0, p0, Lv4/c;->i:I

    .line 15
    .line 16
    iput v0, p0, Lv4/c;->m:I

    .line 17
    .line 18
    iput v0, p0, Lv4/c;->n:I

    .line 19
    .line 20
    iput v0, p0, Lv4/c;->o:I

    .line 21
    .line 22
    iput v0, p0, Lv4/c;->p:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Lv4/c;->q:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lv4/c;->r:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lv4/c;->w:Z

    .line 30
    .line 31
    iput-object p2, p0, Lv4/c;->a:Lx4/d;

    .line 32
    .line 33
    invoke-virtual {p2}, Lx4/a;->d()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lv4/c;->b:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p1, p0, Lv4/c;->l:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, p0, Lv4/c;->a:Lx4/d;

    .line 42
    .line 43
    invoke-virtual {p1}, Lx4/d;->t()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput-boolean p1, p0, Lv4/c;->z:Z

    .line 48
    .line 49
    iget-object p1, p0, Lv4/c;->a:Lx4/d;

    .line 50
    .line 51
    invoke-virtual {p1}, Lx4/d;->f()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lv4/c;->x:I

    .line 56
    .line 57
    iget-object p1, p0, Lv4/c;->a:Lx4/d;

    .line 58
    .line 59
    invoke-virtual {p1}, Lx4/d;->g()Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lv4/c;->k:Landroid/graphics/Bitmap;

    .line 64
    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    iget-object p1, p0, Lv4/c;->a:Lx4/d;

    .line 68
    .line 69
    invoke-virtual {p1}, Lx4/d;->l()F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, p0, Lv4/c;->j:F

    .line 74
    .line 75
    cmpl-float p1, p1, v1

    .line 76
    .line 77
    if-lez p1, :cond_1

    .line 78
    .line 79
    new-instance p1, Landroid/graphics/RectF;

    .line 80
    .line 81
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lv4/c;->v:Landroid/graphics/RectF;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    iput-boolean v2, p0, Lv4/c;->r:Z

    .line 88
    .line 89
    :cond_1
    :goto_0
    invoke-direct {p0}, Lv4/c;->d()V

    .line 90
    .line 91
    .line 92
    return-void
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

.method private b(Landroid/graphics/Paint;)F
    .locals 6

    .line 1
    iget v0, p0, Lv4/c;->d:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    .line 6
    if-gtz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lx4/d;->k()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-instance v2, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lv4/c;->l:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p1, v3, v5, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iput v3, p0, Lv4/c;->g:I

    .line 34
    .line 35
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    iput v3, p0, Lv4/c;->h:I

    .line 38
    .line 39
    iget-object v3, p0, Lv4/c;->a:Lx4/d;

    .line 40
    .line 41
    invoke-virtual {v3}, Lx4/d;->o()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    cmpl-float v1, v3, v1

    .line 46
    .line 47
    if-lez v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    cmpl-float v1, v3, v1

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v1, p0, Lv4/c;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p1, v1, v5, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, p0, Lv4/c;->e:I

    .line 74
    .line 75
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    iput v1, p0, Lv4/c;->i:I

    .line 78
    .line 79
    if-lez v0, :cond_1

    .line 80
    .line 81
    if-le v0, p1, :cond_1

    .line 82
    .line 83
    iget v1, p0, Lv4/c;->g:I

    .line 84
    .line 85
    if-gt v0, v1, :cond_1

    .line 86
    .line 87
    int-to-float p1, v0

    .line 88
    iput p1, p0, Lv4/c;->d:F

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget v0, p0, Lv4/c;->m:I

    .line 92
    .line 93
    add-int/2addr p1, v0

    .line 94
    iget v0, p0, Lv4/c;->n:I

    .line 95
    .line 96
    add-int/2addr p1, v0

    .line 97
    int-to-float p1, p1

    .line 98
    iput p1, p0, Lv4/c;->d:F

    .line 99
    .line 100
    :goto_0
    iget p1, p0, Lv4/c;->d:F

    .line 101
    .line 102
    iget v0, p0, Lv4/c;->g:I

    .line 103
    .line 104
    int-to-float v1, v0

    .line 105
    cmpl-float p1, p1, v1

    .line 106
    .line 107
    if-lez p1, :cond_2

    .line 108
    .line 109
    int-to-float p1, v0

    .line 110
    iput p1, p0, Lv4/c;->d:F

    .line 111
    .line 112
    :cond_2
    iget p1, p0, Lv4/c;->d:F

    .line 113
    .line 114
    return p1
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

.method private c(Landroid/graphics/Paint;)F
    .locals 4

    .line 1
    iget v0, p0, Lv4/c;->c:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    .line 6
    if-gtz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lx4/d;->o()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    cmpl-float v1, v0, v1

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    cmpl-float v1, v0, v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 30
    .line 31
    invoke-virtual {v0}, Lx4/d;->m()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lv4/c;->b:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lv4/c;->f:F

    .line 47
    .line 48
    if-lez v0, :cond_1

    .line 49
    .line 50
    int-to-float v0, v0

    .line 51
    cmpl-float v1, v0, p1

    .line 52
    .line 53
    if-lez v1, :cond_1

    .line 54
    .line 55
    iput v0, p0, Lv4/c;->c:F

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget v0, p0, Lv4/c;->o:I

    .line 59
    .line 60
    int-to-float v0, v0

    .line 61
    add-float/2addr p1, v0

    .line 62
    iget v0, p0, Lv4/c;->p:I

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    add-float/2addr p1, v0

    .line 66
    iput p1, p0, Lv4/c;->c:F

    .line 67
    .line 68
    :cond_2
    :goto_0
    iget p1, p0, Lv4/c;->c:F

    .line 69
    .line 70
    return p1
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

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/d;->k()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lx4/d;->m()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 19
    .line 20
    invoke-virtual {v0}, Lx4/d;->s()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lv4/c;->m:I

    .line 25
    .line 26
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 27
    .line 28
    invoke-virtual {v0}, Lx4/d;->p()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lv4/c;->n:I

    .line 33
    .line 34
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 35
    .line 36
    invoke-virtual {v0}, Lx4/d;->q()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lv4/c;->o:I

    .line 41
    .line 42
    iget-object v0, p0, Lv4/c;->a:Lx4/d;

    .line 43
    .line 44
    invoke-virtual {v0}, Lx4/d;->r()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lv4/c;->p:I

    .line 49
    .line 50
    iget v1, p0, Lv4/c;->m:I

    .line 51
    .line 52
    if-gtz v1, :cond_1

    .line 53
    .line 54
    iget v1, p0, Lv4/c;->n:I

    .line 55
    .line 56
    if-gtz v1, :cond_1

    .line 57
    .line 58
    iget v1, p0, Lv4/c;->o:I

    .line 59
    .line 60
    if-gtz v1, :cond_1

    .line 61
    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lv4/c;->q:Z

    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method


# virtual methods
.method public a(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lv4/c;->y:Z

    .line 2
    .line 3
    iput p2, p0, Lv4/c;->D:I

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

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    .line 1
    sub-int p2, p8, p6

    .line 2
    .line 3
    int-to-float p2, p2

    .line 4
    int-to-float p3, p8

    .line 5
    sub-float v2, p3, p2

    .line 6
    .line 7
    iget-boolean p3, p0, Lv4/c;->z:Z

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-boolean p3, p0, Lv4/c;->y:Z

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget p3, p0, Lv4/c;->D:I

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget p3, p0, Lv4/c;->c:F

    .line 23
    .line 24
    add-float v3, p5, p3

    .line 25
    .line 26
    add-float v4, v2, p2

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    move v1, p5

    .line 30
    move-object v5, p9

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget p3, p0, Lv4/c;->x:I

    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    .line 42
    iget p3, p0, Lv4/c;->c:F

    .line 43
    .line 44
    add-float v3, p5, p3

    .line 45
    .line 46
    add-float v4, v2, p2

    .line 47
    .line 48
    move-object v0, p1

    .line 49
    move v1, p5

    .line 50
    move-object v5, p9

    .line 51
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    iget-object p2, p0, Lv4/c;->a:Lx4/d;

    .line 55
    .line 56
    invoke-virtual {p2}, Lx4/d;->o()F

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 p3, 0x0

    .line 61
    cmpl-float p4, p2, p3

    .line 62
    .line 63
    if-lez p4, :cond_2

    .line 64
    .line 65
    invoke-virtual {p9}, Landroid/graphics/Paint;->getTextSize()F

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    cmpl-float p4, p2, p4

    .line 70
    .line 71
    if-eqz p4, :cond_2

    .line 72
    .line 73
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    .line 75
    .line 76
    :cond_2
    int-to-float p2, p7

    .line 77
    iget-object p4, p0, Lv4/c;->a:Lx4/d;

    .line 78
    .line 79
    invoke-virtual {p4}, Lx4/a;->b()I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    const/4 p6, 0x1

    .line 84
    const/high16 p8, 0x40000000    # 2.0f

    .line 85
    .line 86
    if-eq p4, p6, :cond_5

    .line 87
    .line 88
    const/4 p6, 0x2

    .line 89
    if-eq p4, p6, :cond_4

    .line 90
    .line 91
    const/4 p6, 0x3

    .line 92
    if-eq p4, p6, :cond_3

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    iget p4, p0, Lv4/c;->d:F

    .line 96
    .line 97
    iget p6, p0, Lv4/c;->h:I

    .line 98
    .line 99
    int-to-float v0, p6

    .line 100
    sub-float/2addr p4, v0

    .line 101
    sub-float/2addr p2, p4

    .line 102
    iget p4, p0, Lv4/c;->n:I

    .line 103
    .line 104
    iget v0, p0, Lv4/c;->i:I

    .line 105
    .line 106
    sub-int/2addr p6, v0

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    iget p4, p0, Lv4/c;->g:I

    .line 109
    .line 110
    div-int/lit8 v0, p4, 0x2

    .line 111
    .line 112
    int-to-float v0, v0

    .line 113
    iget v1, p0, Lv4/c;->d:F

    .line 114
    .line 115
    div-float/2addr v1, p8

    .line 116
    add-float/2addr v0, v1

    .line 117
    iget v1, p0, Lv4/c;->h:I

    .line 118
    .line 119
    int-to-float v2, v1

    .line 120
    sub-float/2addr v0, v2

    .line 121
    sub-float/2addr p2, v0

    .line 122
    div-int/2addr p4, p6

    .line 123
    iget v0, p0, Lv4/c;->e:I

    .line 124
    .line 125
    div-int/2addr v0, p6

    .line 126
    sub-int/2addr p4, v0

    .line 127
    iget p6, p0, Lv4/c;->i:I

    .line 128
    .line 129
    sub-int/2addr v1, p6

    .line 130
    sub-int/2addr p4, v1

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    iget p4, p0, Lv4/c;->g:I

    .line 133
    .line 134
    iget p6, p0, Lv4/c;->h:I

    .line 135
    .line 136
    sub-int v0, p4, p6

    .line 137
    .line 138
    int-to-float v0, v0

    .line 139
    sub-float/2addr p2, v0

    .line 140
    iget v0, p0, Lv4/c;->e:I

    .line 141
    .line 142
    sub-int/2addr p4, v0

    .line 143
    iget v0, p0, Lv4/c;->i:I

    .line 144
    .line 145
    sub-int/2addr p6, v0

    .line 146
    sub-int/2addr p4, p6

    .line 147
    iget p6, p0, Lv4/c;->m:I

    .line 148
    .line 149
    :goto_1
    sub-int/2addr p4, p6

    .line 150
    :goto_2
    sub-int/2addr p7, p4

    .line 151
    :goto_3
    iget-boolean p4, p0, Lv4/c;->r:Z

    .line 152
    .line 153
    if-eqz p4, :cond_6

    .line 154
    .line 155
    iget-object p3, p0, Lv4/c;->k:Landroid/graphics/Bitmap;

    .line 156
    .line 157
    invoke-virtual {p1, p3, p5, p2, p9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_4

    .line 161
    .line 162
    :cond_6
    iget-object p4, p0, Lv4/c;->a:Lx4/d;

    .line 163
    .line 164
    invoke-virtual {p4}, Lx4/d;->j()I

    .line 165
    .line 166
    .line 167
    move-result p4

    .line 168
    invoke-virtual {p9, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    .line 170
    .line 171
    iget p4, p0, Lv4/c;->j:F

    .line 172
    .line 173
    cmpl-float p3, p4, p3

    .line 174
    .line 175
    if-lez p3, :cond_8

    .line 176
    .line 177
    iget-object p3, p0, Lv4/c;->v:Landroid/graphics/RectF;

    .line 178
    .line 179
    iput p2, p3, Landroid/graphics/RectF;->top:F

    .line 180
    .line 181
    iget p4, p0, Lv4/c;->d:F

    .line 182
    .line 183
    add-float/2addr p4, p2

    .line 184
    iput p4, p3, Landroid/graphics/RectF;->bottom:F

    .line 185
    .line 186
    iput p5, p3, Landroid/graphics/RectF;->left:F

    .line 187
    .line 188
    iget p4, p0, Lv4/c;->c:F

    .line 189
    .line 190
    add-float/2addr p4, p5

    .line 191
    iput p4, p3, Landroid/graphics/RectF;->right:F

    .line 192
    .line 193
    iget-object p3, p0, Lv4/c;->a:Lx4/d;

    .line 194
    .line 195
    invoke-virtual {p3}, Lx4/d;->u()Z

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    if-eqz p3, :cond_7

    .line 200
    .line 201
    iget-object p3, p0, Lv4/c;->a:Lx4/d;

    .line 202
    .line 203
    invoke-virtual {p3}, Lx4/d;->h()F

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    iget p4, p0, Lv4/c;->c:F

    .line 208
    .line 209
    add-float v3, p5, p4

    .line 210
    .line 211
    iget p4, p0, Lv4/c;->d:F

    .line 212
    .line 213
    add-float v4, p2, p4

    .line 214
    .line 215
    move-object v0, p1

    .line 216
    move v1, p5

    .line 217
    move v2, p2

    .line 218
    move-object v5, p9

    .line 219
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 220
    .line 221
    .line 222
    iget-object p2, p0, Lv4/c;->a:Lx4/d;

    .line 223
    .line 224
    invoke-virtual {p2}, Lx4/d;->i()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    .line 230
    .line 231
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 232
    .line 233
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    .line 238
    .line 239
    iget-object p2, p0, Lv4/c;->v:Landroid/graphics/RectF;

    .line 240
    .line 241
    iget p3, p0, Lv4/c;->j:F

    .line 242
    .line 243
    invoke-virtual {p1, p2, p3, p3, p9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 244
    .line 245
    .line 246
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 247
    .line 248
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_7
    iget-object p2, p0, Lv4/c;->v:Landroid/graphics/RectF;

    .line 253
    .line 254
    iget p3, p0, Lv4/c;->j:F

    .line 255
    .line 256
    invoke-virtual {p1, p2, p3, p3, p9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_8
    iget p3, p0, Lv4/c;->c:F

    .line 261
    .line 262
    add-float v3, p5, p3

    .line 263
    .line 264
    iget p3, p0, Lv4/c;->d:F

    .line 265
    .line 266
    add-float v4, p2, p3

    .line 267
    .line 268
    move-object v0, p1

    .line 269
    move v1, p5

    .line 270
    move v2, p2

    .line 271
    move-object v5, p9

    .line 272
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    .line 274
    .line 275
    iget-object p3, p0, Lv4/c;->a:Lx4/d;

    .line 276
    .line 277
    invoke-virtual {p3}, Lx4/d;->u()Z

    .line 278
    .line 279
    .line 280
    move-result p3

    .line 281
    if-eqz p3, :cond_9

    .line 282
    .line 283
    iget-object p3, p0, Lv4/c;->a:Lx4/d;

    .line 284
    .line 285
    invoke-virtual {p3}, Lx4/d;->i()I

    .line 286
    .line 287
    .line 288
    move-result p3

    .line 289
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    .line 291
    .line 292
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 293
    .line 294
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    .line 296
    .line 297
    iget-object p3, p0, Lv4/c;->a:Lx4/d;

    .line 298
    .line 299
    invoke-virtual {p3}, Lx4/d;->h()F

    .line 300
    .line 301
    .line 302
    move-result p3

    .line 303
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    .line 305
    .line 306
    iget p3, p0, Lv4/c;->c:F

    .line 307
    .line 308
    add-float v3, p5, p3

    .line 309
    .line 310
    iget p3, p0, Lv4/c;->d:F

    .line 311
    .line 312
    add-float v4, p2, p3

    .line 313
    .line 314
    move-object v0, p1

    .line 315
    move v1, p5

    .line 316
    move v2, p2

    .line 317
    move-object v5, p9

    .line 318
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 319
    .line 320
    .line 321
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 322
    .line 323
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    .line 325
    .line 326
    :cond_9
    :goto_4
    iget-object p2, p0, Lv4/c;->a:Lx4/d;

    .line 327
    .line 328
    invoke-virtual {p2}, Lx4/d;->n()I

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    .line 334
    .line 335
    iget-boolean p2, p0, Lv4/c;->q:Z

    .line 336
    .line 337
    if-eqz p2, :cond_a

    .line 338
    .line 339
    iget p2, p0, Lv4/c;->c:F

    .line 340
    .line 341
    div-float/2addr p2, p8

    .line 342
    iget p3, p0, Lv4/c;->f:F

    .line 343
    .line 344
    div-float/2addr p3, p8

    .line 345
    sub-float/2addr p2, p3

    .line 346
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    goto :goto_5

    .line 351
    :cond_a
    iget p2, p0, Lv4/c;->o:I

    .line 352
    .line 353
    :goto_5
    int-to-float p2, p2

    .line 354
    add-float/2addr p5, p2

    .line 355
    iget-object p2, p0, Lv4/c;->a:Lx4/d;

    .line 356
    .line 357
    invoke-virtual {p2}, Lx4/d;->v()Z

    .line 358
    .line 359
    .line 360
    move-result p2

    .line 361
    if-eqz p2, :cond_b

    .line 362
    .line 363
    invoke-static {}, Lcom/miui/calendar/util/w;->c()Landroid/graphics/Typeface;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 368
    .line 369
    .line 370
    :cond_b
    iget-object p2, p0, Lv4/c;->b:Ljava/lang/String;

    .line 371
    .line 372
    int-to-float p3, p7

    .line 373
    invoke-virtual {p1, p2, p5, p3, p9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    iget-boolean p2, p0, Lv4/c;->w:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lv4/c;->w:Z

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lv4/c;->b(Landroid/graphics/Paint;)F

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lv4/c;->c(Landroid/graphics/Paint;)F

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lv4/c;->r:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lv4/c;->k:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    iget p2, p0, Lv4/c;->c:F

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget p3, p0, Lv4/c;->d:F

    .line 27
    .line 28
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    invoke-static {p1, p2, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p2, p0, Lv4/c;->k:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lv4/c;->k:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    :cond_0
    iget p1, p0, Lv4/c;->c:F

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1
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
.end method
