.class public Lcom/android/calendar/homepage/t0;
.super Ljava/lang/Object;
.source "HomePageAnimationController.java"


# static fields
.field private static j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/homepage/t0;",
            ">;"
        }
    .end annotation
.end field

.field private static k:[I

.field private static l:[I

.field private static m:[I

.field private static final n:Landroid/view/animation/Interpolator;

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/Boolean;

.field private f:Landroid/content/Context;

.field private g:Landroid/content/res/Resources;

.field private h:Lcom/android/calendar/homepage/AllInOneActivity$h;

.field private i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/android/calendar/homepage/t0;->k:[I

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/android/calendar/homepage/t0;->l:[I

    .line 15
    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    fill-array-data v0, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/calendar/homepage/t0;->m:[I

    .line 22
    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 24
    .line 25
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/android/calendar/homepage/t0;->n:Landroid/view/animation/Interpolator;

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 4
        0x7f08027d
        0x7f08027f
        0x7f08027b
        0x7f080279
    .end array-data

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
    :array_1
    .array-data 4
        0x7f0806ce
        0x7f0806cf
        0x7f0806cd
        0x7f0806bf
    .end array-data

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
    :array_2
    .array-data 4
        0x7f1205eb
        0x7f1205ec
        0x7f1205ea
        0x7f1205e9
    .end array-data
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

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/calendar/homepage/t0;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/calendar/homepage/t0;->d:Z

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/calendar/homepage/t0;->e:Ljava/lang/Boolean;

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/calendar/homepage/t0;->i:Ljava/lang/Boolean;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 24
    .line 25
    const v1, 0x7f0703f1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput v0, Lcom/android/calendar/homepage/t0;->r:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 35
    .line 36
    const v1, 0x7f060536

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/calendar/homepage/t0;->a:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/android/calendar/homepage/t0;->b:I

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 54
    .line 55
    const v1, 0x7f0703ef

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    sput v0, Lcom/android/calendar/homepage/t0;->s:I

    .line 63
    .line 64
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->t(Landroid/content/Context;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    sput p1, Lcom/android/calendar/homepage/t0;->t:I

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 71
    .line 72
    const v0, 0x7f070130

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    sput p1, Lcom/android/calendar/homepage/t0;->p:I

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 82
    .line 83
    const v0, 0x7f0708d6

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    sput p1, Lcom/android/calendar/homepage/t0;->q:I

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 93
    .line 94
    const v0, 0x7f07012a

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    sput p1, Lcom/android/calendar/homepage/t0;->u:I

    .line 102
    .line 103
    return-void
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

.method private synthetic A(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->u:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->r:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private synthetic B(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->u:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    const/4 v1, 0x6

    .line 22
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->A:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-static {v0}, La4/d;->q(Ljava/util/Calendar;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void
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

.method private C(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->q:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 13
    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private D(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_0

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    const-string v5, ""

    .line 13
    .line 14
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x3

    .line 21
    const v1, 0x7f120020

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq p1, v3, :cond_4

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    if-eq p1, v4, :cond_3

    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    if-eq p1, v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 39
    .line 40
    aget-object p1, p1, v2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 43
    .line 44
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    .line 46
    const v4, 0x7f1205eb

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    aput-object v4, v3, v2

    .line 54
    .line 55
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 66
    .line 67
    aget-object p1, p1, v3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 70
    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    .line 73
    const v4, 0x7f1205ec

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    aput-object v4, v3, v2

    .line 81
    .line 82
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 93
    .line 94
    aget-object p1, p1, v4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 97
    .line 98
    new-array v3, v3, [Ljava/lang/Object;

    .line 99
    .line 100
    const v4, 0x7f1205ea

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    aput-object v4, v3, v2

    .line 108
    .line 109
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 120
    .line 121
    aget-object p1, p1, v0

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 124
    .line 125
    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    .line 127
    const v4, 0x7f1205e9

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    aput-object v4, v3, v2

    .line 135
    .line 136
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void
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

.method private F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->m:Landroid/view/ViewGroup;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->t:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->z:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->z:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->y:Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->f:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    return-void
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

.method public static synthetic a(Lcom/android/calendar/homepage/t0;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/t0;->w(I)V

    return-void
.end method

.method public static synthetic b(Lmiuix/animation/d;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/homepage/t0;->v(Lmiuix/animation/d;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/calendar/homepage/t0;FLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/homepage/t0;->z(FLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/calendar/homepage/t0;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/t0;->x(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/calendar/homepage/t0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/t0;->y(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/calendar/homepage/t0;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/t0;->B(I)V

    return-void
.end method

.method public static synthetic g(Lcom/android/calendar/homepage/t0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/t0;->A(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/android/calendar/homepage/t0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/t0;->c:Z

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

.method static synthetic i(Lcom/android/calendar/homepage/t0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/t0;->c:Z

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

.method static synthetic j(Lcom/android/calendar/homepage/t0;)Lcom/android/calendar/homepage/AllInOneActivity$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

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

.method static synthetic k(Lcom/android/calendar/homepage/t0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/t0;->d:Z

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

.method static synthetic l(Lcom/android/calendar/homepage/t0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

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

.method private n(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "changeView(): to "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Cal:D:HomePageAnimationController"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/t0;->D(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-static {v0, v1}, Lcom/android/calendar/common/Utils;->b1(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/miui/calendar/util/g$m;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-direct {v0, p1, v1}, Lcom/miui/calendar/util/g$m;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x4

    .line 47
    if-ne p1, v0, :cond_0

    .line 48
    .line 49
    new-instance p1, Lcom/miui/calendar/util/g$l;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/miui/calendar/util/g$l;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "to_month_view"

    .line 58
    .line 59
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x2

    .line 64
    if-ne p1, v0, :cond_1

    .line 65
    .line 66
    const-string p1, "to_day_view"

    .line 67
    .line 68
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x1

    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    const-string p1, "to_agenda_view"

    .line 76
    .line 77
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x3

    .line 82
    if-ne p1, v0, :cond_3

    .line 83
    .line 84
    const-string p1, "to_week_view"

    .line 85
    .line 86
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    return-void
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

.method public static declared-synchronized o()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/android/calendar/homepage/t0;->j:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
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

.method public static declared-synchronized p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;
    .locals 2

    .line 1
    const-class v0, Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/calendar/homepage/t0;->j:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/calendar/homepage/t0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/android/calendar/homepage/t0;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/t0;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sput-object p0, Lcom/android/calendar/homepage/t0;->j:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0

    .line 38
    throw p0
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

.method private r(Landroid/view/View;III)V
    .locals 1

    .line 1
    const v0, 0x7f0a05d8

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a05e3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    return-void
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

.method private static synthetic v(Lmiuix/animation/d;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p0}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-array v0, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 19
    .line 20
    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 21
    .line 22
    aput-object v4, v0, v2

    .line 23
    .line 24
    invoke-interface {p0, v1, v0}, Lmiuix/animation/ITouchStyle;->z(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-array v0, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 29
    .line 30
    aput-object v4, v0, v2

    .line 31
    .line 32
    invoke-interface {p0, v1, v0}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0, p2}, Lmiuix/animation/ITouchStyle;->e(Landroid/view/MotionEvent;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p0}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const p1, 0x3f19999a    # 0.6f

    .line 48
    .line 49
    .line 50
    new-array v0, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 51
    .line 52
    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 53
    .line 54
    aput-object v4, v0, v2

    .line 55
    .line 56
    invoke-interface {p0, p1, v0}, Lmiuix/animation/ITouchStyle;->z(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-array p1, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 61
    .line 62
    aput-object v4, p1, v2

    .line 63
    .line 64
    invoke-interface {p0, v1, p1}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p0, p2}, Lmiuix/animation/ITouchStyle;->e(Landroid/view/MotionEvent;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return v3
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

.method private synthetic w(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->e0(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/t0;->n(I)V

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

.method private synthetic x(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/t0;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/calendar/homepage/t0;->c:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lmiuix/view/f;->A:I

    .line 11
    .line 12
    sget v1, Lmiuix/view/f;->k:I

    .line 13
    .line 14
    invoke-static {p2, v0, v1}, Lmiuix/view/HapticCompat;->e(Landroid/view/View;II)Z

    .line 15
    .line 16
    .line 17
    new-instance p2, Lcom/android/calendar/homepage/s0;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Lcom/android/calendar/homepage/s0;-><init>(Lcom/android/calendar/homepage/t0;I)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/android/calendar/homepage/t0;->J(Ljava/lang/Runnable;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
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

.method private synthetic y(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 14
    .line 15
    sget v1, Lcom/android/calendar/homepage/t0;->o:I

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    mul-float/2addr v1, p1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->F:Lcom/miui/calendar/view/MainPanelMotionContainer;

    .line 25
    .line 26
    sget v1, Lcom/android/calendar/homepage/t0;->o:I

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    mul-float/2addr v1, p1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 36
    .line 37
    iget v1, p0, Lcom/android/calendar/homepage/t0;->a:I

    .line 38
    .line 39
    iget v2, p0, Lcom/android/calendar/homepage/t0;->b:I

    .line 40
    .line 41
    invoke-static {v1, v2, p1}, Lcom/miui/calendar/util/x0;->g(IIF)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/calendar/homepage/WeekHeaderView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    return-void
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

.method private synthetic z(FLjava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sub-float/2addr v1, p1

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 14
    .line 15
    sget v2, Lcom/android/calendar/homepage/t0;->s:I

    .line 16
    .line 17
    neg-int v2, v2

    .line 18
    int-to-float v2, v2

    .line 19
    mul-float/2addr v2, p1

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->q:Landroid/widget/TextView;

    .line 26
    .line 27
    sget v2, Lcom/android/calendar/homepage/t0;->s:I

    .line 28
    .line 29
    int-to-float v2, v2

    .line 30
    mul-float/2addr v2, v1

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->q:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->q:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->q:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    return-void
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


# virtual methods
.method public E(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/calendar/homepage/t0;->e:Ljava/lang/Boolean;

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

.method public G(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->a:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/calendar/homepage/t0;->H(Landroid/view/View;II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->m:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/calendar/homepage/t0;->H(Landroid/view/View;II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/calendar/homepage/t0;->H(Landroid/view/View;II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
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

.method public H(Landroid/view/View;II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object p2, v1, v2

    .line 15
    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 p3, 0x1

    .line 21
    aput-object p2, v1, p3

    .line 22
    .line 23
    const-string p2, "backgroundColor"

    .line 24
    .line 25
    invoke-static {p1, p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-wide/16 p2, 0xc8

    .line 30
    .line 31
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 35
    .line 36
    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 43
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

.method public I()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/homepage/t0;->J(Ljava/lang/Runnable;Z)V

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

.method public J(Ljava/lang/Runnable;Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/t0;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Lcom/android/calendar/homepage/AllInOneActivity$h;->g(Lcom/android/calendar/homepage/t0;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Lcom/miui/calendar/util/g$u0;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/miui/calendar/util/g$u0;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-boolean p2, p0, Lcom/android/calendar/homepage/t0;->c:Z

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    xor-int/2addr p2, v0

    .line 33
    const/4 v1, 0x2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    new-array v2, v1, [F

    .line 37
    .line 38
    fill-array-data v2, :array_0

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-array v2, v1, [F

    .line 47
    .line 48
    fill-array-data v2, :array_1

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    const-wide/16 v3, 0x12c

    .line 56
    .line 57
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/android/calendar/homepage/t0;->n:Landroid/view/animation/Interpolator;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Lcom/android/calendar/homepage/p0;

    .line 66
    .line 67
    invoke-direct {v4, p0}, Lcom/android/calendar/homepage/p0;-><init>(Lcom/android/calendar/homepage/t0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    .line 72
    .line 73
    const-string v4, "alpha"

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    iget-object v5, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 78
    .line 79
    iget-object v5, v5, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 80
    .line 81
    new-array v6, v1, [F

    .line 82
    .line 83
    fill-array-data v6, :array_2

    .line 84
    .line 85
    .line 86
    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget-object v5, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 92
    .line 93
    iget-object v5, v5, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 94
    .line 95
    new-array v6, v1, [F

    .line 96
    .line 97
    fill-array-data v6, :array_3

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    :goto_1
    const-wide/16 v5, 0x64

    .line 105
    .line 106
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Lcom/android/calendar/homepage/t0$a;

    .line 113
    .line 114
    invoke-direct {v3, p0, p2}, Lcom/android/calendar/homepage/t0$a;-><init>(Lcom/android/calendar/homepage/t0;Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    .line 119
    .line 120
    if-eqz p2, :cond_4

    .line 121
    .line 122
    const-wide/16 v5, 0x32

    .line 123
    .line 124
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 125
    .line 126
    .line 127
    :cond_4
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 128
    .line 129
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 130
    .line 131
    .line 132
    new-array v1, v1, [Landroid/animation/Animator;

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    aput-object v2, v1, v3

    .line 136
    .line 137
    aput-object v4, v1, v0

    .line 138
    .line 139
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lcom/android/calendar/homepage/t0$b;

    .line 143
    .line 144
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/homepage/t0$b;-><init>(Lcom/android/calendar/homepage/t0;Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public K(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/calendar/homepage/AllInOneActivity$h;->j(I)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "updateActionBar viewType:"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " isFrom3rd:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/android/calendar/common/Utils;->l0()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " isPortrait:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/calendar/homepage/t0;->i:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "Cal:D:HomePageAnimationController"

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->e:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/android/calendar/homepage/t0;->F()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x1

    .line 71
    const/16 v2, 0x8

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :pswitch_0
    invoke-direct {p0}, Lcom/android/calendar/homepage/t0;->F()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :pswitch_1
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 85
    .line 86
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 95
    .line 96
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 106
    .line 107
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->f:Landroid/view/View;

    .line 108
    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 115
    .line 116
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->t:Landroid/view/View;

    .line 117
    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 124
    .line 125
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->z:Landroid/view/View;

    .line 126
    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    :cond_5
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->i:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-nez v4, :cond_6

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->m:Landroid/view/ViewGroup;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->y:Landroid/widget/ImageView;

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_6
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 185
    .line 186
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->m:Landroid/view/ViewGroup;

    .line 187
    .line 188
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 192
    .line 193
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 199
    .line 200
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 201
    .line 202
    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    .line 204
    .line 205
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 206
    .line 207
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 208
    .line 209
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 213
    .line 214
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    .line 222
    .line 223
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->y:Landroid/widget/ImageView;

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :pswitch_2
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 235
    .line 236
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    if-eqz v4, :cond_7

    .line 243
    .line 244
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 245
    .line 246
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 247
    .line 248
    invoke-virtual {v4}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    :cond_7
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 256
    .line 257
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->f:Landroid/view/View;

    .line 258
    .line 259
    if-eqz v4, :cond_8

    .line 260
    .line 261
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :cond_8
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 265
    .line 266
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->t:Landroid/view/View;

    .line 267
    .line 268
    if-eqz v4, :cond_9

    .line 269
    .line 270
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    :cond_9
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 274
    .line 275
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->z:Landroid/view/View;

    .line 276
    .line 277
    if-eqz v4, :cond_a

    .line 278
    .line 279
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    :cond_a
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 283
    .line 284
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->m:Landroid/view/ViewGroup;

    .line 285
    .line 286
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 290
    .line 291
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 292
    .line 293
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 297
    .line 298
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 299
    .line 300
    const/4 v5, 0x4

    .line 301
    if-ne v5, p1, :cond_b

    .line 302
    .line 303
    move v5, v0

    .line 304
    goto :goto_0

    .line 305
    :cond_b
    move v5, v3

    .line 306
    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    .line 308
    .line 309
    iget-object v4, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 310
    .line 311
    iget-object v4, v4, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 312
    .line 313
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 317
    .line 318
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 319
    .line 320
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 324
    .line 325
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    .line 326
    .line 327
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 331
    .line 332
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->y:Landroid/widget/ImageView;

    .line 333
    .line 334
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 338
    .line 339
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 340
    .line 341
    if-eqz v0, :cond_f

    .line 342
    .line 343
    const/4 v0, 0x3

    .line 344
    if-ne p1, v0, :cond_c

    .line 345
    .line 346
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->i:Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-eqz p1, :cond_e

    .line 353
    .line 354
    :cond_c
    iget-boolean p1, p0, Lcom/android/calendar/homepage/t0;->c:Z

    .line 355
    .line 356
    if-nez p1, :cond_d

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_d
    move v2, v3

    .line 360
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 361
    .line 362
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 363
    .line 364
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v0, "updateActionBar mHomepageTab visibility:"

    .line 373
    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :cond_f
    :goto_3
    return-void

    .line 388
    nop

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
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

.method public L(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->a:Landroid/view/View;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->m:Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
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

.method public M(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/calendar/homepage/t0;->i:Ljava/lang/Boolean;

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

.method public N(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->F:Lcom/miui/calendar/view/MainPanelMotionContainer;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget v0, Lcom/android/calendar/homepage/t0;->u:I

    .line 11
    .line 12
    sget v1, Lcom/android/calendar/homepage/t0;->r:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    sget v1, Lcom/android/calendar/homepage/t0;->q:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    sget v1, Lcom/android/calendar/homepage/t0;->p:I

    .line 19
    .line 20
    sub-int/2addr v0, v1

    .line 21
    sput v0, Lcom/android/calendar/homepage/t0;->o:I

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/calendar/homepage/t0;->c:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_1
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

.method public O(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->H(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/t0;->Q(I)V

    .line 34
    .line 35
    .line 36
    return-void
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

.method public P(IIF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->H(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p2}, Lcom/miui/calendar/util/x0;->H(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/android/calendar/homepage/o0;

    .line 48
    .line 49
    invoke-direct {v0, p0, p3, v1, p2}, Lcom/android/calendar/homepage/o0;-><init>(Lcom/android/calendar/homepage/t0;FLjava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    cmpl-float p2, p3, p2

    .line 54
    .line 55
    if-nez p2, :cond_0

    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/t0;->Q(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
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

.method public Q(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->w:Landroid/widget/TextView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->w:Landroid/widget/TextView;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v1, v0, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    check-cast v0, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->q:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->q:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    :goto_1
    float-to-int p1, p1

    .line 95
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/t0;->C(I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
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

.method public R(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->r(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 20
    .line 21
    aget-object v1, v1, p1

    .line 22
    .line 23
    const v2, 0x7f0a0373

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 37
    .line 38
    aget-object p1, v1, p1

    .line 39
    .line 40
    const v1, 0x7f0a0374

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/16 v4, 0x8

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 55
    .line 56
    aget-object p1, p1, v0

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 68
    .line 69
    aget-object p1, p1, v0

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    return-void
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

.method public S(Ljava/util/Calendar;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 13
    .line 14
    new-instance v3, Lcom/android/calendar/homepage/m0;

    .line 15
    .line 16
    invoke-direct {v3, p0, v1}, Lcom/android/calendar/homepage/m0;-><init>(Lcom/android/calendar/homepage/t0;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v1, 0x4

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const p2, 0x7f1203d4

    .line 47
    .line 48
    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->H:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p1}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {p2}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    sub-int/2addr v0, p2

    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 87
    .line 88
    const v1, 0x7f120275

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    if-lez v0, :cond_2

    .line 97
    .line 98
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const v1, 0x7f1203b1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const v1, 0x7f1203b0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {v1, p1}, Lcom/miui/calendar/util/s0;->j(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {v2}, Lcom/miui/calendar/util/y;->o(Landroid/content/Context;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    invoke-static {p1}, Lcom/miui/calendar/util/s0;->A(Ljava/util/Calendar;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_3

    .line 144
    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_3

    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->H:Landroid/widget/TextView;

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v2, ""

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    iget-object p2, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 184
    .line 185
    iget-object p2, p2, Lcom/android/calendar/homepage/AllInOneActivity$h;->H:Landroid/widget/TextView;

    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 190
    .line 191
    .line 192
    move-result-wide v1

    .line 193
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v3

    .line 197
    const v5, 0x8002

    .line 198
    .line 199
    .line 200
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    :goto_1
    return-void
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
.end method

.method public T(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 4
    .line 5
    new-instance v1, Lcom/android/calendar/homepage/n0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/homepage/n0;-><init>(Lcom/android/calendar/homepage/t0;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->r:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void
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
.end method

.method public m(Lcom/android/calendar/homepage/AllInOneActivity$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

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

.method public q()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 2
    .line 3
    const v1, 0x7f060157

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/calendar/homepage/t0;->g:Landroid/content/res/Resources;

    .line 11
    .line 12
    const v2, 0x7f060158

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->r(Landroid/content/Context;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_0
    const/4 v5, 0x4

    .line 28
    if-ge v4, v5, :cond_1

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 31
    .line 32
    iget-object v5, v5, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 33
    .line 34
    aget-object v5, v5, v4

    .line 35
    .line 36
    const v6, 0x7f0a0374

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    sget-object v7, Lcom/android/calendar/homepage/t0;->l:[I

    .line 44
    .line 45
    aget v7, v7, v4

    .line 46
    .line 47
    sget-object v8, Lcom/android/calendar/homepage/t0;->m:[I

    .line 48
    .line 49
    aget v8, v8, v4

    .line 50
    .line 51
    invoke-direct {p0, v5, v7, v8, v1}, Lcom/android/calendar/homepage/t0;->r(Landroid/view/View;III)V

    .line 52
    .line 53
    .line 54
    iget-object v5, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 55
    .line 56
    iget-object v5, v5, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 57
    .line 58
    aget-object v5, v5, v4

    .line 59
    .line 60
    const v7, 0x7f0a0373

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    sget-object v8, Lcom/android/calendar/homepage/t0;->k:[I

    .line 68
    .line 69
    aget v8, v8, v4

    .line 70
    .line 71
    sget-object v9, Lcom/android/calendar/homepage/t0;->m:[I

    .line 72
    .line 73
    aget v9, v9, v4

    .line 74
    .line 75
    invoke-direct {p0, v5, v8, v9, v0}, Lcom/android/calendar/homepage/t0;->r(Landroid/view/View;III)V

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    if-ne v2, v4, :cond_0

    .line 80
    .line 81
    iget-object v8, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 82
    .line 83
    iget-object v8, v8, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 84
    .line 85
    aget-object v8, v8, v4

    .line 86
    .line 87
    iget-object v9, p0, Lcom/android/calendar/homepage/t0;->f:Landroid/content/Context;

    .line 88
    .line 89
    const v10, 0x7f120020

    .line 90
    .line 91
    .line 92
    new-array v11, v5, [Ljava/lang/Object;

    .line 93
    .line 94
    sget-object v12, Lcom/android/calendar/homepage/t0;->m:[I

    .line 95
    .line 96
    aget v12, v12, v4

    .line 97
    .line 98
    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    aput-object v12, v11, v3

    .line 103
    .line 104
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object v8, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 112
    .line 113
    iget-object v8, v8, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 114
    .line 115
    aget-object v8, v8, v4

    .line 116
    .line 117
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object v7, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 125
    .line 126
    iget-object v7, v7, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 127
    .line 128
    aget-object v7, v7, v4

    .line 129
    .line 130
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/16 v7, 0x8

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    :cond_0
    iget-object v6, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 140
    .line 141
    iget-object v6, v6, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 142
    .line 143
    aget-object v6, v6, v4

    .line 144
    .line 145
    const v7, 0x7f0a05d8

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Landroid/widget/ImageView;

    .line 153
    .line 154
    new-array v5, v5, [Landroid/view/View;

    .line 155
    .line 156
    aput-object v6, v5, v3

    .line 157
    .line 158
    invoke-static {v5}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iget-object v6, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 163
    .line 164
    iget-object v6, v6, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 165
    .line 166
    aget-object v6, v6, v4

    .line 167
    .line 168
    new-instance v7, Lcom/android/calendar/homepage/q0;

    .line 169
    .line 170
    invoke-direct {v7, v5}, Lcom/android/calendar/homepage/q0;-><init>(Lmiuix/animation/d;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    .line 175
    .line 176
    iget-object v5, p0, Lcom/android/calendar/homepage/t0;->h:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 177
    .line 178
    iget-object v5, v5, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 179
    .line 180
    aget-object v5, v5, v4

    .line 181
    .line 182
    new-instance v6, Lcom/android/calendar/homepage/r0;

    .line 183
    .line 184
    invoke-direct {v6, p0, v4}, Lcom/android/calendar/homepage/r0;-><init>(Lcom/android/calendar/homepage/t0;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_1
    return-void
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

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/t0;->d:Z

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

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/t0;->c:Z

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

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/t0;->e:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
