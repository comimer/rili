.class public Lmiuix/springback/view/a;
.super Ljava/lang/Object;
.source "SpringBackLayoutHelper.java"


# instance fields
.field private a:I

.field b:F

.field c:F

.field d:I

.field e:I

.field f:I

.field private g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/springback/view/a;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lmiuix/springback/view/a;->g:Landroid/view/ViewGroup;

    .line 8
    .line 9
    iput p2, p0, Lmiuix/springback/view/a;->f:I

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lmiuix/springback/view/a;->a:I

    .line 24
    .line 25
    return-void
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
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

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
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_5

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    if-eq v0, p1, :cond_5

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget v0, p0, Lmiuix/springback/view/a;->d:I

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-gez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget v0, p0, Lmiuix/springback/view/a;->b:F

    .line 40
    .line 41
    sub-float/2addr v1, v0

    .line 42
    iget v0, p0, Lmiuix/springback/view/a;->c:F

    .line 43
    .line 44
    sub-float/2addr p1, v0

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v4, p0, Lmiuix/springback/view/a;->a:I

    .line 50
    .line 51
    int-to-float v4, v4

    .line 52
    cmpl-float v0, v0, v4

    .line 53
    .line 54
    if-gtz v0, :cond_3

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget v4, p0, Lmiuix/springback/view/a;->a:I

    .line 61
    .line 62
    int-to-float v4, v4

    .line 63
    cmpl-float v0, v0, v4

    .line 64
    .line 65
    if-lez v0, :cond_8

    .line 66
    .line 67
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    cmpl-float p1, p1, v0

    .line 76
    .line 77
    if-lez p1, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move v2, v3

    .line 81
    :goto_0
    iput v2, p0, Lmiuix/springback/view/a;->e:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    iput v1, p0, Lmiuix/springback/view/a;->e:I

    .line 85
    .line 86
    iget-object p1, p0, Lmiuix/springback/view/a;->g:Landroid/view/ViewGroup;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lmiuix/springback/view/a;->d:I

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-gez v0, :cond_7

    .line 103
    .line 104
    return-void

    .line 105
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iput v2, p0, Lmiuix/springback/view/a;->b:F

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lmiuix/springback/view/a;->c:F

    .line 116
    .line 117
    iput v1, p0, Lmiuix/springback/view/a;->e:I

    .line 118
    .line 119
    :cond_8
    :goto_1
    return-void
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [I

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lmiuix/springback/view/a;->g:Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 29
    .line 30
    .line 31
    aget v0, v1, v0

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aget v1, v1, v3

    .line 35
    .line 36
    iget-object v3, p0, Lmiuix/springback/view/a;->g:Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-int/2addr v3, v1

    .line 43
    iget-object v4, p0, Lmiuix/springback/view/a;->g:Landroid/view/ViewGroup;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/2addr v4, v0

    .line 50
    new-instance v5, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v5, v0, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    .line 54
    .line 55
    float-to-int p1, p1

    .line 56
    float-to-int v0, v2

    .line 57
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :cond_0
    return v0

    .line 63
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
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
.end method
