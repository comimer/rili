.class public Lcom/android/calendar/common/e;
.super Ljava/lang/Object;
.source "CalendarAnimationController.java"


# static fields
.field private static A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/common/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Landroid/content/res/Resources;

.field private k:Lcom/android/calendar/homepage/AllInOneActivity$h;

.field private l:Landroid/view/animation/Animation;

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:[I

.field public s:I

.field public t:Z

.field public u:F

.field private v:Z

.field private w:Z

.field private x:[I

.field private y:F

.field private z:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "alpha"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/common/e;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "scaleX"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/calendar/common/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "scaleY"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/calendar/common/e;->c:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "translationX"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/calendar/common/e;->d:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "translationY"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/calendar/common/e;->e:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "scaleStart"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/calendar/common/e;->f:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "scaleMiddle"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/calendar/common/e;->g:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "scaleEnd"

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/calendar/common/e;->h:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [I

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/calendar/common/e;->r:[I

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/android/calendar/common/e;->t:Z

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/calendar/common/e;->v:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/calendar/common/e;->w:Z

    .line 48
    .line 49
    new-array v0, v0, [I

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/calendar/common/e;->x:[I

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/android/calendar/common/e;->m()V

    .line 56
    .line 57
    .line 58
    return-void
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public static synthetic a(Lcom/android/calendar/common/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/common/e;->n(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/calendar/common/e;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/common/e;->o(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic c(Lcom/android/calendar/common/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/e;->p()V

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

.method private e(JI)[I
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/miui/calendar/util/e0;->s(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v3, Ljava/util/Date;

    .line 17
    .line 18
    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/miui/calendar/util/e0;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {v1}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    if-eq p3, v4, :cond_2

    .line 47
    .line 48
    iget-object v5, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v5, v0}, Lcom/miui/calendar/util/e0;->n(Landroid/content/Context;Ljava/util/Calendar;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    move v5, p1

    .line 55
    :goto_0
    if-ge v5, v0, :cond_1

    .line 56
    .line 57
    invoke-static {v3, v1}, Lcom/miui/calendar/util/e0;->v(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const/4 v6, 0x5

    .line 65
    const/4 v7, 0x7

    .line 66
    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v5, p1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move v5, p1

    .line 75
    move v0, v4

    .line 76
    :goto_1
    const/4 v1, 0x3

    .line 77
    if-ne p3, v1, :cond_3

    .line 78
    .line 79
    iget p3, p0, Lcom/android/calendar/common/e;->z:F

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget p3, p0, Lcom/android/calendar/common/e;->y:F

    .line 83
    .line 84
    :goto_2
    int-to-float v0, v0

    .line 85
    div-float/2addr p3, v0

    .line 86
    const/4 v0, 0x2

    .line 87
    new-array v1, v0, [I

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 90
    .line 91
    iget-object v3, v3, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 98
    .line 99
    .line 100
    iget v1, p0, Lcom/android/calendar/common/e;->p:F

    .line 101
    .line 102
    iget v3, p0, Lcom/android/calendar/common/e;->n:F

    .line 103
    .line 104
    add-float/2addr v1, v3

    .line 105
    sub-int/2addr p2, v2

    .line 106
    int-to-float p2, p2

    .line 107
    iget v2, p0, Lcom/android/calendar/common/e;->o:F

    .line 108
    .line 109
    mul-float/2addr p2, v2

    .line 110
    add-float/2addr v1, p2

    .line 111
    int-to-float p2, v5

    .line 112
    mul-float/2addr p3, p2

    .line 113
    new-array p2, v0, [I

    .line 114
    .line 115
    float-to-int v0, v1

    .line 116
    aput v0, p2, p1

    .line 117
    .line 118
    float-to-int p1, p3

    .line 119
    aput p1, p2, v4

    .line 120
    .line 121
    return-object p2
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

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->d:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/e;->l:Landroid/view/animation/Animation;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/common/e;->l:Landroid/view/animation/Animation;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/calendar/common/e;->t:Z

    .line 24
    .line 25
    new-instance v1, Lcom/miui/calendar/util/g$y;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/miui/calendar/util/g$y;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->d:Landroid/view/ViewGroup;

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
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

.method public static declared-synchronized g(Landroid/content/Context;)Lcom/android/calendar/common/e;
    .locals 2

    .line 1
    const-class v0, Lcom/android/calendar/common/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/calendar/common/e;->A:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p0, Lcom/android/calendar/common/e;->A:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/calendar/common/e;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/calendar/common/e;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v1, p0}, Lcom/android/calendar/common/e;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sput-object p0, Lcom/android/calendar/common/e;->A:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    move-object p0, v1

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0

    .line 45
    throw p0
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

.method private l(Z)V
    .locals 2

    .line 1
    const-string v0, "Cal:D:CalendarAnimationController"

    .line 2
    .line 3
    const-string v1, "receive AgendaListLayout hideTodayView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/calendar/common/e;->t:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 14
    .line 15
    new-instance v1, Lcom/android/calendar/common/d;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/common/d;-><init>(Lcom/android/calendar/common/e;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
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
.end method

.method private m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/calendar/common/e;->j:Landroid/content/res/Resources;

    .line 8
    .line 9
    const v1, 0x7f07069d

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/calendar/common/e;->n:F

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/common/e;->j:Landroid/content/res/Resources;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/android/calendar/common/e;->v(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/calendar/common/e;->r:[I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/calendar/common/e;->j:Landroid/content/res/Resources;

    .line 32
    .line 33
    const v2, 0x7f07045c

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    aput v1, v0, v2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/calendar/common/e;->r:[I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/calendar/common/e;->j:Landroid/content/res/Resources;

    .line 46
    .line 47
    const v2, 0x7f07045e

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v3, 0x1

    .line 55
    aput v1, v0, v3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/calendar/common/e;->r:[I

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/calendar/common/e;->j:Landroid/content/res/Resources;

    .line 60
    .line 61
    const v3, 0x7f07045a

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v3, 0x2

    .line 69
    div-int/2addr v1, v3

    .line 70
    aput v1, v0, v3

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/calendar/common/e;->r:[I

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/calendar/common/e;->j:Landroid/content/res/Resources;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x3

    .line 81
    aput v1, v0, v2

    .line 82
    .line 83
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->j()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput-boolean v0, p0, Lcom/android/calendar/common/e;->q:Z

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->J(Landroid/content/Context;)F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lcom/android/calendar/common/e;->y:F

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->I(Landroid/content/Context;)F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Lcom/android/calendar/common/e;->z:F

    .line 104
    .line 105
    return-void
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
.end method

.method private synthetic n(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/android/calendar/common/e;->s(Z)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->i:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->B0(Landroid/view/View;Z)V

    .line 23
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
    .line 65
.end method

.method private synthetic o(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->i:Landroid/widget/TextView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->i:Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 19
    .line 20
    const v1, 0x7f120276

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->i:Landroid/widget/TextView;

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :goto_0
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

.method private p()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/common/e;->v:Z

    .line 3
    .line 4
    new-instance v0, Lcom/miui/calendar/util/g$j0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/miui/calendar/util/g$j0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

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

.method private s(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Cal:D:CalendarAnimationController"

    .line 8
    .line 9
    const-string v0, "showHideTodayView(): mViewHolder.mTodayViewContainer is null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x4

    .line 16
    const/4 v2, 0x6

    .line 17
    const-string v3, "scaleEnd"

    .line 18
    .line 19
    const-string v4, "scaleStart"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    new-instance p1, Le9/a;

    .line 45
    .line 46
    invoke-direct {p1, v4}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lmiuix/animation/property/h;->d:Lmiuix/animation/property/h;

    .line 50
    .line 51
    const-wide v7, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v7, v8}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v1, Lmiuix/animation/property/h;->e:Lmiuix/animation/property/h;

    .line 61
    .line 62
    invoke-virtual {p1, v1, v7, v8}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v4, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 67
    .line 68
    const-wide/16 v7, 0x0

    .line 69
    .line 70
    invoke-virtual {p1, v4, v7, v8}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v7, Le9/a;

    .line 75
    .line 76
    const-string v8, "scaleMiddle"

    .line 77
    .line 78
    invoke-direct {v7, v8}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const-wide v8, 0x3ff19999a0000000L    # 1.100000023841858

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v0, v8, v9}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7, v1, v8, v9}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 95
    .line 96
    invoke-virtual {v7, v4, v8, v9}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    new-instance v10, Le9/a;

    .line 101
    .line 102
    invoke-direct {v10, v3}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10, v0, v8, v9}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, v1, v8, v9}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, v4, v8, v9}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-array v1, v5, [Landroid/view/View;

    .line 118
    .line 119
    iget-object v3, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 120
    .line 121
    iget-object v3, v3, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 122
    .line 123
    aput-object v3, v1, v6

    .line 124
    .line 125
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-array v3, v5, [Ld9/a;

    .line 134
    .line 135
    new-instance v4, Ld9/a;

    .line 136
    .line 137
    invoke-direct {v4}, Ld9/a;-><init>()V

    .line 138
    .line 139
    .line 140
    new-array v8, v6, [F

    .line 141
    .line 142
    invoke-virtual {v4, v2, v8}, Ld9/a;->k(I[F)Ld9/a;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    aput-object v4, v3, v6

    .line 147
    .line 148
    invoke-interface {v1, p1, v7, v3}, Lmiuix/animation/f;->x(Ljava/lang/Object;Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-array v1, v5, [Ld9/a;

    .line 153
    .line 154
    new-instance v3, Ld9/a;

    .line 155
    .line 156
    invoke-direct {v3}, Ld9/a;-><init>()V

    .line 157
    .line 158
    .line 159
    const-wide/16 v4, 0x0

    .line 160
    .line 161
    invoke-virtual {v3, v4, v5}, Ld9/a;->j(J)Ld9/a;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    new-array v4, v6, [F

    .line 166
    .line 167
    invoke-virtual {v3, v2, v4}, Ld9/a;->k(I[F)Ld9/a;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    aput-object v2, v1, v6

    .line 172
    .line 173
    invoke-interface {p1, v0, v1}, Lmiuix/animation/f;->K(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_1
    if-nez p1, :cond_2

    .line 178
    .line 179
    iget-object p1, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 180
    .line 181
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-nez p1, :cond_2

    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_2

    .line 201
    .line 202
    new-array p1, v5, [Landroid/view/View;

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 205
    .line 206
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 207
    .line 208
    aput-object v0, p1, v6

    .line 209
    .line 210
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-interface {p1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-interface {p1, v4}, Lmiuix/animation/f;->set(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    sget-object v0, Lmiuix/animation/property/h;->d:Lmiuix/animation/property/h;

    .line 223
    .line 224
    const/high16 v1, 0x3f800000    # 1.0f

    .line 225
    .line 226
    invoke-interface {p1, v0, v1}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    sget-object v7, Lmiuix/animation/property/h;->e:Lmiuix/animation/property/h;

    .line 231
    .line 232
    invoke-interface {p1, v7, v1}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    sget-object v8, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 237
    .line 238
    invoke-interface {p1, v8, v1}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-interface {p1, v3}, Lmiuix/animation/f;->set(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const v1, 0x3ecccccd    # 0.4f

    .line 247
    .line 248
    .line 249
    invoke-interface {p1, v0, v1}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-interface {p1, v7, v1}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-interface {p1, v8, v0}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-interface {p1, v4}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    new-array v0, v5, [Ld9/a;

    .line 267
    .line 268
    new-instance v1, Ld9/a;

    .line 269
    .line 270
    invoke-direct {v1}, Ld9/a;-><init>()V

    .line 271
    .line 272
    .line 273
    new-array v4, v6, [F

    .line 274
    .line 275
    invoke-virtual {v1, v2, v4}, Ld9/a;->k(I[F)Ld9/a;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    aput-object v1, v0, v6

    .line 280
    .line 281
    invoke-interface {p1, v3, v0}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 282
    .line 283
    .line 284
    :cond_2
    :goto_0
    return-void
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

.method private t()V
    .locals 8

    .line 1
    const-string v0, "Cal:D:CalendarAnimationController"

    .line 2
    .line 3
    const-string v1, "receive AgendaListLayout showTodayView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lcom/android/calendar/common/e;->s(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/calendar/homepage/AllInOneActivity$h;->i:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/calendar/common/e;->r:[I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aget v4, v1, v3

    .line 20
    .line 21
    aget v5, v1, v0

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    aget v6, v1, v0

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    aget v7, v1, v0

    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Lcom/miui/calendar/util/x0;->k(Landroid/view/View;ZIIII)V

    .line 30
    .line 31
    .line 32
    return-void
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

.method private u([I[IZZI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/miui/calendar/view/MonthPanelContainer;->getSelectDayView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/widget/ImageView;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iput-object v1, v0, Lcom/android/calendar/common/e;->x:[I

    .line 25
    .line 26
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x1

    .line 33
    if-eqz v4, :cond_7

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iput-boolean v6, v0, Lcom/android/calendar/common/e;->v:Z

    .line 41
    .line 42
    iput-boolean v7, v0, Lcom/android/calendar/common/e;->t:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-boolean v7, v0, Lcom/android/calendar/common/e;->v:Z

    .line 46
    .line 47
    :goto_0
    if-eqz p4, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    :cond_2
    if-eqz v2, :cond_3

    .line 56
    .line 57
    sget v1, Lmiuix/view/f;->k:I

    .line 58
    .line 59
    invoke-static {v3, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iput-boolean v7, v0, Lcom/android/calendar/common/e;->w:Z

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    if-nez v2, :cond_5

    .line 72
    .line 73
    sget v1, Lmiuix/view/f;->l:I

    .line 74
    .line 75
    invoke-static {v3, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/common/e;->p()V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_1
    xor-int/lit8 v1, v2, 0x1

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/android/calendar/common/e;->s(Z)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    invoke-static {v1, v2}, Lcom/android/calendar/common/Utils;->Y0(J)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_7
    if-eqz v2, :cond_8

    .line 95
    .line 96
    iget-object v4, v0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 97
    .line 98
    const v8, 0x7f0801e8

    .line 99
    .line 100
    .line 101
    invoke-static {v4, v8}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    iget-object v4, v0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 110
    .line 111
    const v8, 0x7f0801e7

    .line 112
    .line 113
    .line 114
    invoke-static {v4, v8}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iput-boolean v6, v0, Lcom/android/calendar/common/e;->v:Z

    .line 125
    .line 126
    iput-boolean v7, v0, Lcom/android/calendar/common/e;->t:Z

    .line 127
    .line 128
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 129
    .line 130
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 131
    .line 132
    .line 133
    const/4 v8, 0x2

    .line 134
    new-array v9, v8, [F

    .line 135
    .line 136
    aget v10, p1, v6

    .line 137
    .line 138
    int-to-float v10, v10

    .line 139
    aput v10, v9, v6

    .line 140
    .line 141
    aget v10, v1, v6

    .line 142
    .line 143
    int-to-float v10, v10

    .line 144
    aput v10, v9, v7

    .line 145
    .line 146
    const-string v10, "translationX"

    .line 147
    .line 148
    invoke-static {v3, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    const-wide/16 v10, 0xc8

    .line 153
    .line 154
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    new-array v12, v8, [F

    .line 159
    .line 160
    aget v13, p1, v7

    .line 161
    .line 162
    int-to-float v13, v13

    .line 163
    aput v13, v12, v6

    .line 164
    .line 165
    aget v1, v1, v7

    .line 166
    .line 167
    int-to-float v1, v1

    .line 168
    aput v1, v12, v7

    .line 169
    .line 170
    const-string v1, "translationY"

    .line 171
    .line 172
    invoke-static {v3, v1, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    new-array v12, v5, [F

    .line 181
    .line 182
    const/high16 v13, 0x3f800000    # 1.0f

    .line 183
    .line 184
    aput v13, v12, v6

    .line 185
    .line 186
    const/high16 v14, 0x3f000000    # 0.5f

    .line 187
    .line 188
    aput v14, v12, v7

    .line 189
    .line 190
    iget-object v15, v0, Lcom/android/calendar/common/e;->x:[I

    .line 191
    .line 192
    aget v15, v15, v7

    .line 193
    .line 194
    const v16, 0x3f8ccccd    # 1.1f

    .line 195
    .line 196
    .line 197
    if-nez v15, :cond_9

    .line 198
    .line 199
    move v15, v13

    .line 200
    goto :goto_3

    .line 201
    :cond_9
    move/from16 v15, v16

    .line 202
    .line 203
    :goto_3
    aput v15, v12, v8

    .line 204
    .line 205
    const/4 v15, 0x3

    .line 206
    aput v13, v12, v15

    .line 207
    .line 208
    const-string v10, "scaleX"

    .line 209
    .line 210
    invoke-static {v3, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    const-wide/16 v11, 0x190

    .line 215
    .line 216
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    new-array v11, v5, [F

    .line 221
    .line 222
    aput v13, v11, v6

    .line 223
    .line 224
    aput v14, v11, v7

    .line 225
    .line 226
    iget-object v12, v0, Lcom/android/calendar/common/e;->x:[I

    .line 227
    .line 228
    aget v12, v12, v7

    .line 229
    .line 230
    if-nez v12, :cond_a

    .line 231
    .line 232
    move/from16 v16, v13

    .line 233
    .line 234
    :cond_a
    aput v16, v11, v8

    .line 235
    .line 236
    aput v13, v11, v15

    .line 237
    .line 238
    const-string v12, "scaleY"

    .line 239
    .line 240
    invoke-static {v3, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    const-wide/16 v12, 0x190

    .line 245
    .line 246
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    new-array v12, v5, [F

    .line 251
    .line 252
    fill-array-data v12, :array_0

    .line 253
    .line 254
    .line 255
    const-string v13, "alpha"

    .line 256
    .line 257
    invoke-static {v3, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    const-wide/16 v13, 0xc8

    .line 262
    .line 263
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    new-instance v13, Lcom/android/calendar/common/e$a;

    .line 268
    .line 269
    invoke-direct {v13, v0, v2, v3}, Lcom/android/calendar/common/e$a;-><init>(Lcom/android/calendar/common/e;ZLandroid/widget/ImageView;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    .line 274
    .line 275
    new-instance v13, Lcom/android/calendar/common/e$b;

    .line 276
    .line 277
    invoke-direct {v13, v0}, Lcom/android/calendar/common/e$b;-><init>(Lcom/android/calendar/common/e;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    .line 282
    .line 283
    if-eqz p4, :cond_b

    .line 284
    .line 285
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    .line 286
    .line 287
    .line 288
    move-result v13

    .line 289
    if-eqz v13, :cond_b

    .line 290
    .line 291
    const/4 v3, 0x5

    .line 292
    new-array v3, v3, [Landroid/animation/Animator;

    .line 293
    .line 294
    aput-object v9, v3, v6

    .line 295
    .line 296
    aput-object v1, v3, v7

    .line 297
    .line 298
    aput-object v10, v3, v8

    .line 299
    .line 300
    aput-object v11, v3, v15

    .line 301
    .line 302
    aput-object v12, v3, v5

    .line 303
    .line 304
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_b
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    if-eqz v2, :cond_c

    .line 312
    .line 313
    sget v1, Lmiuix/view/f;->k:I

    .line 314
    .line 315
    invoke-static {v3, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 316
    .line 317
    .line 318
    :cond_c
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_d

    .line 323
    .line 324
    iput-boolean v7, v0, Lcom/android/calendar/common/e;->w:Z

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_d
    if-nez v2, :cond_e

    .line 328
    .line 329
    sget v1, Lmiuix/view/f;->l:I

    .line 330
    .line 331
    invoke-static {v3, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 332
    .line 333
    .line 334
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/common/e;->p()V

    .line 335
    .line 336
    .line 337
    :goto_4
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 338
    .line 339
    .line 340
    xor-int/lit8 v1, v2, 0x1

    .line 341
    .line 342
    invoke-direct {v0, v1}, Lcom/android/calendar/common/e;->s(Z)V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 346
    .line 347
    .line 348
    move-result-wide v1

    .line 349
    invoke-static {v1, v2}, Lcom/android/calendar/common/Utils;->Y0(J)V

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
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


# virtual methods
.method public d(Lcom/android/calendar/homepage/AllInOneActivity$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

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

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/common/e;->v:Z

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

.method public i(IJZ)V
    .locals 7

    .line 1
    const-wide/16 v5, -0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/common/e;->j(IJZJ)V

    .line 8
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
.end method

.method public j(IJZJ)V
    .locals 8

    .line 1
    const/4 v7, 0x2

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move v4, p4

    .line 6
    move-wide v5, p5

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/common/e;->k(IJZJI)V

    .line 8
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

.method public k(IJZJI)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "goTo()-----3 viewType="

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
    const-string v1, ",timeInMills="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ",doAnimation="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p4, ",duration="

    .line 31
    .line 32
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p4, ",mFeatureWholeAnim="

    .line 39
    .line 40
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-boolean p4, p0, Lcom/android/calendar/common/e;->q:Z

    .line 44
    .line 45
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p4, " expandStatus:"

    .line 49
    .line 50
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    const-string p5, "Cal:D:CalendarAnimationController"

    .line 61
    .line 62
    invoke-static {p5, p4}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p4, 0x6

    .line 66
    if-eq p1, p4, :cond_1

    .line 67
    .line 68
    iget-object p4, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 69
    .line 70
    iget-object p4, p4, Lcom/android/calendar/homepage/AllInOneActivity$h;->i:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz p4, :cond_1

    .line 73
    .line 74
    const/4 p4, 0x1

    .line 75
    if-eq p1, p4, :cond_1

    .line 76
    .line 77
    invoke-static {}, Lcom/android/calendar/common/Utils;->I()J

    .line 78
    .line 79
    .line 80
    move-result-wide p4

    .line 81
    invoke-direct {p0, p4, p5, p7}, Lcom/android/calendar/common/e;->e(JI)[I

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {p0, p2, p3, p7}, Lcom/android/calendar/common/e;->e(JI)[I

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {}, Lcom/android/calendar/common/Utils;->H()Ljava/util/Calendar;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-static {p4, p5}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 98
    .line 99
    .line 100
    move-result p4

    .line 101
    if-eqz p4, :cond_0

    .line 102
    .line 103
    return-void

    .line 104
    :cond_0
    invoke-static {p2, p3}, Lcom/miui/calendar/util/s0;->z(J)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {}, Lcom/android/calendar/common/Utils;->H()Ljava/util/Calendar;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-static {p2, p3}, Lcom/miui/calendar/util/s0;->w(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    move-object v0, p0

    .line 121
    move v5, p1

    .line 122
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/common/e;->u([I[IZZI)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    iget-object p4, p0, Lcom/android/calendar/common/e;->l:Landroid/view/animation/Animation;

    .line 127
    .line 128
    if-eqz p4, :cond_2

    .line 129
    .line 130
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 131
    .line 132
    .line 133
    move-result p4

    .line 134
    if-eqz p4, :cond_2

    .line 135
    .line 136
    iget-object p4, p0, Lcom/android/calendar/common/e;->l:Landroid/view/animation/Animation;

    .line 137
    .line 138
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    if-nez p4, :cond_2

    .line 143
    .line 144
    invoke-direct {p0}, Lcom/android/calendar/common/e;->f()V

    .line 145
    .line 146
    .line 147
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/common/e;->y(IJ)V

    .line 148
    .line 149
    .line 150
    :goto_0
    return-void
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

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->d:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/calendar/common/e;->f()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/e;->l:Landroid/view/animation/Animation;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/calendar/common/e;->l:Landroid/view/animation/Animation;

    .line 21
    .line 22
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/common/e;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/calendar/common/e;->p()V

    .line 6
    .line 7
    .line 8
    :cond_0
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

.method public v(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/common/e;->m:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/calendar/common/e;->m:I

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    iget v0, p0, Lcom/android/calendar/common/e;->n:F

    .line 9
    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    mul-float/2addr v0, v1

    .line 13
    sub-float/2addr p1, v0

    .line 14
    const/high16 v0, 0x40e00000    # 7.0f

    .line 15
    .line 16
    div-float/2addr p1, v0

    .line 17
    iput p1, p0, Lcom/android/calendar/common/e;->o:F

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->j0(Landroid/content/Context;)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-float/2addr p1, v0

    .line 26
    div-float/2addr p1, v1

    .line 27
    iput p1, p0, Lcom/android/calendar/common/e;->p:F

    .line 28
    .line 29
    :cond_0
    return-void
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

.method public w()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/common/e;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthPanelContainer;->getSelectDayView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v1, 0x4

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/calendar/common/e;->v:Z

    .line 27
    .line 28
    return-void
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
.end method

.method public x(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/e;->k:Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 4
    .line 5
    new-instance v1, Lcom/android/calendar/common/c;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/common/c;-><init>(Lcom/android/calendar/common/e;Ljava/util/Calendar;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

.method public y(IJ)V
    .locals 5

    .line 1
    const-string v0, "Cal:D:CalendarAnimationController"

    .line 2
    .line 3
    const-string v1, "updateTodayView  -------------start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 p3, 0x0

    .line 28
    const/4 v4, 0x3

    .line 29
    if-ne p1, v4, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/miui/calendar/util/e0;->s(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object p2, p0, Lcom/android/calendar/common/e;->i:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {p2, v3}, Lcom/miui/calendar/util/e0;->s(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-ne p1, p2, :cond_0

    .line 52
    .line 53
    invoke-direct {p0, p3}, Lcom/android/calendar/common/e;->l(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/common/e;->t()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    if-ne v2, p2, :cond_2

    .line 62
    .line 63
    invoke-direct {p0, p3}, Lcom/android/calendar/common/e;->l(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/common/e;->t()V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/calendar/common/e;->x(Ljava/util/Calendar;)V

    .line 71
    .line 72
    .line 73
    const-string p1, "updateTodayView  -------------end"

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

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
