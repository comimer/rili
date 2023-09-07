.class public Lcom/miui/calendar/view/b0;
.super Ljava/lang/Object;
.source "VerticalMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/view/b0$a;
    }
.end annotation


# static fields
.field static final n:Ljava/lang/String; = "com.miui.calendar.view.b0"


# instance fields
.field private a:I

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/view/VelocityTracker;

.field private final k:Landroid/view/ViewGroup;

.field private l:Lcom/miui/calendar/view/b0$a;

.field private m:Lcom/miui/calendar/view/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 9
    .line 10
    iput v0, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 11
    .line 12
    iput v0, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 13
    .line 14
    iput v0, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/miui/calendar/view/b0;->m:Lcom/miui/calendar/view/c0;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 25
    .line 26
    .line 27
    const/high16 v1, 0x40000

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/miui/calendar/view/b0;->b:I

    .line 48
    .line 49
    return-void
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

.method private a(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

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
    iput-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->m:Lcom/miui/calendar/view/c0;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/calendar/view/b;->m(Landroid/view/View;II)V

    .line 17
    .line 18
    .line 19
    return-void
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

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

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

.method private d(IIZ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

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
    iput-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/miui/calendar/view/b0;->m:Lcom/miui/calendar/view/c0;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget v5, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 17
    .line 18
    iget v6, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 19
    .line 20
    if-eqz p3, :cond_2

    .line 21
    .line 22
    iget-object p3, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 p3, 0x0

    .line 26
    :goto_0
    move-object v7, p3

    .line 27
    move v3, p1

    .line 28
    move v4, p2

    .line 29
    invoke-virtual/range {v1 .. v7}, Lcom/miui/calendar/view/c0;->n(Landroid/view/View;IIIILandroid/view/VelocityTracker;)V

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

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
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

.method private k(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->l:Lcom/miui/calendar/view/b0$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_3

    .line 7
    .line 8
    if-ge p3, p2, :cond_1

    .line 9
    .line 10
    invoke-interface {v0, p1, p3}, Lcom/miui/calendar/view/b0$a;->c(II)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    if-le p3, p2, :cond_2

    .line 15
    .line 16
    invoke-interface {v0, p1, p3}, Lcom/miui/calendar/view/b0$a;->b(II)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {v0, p1, p3}, Lcom/miui/calendar/view/b0$a;->d(II)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    invoke-interface {v0, p1, p3}, Lcom/miui/calendar/view/b0$a;->d(II)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
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

.method private l(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    float-to-int v2, v2

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    float-to-int p1, p1

    .line 19
    iput v1, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 20
    .line 21
    iput v2, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 22
    .line 23
    iput p1, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 24
    .line 25
    iput v2, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 26
    .line 27
    iput p1, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->b()V

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
.end method

.method private m(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xff00

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    shr-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    float-to-int v2, v2

    .line 34
    iput v1, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 35
    .line 36
    iput v2, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 37
    .line 38
    iput v1, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 39
    .line 40
    iput v2, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 47
    .line 48
    :cond_1
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

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
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

.method private r(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput p2, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 16
    .line 17
    iput p1, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->m:Lcom/miui/calendar/view/c0;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/calendar/view/c0;->o(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    return-void
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

.method public static s(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-float/2addr v0, v1

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-float/2addr v1, v2

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 26
    .line 27
    .line 28
    neg-float p0, v0

    .line 29
    neg-float v0, v1

    .line 30
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 31
    .line 32
    .line 33
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
.end method


# virtual methods
.method public c(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/miui/calendar/view/b0;->n:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Invalid pointerId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " in onInterceptTouchEvent"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    float-to-int v1, v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    float-to-int v0, v0

    .line 49
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->g()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 53
    .line 54
    invoke-static {v2, p1}, Lcom/miui/calendar/view/b0;->s(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0, v1}, Lcom/miui/calendar/view/b0;->r(II)V

    .line 58
    .line 59
    .line 60
    iput v1, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 61
    .line 62
    iput v0, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 63
    .line 64
    iget-object p1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
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

.method public e()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/16 v1, 0x3e8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

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

.method public i(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->m:Lcom/miui/calendar/view/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 6
    .line 7
    iget v4, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 8
    .line 9
    iget v5, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 10
    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/view/b;->a(Landroid/view/View;IIII)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
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

.method public j(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->m:Lcom/miui/calendar/view/c0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v6, 0x2

    .line 13
    if-ne v2, v6, :cond_1

    .line 14
    .line 15
    iget-boolean v4, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    return v3

    .line 20
    :cond_1
    and-int/lit16 v4, v2, 0xff

    .line 21
    .line 22
    if-eqz v4, :cond_a

    .line 23
    .line 24
    const/4 v5, -0x1

    .line 25
    if-eq v4, v3, :cond_7

    .line 26
    .line 27
    if-eq v4, v6, :cond_3

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    if-eq v4, v0, :cond_7

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    if-eq v4, v0, :cond_2

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/b0;->m(Landroid/view/MotionEvent;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    float-to-int v1, v1

    .line 51
    iput v1, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    float-to-int p1, p1

    .line 58
    iput p1, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    iget v1, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 63
    .line 64
    if-ne v1, v5, :cond_4

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-gez v2, :cond_5

    .line 73
    .line 74
    sget-object p1, Lcom/miui/calendar/view/b0;->n:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v2, "Invalid pointerId="

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, " in onInterceptTouchEvent"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    float-to-int v7, v1

    .line 108
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    float-to-int v2, v1

    .line 113
    iget-object v1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 114
    .line 115
    iget v4, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 116
    .line 117
    iget v5, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 118
    .line 119
    move v3, v7

    .line 120
    invoke-interface/range {v0 .. v5}, Lcom/miui/calendar/view/u;->a(Landroid/view/View;IIII)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->b()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    iget v0, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 131
    .line 132
    sub-int/2addr v7, v0

    .line 133
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget v1, p0, Lcom/miui/calendar/view/b0;->b:I

    .line 138
    .line 139
    div-int/2addr v1, v6

    .line 140
    if-le v0, v1, :cond_c

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/miui/calendar/view/b0;->c(Landroid/view/MotionEvent;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    iget v0, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-gez v0, :cond_8

    .line 153
    .line 154
    iget p1, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 155
    .line 156
    iget v0, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    float-to-int v4, v4

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    float-to-int v0, p1

    .line 169
    move p1, v4

    .line 170
    :goto_0
    if-ne v2, v3, :cond_9

    .line 171
    .line 172
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/calendar/view/b0;->d(IIZ)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/miui/calendar/view/b0;->a(II)V

    .line 177
    .line 178
    .line 179
    :goto_1
    iput v5, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 180
    .line 181
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->o()V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    float-to-int v2, v2

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    float-to-int v3, v3

    .line 195
    iput v2, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 196
    .line 197
    iput v3, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 198
    .line 199
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iput v1, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 204
    .line 205
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->f()V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 209
    .line 210
    invoke-static {v1, p1}, Lcom/miui/calendar/view/b0;->s(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 214
    .line 215
    invoke-interface {v0, p1, v3, v2}, Lcom/miui/calendar/view/t;->c(Landroid/view/View;II)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_b

    .line 220
    .line 221
    invoke-direct {p0, v3, v2}, Lcom/miui/calendar/view/b0;->r(II)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_b
    invoke-direct {p0, v3, v2}, Lcom/miui/calendar/view/b0;->a(II)V

    .line 226
    .line 227
    .line 228
    :goto_2
    iput v2, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 229
    .line 230
    iput v3, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 231
    .line 232
    :cond_c
    :goto_3
    iget-boolean p1, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 233
    .line 234
    return p1
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

.method public n(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->m:Lcom/miui/calendar/view/c0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->g()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/miui/calendar/view/b0;->j:Landroid/view/VelocityTracker;

    .line 11
    .line 12
    invoke-static {v2, p1}, Lcom/miui/calendar/view/b0;->s(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    if-eqz v2, :cond_e

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq v2, v6, :cond_c

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v2, v1, :cond_5

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-eq v2, v0, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    if-eq v2, v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x6

    .line 37
    if-eq v2, v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/b0;->m(Landroid/view/MotionEvent;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/b0;->l(Landroid/view/MotionEvent;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_3
    iget-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 52
    .line 53
    if-eqz v0, :cond_10

    .line 54
    .line 55
    iget v0, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-gez v0, :cond_4

    .line 62
    .line 63
    iget p1, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 64
    .line 65
    iget v0, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    float-to-int v1, v1

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    float-to-int v0, p1

    .line 78
    move p1, v1

    .line 79
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/calendar/view/b0;->a(II)V

    .line 80
    .line 81
    .line 82
    iput v3, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->o()V

    .line 85
    .line 86
    .line 87
    iget p1, p0, Lcom/miui/calendar/view/b0;->g:I

    .line 88
    .line 89
    iget v0, p0, Lcom/miui/calendar/view/b0;->h:I

    .line 90
    .line 91
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/calendar/view/b0;->k(III)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_5
    iget v1, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 97
    .line 98
    if-ne v1, v3, :cond_6

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-gez v2, :cond_7

    .line 107
    .line 108
    sget-object p1, Lcom/miui/calendar/view/b0;->n:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, "Invalid pointerId="

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, " in onInterceptTouchEvent"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    float-to-int v7, v1

    .line 142
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    float-to-int p1, p1

    .line 147
    iget v1, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 148
    .line 149
    sub-int/2addr v1, v7

    .line 150
    iget-boolean v2, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 151
    .line 152
    if-nez v2, :cond_8

    .line 153
    .line 154
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iget v2, p0, Lcom/miui/calendar/view/b0;->b:I

    .line 159
    .line 160
    if-le v1, v2, :cond_8

    .line 161
    .line 162
    invoke-direct {p0, p1, v7}, Lcom/miui/calendar/view/b0;->r(II)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 166
    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 174
    .line 175
    .line 176
    :cond_8
    iget-boolean v1, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 177
    .line 178
    if-eqz v1, :cond_b

    .line 179
    .line 180
    iget-object v1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 181
    .line 182
    add-int/lit8 v3, v7, 0x0

    .line 183
    .line 184
    iget v4, p0, Lcom/miui/calendar/view/b0;->f:I

    .line 185
    .line 186
    iget v5, p0, Lcom/miui/calendar/view/b0;->e:I

    .line 187
    .line 188
    move v2, p1

    .line 189
    invoke-interface/range {v0 .. v5}, Lcom/miui/calendar/view/t;->b(Landroid/view/View;IIII)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_9

    .line 194
    .line 195
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->b()V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    float-to-int v0, v0

    .line 206
    iget v1, p0, Lcom/miui/calendar/view/b0;->h:I

    .line 207
    .line 208
    if-eq v1, v0, :cond_a

    .line 209
    .line 210
    iget v2, p0, Lcom/miui/calendar/view/b0;->g:I

    .line 211
    .line 212
    invoke-direct {p0, v2, v1, v0}, Lcom/miui/calendar/view/b0;->k(III)V

    .line 213
    .line 214
    .line 215
    :cond_a
    :goto_1
    iput v7, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 216
    .line 217
    iput p1, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 218
    .line 219
    :cond_b
    iget-object p1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    float-to-int p1, p1

    .line 226
    iput p1, p0, Lcom/miui/calendar/view/b0;->h:I

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_c
    iget-boolean v0, p0, Lcom/miui/calendar/view/b0;->i:Z

    .line 230
    .line 231
    if-eqz v0, :cond_10

    .line 232
    .line 233
    iget v0, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-gez v0, :cond_d

    .line 240
    .line 241
    iget p1, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 242
    .line 243
    iget v0, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    float-to-int v2, v2

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    float-to-int v0, p1

    .line 256
    move p1, v2

    .line 257
    :goto_2
    invoke-direct {p0, p1, v0, v6}, Lcom/miui/calendar/view/b0;->d(IIZ)V

    .line 258
    .line 259
    .line 260
    iput v3, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 261
    .line 262
    invoke-direct {p0}, Lcom/miui/calendar/view/b0;->o()V

    .line 263
    .line 264
    .line 265
    iget p1, p0, Lcom/miui/calendar/view/b0;->g:I

    .line 266
    .line 267
    iget v0, p0, Lcom/miui/calendar/view/b0;->h:I

    .line 268
    .line 269
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/calendar/view/b0;->k(III)V

    .line 270
    .line 271
    .line 272
    iput v1, p0, Lcom/miui/calendar/view/b0;->h:I

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    float-to-int v2, v2

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    float-to-int v3, v3

    .line 285
    iput v2, p0, Lcom/miui/calendar/view/b0;->c:I

    .line 286
    .line 287
    iput v3, p0, Lcom/miui/calendar/view/b0;->d:I

    .line 288
    .line 289
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    iput p1, p0, Lcom/miui/calendar/view/b0;->a:I

    .line 294
    .line 295
    iget-object p1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    float-to-int p1, p1

    .line 302
    iput p1, p0, Lcom/miui/calendar/view/b0;->g:I

    .line 303
    .line 304
    iget-object p1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 305
    .line 306
    invoke-interface {v0, p1, v3, v2}, Lcom/miui/calendar/view/t;->c(Landroid/view/View;II)Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_f

    .line 311
    .line 312
    invoke-direct {p0, v3, v2}, Lcom/miui/calendar/view/b0;->r(II)V

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Lcom/miui/calendar/view/b0;->k:Landroid/view/ViewGroup;

    .line 316
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    if-eqz p1, :cond_10

    .line 322
    .line 323
    invoke-interface {p1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_f
    invoke-direct {p0, v3, v2}, Lcom/miui/calendar/view/b0;->a(II)V

    .line 328
    .line 329
    .line 330
    :cond_10
    :goto_3
    return v6
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

.method public p(Lcom/miui/calendar/view/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/b0;->m:Lcom/miui/calendar/view/c0;

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

.method public q(Lcom/miui/calendar/view/b0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/b0;->l:Lcom/miui/calendar/view/b0$a;

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
