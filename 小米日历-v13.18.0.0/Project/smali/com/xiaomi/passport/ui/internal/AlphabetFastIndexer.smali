.class public Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "AlphabetFastIndexer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$d;,
        Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

.field private e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private f:I

.field private g:I

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/os/Handler;

.field private j:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$a;-><init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->f:I

    .line 5
    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->g:I

    .line 6
    new-instance v1, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$b;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$b;-><init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$c;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$c;-><init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->i:Landroid/os/Handler;

    .line 8
    sget-object v1, Ln5/i;->j0:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 10
    sget v1, Ln5/i;->k0:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    array-length p3, v1

    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

    .line 12
    array-length p3, v1

    move v2, v0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v3, v1, v0

    .line 13
    iget-object v4, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_0

    .line 14
    :cond_0
    sget v0, Ln5/a;->b:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

    .line 15
    :cond_1
    new-instance p3, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

    invoke-direct {p3, p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;-><init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->d:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->d:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

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

.method static synthetic d(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->l()V

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

.method static synthetic e(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->b:Landroid/widget/TextView;

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

.method static synthetic f(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

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

.method static synthetic g(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->f:I

    .line 2
    .line 3
    return p1
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

.method private getListOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/ListView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/widget/ListView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    instance-of v3, v0, Landroid/widget/WrapperListAdapter;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    check-cast v0, Landroid/widget/WrapperListAdapter;

    .line 20
    .line 21
    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz v2, :cond_2

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Landroid/widget/SectionIndexer;

    .line 30
    .line 31
    :cond_2
    return-object v1
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

.method private j(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "!"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string p1, "\u2605"

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->b:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->b:Landroid/widget/TextView;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->i:Landroid/os/Handler;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->i:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->i:Landroid/os/Handler;

    .line 46
    .line 47
    const-wide/16 v1, 0x1f4

    .line 48
    .line 49
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
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

.method private k(FLandroid/widget/SectionIndexer;)I
    .locals 4

    .line 1
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sub-int/2addr v3, v1

    .line 22
    sub-int/2addr v3, v2

    .line 23
    if-gtz v3, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    int-to-float v1, v1

    .line 27
    sub-float/2addr p1, v1

    .line 28
    int-to-float v1, v3

    .line 29
    div-float/2addr p1, v1

    .line 30
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    int-to-float v2, v2

    .line 34
    mul-float/2addr v2, p1

    .line 35
    float-to-int p1, v2

    .line 36
    if-gez p1, :cond_2

    .line 37
    .line 38
    return v0

    .line 39
    :cond_2
    array-length v0, v1

    .line 40
    if-lt p1, v0, :cond_3

    .line 41
    .line 42
    array-length p1, p2

    .line 43
    return p1

    .line 44
    :cond_3
    aget-object p1, v1, p1

    .line 45
    .line 46
    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-gez p1, :cond_4

    .line 51
    .line 52
    neg-int p1, p1

    .line 53
    add-int/lit8 p1, p1, -0x2

    .line 54
    .line 55
    :cond_4
    if-gez p1, :cond_5

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    :cond_5
    return p1
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

.method private l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getListOffset()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int/2addr v2, v3

    .line 24
    invoke-interface {v1, v2}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    if-eq v2, v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    aget-object v1, v1, v2

    .line 36
    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :cond_1
    iget v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->c:I

    .line 52
    .line 53
    if-eq v1, v0, :cond_3

    .line 54
    .line 55
    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->c:I

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    iget v2, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->g:I

    .line 59
    .line 60
    if-eq v1, v2, :cond_2

    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->n(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private m(Landroid/widget/SectionIndexer;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getListOffset()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    int-to-float v5, v3

    .line 18
    const/high16 v6, 0x3f800000    # 1.0f

    .line 19
    .line 20
    div-float/2addr v6, v5

    .line 21
    const/high16 v5, 0x41000000    # 8.0f

    .line 22
    .line 23
    div-float/2addr v6, v5

    .line 24
    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v8, 0x1

    .line 29
    if-eqz v5, :cond_b

    .line 30
    .line 31
    array-length v9, v5

    .line 32
    if-le v9, v8, :cond_b

    .line 33
    .line 34
    array-length v9, v5

    .line 35
    if-lt v2, v9, :cond_0

    .line 36
    .line 37
    add-int/lit8 v10, v9, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v10, v2

    .line 41
    :goto_0
    invoke-interface {v1, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    add-int/lit8 v12, v10, 0x1

    .line 46
    .line 47
    add-int/lit8 v13, v9, -0x1

    .line 48
    .line 49
    if-ge v10, v13, :cond_1

    .line 50
    .line 51
    invoke-interface {v1, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v13, v3

    .line 57
    :goto_1
    move v14, v10

    .line 58
    if-ne v13, v11, :cond_5

    .line 59
    .line 60
    move v15, v11

    .line 61
    :cond_2
    if-lez v14, :cond_4

    .line 62
    .line 63
    add-int/lit8 v14, v14, -0x1

    .line 64
    .line 65
    invoke-interface {v1, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 66
    .line 67
    .line 68
    move-result v15

    .line 69
    if-eq v15, v11, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    if-nez v14, :cond_2

    .line 73
    .line 74
    move v14, v10

    .line 75
    move v11, v15

    .line 76
    const/4 v15, 0x0

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move v14, v10

    .line 79
    :goto_2
    move v11, v15

    .line 80
    :cond_5
    move v15, v14

    .line 81
    :goto_3
    add-int/lit8 v16, v12, 0x1

    .line 82
    .line 83
    move/from16 v7, v16

    .line 84
    .line 85
    :goto_4
    if-ge v7, v9, :cond_6

    .line 86
    .line 87
    invoke-interface {v1, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-ne v8, v13, :cond_6

    .line 92
    .line 93
    add-int/lit8 v7, v7, 0x1

    .line 94
    .line 95
    add-int/lit8 v12, v12, 0x1

    .line 96
    .line 97
    const/4 v8, 0x1

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    int-to-float v1, v14

    .line 100
    int-to-float v7, v9

    .line 101
    div-float/2addr v1, v7

    .line 102
    int-to-float v8, v12

    .line 103
    div-float/2addr v8, v7

    .line 104
    int-to-float v2, v2

    .line 105
    div-float/2addr v2, v7

    .line 106
    if-ne v14, v10, :cond_7

    .line 107
    .line 108
    sub-float v7, v2, v1

    .line 109
    .line 110
    cmpg-float v6, v7, v6

    .line 111
    .line 112
    if-gez v6, :cond_7

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_7
    sub-int/2addr v13, v11

    .line 116
    int-to-float v6, v13

    .line 117
    sub-float/2addr v2, v1

    .line 118
    mul-float/2addr v6, v2

    .line 119
    sub-float/2addr v8, v1

    .line 120
    div-float/2addr v6, v8

    .line 121
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/2addr v11, v1

    .line 126
    :goto_5
    const/4 v1, 0x1

    .line 127
    sub-int/2addr v3, v1

    .line 128
    if-le v11, v3, :cond_8

    .line 129
    .line 130
    move v11, v3

    .line 131
    :cond_8
    iget-object v1, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 132
    .line 133
    instance-of v2, v1, Landroid/widget/ExpandableListView;

    .line 134
    .line 135
    if-eqz v2, :cond_9

    .line 136
    .line 137
    check-cast v1, Landroid/widget/ExpandableListView;

    .line 138
    .line 139
    add-int/2addr v11, v4

    .line 140
    invoke-static {v11}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/4 v3, 0x0

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 150
    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_9
    const/4 v3, 0x0

    .line 154
    instance-of v2, v1, Landroid/widget/ListView;

    .line 155
    .line 156
    if-eqz v2, :cond_a

    .line 157
    .line 158
    check-cast v1, Landroid/widget/ListView;

    .line 159
    .line 160
    add-int/2addr v11, v4

    .line 161
    invoke-virtual {v1, v11, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 162
    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_a
    add-int/2addr v11, v4

    .line 166
    invoke-virtual {v1, v11}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_b
    mul-int v1, v2, v3

    .line 171
    .line 172
    int-to-float v1, v1

    .line 173
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iget-object v2, v0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 178
    .line 179
    instance-of v3, v2, Landroid/widget/ExpandableListView;

    .line 180
    .line 181
    if-eqz v3, :cond_c

    .line 182
    .line 183
    check-cast v2, Landroid/widget/ExpandableListView;

    .line 184
    .line 185
    add-int/2addr v1, v4

    .line 186
    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    invoke-virtual {v2, v3, v4}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    const/4 v3, 0x0

    .line 195
    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_c
    const/4 v3, 0x0

    .line 200
    instance-of v6, v2, Landroid/widget/ListView;

    .line 201
    .line 202
    if-eqz v6, :cond_d

    .line 203
    .line 204
    check-cast v2, Landroid/widget/ListView;

    .line 205
    .line 206
    add-int/2addr v1, v4

    .line 207
    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_d
    add-int/2addr v1, v4

    .line 212
    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 213
    .line 214
    .line 215
    :goto_6
    const/4 v15, -0x1

    .line 216
    :goto_7
    if-ltz v15, :cond_e

    .line 217
    .line 218
    if-eqz v5, :cond_e

    .line 219
    .line 220
    aget-object v1, v5, v15

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-nez v2, :cond_e

    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    const/4 v3, 0x1

    .line 234
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    :cond_e
    return-void
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
.end method

.method private n(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->d:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-gez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v1, v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    int-to-float v1, v1

    .line 24
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

    .line 25
    .line 26
    array-length v2, v2

    .line 27
    int-to-float v2, v2

    .line 28
    div-float/2addr v1, v2

    .line 29
    int-to-float p1, p1

    .line 30
    mul-float/2addr p1, v1

    .line 31
    int-to-float v0, v0

    .line 32
    add-float/2addr p1, v0

    .line 33
    const/high16 v0, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr v1, v0

    .line 36
    add-float/2addr p1, v1

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    .line 39
    add-float/2addr p1, v0

    .line 40
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->d:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->e:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;->b(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

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


# virtual methods
.method public h()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->c:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    sget v1, Ln5/e;->w:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->b:Landroid/widget/TextView;

    .line 19
    .line 20
    sget v1, Ln5/e;->x:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/AdapterView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->b:Landroid/widget/TextView;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->l()V

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
.end method

.method public i(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->f:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j(Ljava/lang/CharSequence;)V

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

.method o(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3
    .line 4
    .line 5
    iput v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->g:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->i:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->b:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->i:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->i:Landroid/os/Handler;

    .line 35
    .line 36
    int-to-long v2, p1

    .line 37
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
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
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->h()V

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
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v1, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    if-gtz v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    array-length v3, v2

    .line 25
    int-to-float v3, v3

    .line 26
    div-float/2addr v1, v3

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float/2addr v3, v4

    .line 35
    int-to-float v0, v0

    .line 36
    div-float v4, v1, v4

    .line 37
    .line 38
    add-float/2addr v0, v4

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    array-length v5, v2

    .line 41
    if-ge v4, v5, :cond_1

    .line 42
    .line 43
    iget-object v5, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->d:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    move-object v6, p1

    .line 50
    move v8, v4

    .line 51
    move v9, v3

    .line 52
    move v10, v0

    .line 53
    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;->a(Landroid/graphics/Canvas;ZIFF)V

    .line 54
    .line 55
    .line 56
    add-float/2addr v0, v1

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->c:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->h:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->a:Landroid/widget/AdapterView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->o(I)V

    .line 7
    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->o(I)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    and-int/lit16 v2, v2, 0xff

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    if-eq v2, v4, :cond_2

    .line 31
    .line 32
    if-eq v2, v3, :cond_4

    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    if-eq v2, p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 39
    .line 40
    .line 41
    :goto_0
    const/16 p1, 0x1f4

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->o(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iput v4, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->g:I

    .line 48
    .line 49
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 50
    .line 51
    .line 52
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-direct {p0, v2, v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->k(FLandroid/widget/SectionIndexer;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-gez v2, :cond_5

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    array-length v1, v1

    .line 68
    if-lt v2, v1, :cond_6

    .line 69
    .line 70
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    array-length v1, v1

    .line 75
    sub-int/2addr v1, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_6
    move v1, v2

    .line 78
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->m(Landroid/widget/SectionIndexer;I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->d:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    div-int/2addr v1, v3

    .line 90
    int-to-float v1, v1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;->c(FF)V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 99
    .line 100
    .line 101
    :goto_2
    return v4
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

.method public setSectionAlphabets([Ljava/lang/String;)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, [Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->j:[Ljava/lang/String;

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
