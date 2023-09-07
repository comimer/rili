.class public Lmiuix/slidingwidget/widget/SlidingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SlidingLinearLayout.java"


# instance fields
.field private final preAddViewPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final preLayout:[I

.field private final preRemoveViewPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private preAddView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance v4, Landroid/util/Pair;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
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
.end method

.method private preRemoveView(II)V
    .locals 7

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-lt v1, p1, :cond_0

    add-int v3, p1, p2

    if-lt v1, v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 8
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private preRemoveView(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 4
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private show(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/view/View;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-wide/16 v2, 0x1

    .line 16
    .line 17
    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->a(J)Lmiuix/animation/IVisibleStyle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->a(J)Lmiuix/animation/IVisibleStyle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-wide/16 v2, 0x64

    .line 26
    .line 27
    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->s(J)Lmiuix/animation/IVisibleStyle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Lmiuix/animation/IVisibleStyle;->l()Lmiuix/animation/IVisibleStyle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-array v0, v1, [Ld9/a;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->E([Ld9/a;)V

    .line 38
    .line 39
    .line 40
    return-void
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
.end method


# virtual methods
.method public addViewSliding(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 6
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 9
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_d

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-ne v2, v5, :cond_1

    .line 21
    .line 22
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 23
    .line 24
    aget v2, v2, v5

    .line 25
    .line 26
    sub-int v2, v2, p3

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 33
    .line 34
    aget v7, v7, v3

    .line 35
    .line 36
    sub-int v7, v7, p5

    .line 37
    .line 38
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-le v2, v7, :cond_0

    .line 43
    .line 44
    :goto_0
    move v2, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move v2, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 49
    .line 50
    aget v2, v2, v6

    .line 51
    .line 52
    sub-int v2, v2, p2

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 59
    .line 60
    aget v7, v7, v4

    .line 61
    .line 62
    sub-int v7, v7, p4

    .line 63
    .line 64
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-le v2, v7, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_1
    move v7, v6

    .line 72
    :goto_2
    if-ge v7, v1, :cond_c

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 79
    .line 80
    const-string v10, "end"

    .line 81
    .line 82
    const-string v11, "start"

    .line 83
    .line 84
    const/16 v12, 0x8

    .line 85
    .line 86
    if-eqz v9, :cond_6

    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-lez v9, :cond_6

    .line 93
    .line 94
    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Landroid/util/Pair;

    .line 101
    .line 102
    if-eqz v9, :cond_5

    .line 103
    .line 104
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    if-eq v14, v12, :cond_5

    .line 109
    .line 110
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Ljava/lang/Float;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    cmpl-float v3, v14, v3

    .line 123
    .line 124
    if-nez v3, :cond_2

    .line 125
    .line 126
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    iget-object v14, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v14, Ljava/lang/Float;

    .line 133
    .line 134
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    cmpl-float v3, v3, v14

    .line 139
    .line 140
    if-eqz v3, :cond_3

    .line 141
    .line 142
    :cond_2
    if-nez v2, :cond_3

    .line 143
    .line 144
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v3, Ljava/lang/Float;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    sub-float/2addr v3, v14

    .line 157
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v9, Ljava/lang/Float;

    .line 160
    .line 161
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 166
    .line 167
    .line 168
    move-result v14

    .line 169
    sub-float/2addr v9, v14

    .line 170
    goto :goto_3

    .line 171
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    iget-object v14, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v14, Ljava/lang/Float;

    .line 178
    .line 179
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    cmpl-float v3, v3, v14

    .line 184
    .line 185
    if-nez v3, :cond_4

    .line 186
    .line 187
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v9, Ljava/lang/Float;

    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    cmpl-float v3, v3, v9

    .line 200
    .line 201
    if-nez v3, :cond_4

    .line 202
    .line 203
    if-eqz v2, :cond_4

    .line 204
    .line 205
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 206
    .line 207
    aget v9, v3, v6

    .line 208
    .line 209
    sub-int v9, v9, p2

    .line 210
    .line 211
    int-to-float v9, v9

    .line 212
    aget v3, v3, v5

    .line 213
    .line 214
    sub-int v3, v3, p3

    .line 215
    .line 216
    int-to-float v3, v3

    .line 217
    move/from16 v16, v9

    .line 218
    .line 219
    move v9, v3

    .line 220
    move/from16 v3, v16

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_4
    const/4 v3, 0x0

    .line 224
    const/4 v9, 0x0

    .line 225
    :goto_3
    new-instance v14, Le9/a;

    .line 226
    .line 227
    invoke-direct {v14, v11}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    sget-object v4, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 231
    .line 232
    move v15, v7

    .line 233
    float-to-double v6, v3

    .line 234
    invoke-virtual {v14, v4, v6, v7}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    sget-object v6, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 239
    .line 240
    float-to-double v12, v9

    .line 241
    invoke-virtual {v3, v6, v12, v13}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    new-instance v9, Le9/a;

    .line 246
    .line 247
    invoke-direct {v9, v10}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    const-wide/16 v12, 0x0

    .line 251
    .line 252
    invoke-virtual {v9, v4, v12, v13}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v4, v6, v12, v13}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    new-array v6, v5, [Landroid/view/View;

    .line 261
    .line 262
    const/4 v9, 0x0

    .line 263
    aput-object v8, v6, v9

    .line 264
    .line 265
    invoke-static {v6}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-interface {v6}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-interface {v6, v3}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    new-array v12, v9, [Ld9/a;

    .line 278
    .line 279
    invoke-interface {v6, v3, v4, v12}, Lmiuix/animation/f;->x(Ljava/lang/Object;Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_5
    move v15, v7

    .line 284
    :goto_4
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 285
    .line 286
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_6
    move v15, v7

    .line 291
    :goto_5
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 292
    .line 293
    if-eqz v3, :cond_b

    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-lez v3, :cond_b

    .line 300
    .line 301
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 302
    .line 303
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Landroid/util/Pair;

    .line 308
    .line 309
    if-eqz v3, :cond_a

    .line 310
    .line 311
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    const/16 v6, 0x8

    .line 316
    .line 317
    if-eq v4, v6, :cond_a

    .line 318
    .line 319
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v6, Ljava/lang/Float;

    .line 326
    .line 327
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    cmpl-float v4, v4, v6

    .line 332
    .line 333
    if-nez v4, :cond_7

    .line 334
    .line 335
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v6, Ljava/lang/Float;

    .line 342
    .line 343
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    cmpl-float v4, v4, v6

    .line 348
    .line 349
    if-eqz v4, :cond_8

    .line 350
    .line 351
    :cond_7
    if-nez v2, :cond_8

    .line 352
    .line 353
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v4, Ljava/lang/Float;

    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    sub-float v14, v4, v6

    .line 366
    .line 367
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v3, Ljava/lang/Float;

    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    sub-float/2addr v3, v4

    .line 380
    goto :goto_6

    .line 381
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v6, Ljava/lang/Float;

    .line 388
    .line 389
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    cmpl-float v4, v4, v6

    .line 394
    .line 395
    if-nez v4, :cond_9

    .line 396
    .line 397
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v3, Ljava/lang/Float;

    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    cmpl-float v3, v4, v3

    .line 410
    .line 411
    if-nez v3, :cond_9

    .line 412
    .line 413
    if-eqz v2, :cond_9

    .line 414
    .line 415
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 416
    .line 417
    const/4 v4, 0x0

    .line 418
    aget v6, v3, v4

    .line 419
    .line 420
    sub-int v6, v6, p2

    .line 421
    .line 422
    int-to-float v14, v6

    .line 423
    aget v3, v3, v5

    .line 424
    .line 425
    sub-int v3, v3, p3

    .line 426
    .line 427
    int-to-float v3, v3

    .line 428
    goto :goto_6

    .line 429
    :cond_9
    const/4 v3, 0x0

    .line 430
    const/4 v14, 0x0

    .line 431
    :goto_6
    new-instance v4, Le9/a;

    .line 432
    .line 433
    invoke-direct {v4, v11}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    sget-object v6, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 437
    .line 438
    float-to-double v11, v14

    .line 439
    invoke-virtual {v4, v6, v11, v12}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    sget-object v7, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 444
    .line 445
    float-to-double v11, v3

    .line 446
    invoke-virtual {v4, v7, v11, v12}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    new-instance v4, Le9/a;

    .line 451
    .line 452
    invoke-direct {v4, v10}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    const-wide/16 v9, 0x0

    .line 456
    .line 457
    invoke-virtual {v4, v6, v9, v10}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-virtual {v4, v7, v9, v10}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    new-array v6, v5, [Landroid/view/View;

    .line 466
    .line 467
    const/4 v7, 0x0

    .line 468
    aput-object v8, v6, v7

    .line 469
    .line 470
    invoke-static {v6}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    invoke-interface {v6}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    invoke-interface {v6, v3}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    new-array v9, v7, [Ld9/a;

    .line 483
    .line 484
    invoke-interface {v6, v3, v4, v9}, Lmiuix/animation/f;->x(Ljava/lang/Object;Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 485
    .line 486
    .line 487
    :cond_a
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 488
    .line 489
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    :cond_b
    add-int/lit8 v7, v15, 0x1

    .line 493
    .line 494
    const/4 v3, 0x3

    .line 495
    const/4 v4, 0x2

    .line 496
    const/4 v6, 0x0

    .line 497
    goto/16 :goto_2

    .line 498
    .line 499
    :cond_c
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 502
    .line 503
    .line 504
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 505
    .line 506
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 507
    .line 508
    .line 509
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 510
    .line 511
    const/4 v2, 0x0

    .line 512
    aput p2, v1, v2

    .line 513
    .line 514
    aput p3, v1, v5

    .line 515
    .line 516
    const/4 v2, 0x2

    .line 517
    aput p4, v1, v2

    .line 518
    .line 519
    const/4 v2, 0x3

    .line 520
    aput p5, v1, v2

    .line 521
    .line 522
    :cond_d
    return-void
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
.end method

.method public removeViewSliding(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object p1, v1, v2

    .line 9
    .line 10
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-wide/16 v3, 0x1

    .line 19
    .line 20
    invoke-interface {v1, v3, v4}, Lmiuix/animation/IVisibleStyle;->a(J)Lmiuix/animation/IVisibleStyle;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lmiuix/animation/IVisibleStyle;->r()Lmiuix/animation/IVisibleStyle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-array v3, v0, [Ld9/a;

    .line 29
    .line 30
    new-instance v4, Ld9/a;

    .line 31
    .line 32
    invoke-direct {v4}, Ld9/a;-><init>()V

    .line 33
    .line 34
    .line 35
    new-array v0, v0, [Lg9/b;

    .line 36
    .line 37
    new-instance v5, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;

    .line 38
    .line 39
    invoke-direct {v5, p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    aput-object v5, v0, v2

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    aput-object p1, v3, v2

    .line 49
    .line 50
    invoke-interface {v1, v3}, Lmiuix/animation/IVisibleStyle;->F([Ld9/a;)V

    .line 51
    .line 52
    .line 53
    return-void
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
.end method

.method public removeViewSlidingAt(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v2, v1, [Landroid/view/View;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v0, v2, v3

    .line 13
    .line 14
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-wide/16 v4, 0x1

    .line 23
    .line 24
    invoke-interface {v0, v4, v5}, Lmiuix/animation/IVisibleStyle;->a(J)Lmiuix/animation/IVisibleStyle;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->r()Lmiuix/animation/IVisibleStyle;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-array v2, v1, [Ld9/a;

    .line 33
    .line 34
    new-instance v4, Ld9/a;

    .line 35
    .line 36
    invoke-direct {v4}, Ld9/a;-><init>()V

    .line 37
    .line 38
    .line 39
    new-array v1, v1, [Lg9/b;

    .line 40
    .line 41
    new-instance v5, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;

    .line 42
    .line 43
    invoke-direct {v5, p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;I)V

    .line 44
    .line 45
    .line 46
    aput-object v5, v1, v3

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    aput-object p1, v2, v3

    .line 53
    .line 54
    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->F([Ld9/a;)V

    .line 55
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
.end method

.method public removeViewsSliding(II)V
    .locals 15

    .line 1
    invoke-direct/range {p0 .. p2}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(II)V

    .line 2
    .line 3
    .line 4
    add-int v6, p1, p2

    .line 5
    .line 6
    move/from16 v7, p1

    .line 7
    .line 8
    :goto_0
    if-ge v7, v6, :cond_1

    .line 9
    .line 10
    move-object v8, p0

    .line 11
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v2, v1, [Landroid/view/View;

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    aput-object v0, v2, v9

    .line 28
    .line 29
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-wide/16 v2, 0x1

    .line 38
    .line 39
    invoke-interface {v0, v2, v3}, Lmiuix/animation/IVisibleStyle;->a(J)Lmiuix/animation/IVisibleStyle;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->r()Lmiuix/animation/IVisibleStyle;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    new-array v11, v1, [Ld9/a;

    .line 48
    .line 49
    new-instance v12, Ld9/a;

    .line 50
    .line 51
    invoke-direct {v12}, Ld9/a;-><init>()V

    .line 52
    .line 53
    .line 54
    new-array v13, v1, [Lg9/b;

    .line 55
    .line 56
    new-instance v14, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;

    .line 57
    .line 58
    move-object v0, v14

    .line 59
    move-object v1, p0

    .line 60
    move v2, v7

    .line 61
    move v3, v6

    .line 62
    move/from16 v4, p1

    .line 63
    .line 64
    move/from16 v5, p2

    .line 65
    .line 66
    invoke-direct/range {v0 .. v5}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;IIII)V

    .line 67
    .line 68
    .line 69
    aput-object v14, v13, v9

    .line 70
    .line 71
    invoke-virtual {v12, v13}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    aput-object v0, v11, v9

    .line 76
    .line 77
    invoke-interface {v10, v11}, Lmiuix/animation/IVisibleStyle;->F([Ld9/a;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object v8, p0

    .line 84
    return-void
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
.end method
