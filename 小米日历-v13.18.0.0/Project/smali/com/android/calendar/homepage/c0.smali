.class public Lcom/android/calendar/homepage/c0;
.super Landroid/view/View;
.source "BaseWeekView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/homepage/c0$g;,
        Lcom/android/calendar/homepage/c0$h;,
        Lcom/android/calendar/homepage/c0$i;,
        Lcom/android/calendar/homepage/c0$l;,
        Lcom/android/calendar/homepage/c0$k;,
        Lcom/android/calendar/homepage/c0$j;
    }
.end annotation


# static fields
.field public static D0:I

.field public static E0:I


# instance fields
.field private A0:Z

.field private B0:Lcom/android/calendar/homepage/h1$b;

.field private C0:Lcom/android/calendar/homepage/d0;

.field private D:Landroid/graphics/Typeface;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field protected a:I

.field private a0:F

.field protected b:Landroid/content/Context;

.field private b0:F

.field protected c:Lcom/android/calendar/common/e;

.field private c0:F

.field protected d:Ljava/util/Calendar;

.field private d0:F

.field protected e:Ljava/util/Calendar;

.field private e0:F

.field protected f:Ljava/util/Calendar;

.field private f0:F

.field protected g:I

.field private g0:F

.field protected h:I

.field private h0:F

.field i:[I

.field private i0:F

.field j:[Z

.field private j0:F

.field k:[Z

.field private k0:Ljava/lang/String;

.field protected l:F

.field private l0:Ljava/lang/String;

.field protected m:F

.field private m0:Landroid/graphics/Typeface;

.field protected n:I

.field private n0:Z

.field protected o:F

.field private o0:Z

.field protected p:F

.field private p0:Z

.field protected q:F

.field private q0:Z

.field protected final r:Landroid/graphics/Paint;

.field private r0:Landroid/animation/ValueAnimator;

.field private s0:Lcom/android/calendar/homepage/c0$h;

.field private t0:Lcom/android/calendar/homepage/c0$g;

.field private u0:F

.field protected final v:Landroid/graphics/Paint;

.field private v0:F

.field protected final w:Landroid/graphics/Paint;

.field private w0:Z

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/calendar/homepage/c0$k;",
            ">;>;"
        }
    .end annotation
.end field

.field private x0:Z

.field protected y:Lcom/android/calendar/homepage/c0$k;

.field private y0:Z

.field protected z:Lcom/android/calendar/homepage/c0$k;

.field private z0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;FLjava/util/Calendar;Ljava/util/Calendar;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/homepage/c0;-><init>(Landroid/content/Context;FLjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 7

    const/4 v6, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/homepage/c0;-><init>(Landroid/content/Context;FLjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    .line 4
    iput v0, p0, Lcom/android/calendar/homepage/c0;->a:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/calendar/homepage/c0;->g:I

    const/4 v1, 0x5

    .line 6
    iput v1, p0, Lcom/android/calendar/homepage/c0;->h:I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lcom/android/calendar/homepage/c0;->i:[I

    new-array v1, v0, [Z

    .line 8
    iput-object v1, p0, Lcom/android/calendar/homepage/c0;->j:[Z

    new-array v0, v0, [Z

    .line 9
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->k:[Z

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->v:Landroid/graphics/Paint;

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->w:Landroid/graphics/Paint;

    .line 13
    invoke-static {}, Lcom/miui/calendar/util/w;->d()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->D:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0;->o0:Z

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/android/calendar/homepage/c0;->u0:F

    .line 16
    iput v1, p0, Lcom/android/calendar/homepage/c0;->v0:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 18
    iput-boolean v1, p0, Lcom/android/calendar/homepage/c0;->x0:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0;->y0:Z

    .line 20
    iput-boolean v1, p0, Lcom/android/calendar/homepage/c0;->z0:Z

    .line 21
    iput-boolean v1, p0, Lcom/android/calendar/homepage/c0;->A0:Z

    .line 22
    iput p6, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 23
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/c0;->T(Landroid/content/Context;)V

    .line 24
    iput p2, p0, Lcom/android/calendar/homepage/c0;->l:F

    .line 25
    invoke-virtual {p0, p3}, Lcom/android/calendar/homepage/c0;->setWeekFirstDay(Ljava/util/Calendar;)V

    .line 26
    invoke-virtual {p0, p4}, Lcom/android/calendar/homepage/c0;->setSelectedDay(Ljava/util/Calendar;)V

    .line 27
    iput-object p5, p0, Lcom/android/calendar/homepage/c0;->f:Ljava/util/Calendar;

    .line 28
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->e0()V

    return-void
.end method

.method static synthetic A(Lcom/android/calendar/homepage/c0;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/c0;->v0:F

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

.method static synthetic B(Lcom/android/calendar/homepage/c0;)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->v0:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    add-float/2addr v1, v0

    .line 6
    iput v1, p0, Lcom/android/calendar/homepage/c0;->v0:F

    .line 7
    .line 8
    return v0
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

.method static synthetic C(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->u0:F

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

.method static synthetic D(Lcom/android/calendar/homepage/c0;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/c0;->u0:F

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

.method static synthetic E(Lcom/android/calendar/homepage/c0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/c0;->y0:Z

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

.method static synthetic F(Lcom/android/calendar/homepage/c0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/c0;->x0:Z

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

.method static synthetic G(Lcom/android/calendar/homepage/c0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->x0:Z

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

.method static synthetic H(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->F:I

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

.method static synthetic I(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->H:I

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

.method static synthetic J(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->G:I

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

.method static synthetic K(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->E:I

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

.method static synthetic L(Lcom/android/calendar/homepage/c0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/c0;->n0:Z

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

.method static synthetic M(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->d0:F

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

.method private P()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/homepage/c0$k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/calendar/homepage/c0$a;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/android/calendar/homepage/c0$a;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/calendar/homepage/c0;->y:Lcom/android/calendar/homepage/c0$k;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/android/calendar/homepage/c0$b;

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    invoke-direct {v1, p0, v2}, Lcom/android/calendar/homepage/c0$b;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/calendar/homepage/c0;->z:Lcom/android/calendar/homepage/c0$k;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/android/calendar/homepage/c0$c;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, p0, v2}, Lcom/android/calendar/homepage/c0$c;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/android/calendar/homepage/c0$d;

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    invoke-direct {v2, p0, v3, v1}, Lcom/android/calendar/homepage/c0$d;-><init>(Lcom/android/calendar/homepage/c0;ILcom/android/calendar/homepage/c0$l;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/android/calendar/homepage/c0$e;

    .line 48
    .line 49
    const/4 v3, 0x5

    .line 50
    invoke-direct {v2, p0, v3, v1}, Lcom/android/calendar/homepage/c0$e;-><init>(Lcom/android/calendar/homepage/c0;ILcom/android/calendar/homepage/c0$l;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/android/calendar/homepage/c0;->p0:Z

    .line 57
    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    new-instance v2, Lcom/android/calendar/homepage/c0$f;

    .line 61
    .line 62
    const/4 v3, 0x6

    .line 63
    invoke-direct {v2, p0, v3, v1}, Lcom/android/calendar/homepage/c0$f;-><init>(Lcom/android/calendar/homepage/c0;ILcom/android/calendar/homepage/c0$l;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_0
    return-object v0
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private T(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/common/e;->g(Landroid/content/Context;)Lcom/android/calendar/common/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->c:Lcom/android/calendar/common/e;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    iput v0, p0, Lcom/android/calendar/homepage/c0;->n:I

    .line 20
    .line 21
    const v0, 0x7f07069d

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/android/calendar/homepage/c0;->o:F

    .line 29
    .line 30
    iput v0, p0, Lcom/android/calendar/homepage/c0;->p:F

    .line 31
    .line 32
    const v0, 0x7f06040e

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/android/calendar/homepage/c0;->E:I

    .line 40
    .line 41
    const v0, 0x7f060411

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/android/calendar/homepage/c0;->F:I

    .line 49
    .line 50
    const v0, 0x7f06040f

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/calendar/homepage/c0;->G:I

    .line 58
    .line 59
    const v0, 0x7f06040b

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/android/calendar/homepage/c0;->I:I

    .line 67
    .line 68
    const v0, 0x7f06040d

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput v0, p0, Lcom/android/calendar/homepage/c0;->J:I

    .line 76
    .line 77
    const v0, 0x7f060401

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    sput v0, Lcom/android/calendar/homepage/c0;->D0:I

    .line 85
    .line 86
    const v0, 0x7f060405

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p0, Lcom/android/calendar/homepage/c0;->M:I

    .line 94
    .line 95
    const v0, 0x7f060406

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/android/calendar/homepage/c0;->N:I

    .line 103
    .line 104
    const v0, 0x7f060412

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p0, Lcom/android/calendar/homepage/c0;->O:I

    .line 112
    .line 113
    const v0, 0x7f06041a

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, p0, Lcom/android/calendar/homepage/c0;->P:I

    .line 121
    .line 122
    const v0, 0x7f060416

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput v0, p0, Lcom/android/calendar/homepage/c0;->Q:I

    .line 130
    .line 131
    const v0, 0x7f060417

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, p0, Lcom/android/calendar/homepage/c0;->R:I

    .line 139
    .line 140
    const v0, 0x7f06040c

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Lcom/android/calendar/homepage/c0;->K:I

    .line 148
    .line 149
    const v0, 0x7f060413

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    sput v0, Lcom/android/calendar/homepage/c0;->E0:I

    .line 157
    .line 158
    const v0, 0x7f06040a

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/android/calendar/homepage/c0;->L:I

    .line 166
    .line 167
    const v0, 0x7f060418

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iput v0, p0, Lcom/android/calendar/homepage/c0;->H:I

    .line 175
    .line 176
    const v0, 0x7f060409

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iput v0, p0, Lcom/android/calendar/homepage/c0;->S:I

    .line 184
    .line 185
    const v0, 0x7f070888

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, p0, Lcom/android/calendar/homepage/c0;->T:F

    .line 193
    .line 194
    const v0, 0x7f0706a3

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput v0, p0, Lcom/android/calendar/homepage/c0;->U:F

    .line 202
    .line 203
    const v0, 0x7f07026e

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    iput v0, p0, Lcom/android/calendar/homepage/c0;->V:F

    .line 211
    .line 212
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 213
    .line 214
    const/high16 v1, 0x41100000    # 9.0f

    .line 215
    .line 216
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    iput v0, p0, Lcom/android/calendar/homepage/c0;->W:F

    .line 221
    .line 222
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 223
    .line 224
    const/high16 v1, 0x40e00000    # 7.0f

    .line 225
    .line 226
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iput v0, p0, Lcom/android/calendar/homepage/c0;->a0:F

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->j0(Landroid/content/Context;)F

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const/high16 v1, 0x40000000    # 2.0f

    .line 239
    .line 240
    div-float/2addr v0, v1

    .line 241
    const/high16 v1, 0x3f800000    # 1.0f

    .line 242
    .line 243
    sub-float/2addr v0, v1

    .line 244
    iput v0, p0, Lcom/android/calendar/homepage/c0;->c0:F

    .line 245
    .line 246
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 247
    .line 248
    const/high16 v1, 0x41900000    # 18.0f

    .line 249
    .line 250
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    iput v0, p0, Lcom/android/calendar/homepage/c0;->d0:F

    .line 255
    .line 256
    const v0, 0x7f07069e

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    iput v0, p0, Lcom/android/calendar/homepage/c0;->e0:F

    .line 264
    .line 265
    const v0, 0x7f070970

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    iput v0, p0, Lcom/android/calendar/homepage/c0;->b0:F

    .line 273
    .line 274
    const v0, 0x7f0706a2

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    iput v0, p0, Lcom/android/calendar/homepage/c0;->f0:F

    .line 282
    .line 283
    const v0, 0x7f0706a1

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    iput v0, p0, Lcom/android/calendar/homepage/c0;->g0:F

    .line 291
    .line 292
    const v0, 0x7f0706a0

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    iput v0, p0, Lcom/android/calendar/homepage/c0;->h0:F

    .line 300
    .line 301
    const v0, 0x7f07026d

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    iput p1, p0, Lcom/android/calendar/homepage/c0;->i0:F

    .line 309
    .line 310
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->d0()V

    .line 311
    .line 312
    .line 313
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_0

    .line 318
    .line 319
    const/4 p1, 0x0

    .line 320
    goto :goto_0

    .line 321
    :cond_0
    invoke-static {}, Lcom/miui/calendar/util/w;->d()Landroid/graphics/Typeface;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    :goto_0
    iput-object p1, p0, Lcom/android/calendar/homepage/c0;->m0:Landroid/graphics/Typeface;

    .line 326
    .line 327
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 328
    .line 329
    const/4 v0, 0x1

    .line 330
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    .line 332
    .line 333
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 334
    .line 335
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 336
    .line 337
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 341
    .line 342
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 343
    .line 344
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->v:Landroid/graphics/Paint;

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 350
    .line 351
    .line 352
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->w:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 358
    .line 359
    invoke-static {p1}, Lcom/miui/calendar/util/y;->q(Landroid/content/Context;)Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->n0:Z

    .line 364
    .line 365
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 366
    .line 367
    invoke-static {p1}, Lcom/miui/calendar/util/y;->t(Landroid/content/Context;)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->p0:Z

    .line 372
    .line 373
    sget-boolean p1, Lcom/miui/calendar/util/y;->a:Z

    .line 374
    .line 375
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->q0:Z

    .line 376
    .line 377
    new-instance p1, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .line 381
    .line 382
    iput-object p1, p0, Lcom/android/calendar/homepage/c0;->x:Ljava/util/List;

    .line 383
    .line 384
    const/4 p1, 0x0

    .line 385
    :goto_1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 386
    .line 387
    if-ge p1, v0, :cond_1

    .line 388
    .line 389
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->x:Ljava/util/List;

    .line 390
    .line 391
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->P()Ljava/util/ArrayList;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    add-int/lit8 p1, p1, 0x1

    .line 399
    .line 400
    goto :goto_1

    .line 401
    :cond_1
    return-void
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

.method private Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/y;->q(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0;->n0:Z

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

.method static synthetic a(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->c0:F

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

.method static synthetic b(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->L:I

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

.method static synthetic c(Lcom/android/calendar/homepage/c0;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/c0;->D:Landroid/graphics/Typeface;

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

.method static synthetic d(Lcom/android/calendar/homepage/c0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/c0;->w0:Z

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

.method private d0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const v1, 0x7f120526

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v1, 0x7f120525

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->k0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const v1, 0x7f1206ee

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const v1, 0x7f1206ed

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->l0:Ljava/lang/String;

    .line 54
    .line 55
    return-void
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

.method static synthetic e(Lcom/android/calendar/homepage/c0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->w0:Z

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

.method private e0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/homepage/d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/d0;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->C0:Lcom/android/calendar/homepage/d0;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/view/a0;->l0(Landroid/view/View;Landroidx/core/view/a;)V

    .line 9
    .line 10
    .line 11
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

.method static synthetic f(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->U:F

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

.method private f0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0;->w0:Z

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

.method static synthetic g(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->J:I

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

.method static synthetic h(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->K:I

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

.method static synthetic i(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->I:I

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

.method static synthetic j(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->W:F

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

.method private j0()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/c0;->q0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->d:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Calendar;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    iget v3, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 16
    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v3}, Lz3/d;->h(Landroid/content/Context;)Lz3/d;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    const/16 v6, 0xf

    .line 30
    .line 31
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    int-to-long v6, v6

    .line 36
    add-long/2addr v4, v6

    .line 37
    invoke-virtual {v3, v4, v5}, Lz3/d;->g(J)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, p0, Lcom/android/calendar/homepage/c0;->k:[Z

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    move v3, v5

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    move v3, v1

    .line 55
    :goto_1
    aput-boolean v3, v4, v2

    .line 56
    .line 57
    const/4 v3, 0x5

    .line 58
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
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

.method static synthetic k(Lcom/android/calendar/homepage/c0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/c0;->o0:Z

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

.method private k0()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/c0;->p0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->d:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Calendar;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v2, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/calendar/homepage/c0;->i:[I

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x6

    .line 32
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {v3, v5, v6}, Lcom/miui/calendar/util/DaysOffUtils;->e(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    aput v3, v2, v1

    .line 41
    .line 42
    const/4 v2, 0x5

    .line 43
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
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

.method static synthetic l(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->e0:F

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

.method static synthetic m(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->M:I

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

.method static synthetic n(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->T:F

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

.method static synthetic o(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->N:I

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

.method static synthetic p(Lcom/android/calendar/homepage/c0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/c0;->l0:Ljava/lang/String;

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

.method static synthetic q(Lcom/android/calendar/homepage/c0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/c0;->k0:Ljava/lang/String;

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

.method static synthetic r(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->V:F

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

.method static synthetic s(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->P:I

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

.method static synthetic t(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->O:I

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

.method static synthetic u(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->R:I

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

.method static synthetic v(Lcom/android/calendar/homepage/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->Q:I

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

.method static synthetic w(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->i0:F

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

.method static synthetic x(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->b0:F

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

.method static synthetic y(Lcom/android/calendar/homepage/c0;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/c0;->m0:Landroid/graphics/Typeface;

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

.method static synthetic z(Lcom/android/calendar/homepage/c0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/c0;->v0:F

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


# virtual methods
.method public N()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cancelAnim mAnimator:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " mNeedShowWholeAnim:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Cal:D:BaseWeekView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 61
    .line 62
    .line 63
    return-void
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

.method public O()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->t0:Lcom/android/calendar/homepage/c0$g;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->s0:Lcom/android/calendar/homepage/c0$h;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0;->x0:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/calendar/homepage/c0;->v0:F

    .line 13
    .line 14
    iput v0, p0, Lcom/android/calendar/homepage/c0;->u0:F

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public Q(F)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->o:F

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-ltz v1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lcom/android/calendar/homepage/c0;->m:F

    .line 8
    .line 9
    iget v2, p0, Lcom/android/calendar/homepage/c0;->p:F

    .line 10
    .line 11
    sub-float/2addr v1, v2

    .line 12
    cmpl-float v1, p1, v1

    .line 13
    .line 14
    if-gtz v1, :cond_1

    .line 15
    .line 16
    iget v1, p0, Lcom/android/calendar/homepage/c0;->q:F

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    cmpl-float v2, v1, v2

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-float/2addr p1, v0

    .line 25
    div-float/2addr p1, v1

    .line 26
    float-to-int p1, p1

    .line 27
    return p1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, -0x1

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

.method public R(I)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Lcom/android/calendar/homepage/c0$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/homepage/c0$j;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v1, ""

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x4

    .line 18
    if-ne p1, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v6, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 27
    .line 28
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 29
    .line 30
    .line 31
    iget-object v6, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 32
    .line 33
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v6, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 38
    .line 39
    invoke-virtual {v6, p1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const v6, 0x7f100057

    .line 49
    .line 50
    .line 51
    new-array v7, v4, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    aput-object v8, v7, v3

    .line 58
    .line 59
    invoke-virtual {p1, v6, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v2, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 71
    .line 72
    invoke-static {p1, v2}, Lcom/miui/calendar/util/s0;->j(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v2, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/miui/calendar/util/y;->o(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    iget-object v2, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/miui/calendar/util/s0;->A(Ljava/util/Calendar;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_1

    .line 91
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/miui/calendar/util/s0;->A(Ljava/util/Calendar;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_3

    .line 106
    .line 107
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    iget-object v6, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 114
    .line 115
    iget-object p1, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v7

    .line 121
    iget-object p1, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v9

    .line 127
    const v11, 0x8002

    .line 128
    .line 129
    .line 130
    invoke-static/range {v6 .. v11}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_0

    .line 135
    :cond_2
    move-object p1, v1

    .line 136
    goto :goto_0

    .line 137
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const v2, 0x7f120538

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :goto_0
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const v6, 0x7f1205fd

    .line 155
    .line 156
    .line 157
    const/4 v7, 0x2

    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-array v2, v7, [Ljava/lang/Object;

    .line 169
    .line 170
    iget-object v6, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 171
    .line 172
    iget-object v8, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v8

    .line 178
    invoke-static {v6, v8, v9, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    aput-object v5, v2, v3

    .line 183
    .line 184
    iget-object v3, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 185
    .line 186
    invoke-static {v3}, La4/d;->g(Ljava/util/Calendar;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    aput-object v3, v2, v4

    .line 191
    .line 192
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    goto :goto_1

    .line 197
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-array v6, v7, [Ljava/lang/Object;

    .line 206
    .line 207
    iget-object v8, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 208
    .line 209
    iget-object v9, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 210
    .line 211
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v9

    .line 215
    invoke-static {v8, v9, v10, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    aput-object v5, v6, v3

    .line 220
    .line 221
    aput-object v1, v6, v4

    .line 222
    .line 223
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 228
    .line 229
    iget-object v3, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 232
    .line 233
    .line 234
    move-result-wide v3

    .line 235
    invoke-static {v2, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    iget-object v0, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 244
    .line 245
    invoke-static {v3, v0}, Lz3/b;->f(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    return-object p1
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

.method public S(F)Ljava/util/Calendar;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->o:F

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/android/calendar/homepage/c0;->m:F

    .line 8
    .line 9
    iget v1, p0, Lcom/android/calendar/homepage/c0;->p:F

    .line 10
    .line 11
    sub-float/2addr v0, v1

    .line 12
    cmpl-float v0, p1, v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, Lcom/android/calendar/homepage/c0;->m:F

    .line 24
    .line 25
    sub-float p1, v0, p1

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->d:Ljava/util/Calendar;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Calendar;

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    iget v2, p0, Lcom/android/calendar/homepage/c0;->o:F

    .line 37
    .line 38
    sub-float/2addr p1, v2

    .line 39
    iget v2, p0, Lcom/android/calendar/homepage/c0;->q:F

    .line 40
    .line 41
    div-float/2addr p1, v2

    .line 42
    float-to-int p1, p1

    .line 43
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 48
    return-object p1
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

.method public U()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "initAnimValues mAnimator:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Cal:D:BaseWeekView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/android/calendar/homepage/c0$h;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v0, v1, p0}, Lcom/android/calendar/homepage/c0$h;-><init>(Landroid/content/Context;Lcom/android/calendar/homepage/c0;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->s0:Lcom/android/calendar/homepage/c0$h;

    .line 38
    .line 39
    new-instance v0, Lcom/android/calendar/homepage/c0$g;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/c0$g;-><init>(Lcom/android/calendar/homepage/c0;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->t0:Lcom/android/calendar/homepage/c0$g;

    .line 45
    .line 46
    const/16 v0, 0xa

    .line 47
    .line 48
    new-array v0, v0, [F

    .line 49
    .line 50
    fill-array-data v0, :array_0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    const-wide/16 v1, 0x7d0

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    const-wide/16 v1, 0x1194

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 74
    .line 75
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 76
    .line 77
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    const/4 v1, -0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->s0:Lcom/android/calendar/homepage/c0$h;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->t0:Lcom/android/calendar/homepage/c0$g;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
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

.method V()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->c:Lcom/android/calendar/common/e;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/calendar/common/e;->t:Z

    .line 4
    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
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

.method protected W()V
    .locals 0

    return-void
.end method

.method public X()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pauseAnim mAnimator:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " mNeedShowWholeAnim:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Cal:D:BaseWeekView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 61
    .line 62
    .line 63
    return-void
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

.method public Y()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->Z()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->f0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->k0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->j0()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->d0()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->c0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected a0()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_4

    .line 9
    .line 10
    new-instance v3, Lcom/android/calendar/homepage/c0$j;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sub-int/2addr v2, v1

    .line 16
    sub-int/2addr v2, v4

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move v2, v1

    .line 19
    :goto_1
    invoke-direct {v3, p0, v2}, Lcom/android/calendar/homepage/c0$j;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->getPaintInfos()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/android/calendar/homepage/c0$k;

    .line 47
    .line 48
    iget v6, v5, Lcom/android/calendar/homepage/c0$k;->d:I

    .line 49
    .line 50
    if-eq v6, v4, :cond_2

    .line 51
    .line 52
    const/4 v7, 0x2

    .line 53
    if-ne v6, v7, :cond_1

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/calendar/homepage/c0$k;->b(Lcom/android/calendar/homepage/c0$j;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    return-void
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

.method public b0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->f0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->k0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/calendar/homepage/c0;->j0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->a0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected c0()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    new-instance v3, Lcom/android/calendar/homepage/c0$j;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sub-int/2addr v2, v1

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move v2, v1

    .line 19
    :goto_1
    invoke-direct {v3, p0, v2}, Lcom/android/calendar/homepage/c0$j;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->getPaintInfos()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/calendar/homepage/c0$k;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Lcom/android/calendar/homepage/c0$k;->b(Lcom/android/calendar/homepage/c0$j;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
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

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->C0:Lcom/android/calendar/homepage/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/customview/widget/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public g0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "resumeAnim mAnimator:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " mNeedShowWholeAnim:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Cal:D:BaseWeekView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->U()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 76
    .line 77
    .line 78
    :cond_3
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

.method public getDayWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->q:F

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

.method protected getDrawCenterYOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->j0:F

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

.method public getEndPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->p:F

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

.method protected getPaintInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/calendar/homepage/c0$k;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->x:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
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

.method public getStartPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->o:F

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

.method public getWeekFirstDay()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->d:Ljava/util/Calendar;

    .line 2
    .line 3
    return-object v0
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

.method public getWeekHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->l:F

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

.method public h0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/calendar/homepage/c0;->A0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/calendar/homepage/c0$j;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/homepage/c0$j;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->B0:Lcom/android/calendar/homepage/h1$b;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x1e

    .line 28
    .line 29
    if-gt v1, v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/android/calendar/homepage/h1$b;->a(Ljava/util/Calendar;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
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
.end method

.method public i0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "startAnim mAnimator:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " mNeedShowWholeAnim:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Cal:D:BaseWeekView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/android/calendar/homepage/c0;->w0:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->U()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->r0:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_0
    return-void
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
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/homepage/c0;->n:I

    .line 5
    .line 6
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lcom/android/calendar/homepage/c0;->n:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->W()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_2

    .line 5
    .line 6
    iget v1, p0, Lcom/android/calendar/homepage/c0;->o:F

    .line 7
    .line 8
    iget v2, p0, Lcom/android/calendar/homepage/c0;->q:F

    .line 9
    .line 10
    int-to-float v3, v0

    .line 11
    mul-float/2addr v3, v2

    .line 12
    add-float/2addr v1, v3

    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr v2, v3

    .line 16
    add-float/2addr v1, v2

    .line 17
    iget v2, p0, Lcom/android/calendar/homepage/c0;->l:F

    .line 18
    .line 19
    div-float/2addr v2, v3

    .line 20
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->getDrawCenterYOffset()F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    add-float/2addr v2, v3

    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0;->getPaintInfos()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/calendar/homepage/c0$k;

    .line 50
    .line 51
    iget-boolean v5, v4, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 52
    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    iget v5, v4, Lcom/android/calendar/homepage/c0$k;->b:F

    .line 56
    .line 57
    add-float/2addr v5, v1

    .line 58
    iget v6, v4, Lcom/android/calendar/homepage/c0$k;->c:F

    .line 59
    .line 60
    add-float/2addr v6, v2

    .line 61
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/calendar/homepage/c0$k;->a(Landroid/graphics/Canvas;FF)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
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

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget p2, p0, Lcom/android/calendar/homepage/c0;->l:F

    .line 6
    .line 7
    float-to-int p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 9
    .line 10
    .line 11
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

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/android/calendar/homepage/c0;->m:F

    .line 3
    .line 4
    iget p2, p0, Lcom/android/calendar/homepage/c0;->o:F

    .line 5
    .line 6
    sub-float/2addr p1, p2

    .line 7
    iget p2, p0, Lcom/android/calendar/homepage/c0;->p:F

    .line 8
    .line 9
    sub-float/2addr p1, p2

    .line 10
    iget p2, p0, Lcom/android/calendar/homepage/c0;->a:I

    .line 11
    .line 12
    int-to-float p2, p2

    .line 13
    div-float/2addr p1, p2

    .line 14
    iput p1, p0, Lcom/android/calendar/homepage/c0;->q:F

    .line 15
    .line 16
    return-void
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

.method public setEvents([Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0;->j:[Z

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

.method public setFocusDay(Ljava/util/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0;->f:Ljava/util/Calendar;

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

.method public setHeight(I)V
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/android/calendar/homepage/c0;->l:F

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

.method public setMonthView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->A0:Z

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

.method public setMonthViewTouchEventCallback(Lcom/android/calendar/homepage/h1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0;->B0:Lcom/android/calendar/homepage/h1$b;

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

.method public setPageSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->y0:Z

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

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->e:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setShowDetails(Z)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->o0:Z

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
.end method

.method public setWeekFirstDay(Ljava/util/Calendar;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/homepage/c0;->d:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setWeekNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/c0;->h:I

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

.method public setWeekView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0;->z0:Z

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
