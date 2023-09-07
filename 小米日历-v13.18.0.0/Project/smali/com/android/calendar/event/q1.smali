.class public Lcom/android/calendar/event/q1;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/q1$r;,
        Lcom/android/calendar/event/q1$s;,
        Lcom/android/calendar/event/q1$t;
    }
.end annotation


# static fields
.field private static N0:Ljava/lang/StringBuilder;

.field private static O0:Ljava/util/Formatter;

.field private static P0:[Landroid/text/InputFilter;


# instance fields
.field private A0:Ljava/lang/String;

.field private final B0:Ljava/lang/String;

.field private C0:Z

.field D:Lmiuix/appcompat/widget/Spinner;

.field private D0:I

.field E:Lcom/miui/calendar/view/MultiRadioGroup;

.field private E0:I

.field F:Landroid/widget/EditText;

.field private F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

.field G:Landroid/widget/LinearLayout;

.field private G0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field H:Landroid/widget/TextView;

.field private H0:Landroid/database/Cursor;

.field I:Landroid/widget/TextView;

.field private I0:I

.field J:Landroid/widget/TextView;

.field private J0:Ljava/lang/String;

.field K:Landroid/widget/TextView;

.field private K0:Lcom/android/calendar/event/q1$t;

.field L:Landroid/widget/LinearLayout;

.field private L0:Ljava/lang/String;

.field M:Landroid/widget/TextView;

.field private M0:Ljava/lang/Runnable;

.field N:Landroid/widget/LinearLayout;

.field O:Landroid/widget/MultiAutoCompleteTextView;

.field P:Landroid/view/View;

.field Q:Landroid/view/View;

.field R:Landroid/view/View;

.field S:Landroid/view/View;

.field T:Landroid/view/View;

.field U:Landroid/view/View;

.field V:Landroid/view/View;

.field W:Landroid/widget/LinearLayout;

.field X:Lmiuix/slidingwidget/widget/SlidingButton;

.field private Y:Lh4/e;

.field private Z:Lh4/c;

.field a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private a0:[I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b0:[I

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c0:Lmiuix/appcompat/app/l;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d0:Landroid/content/Context;

.field e:Landroid/widget/TextView;

.field private e0:Lcom/android/calendar/event/NewBaseEditFragment;

.field f:Lcom/miui/calendar/view/BetterScrollView;

.field private f0:Landroid/view/View;

.field g:Landroid/widget/LinearLayout;

.field private g0:Lcom/android/calendar/common/event/schema/Event;

.field h:Landroid/widget/TextView;

.field private h0:Ljava/lang/String;

.field i:Landroid/widget/LinearLayout;

.field private i0:Lcom/android/ex/chips/a;

.field j:Landroid/widget/TextView;

.field private j0:Lg2/b;

.field k:Landroid/widget/TextView;

.field private k0:Lcom/android/calendar/common/l;

.field l:Landroid/view/View;

.field private l0:Lcom/android/calendar/event/q1$r;

.field m:Landroid/view/View;

.field private m0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field n:Landroid/widget/TextView;

.field private n0:Lcom/miui/calendar/repeats/RepeatSchema;

.field o:Landroid/widget/TextView;

.field private o0:Lcom/miui/calendar/repeats/RepeatEndSchema;

.field p:Landroid/widget/TextView;

.field private p0:Z

.field q:Landroid/widget/TextView;

.field private q0:Landroid/os/Handler;

.field r:Landroid/widget/LinearLayout;

.field private r0:Z

.field private s0:Lcom/miui/calendar/util/r0;

.field private t0:Lcom/miui/calendar/util/r0;

.field private u0:Ljava/time/ZonedDateTime;

.field v:Lmiuix/slidingwidget/widget/SlidingButton;

.field private v0:Ljava/time/ZonedDateTime;

.field w:Lmiuix/appcompat/widget/Spinner;

.field private w0:Ljava/time/ZonedDateTime;

.field x:Landroid/widget/LinearLayout;

.field private x0:Ljava/time/ZonedDateTime;

.field y:Lmiuix/appcompat/widget/Spinner;

.field private y0:J

.field z:Landroid/widget/LinearLayout;

.field private z0:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/calendar/event/q1;->N0:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    new-instance v0, Ljava/util/Formatter;

    .line 11
    .line 12
    sget-object v1, Lcom/android/calendar/event/q1;->N0:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/calendar/event/q1;->O0:Ljava/util/Formatter;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 25
    .line 26
    new-instance v1, Lg2/a;

    .line 27
    .line 28
    invoke-direct {v1}, Lg2/a;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    sput-object v0, Lcom/android/calendar/event/q1;->P0:[Landroid/text/InputFilter;

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

.method public constructor <init>(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/q1;->a:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/q1;->c:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/q1;->d:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/android/calendar/event/q1;->a0:[I

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcom/android/calendar/event/q1;->b0:[I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/q1;->m0:Ljava/util/ArrayList;

    const-wide/16 v2, -0x1

    .line 9
    iput-wide v2, p0, Lcom/android/calendar/event/q1;->y0:J

    .line 10
    iput-wide v2, p0, Lcom/android/calendar/event/q1;->z0:J

    .line 11
    iput-boolean v1, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 12
    iput v1, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 13
    iput v1, p0, Lcom/android/calendar/event/q1;->E0:I

    .line 14
    new-instance v0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    invoke-direct {v0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/q1;->G0:Ljava/util/ArrayList;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/q1;->J0:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/calendar/event/q1;->K0:Lcom/android/calendar/event/q1$t;

    .line 18
    new-instance v2, Lcom/android/calendar/event/q1$p;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/q1$p;-><init>(Lcom/android/calendar/event/q1;)V

    iput-object v2, p0, Lcom/android/calendar/event/q1;->M0:Ljava/lang/Runnable;

    const-string v2, "NewEditEventView"

    .line 19
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/android/calendar/event/q1;->e0:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    .line 23
    iget-object p1, p0, Lcom/android/calendar/event/q1;->q0:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/q1;->q0:Landroid/os/Handler;

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    new-instance v2, Lcom/android/calendar/event/q1$l;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/q1$l;-><init>(Lcom/android/calendar/event/q1;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 26
    iget-object p1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f06050f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/calendar/event/q1;->I0:I

    const p1, 0x7f0a0392

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->e:Landroid/widget/TextView;

    const p1, 0x7f0a0517

    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/view/BetterScrollView;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->f:Lcom/miui/calendar/view/BetterScrollView;

    const p1, 0x7f0a062d

    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    const p1, 0x7f0a039a

    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    const p1, 0x7f0a039c

    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->G:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0222

    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    const p1, 0x7f0a02b6

    .line 33
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/calendar/event/q1;->g:Landroid/widget/LinearLayout;

    const v2, 0x7f0a05a6

    .line 34
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/event/q1;->h:Landroid/widget/TextView;

    const v2, 0x7f0a0641

    .line 35
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/calendar/event/q1;->i:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0268

    .line 36
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/calendar/event/q1;->j:Landroid/widget/TextView;

    .line 37
    iget-object v3, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    const v4, 0x7f0a06e6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/calendar/event/q1;->J:Landroid/widget/TextView;

    .line 38
    iget-object v3, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    const v4, 0x7f0a062a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/calendar/event/q1;->K:Landroid/widget/TextView;

    const v3, 0x7f0a0628

    .line 39
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/calendar/event/q1;->k:Landroid/widget/TextView;

    const v3, 0x7f0a0629

    .line 40
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/event/q1;->l:Landroid/view/View;

    const v3, 0x7f0a062b

    .line 41
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/event/q1;->m:Landroid/view/View;

    const v4, 0x7f0a05ae

    .line 42
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/calendar/event/q1;->n:Landroid/widget/TextView;

    const v4, 0x7f0a05a7

    .line 43
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/calendar/event/q1;->o:Landroid/widget/TextView;

    const v4, 0x7f0a026d

    .line 44
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/calendar/event/q1;->p:Landroid/widget/TextView;

    const v4, 0x7f0a0269

    .line 45
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/calendar/event/q1;->q:Landroid/widget/TextView;

    const v4, 0x7f0a0099

    .line 46
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/calendar/event/q1;->r:Landroid/widget/LinearLayout;

    const v5, 0x7f0a0346

    .line 47
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v5, p0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    const v5, 0x7f0a0133

    .line 48
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/widget/Spinner;

    iput-object v5, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    const v5, 0x7f0a04e9

    .line 49
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/calendar/event/q1;->x:Landroid/widget/LinearLayout;

    const v5, 0x7f0a04e6

    .line 50
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/widget/Spinner;

    iput-object v5, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 51
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    iget-object v5, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/view/View;->setClickable(Z)V

    const v5, 0x7f0a04e8

    .line 53
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/calendar/event/q1;->z:Landroid/widget/LinearLayout;

    const v5, 0x7f0a04e7

    .line 54
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/widget/Spinner;

    iput-object v5, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    const v5, 0x7f0a0131

    .line 55
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/event/q1;->P:Landroid/view/View;

    const v5, 0x7f0a012f

    .line 56
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/event/q1;->Q:Landroid/view/View;

    const v5, 0x7f0a04ef

    .line 57
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/event/q1;->S:Landroid/view/View;

    const v5, 0x7f0a0471

    .line 58
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/event/q1;->T:Landroid/view/View;

    const v5, 0x7f0a0225

    .line 59
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/event/q1;->R:Landroid/view/View;

    const v5, 0x7f0a02b7

    .line 60
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/calendar/event/q1;->U:Landroid/view/View;

    const v6, 0x7f0a0642

    .line 61
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/event/q1;->V:Landroid/view/View;

    const v7, 0x7f0a00ce

    .line 62
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/calendar/event/q1;->N:Landroid/widget/LinearLayout;

    const v7, 0x7f0a00cd

    .line 63
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    .line 64
    iget-object v7, p0, Lcom/android/calendar/event/q1;->a:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v4, p0, Lcom/android/calendar/event/q1;->a:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lcom/android/calendar/event/q1;->a:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/android/calendar/event/q1;->a:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/android/calendar/event/q1;->a:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/android/calendar/event/q1;->a0:[I

    iget-object v2, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    aput v2, p1, v1

    .line 76
    iget-object p1, p0, Lcom/android/calendar/event/q1;->a0:[I

    iget-object v2, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const/4 v4, 0x1

    aput v2, p1, v4

    .line 77
    iget-object p1, p0, Lcom/android/calendar/event/q1;->a0:[I

    iget-object v2, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    const/4 v5, 0x2

    aput v2, p1, v5

    .line 78
    iget-object p1, p0, Lcom/android/calendar/event/q1;->a0:[I

    iget-object v2, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    const/4 v6, 0x3

    aput v2, p1, v6

    .line 79
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b0:[I

    iget-object v2, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    aput v2, p1, v1

    .line 80
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b0:[I

    iget-object v1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    aput v1, p1, v4

    .line 81
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b0:[I

    iget-object v1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    aput v1, p1, v5

    .line 82
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b0:[I

    iget-object v1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    aput v1, p1, v6

    .line 83
    iget-object p1, p0, Lcom/android/calendar/event/q1;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/android/calendar/event/q1;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/android/calendar/event/q1;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/android/calendar/event/q1;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/android/calendar/event/q1;->d:Ljava/util/ArrayList;

    const v1, 0x7f0a06ee

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/android/calendar/event/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->U:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->V:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a04f0

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/view/MultiRadioGroup;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->E:Lcom/miui/calendar/view/MultiRadioGroup;

    const p1, 0x7f0a04dd

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->L:Landroid/widget/LinearLayout;

    const p1, 0x7f0a04db

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->M:Landroid/widget/TextView;

    .line 98
    iget-object p1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/event/q1;->B0:Ljava/lang/String;

    .line 100
    new-instance p1, Lcom/miui/calendar/util/r0;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 101
    new-instance p1, Lcom/miui/calendar/util/r0;

    iget-object v1, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 102
    new-instance p1, Lg2/b;

    invoke-direct {p1, v0}, Lg2/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/calendar/event/q1;->j0:Lg2/b;

    .line 103
    iget-object p1, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    check-cast p1, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/q1;->Y(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/q1;->u0(Lcom/android/calendar/common/event/schema/Event;)V

    .line 105
    iget-object p1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->D0(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    iget-object p1, p0, Lcom/android/calendar/event/q1;->q0:Landroid/os/Handler;

    new-instance v0, Lcom/android/calendar/event/q1$m;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/q1$m;-><init>(Lcom/android/calendar/event/q1;)V

    iget-object v1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 108
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    iget-object p1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    new-instance v0, Lcom/android/calendar/event/q1$n;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/q1$n;-><init>(Lcom/android/calendar/event/q1;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 110
    iget-object p1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    new-instance v0, Lcom/android/calendar/event/q1$o;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/q1$o;-><init>(Lcom/android/calendar/event/q1;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object p1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    const v1, 0x7f1200b6

    const/16 v2, 0x3e8

    invoke-static {v0, v2, v1}, Lcom/miui/calendar/util/x0;->i(Landroid/content/Context;II)[Landroid/text/InputFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 112
    iget-object p1, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    const/16 v1, 0x1f4

    const v3, 0x7f12066f

    invoke-static {v0, v1, v3}, Lcom/miui/calendar/util/x0;->i(Landroid/content/Context;II)[Landroid/text/InputFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 113
    iget-object p1, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    const v1, 0x7f12066e

    invoke-static {v0, v2, v1}, Lcom/miui/calendar/util/x0;->i(Landroid/content/Context;II)[Landroid/text/InputFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const p1, 0x7f0a008d

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->W:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0345

    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/android/calendar/event/q1;->X:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 116
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method static synthetic A(Lcom/android/calendar/event/q1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->L0:Ljava/lang/String;

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

.method static synthetic B(Lcom/android/calendar/event/q1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1;->L0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
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

.method private B0(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/calendar/common/y;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/q1;->K:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/calendar/common/y;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/calendar/event/q1;->k:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/calendar/common/y;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/calendar/common/y;->a:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/l;->f(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    return-void
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

.method static synthetic C(Lcom/android/calendar/event/q1;JJZLcom/android/calendar/event/q1$t;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/event/q1;->m0(JJZLcom/android/calendar/event/q1$t;)V

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

.method private C0(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 7
    .line 8
    if-ltz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 16
    .line 17
    .line 18
    return-void
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

.method static synthetic D(Lcom/android/calendar/event/q1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/q1;->o0(Z)V

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

.method private D0(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    const-string v1, "Cal:D:EditEventView"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "setViewStates(): model is NULL"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "setViewStates(): mode:"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz p1, :cond_b

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->canModifyEvent()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/q1;->d:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/event/q1;->c:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    const/4 v4, 0x3

    .line 108
    const/4 v5, 0x2

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/view/View;

    .line 116
    .line 117
    instance-of v6, v3, Landroid/widget/EditText;

    .line 118
    .line 119
    if-eqz v6, :cond_5

    .line 120
    .line 121
    move-object v6, v3

    .line 122
    check-cast v6, Landroid/widget/EditText;

    .line 123
    .line 124
    invoke-direct {p0, v6, v2}, Lcom/android/calendar/event/q1;->t0(Landroid/widget/EditText;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    .line 130
    .line 131
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eqz v6, :cond_4

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    .line 145
    .line 146
    iget-object v6, p0, Lcom/android/calendar/event/q1;->a0:[I

    .line 147
    .line 148
    aget v7, v6, v2

    .line 149
    .line 150
    aget v8, v6, v0

    .line 151
    .line 152
    aget v5, v6, v5

    .line 153
    .line 154
    aget v4, v6, v4

    .line 155
    .line 156
    invoke-virtual {v3, v7, v8, v5, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/android/calendar/event/j;->f(Lcom/android/calendar/common/event/schema/Event;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_7

    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/calendar/event/q1;->Q:Landroid/view/View;

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/calendar/event/q1;->P:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/android/calendar/event/q1;->Q:Landroid/view/View;

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/calendar/event/q1;->P:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    :goto_4
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 196
    .line 197
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 201
    .line 202
    iget-object v3, p0, Lcom/android/calendar/event/q1;->b0:[I

    .line 203
    .line 204
    aget v6, v3, v2

    .line 205
    .line 206
    aget v7, v3, v0

    .line 207
    .line 208
    aget v8, v3, v5

    .line 209
    .line 210
    aget v3, v3, v4

    .line 211
    .line 212
    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 216
    .line 217
    iget-object v3, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 218
    .line 219
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 229
    .line 230
    iget-object v3, p0, Lcom/android/calendar/event/q1;->b0:[I

    .line 231
    .line 232
    aget v6, v3, v2

    .line 233
    .line 234
    aget v7, v3, v0

    .line 235
    .line 236
    aget v5, v3, v5

    .line 237
    .line 238
    aget v3, v3, v4

    .line 239
    .line 240
    invoke-virtual {p1, v6, v7, v5, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->getOriginalSyncId()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-nez p1, :cond_8

    .line 254
    .line 255
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_8
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 267
    .line 268
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 272
    .line 273
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 274
    .line 275
    .line 276
    :goto_5
    iget-object p1, p0, Lcom/android/calendar/event/q1;->L:Landroid/widget/LinearLayout;

    .line 277
    .line 278
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lcom/android/calendar/event/q1;->R:Landroid/view/View;

    .line 282
    .line 283
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lcom/android/calendar/event/q1;->G:Landroid/widget/LinearLayout;

    .line 287
    .line 288
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lcom/android/calendar/event/q1;->x:Landroid/widget/LinearLayout;

    .line 292
    .line 293
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-eqz p1, :cond_9

    .line 303
    .line 304
    iget p1, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 305
    .line 306
    if-nez p1, :cond_9

    .line 307
    .line 308
    iget-object p1, p0, Lcom/android/calendar/event/q1;->z:Landroid/widget/LinearLayout;

    .line 309
    .line 310
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    :cond_9
    iget-object p1, p0, Lcom/android/calendar/event/q1;->l:Landroid/view/View;

    .line 314
    .line 315
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Lcom/android/calendar/event/q1;->S:Landroid/view/View;

    .line 319
    .line 320
    iget-boolean v0, p0, Lcom/android/calendar/event/q1;->r0:Z

    .line 321
    .line 322
    if-eqz v0, :cond_a

    .line 323
    .line 324
    move v1, v2

    .line 325
    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_c

    .line 329
    .line 330
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/android/calendar/event/q1;->E0()V

    .line 331
    .line 332
    .line 333
    iget-object p1, p0, Lcom/android/calendar/event/q1;->d:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_c

    .line 344
    .line 345
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    check-cast v3, Landroid/view/View;

    .line 350
    .line 351
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_c
    iget-object p1, p0, Lcom/android/calendar/event/q1;->b:Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_d

    .line 366
    .line 367
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    check-cast v3, Landroid/view/View;

    .line 372
    .line 373
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_d
    iget-object p1, p0, Lcom/android/calendar/event/q1;->c:Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    const/4 v4, 0x0

    .line 388
    if-eqz v3, :cond_f

    .line 389
    .line 390
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    check-cast v3, Landroid/view/View;

    .line 395
    .line 396
    instance-of v5, v3, Landroid/widget/EditText;

    .line 397
    .line 398
    if-eqz v5, :cond_e

    .line 399
    .line 400
    move-object v5, v3

    .line 401
    check-cast v5, Landroid/widget/EditText;

    .line 402
    .line 403
    invoke-direct {p0, v5, v0}, Lcom/android/calendar/event/q1;->t0(Landroid/widget/EditText;Z)V

    .line 404
    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_e
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 408
    .line 409
    .line 410
    :goto_a
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_f
    iget-object p1, p0, Lcom/android/calendar/event/q1;->P:Landroid/view/View;

    .line 415
    .line 416
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lcom/android/calendar/event/q1;->Q:Landroid/view/View;

    .line 420
    .line 421
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 425
    .line 426
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 427
    .line 428
    .line 429
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 430
    .line 431
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 432
    .line 433
    .line 434
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 435
    .line 436
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 437
    .line 438
    .line 439
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 440
    .line 441
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 442
    .line 443
    .line 444
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 445
    .line 446
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->canAddReminders()Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    if-eqz p1, :cond_10

    .line 455
    .line 456
    iget-object p1, p0, Lcom/android/calendar/event/q1;->L:Landroid/widget/LinearLayout;

    .line 457
    .line 458
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    .line 460
    .line 461
    goto :goto_b

    .line 462
    :cond_10
    iget-object p1, p0, Lcom/android/calendar/event/q1;->L:Landroid/widget/LinearLayout;

    .line 463
    .line 464
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    :goto_b
    iget-object p1, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    .line 468
    .line 469
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    if-eqz p1, :cond_11

    .line 478
    .line 479
    iget-object p1, p0, Lcom/android/calendar/event/q1;->G:Landroid/widget/LinearLayout;

    .line 480
    .line 481
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 482
    .line 483
    .line 484
    :cond_11
    iget-object p1, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    .line 485
    .line 486
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    if-eqz p1, :cond_12

    .line 495
    .line 496
    iget-object p1, p0, Lcom/android/calendar/event/q1;->R:Landroid/view/View;

    .line 497
    .line 498
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    .line 500
    .line 501
    :cond_12
    :goto_c
    iget-object p1, p0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    invoke-direct {p0, p1}, Lcom/android/calendar/event/q1;->o0(Z)V

    .line 508
    .line 509
    .line 510
    return-void
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

.method static synthetic E(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->W()V

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

.method static synthetic F(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->k0()V

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

.method private F0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->r:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    new-instance v1, Lcom/android/calendar/event/q1$q;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$q;-><init>(Lcom/android/calendar/event/q1;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/event/q1;->r:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 17
    .line 18
    new-instance v1, Lcom/android/calendar/event/q1$b;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$b;-><init>(Lcom/android/calendar/event/q1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/event/q1;->W:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    new-instance v1, Lcom/android/calendar/event/q1$c;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$c;-><init>(Lcom/android/calendar/event/q1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/event/q1;->W:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/calendar/event/q1;->X:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 42
    .line 43
    new-instance v1, Lcom/android/calendar/event/q1$d;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$d;-><init>(Lcom/android/calendar/event/q1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/q1;->l:Landroid/view/View;

    .line 52
    .line 53
    new-instance v1, Lcom/android/calendar/event/q1$e;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$e;-><init>(Lcom/android/calendar/event/q1;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/calendar/event/q1;->l:Landroid/view/View;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/calendar/event/q1;->x:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    new-instance v1, Lcom/android/calendar/event/q1$f;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$f;-><init>(Lcom/android/calendar/event/q1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/calendar/event/q1;->x:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/calendar/event/q1;->z:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    new-instance v1, Lcom/android/calendar/event/q1$g;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$g;-><init>(Lcom/android/calendar/event/q1;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/q1;->z:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/calendar/event/q1;->P:Landroid/view/View;

    .line 97
    .line 98
    new-instance v1, Lcom/android/calendar/event/q1$h;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$h;-><init>(Lcom/android/calendar/event/q1;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/calendar/event/q1;->P:Landroid/view/View;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    return-void
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

.method static synthetic G(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->l0()V

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

.method private G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->D0(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic H(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->H0()V

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

.method private H0()V
    .locals 5

    .line 1
    new-instance v0, Lmiuix/appcompat/app/l$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->g(Z)Lmiuix/appcompat/app/l$b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->b()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v3, 0x7f12064c

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Lcom/android/calendar/common/l;->b(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0, v3, v4, p0}, Lmiuix/appcompat/app/l$b;->D(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->a()Lmiuix/appcompat/app/l;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/calendar/event/q1;->c0:Lmiuix/appcompat/app/l;

    .line 38
    .line 39
    const-string v0, "layout_inflater"

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .line 47
    const v2, 0x7f0d023e

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 58
    .line 59
    const v3, 0x7f1201a7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/android/calendar/event/q1$a;

    .line 70
    .line 71
    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/q1$a;-><init>(Lcom/android/calendar/event/q1;Landroid/widget/TextView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/android/calendar/common/l;->c()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_0

    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/calendar/event/q1;->c0:Lmiuix/appcompat/app/l;

    .line 86
    .line 87
    invoke-virtual {v2}, Lmiuix/appcompat/app/l;->f()Landroid/widget/ListView;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/calendar/event/q1;->c0:Lmiuix/appcompat/app/l;

    .line 94
    .line 95
    invoke-virtual {v2}, Lmiuix/appcompat/app/l;->f()Landroid/widget/ListView;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->c0:Lmiuix/appcompat/app/l;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/calendar/event/q1;->c0:Lmiuix/appcompat/app/l;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    .line 111
    .line 112
    return-void
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

.method static synthetic I(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/repeats/RepeatSchema;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->n0:Lcom/miui/calendar/repeats/RepeatSchema;

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

.method private I0(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/common/event/schema/Attendee;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/calendar/common/event/schema/Attendee;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Attendee;->getEmail()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
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

.method static synthetic J(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/repeats/RepeatEndSchema;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->o0:Lcom/miui/calendar/repeats/RepeatEndSchema;

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

.method private J0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->N:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->hasAttendeeData()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Lcom/miui/calendar/util/h;->c(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Lcom/miui/calendar/util/h;->d(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 31
    .line 32
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
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

.method static synthetic K(Lcom/android/calendar/event/q1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/event/q1;->C0:Z

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

.method private K0()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "updateHomeTime(): tz:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ", mTimezone:"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "Cal:D:EditEventView"

    .line 37
    .line 38
    invoke-static {v3, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_5

    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    iget v2, v0, Lcom/android/calendar/event/q1;->E0:I

    .line 58
    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    iget-object v2, v0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_0

    .line 68
    .line 69
    const/16 v8, 0x81

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v8, 0x1

    .line 73
    :goto_0
    iget-object v2, v0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 74
    .line 75
    const/4 v13, 0x0

    .line 76
    invoke-virtual {v2, v13}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 77
    .line 78
    .line 79
    move-result-wide v14

    .line 80
    iget-object v2, v0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 81
    .line 82
    invoke-virtual {v2, v13}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 83
    .line 84
    .line 85
    move-result-wide v16

    .line 86
    iget-object v2, v0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->k()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    const/4 v9, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v9, v13

    .line 97
    :goto_1
    iget-object v2, v0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->k()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    const/4 v6, 0x1

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move v6, v13

    .line 108
    :goto_2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v9, v13, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v2, Lcom/android/calendar/event/q1;->N0:Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 131
    .line 132
    sget-object v3, Lcom/android/calendar/event/q1;->O0:Ljava/util/Formatter;

    .line 133
    .line 134
    move-object v11, v4

    .line 135
    move-wide v4, v14

    .line 136
    move/from16 v18, v6

    .line 137
    .line 138
    move-object v12, v7

    .line 139
    move-wide v6, v14

    .line 140
    move/from16 v19, v9

    .line 141
    .line 142
    move-object v9, v1

    .line 143
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v9, " "

    .line 151
    .line 152
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const v8, 0x80016

    .line 159
    .line 160
    .line 161
    sget-object v2, Lcom/android/calendar/event/q1;->N0:Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 164
    .line 165
    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v2, v0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 172
    .line 173
    sget-object v3, Lcom/android/calendar/event/q1;->O0:Ljava/util/Formatter;

    .line 174
    .line 175
    move-object v13, v6

    .line 176
    move-wide v6, v14

    .line 177
    move-object v14, v9

    .line 178
    move-object v9, v1

    .line 179
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    const/4 v3, 0x0

    .line 198
    invoke-virtual {v11, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v2, v0, Lcom/android/calendar/event/q1;->n:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    move/from16 v2, v18

    .line 211
    .line 212
    move/from16 v13, v19

    .line 213
    .line 214
    if-eq v2, v13, :cond_3

    .line 215
    .line 216
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v4, v2, v3, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    move-object v12, v7

    .line 229
    :cond_3
    if-eqz v10, :cond_4

    .line 230
    .line 231
    const/16 v8, 0x81

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_4
    const/4 v8, 0x1

    .line 235
    :goto_3
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 236
    .line 237
    .line 238
    sget-object v2, Lcom/android/calendar/event/q1;->N0:Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 241
    .line 242
    .line 243
    iget-object v2, v0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 244
    .line 245
    sget-object v3, Lcom/android/calendar/event/q1;->O0:Ljava/util/Formatter;

    .line 246
    .line 247
    move-wide/from16 v4, v16

    .line 248
    .line 249
    move-wide/from16 v6, v16

    .line 250
    .line 251
    move-object v9, v1

    .line 252
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const v8, 0x80016

    .line 266
    .line 267
    .line 268
    sget-object v2, Lcom/android/calendar/event/q1;->N0:Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const/4 v3, 0x0

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 272
    .line 273
    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    iget-object v2, v0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 280
    .line 281
    sget-object v3, Lcom/android/calendar/event/q1;->O0:Ljava/util/Formatter;

    .line 282
    .line 283
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    const/4 v2, 0x0

    .line 302
    invoke-virtual {v11, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget-object v1, v0, Lcom/android/calendar/event/q1;->p:Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Lcom/android/calendar/event/q1;->U:Landroid/view/View;

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Lcom/android/calendar/event/q1;->V:Landroid/view/View;

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_5
    iget-object v1, v0, Lcom/android/calendar/event/q1;->U:Landroid/view/View;

    .line 326
    .line 327
    const/16 v2, 0x8

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/calendar/event/q1;->V:Landroid/view/View;

    .line 333
    .line 334
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    :goto_4
    return-void
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
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method static synthetic L(Lcom/android/calendar/event/q1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/event/q1;->C0:Z

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

.method static synthetic M(Lcom/android/calendar/event/q1;Ljava/time/ZonedDateTime;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/q1;->g0(Ljava/time/ZonedDateTime;ZZ)V

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

.method static synthetic N(Lcom/android/calendar/event/q1;Ljava/time/ZonedDateTime;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/q1;->f0(Ljava/time/ZonedDateTime;Z)V

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

.method private P(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    instance-of v0, p2, Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v1, ". "

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p2, Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    instance-of v0, p2, Lcom/miui/calendar/view/MultiRadioGroup;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    move-object v0, p2

    .line 62
    check-cast v0, Lcom/miui/calendar/view/MultiRadioGroup;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/miui/calendar/view/MultiRadioGroup;->getCheckedRadioButtonId()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v2, -0x1

    .line 69
    if-eq v0, v2, :cond_4

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Landroid/widget/RadioButton;

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    instance-of v0, p2, Lmiuix/appcompat/widget/Spinner;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    check-cast p2, Lmiuix/appcompat/widget/Spinner;

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    instance-of v0, v0, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_4

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 150
    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    check-cast p2, Landroid/view/ViewGroup;

    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    const/4 v1, 0x0

    .line 160
    :goto_0
    if-ge v1, v0, :cond_4

    .line 161
    .line 162
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-direct {p0, p1, v2}, Lcom/android/calendar/event/q1;->P(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    :goto_1
    return-void
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

.method private Q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/calendar/event/q1;->u0:Ljava/time/ZonedDateTime;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/calendar/event/q1;->v0:Ljava/time/ZonedDateTime;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/calendar/event/q1;->u0:Ljava/time/ZonedDateTime;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/calendar/event/q1;->B0:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/calendar/event/q1;->w0:Ljava/time/ZonedDateTime;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/calendar/event/q1;->v0:Ljava/time/ZonedDateTime;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/calendar/event/q1;->B0:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/calendar/event/q1;->x0:Ljava/time/ZonedDateTime;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    new-instance v2, Lcom/android/calendar/event/q1$s;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/calendar/event/q1;->u0:Ljava/time/ZonedDateTime;

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    invoke-direct {v2, p0, v3, v4, v4}, Lcom/android/calendar/event/q1$s;-><init>(Lcom/android/calendar/event/q1;Ljava/time/ZonedDateTime;ZZ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/calendar/event/q1;->i:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    new-instance v2, Lcom/android/calendar/event/q1$s;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/android/calendar/event/q1;->v0:Ljava/time/ZonedDateTime;

    .line 92
    .line 93
    invoke-direct {v2, p0, v3, v1, v4}, Lcom/android/calendar/event/q1$s;-><init>(Lcom/android/calendar/event/q1;Ljava/time/ZonedDateTime;ZZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/calendar/event/q1;->U:Landroid/view/View;

    .line 100
    .line 101
    new-instance v2, Lcom/android/calendar/event/q1$s;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/calendar/event/q1;->w0:Ljava/time/ZonedDateTime;

    .line 104
    .line 105
    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/calendar/event/q1$s;-><init>(Lcom/android/calendar/event/q1;Ljava/time/ZonedDateTime;ZZ)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/calendar/event/q1;->V:Landroid/view/View;

    .line 112
    .line 113
    new-instance v2, Lcom/android/calendar/event/q1$s;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/calendar/event/q1;->x0:Ljava/time/ZonedDateTime;

    .line 116
    .line 117
    invoke-direct {v2, p0, v3, v1, v1}, Lcom/android/calendar/event/q1$s;-><init>(Lcom/android/calendar/event/q1;Ljava/time/ZonedDateTime;ZZ)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    return-void
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

.method private R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->K0:Lcom/android/calendar/event/q1$t;

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
    iput-object v0, p0, Lcom/android/calendar/event/q1;->K0:Lcom/android/calendar/event/q1$t;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Landroid/text/Editable;->clearSpans()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v1, v0}, Lcom/android/calendar/event/q1;->C0(Ljava/lang/CharSequence;I)V

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

.method private U()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/calendar/event/q1;->K0:Lcom/android/calendar/event/q1$t;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/q1;->K0:Lcom/android/calendar/event/q1$t;

    .line 28
    .line 29
    iget v2, v0, Lcom/android/calendar/event/q1$t;->a:I

    .line 30
    .line 31
    iget v0, v0, Lcom/android/calendar/event/q1$t;->b:I

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
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

.method private V(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method private W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/miui/calendar/util/x0;->l0(Landroid/content/Context;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/miui/calendar/util/x0;->l0(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/miui/calendar/util/x0;->l0(Landroid/content/Context;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
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

.method private Y(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/ex/chips/c;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/calendar/event/u1;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/android/calendar/event/u1;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/calendar/event/q1;->i0:Lcom/android/ex/chips/a;

    .line 15
    .line 16
    check-cast v0, Lcom/android/ex/chips/b;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnFocusListShrinkRecipients(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/android/calendar/event/m;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/android/calendar/event/m;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/calendar/event/q1;->i0:Lcom/android/ex/chips/a;

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    check-cast v1, Lcom/android/calendar/event/m;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    new-instance v0, Landroid/text/util/Rfc822Tokenizer;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/calendar/event/q1;->j0:Lg2/b;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/android/calendar/event/q1;->P0:[Landroid/text/InputFilter;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 57
    .line 58
    .line 59
    return-object p1
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private Z()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/event/q1;->p0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 8
    .line 9
    iget v2, v0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->b:I

    .line 10
    .line 11
    const/4 v3, 0x4

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v2, v3, :cond_7

    .line 14
    .line 15
    const/4 v3, 0x5

    .line 16
    if-eq v2, v3, :cond_4

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x7

    .line 22
    if-eq v2, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v4

    .line 26
    :cond_2
    invoke-virtual {v0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->k()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    return v4

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 34
    .line 35
    iget v2, v0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 36
    .line 37
    if-nez v2, :cond_6

    .line 38
    .line 39
    iget v2, v0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->q:I

    .line 40
    .line 41
    if-ne v2, v1, :cond_6

    .line 42
    .line 43
    iget-object v0, v0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->p:[I

    .line 44
    .line 45
    aget v0, v0, v4

    .line 46
    .line 47
    if-lez v0, :cond_6

    .line 48
    .line 49
    return v4

    .line 50
    :cond_4
    invoke-virtual {v0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->l()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/miui/calendar/repeats/b;->i(Lcom/miui/calendar/util/r0;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    return v4

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 66
    .line 67
    iget v0, v0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 68
    .line 69
    if-ne v0, v1, :cond_6

    .line 70
    .line 71
    return v4

    .line 72
    :cond_6
    :goto_0
    return v1

    .line 73
    :cond_7
    return v4
    .line 74
    .line 75
.end method

.method public static synthetic a(Lcom/android/calendar/event/q1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/event/q1;->b0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/calendar/event/q1;)Lmiuix/appcompat/app/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->c0:Lmiuix/appcompat/app/l;

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

.method private synthetic b0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method static synthetic c(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

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

.method static synthetic d(Lcom/android/calendar/event/q1;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->q0:Landroid/os/Handler;

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

.method private d0(IIIIIZZ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "onDateTimeChosen: "

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v7, "."

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v7, " "

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v7, ":"

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v7, "Cal:D:EditEventView"

    .line 61
    .line 62
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    if-eqz p7, :cond_0

    .line 66
    .line 67
    iget-object v6, v0, Lcom/android/calendar/event/q1;->u0:Ljava/time/ZonedDateTime;

    .line 68
    .line 69
    iget-object v7, v0, Lcom/android/calendar/event/q1;->v0:Ljava/time/ZonedDateTime;

    .line 70
    .line 71
    iget-object v8, v0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v6, v0, Lcom/android/calendar/event/q1;->w0:Ljava/time/ZonedDateTime;

    .line 75
    .line 76
    iget-object v7, v0, Lcom/android/calendar/event/q1;->x0:Ljava/time/ZonedDateTime;

    .line 77
    .line 78
    iget-object v8, v0, Lcom/android/calendar/event/q1;->B0:Ljava/lang/String;

    .line 79
    .line 80
    :goto_0
    const/4 v9, 0x0

    .line 81
    if-eqz p6, :cond_2

    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->getYear()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getYear()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    sub-int/2addr v10, v11

    .line 92
    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->getMonth()Ljava/time/Month;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    invoke-virtual {v11}, Ljava/time/Month;->getValue()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getMonth()Ljava/time/Month;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    invoke-virtual {v12}, Ljava/time/Month;->getValue()I

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    sub-int/2addr v11, v12

    .line 109
    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    sub-int/2addr v12, v13

    .line 118
    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->getHour()I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getHour()I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    sub-int/2addr v13, v14

    .line 127
    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->getMinute()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getMinute()I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    sub-int/2addr v7, v14

    .line 136
    invoke-virtual {v6, v1}, Ljava/time/ZonedDateTime;->withYear(I)Ljava/time/ZonedDateTime;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    add-int/lit8 v14, v2, 0x1

    .line 141
    .line 142
    invoke-virtual {v6, v14}, Ljava/time/ZonedDateTime;->withMonth(I)Ljava/time/ZonedDateTime;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v6, v3}, Ljava/time/ZonedDateTime;->withDayOfMonth(I)Ljava/time/ZonedDateTime;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v6, v9}, Ljava/time/ZonedDateTime;->withHour(I)Ljava/time/ZonedDateTime;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6, v9}, Ljava/time/ZonedDateTime;->withMinute(I)Ljava/time/ZonedDateTime;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v6, v9}, Ljava/time/ZonedDateTime;->withSecond(I)Ljava/time/ZonedDateTime;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iget-boolean v14, v0, Lcom/android/calendar/event/q1;->C0:Z

    .line 163
    .line 164
    if-nez v14, :cond_1

    .line 165
    .line 166
    invoke-virtual {v6, v4}, Ljava/time/ZonedDateTime;->withHour(I)Ljava/time/ZonedDateTime;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v6, v5}, Ljava/time/ZonedDateTime;->withMinute(I)Ljava/time/ZonedDateTime;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    :cond_1
    const/4 v14, 0x0

    .line 175
    const/4 v15, 0x1

    .line 176
    const/16 v16, 0x1

    .line 177
    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    const/16 v18, 0x0

    .line 181
    .line 182
    const/16 v19, 0x0

    .line 183
    .line 184
    const/16 v20, 0x0

    .line 185
    .line 186
    invoke-static {v8}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 187
    .line 188
    .line 189
    move-result-object v21

    .line 190
    invoke-static/range {v14 .. v21}, Ljava/time/ZonedDateTime;->of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    add-int/2addr v1, v10

    .line 195
    int-to-long v9, v1

    .line 196
    invoke-virtual {v14, v9, v10}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    add-int/2addr v2, v11

    .line 201
    int-to-long v9, v2

    .line 202
    invoke-virtual {v1, v9, v10}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    add-int v2, v3, v12

    .line 207
    .line 208
    add-int/lit8 v2, v2, -0x1

    .line 209
    .line 210
    int-to-long v2, v2

    .line 211
    invoke-virtual {v1, v2, v3}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-boolean v2, v0, Lcom/android/calendar/event/q1;->C0:Z

    .line 216
    .line 217
    if-nez v2, :cond_4

    .line 218
    .line 219
    add-int v2, v4, v13

    .line 220
    .line 221
    int-to-long v2, v2

    .line 222
    invoke-virtual {v1, v2, v3}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    add-int v2, v5, v7

    .line 227
    .line 228
    int-to-long v2, v2

    .line 229
    invoke-virtual {v1, v2, v3}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {v7, v1}, Ljava/time/ZonedDateTime;->withYear(I)Ljava/time/ZonedDateTime;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    add-int/lit8 v2, v2, 0x1

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->withMonth(I)Ljava/time/ZonedDateTime;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1, v3}, Ljava/time/ZonedDateTime;->withDayOfMonth(I)Ljava/time/ZonedDateTime;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iget-boolean v2, v0, Lcom/android/calendar/event/q1;->C0:Z

    .line 249
    .line 250
    if-nez v2, :cond_3

    .line 251
    .line 252
    invoke-virtual {v1, v4}, Ljava/time/ZonedDateTime;->withHour(I)Ljava/time/ZonedDateTime;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v5}, Ljava/time/ZonedDateTime;->withMinute(I)Ljava/time/ZonedDateTime;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    :cond_3
    invoke-interface {v1, v6}, Ljava/time/chrono/ChronoZonedDateTime;->isBefore(Ljava/time/chrono/ChronoZonedDateTime;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eqz v2, :cond_4

    .line 265
    .line 266
    invoke-static {v8}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v6, v1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 285
    .line 286
    .line 287
    iget-object v2, v0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 288
    .line 289
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 298
    .line 299
    .line 300
    iget-object v7, v0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 301
    .line 302
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getSecond()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getMinute()I

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getHour()I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getMonth()Ljava/time/Month;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    add-int/lit8 v12, v2, -0x1

    .line 327
    .line 328
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getYear()I

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    invoke-virtual/range {v7 .. v13}, Lcom/miui/calendar/util/r0;->C(IIIIII)V

    .line 333
    .line 334
    .line 335
    iget-object v14, v0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getSecond()I

    .line 338
    .line 339
    .line 340
    move-result v15

    .line 341
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getMinute()I

    .line 342
    .line 343
    .line 344
    move-result v16

    .line 345
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getHour()I

    .line 346
    .line 347
    .line 348
    move-result v17

    .line 349
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    .line 350
    .line 351
    .line 352
    move-result v18

    .line 353
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getMonth()Ljava/time/Month;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    add-int/lit8 v19, v2, -0x1

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getYear()I

    .line 364
    .line 365
    .line 366
    move-result v20

    .line 367
    invoke-virtual/range {v14 .. v20}, Lcom/miui/calendar/util/r0;->C(IIIIII)V

    .line 368
    .line 369
    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/q1;->Q()V

    .line 371
    .line 372
    .line 373
    iget-object v1, v0, Lcom/android/calendar/event/q1;->h:Landroid/widget/TextView;

    .line 374
    .line 375
    iget-object v2, v0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 376
    .line 377
    const/4 v3, 0x0

    .line 378
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 379
    .line 380
    .line 381
    move-result-wide v4

    .line 382
    invoke-direct {v0, v1, v4, v5}, Lcom/android/calendar/event/q1;->s0(Landroid/widget/TextView;J)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v0, Lcom/android/calendar/event/q1;->j:Landroid/widget/TextView;

    .line 386
    .line 387
    iget-object v2, v0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 388
    .line 389
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 390
    .line 391
    .line 392
    move-result-wide v2

    .line 393
    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/q1;->s0(Landroid/widget/TextView;J)V

    .line 394
    .line 395
    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/q1;->K0()V

    .line 397
    .line 398
    .line 399
    return-void
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
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
.end method

.method static synthetic e(Lcom/android/calendar/event/q1;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1;->q0:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic f(Lcom/android/calendar/event/q1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/event/q1;->D0:I

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

.method private f0(Ljava/time/ZonedDateTime;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->Z:Lh4/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/android/calendar/event/q1;->E0:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v9, Lh4/c;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v4, Lcom/android/calendar/event/q1$k;

    .line 21
    .line 22
    invoke-direct {v4, p0, p2}, Lcom/android/calendar/event/q1$k;-><init>(Lcom/android/calendar/event/q1;Z)V

    .line 23
    .line 24
    .line 25
    iget v5, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getYear()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getMonth()Ljava/time/Month;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v7, v2, -0x1

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    move-object v2, v9

    .line 46
    invoke-direct/range {v2 .. v8}, Lh4/c;-><init>(Landroid/content/Context;Lh4/c$d;IIII)V

    .line 47
    .line 48
    .line 49
    iput-object v9, p0, Lcom/android/calendar/event/q1;->Z:Lh4/c;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v9}, Lh4/c;->E()V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/event/q1;->Z:Lh4/c;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    const p2, 0x7f12019d

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const p2, 0x7f1201b4

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Lh4/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/calendar/event/q1;->Z:Lh4/c;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/calendar/event/q1;->Z:Lh4/c;

    .line 86
    .line 87
    invoke-virtual {p1}, Lh4/c;->show()V

    .line 88
    .line 89
    .line 90
    return-void
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

.method static synthetic g(Lcom/android/calendar/event/q1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/q1;->D0:I

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

.method private g0(Ljava/time/ZonedDateTime;ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->Y:Lh4/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/android/calendar/event/q1;->E0:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v2, Lh4/e;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v4, Lcom/android/calendar/event/q1$j;

    .line 21
    .line 22
    invoke-direct {v4, p0, p2, p3}, Lcom/android/calendar/event/q1$j;-><init>(Lcom/android/calendar/event/q1;ZZ)V

    .line 23
    .line 24
    .line 25
    iget p3, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 26
    .line 27
    invoke-direct {v2, v3, v4, p3, v0}, Lh4/e;-><init>(Landroid/content/Context;Lh4/e$d;IZ)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/calendar/event/q1;->Y:Lh4/e;

    .line 31
    .line 32
    iget-object p3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    const p2, 0x7f12019d

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const p2, 0x7f1201b4

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v2, p2}, Lh4/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/android/calendar/event/q1;->Y:Lh4/e;

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/android/calendar/event/q1;->Y:Lh4/e;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lh4/e;->x(Ljava/time/ZonedDateTime;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/calendar/event/q1;->Y:Lh4/e;

    .line 65
    .line 66
    invoke-virtual {p1}, Lh4/e;->show()V

    .line 67
    .line 68
    .line 69
    return-void
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

.method static synthetic h(Lcom/android/calendar/event/q1;IIIIIZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/calendar/event/q1;->d0(IIIIIZZ)V

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
.end method

.method private h0()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Cal:D:EditEventView"

    .line 6
    .line 7
    const-string v1, "populateRepeats(): model is NULL"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iget v3, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 25
    .line 26
    const/16 v4, 0x8

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x2

    .line 30
    if-nez v3, :cond_a

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->Z()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget-object v7, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v8, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 39
    .line 40
    invoke-static {v7, v8, v0, v2, v3}, Lcom/miui/calendar/repeats/b;->m(Landroid/content/Context;Lcom/miui/calendar/util/r0;Ljava/util/List;Ljava/util/List;Z)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/calendar/event/q1;->m0:Ljava/util/ArrayList;

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v8, p0, Lcom/android/calendar/event/q1;->n0:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 49
    .line 50
    if-eqz v8, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    sub-int/2addr v8, v7

    .line 57
    iget-object v9, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 58
    .line 59
    iget-object v10, p0, Lcom/android/calendar/event/q1;->n0:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 60
    .line 61
    iget-object v11, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 62
    .line 63
    invoke-static {v9, v10, v11}, Lcom/miui/calendar/repeats/b;->c(Landroid/content/Context;Lcom/miui/calendar/repeats/RepeatSchema;Lcom/miui/calendar/util/r0;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    iget-object v9, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 79
    .line 80
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/EventEx;->getRrule()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_9

    .line 93
    .line 94
    const/4 v4, 0x7

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 108
    .line 109
    iget v9, v3, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->b:I

    .line 110
    .line 111
    const/4 v10, 0x4

    .line 112
    if-eq v9, v10, :cond_8

    .line 113
    .line 114
    const/4 v7, 0x5

    .line 115
    if-eq v9, v7, :cond_6

    .line 116
    .line 117
    const/4 v5, 0x6

    .line 118
    if-eq v9, v5, :cond_4

    .line 119
    .line 120
    if-eq v9, v4, :cond_3

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_4
    invoke-virtual {v3}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->k()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    goto :goto_0

    .line 158
    :cond_6
    invoke-virtual {v3}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->l()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_7

    .line 163
    .line 164
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    goto :goto_0

    .line 173
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    goto :goto_0

    .line 182
    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    goto :goto_0

    .line 191
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/event/q1;->z:Landroid/widget/LinearLayout;

    .line 192
    .line 193
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_a
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 198
    .line 199
    iget-object v7, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 200
    .line 201
    invoke-static {v3, v7, v0, v2}, Lcom/miui/calendar/repeats/b;->j(Landroid/content/Context;Lcom/miui/calendar/util/r0;Ljava/util/List;Ljava/util/List;)V

    .line 202
    .line 203
    .line 204
    iput-object v2, p0, Lcom/android/calendar/event/q1;->m0:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 215
    .line 216
    iget-object v7, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 217
    .line 218
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/EventEx;->getRdate()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-static {v3, v7}, Lcom/miui/calendar/util/b0;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-ne v3, v6, :cond_b

    .line 231
    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    goto :goto_0

    .line 241
    :cond_b
    if-ne v3, v5, :cond_c

    .line 242
    .line 243
    const/16 v3, 0x9

    .line 244
    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    :cond_c
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 254
    .line 255
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 256
    .line 257
    const v4, 0x7f0d0098

    .line 258
    .line 259
    .line 260
    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 261
    .line 262
    .line 263
    const v0, 0x7f0d0150

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 275
    .line 276
    invoke-virtual {v0, v8}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getOriginalSyncId()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_d

    .line 310
    .line 311
    iget-object v0, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    .line 320
    .line 321
    :cond_d
    return-void
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
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method static synthetic i(Lcom/android/calendar/event/q1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/event/q1;->y0:J

    .line 2
    .line 3
    return-wide v0
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

.method private i0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Cal:D:EditEventView"

    .line 6
    .line 7
    const-string v1, "populateRepeatsEnd(): model is NULL"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/calendar/event/q1;->o0:Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 22
    .line 23
    invoke-static {v2, v0, v3}, Lcom/miui/calendar/repeats/b;->k(Landroid/content/Context;Ljava/util/List;Lcom/miui/calendar/repeats/RepeatEndSchema;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 29
    .line 30
    const v4, 0x7f0d0098

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0d0150

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/calendar/event/q1;->o0:Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget v2, v2, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v2, v1

    .line 57
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getOriginalSyncId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget v0, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    if-ne v0, v1, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/calendar/event/q1;->z:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    const/16 v1, 0x8

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    :cond_3
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

.method static synthetic j(Lcom/android/calendar/event/q1;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/calendar/event/q1;->y0:J

    .line 2
    .line 3
    return-wide p1
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

.method private j0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/calendar/common/l;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/calendar/common/l;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/l;->g(J)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/event/q1;->c0:Lmiuix/appcompat/app/l;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->f()Landroid/widget/ListView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/l;->b(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/calendar/event/q1;->B0(I)V

    .line 42
    .line 43
    .line 44
    return-void
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

.method static synthetic k(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/util/r0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

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

.method private k0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    iget-object v0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v4, p0, Lcom/android/calendar/event/q1;->h:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/q1;->s0(Landroid/widget/TextView;J)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/calendar/event/q1;->j:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/q1;->s0(Landroid/widget/TextView;J)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->Q()V

    .line 25
    .line 26
    .line 27
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
.end method

.method static synthetic l(Lcom/android/calendar/event/q1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/event/q1;->z0:J

    .line 2
    .line 3
    return-wide v0
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

.method private l0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Cal:D:EditEventView"

    .line 6
    .line 7
    const-string v1, "prepareReminders(): model is NULL"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/calendar/event/q1;->M:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 26
    .line 27
    invoke-static {v2, v0, v3}, Lcom/android/calendar/event/f0;->b(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->W:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->W:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    const/16 v1, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->L:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    new-instance v1, Lcom/android/calendar/event/q1$i;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/android/calendar/event/q1$i;-><init>(Lcom/android/calendar/event/q1;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/calendar/event/q1;->L:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    return-void
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic m(Lcom/android/calendar/event/q1;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/calendar/event/q1;->z0:J

    .line 2
    .line 3
    return-wide p1
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

.method private m0(JJZLcom/android/calendar/event/q1$t;)V
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-wide/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v9, p3

    .line 6
    .line 7
    move/from16 v11, p5

    .line 8
    .line 9
    move-object/from16 v2, p6

    .line 10
    .line 11
    const-string v12, "Cal:D:EditEventView"

    .line 12
    .line 13
    const-string v3, "refreshOnMainThread start."

    .line 14
    .line 15
    invoke-static {v12, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/q1;->R()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object v2, v8, Lcom/android/calendar/event/q1;->K0:Lcom/android/calendar/event/q1$t;

    .line 25
    .line 26
    iget-object v3, v8, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Landroid/text/SpannableString;

    .line 37
    .line 38
    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 42
    .line 43
    iget v6, v8, Lcom/android/calendar/event/q1;->I0:I

    .line 44
    .line 45
    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iget v6, v2, Lcom/android/calendar/event/q1$t;->a:I

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    iget v2, v2, Lcom/android/calendar/event/q1$t;->b:I

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/16 v3, 0x11

    .line 66
    .line 67
    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v8, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {v8, v4, v2}, Lcom/android/calendar/event/q1;->C0(Ljava/lang/CharSequence;I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iput-boolean v11, v8, Lcom/android/calendar/event/q1;->C0:Z

    .line 80
    .line 81
    new-instance v13, Lcom/miui/calendar/util/r0;

    .line 82
    .line 83
    invoke-direct {v13}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 84
    .line 85
    .line 86
    const-wide/16 v14, -0x1

    .line 87
    .line 88
    cmp-long v16, v0, v14

    .line 89
    .line 90
    if-eqz v16, :cond_1

    .line 91
    .line 92
    invoke-virtual {v13, v0, v1}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->v()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->p()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->q()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->m()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->o()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v6, 0x1

    .line 116
    const/4 v7, 0x0

    .line 117
    move-object/from16 v0, p0

    .line 118
    .line 119
    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/event/q1;->d0(IIIIIZZ)V

    .line 120
    .line 121
    .line 122
    :cond_1
    cmp-long v14, v9, v14

    .line 123
    .line 124
    if-eqz v14, :cond_2

    .line 125
    .line 126
    invoke-virtual {v13, v9, v10}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->v()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->p()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->q()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->m()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->o()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v7, 0x0

    .line 151
    move-object/from16 v0, p0

    .line 152
    .line 153
    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/event/q1;->d0(IIIIIZZ)V

    .line 154
    .line 155
    .line 156
    :cond_2
    if-nez v16, :cond_3

    .line 157
    .line 158
    if-eqz v14, :cond_4

    .line 159
    .line 160
    :cond_3
    const-string v0, "key_trigger_event_time_parser"

    .line 161
    .line 162
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    iget-object v0, v8, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 166
    .line 167
    invoke-virtual {v0, v11}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 168
    .line 169
    .line 170
    const-string v0, "refreshOnMainThread over."

    .line 171
    .line 172
    invoke-static {v12, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void
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

.method static synthetic n(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/util/r0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

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

.method private n0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "accessibility"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    .line 28
    .line 29
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/event/q1;->P(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
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

.method static synthetic o(Lcom/android/calendar/event/q1;)Lh4/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->Y:Lh4/e;

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

.method private o0(Z)V
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->m()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->o()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 23
    .line 24
    if-eq v2, p1, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->q()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int/2addr v3, v1

    .line 33
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-object v4, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Lcom/miui/calendar/util/r0;->a(Lcom/miui/calendar/util/r0;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/q1;->j:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-direct {p0, v1, v2, v3}, Lcom/android/calendar/event/q1;->s0(Landroid/widget/TextView;J)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/q1;->l:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/calendar/event/q1;->m:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->m()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->o()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    iget-boolean v2, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 98
    .line 99
    if-eq v2, p1, :cond_4

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->q()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    add-int/2addr v3, v1

    .line 108
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    iget-object v3, p0, Lcom/android/calendar/event/q1;->j:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-direct {p0, v3, v1, v2}, Lcom/android/calendar/event/q1;->s0(Landroid/widget/TextView;J)V

    .line 120
    .line 121
    .line 122
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/event/q1;->l:Landroid/view/View;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/calendar/event/q1;->m:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    :goto_0
    iput-boolean p1, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->k0()V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->K0()V

    .line 139
    .line 140
    .line 141
    return-void
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

.method static synthetic p(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->h0()V

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

.method static synthetic q(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->i0()V

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

.method static synthetic r(Lcom/android/calendar/event/q1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

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

.method static synthetic s(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->R()V

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

.method private s0(Landroid/widget/TextView;J)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const v9, 0x18016

    .line 9
    .line 10
    .line 11
    new-instance v4, Ljava/util/Formatter;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v4, v0, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v10, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 28
    .line 29
    move-wide v5, p2

    .line 30
    move-wide v7, p2

    .line 31
    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v3, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "Cal:D:EditEventView"

    .line 61
    .line 62
    invoke-static {v4, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x2

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const/4 v6, 0x5

    .line 75
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v3, v5, v0}, Lcom/miui/calendar/util/a0;->d(III)[I

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const/4 v5, 0x0

    .line 90
    aget v5, v0, v5

    .line 91
    .line 92
    aget v6, v0, v2

    .line 93
    .line 94
    sub-int/2addr v6, v2

    .line 95
    aget v0, v0, v4

    .line 96
    .line 97
    invoke-static {v3, v5, v6, v0}, Lcom/miui/calendar/util/a0;->m(Landroid/content/res/Resources;III)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_0
    iget-boolean v3, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 102
    .line 103
    if-nez v3, :cond_2

    .line 104
    .line 105
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_1

    .line 112
    .line 113
    const/16 v2, 0x81

    .line 114
    .line 115
    :cond_1
    move v9, v2

    .line 116
    new-instance v4, Ljava/util/Formatter;

    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v4, v2, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 131
    .line 132
    iget-object v10, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 133
    .line 134
    move-wide v5, p2

    .line 135
    move-wide v7, p2

    .line 136
    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    const-string p2, ""

    .line 146
    .line 147
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, " "

    .line 156
    .line 157
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    return-void
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

.method static synthetic t(Lcom/android/calendar/event/q1;)Lh4/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->Z:Lh4/c;

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

.method private t0(Landroid/widget/EditText;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f060112

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const v0, 0x7f060111

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
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
.end method

.method static synthetic u(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->G0()V

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

.method static synthetic v(Lcom/android/calendar/event/q1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

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

.method static synthetic w(Lcom/android/calendar/event/q1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->J0:Ljava/lang/String;

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

.method static synthetic x(Lcom/android/calendar/event/q1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1;->J0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic y(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

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

.method static synthetic z(Lcom/android/calendar/event/q1;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/q1;->M0:Ljava/lang/Runnable;

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


# virtual methods
.method public A0(ILcom/miui/calendar/repeats/RepeatSchema;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setRepeatSelection(): index:"

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
    const-string v1, ", schema:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/miui/calendar/repeats/RepeatSchema;->toJsonString(Lcom/miui/calendar/repeats/RepeatSchema;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Cal:D:EditEventView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/miui/calendar/repeats/b;->i(Lcom/miui/calendar/util/r0;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x7

    .line 46
    if-ne v0, p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x6

    .line 50
    if-ne v0, p1, :cond_1

    .line 51
    .line 52
    :goto_0
    move v0, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v0, v2

    .line 55
    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/event/q1;->p0:Z

    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/calendar/event/q1;->n0:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->h0()V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getCount()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-ge p1, p2, :cond_4

    .line 71
    .line 72
    iget-object p2, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 75
    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move v1, v2

    .line 81
    :goto_2
    iget-object p1, p0, Lcom/android/calendar/event/q1;->z:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    iget p2, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 86
    .line 87
    if-nez p2, :cond_3

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    const/16 v2, 0x8

    .line 91
    .line 92
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->i0()V

    .line 98
    .line 99
    .line 100
    :cond_4
    return-void
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

.method protected E0()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x12

    .line 12
    .line 13
    const-string v1, "UTC"

    .line 14
    .line 15
    move v8, v0

    .line 16
    move-object v9, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x11

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x91

    .line 29
    .line 30
    :cond_1
    move-object v9, v0

    .line 31
    move v8, v1

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-object v0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iget-boolean v4, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    const-wide/32 v4, 0x5265c00

    .line 50
    .line 51
    .line 52
    add-long/2addr v2, v4

    .line 53
    add-long/2addr v0, v4

    .line 54
    :cond_2
    move-wide v6, v0

    .line 55
    move-wide v4, v2

    .line 56
    sget-object v0, Lcom/android/calendar/event/q1;->N0:Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 63
    .line 64
    sget-object v3, Lcom/android/calendar/event/q1;->O0:Ljava/util/Formatter;

    .line 65
    .line 66
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/calendar/event/q1;->J:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    return-void
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

.method public L0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canModifyEvent()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/android/calendar/event/q1;->E0:I

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/android/calendar/event/q1;->D0(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/calendar/event/q1;->h0:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/android/calendar/event/q1;->J0(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/android/calendar/event/q1;->D0(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
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

.method public O(Ljava/lang/String;Lg2/b;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/android/calendar/event/j;->i(Ljava/lang/String;Lg2/b;)Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Landroid/text/util/Rfc822Token;

    .line 21
    .line 22
    new-instance v0, Lcom/android/calendar/common/event/schema/Attendee;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {v0, v1, p2}, Lcom/android/calendar/common/event/schema/Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Attendee;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Attendee;->getEmail()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v0, p2}, Lcom/android/calendar/common/event/schema/Attendee;->setName(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v0}, Lcom/android/calendar/common/event/schema/EventEx;->addAttendee(Lcom/android/calendar/common/event/schema/Attendee;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
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

.method public S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->Z:Lh4/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->Y:Lh4/e;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public T(Z)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    const-string v1, "Cal:D:EditEventView"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_12

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->normalizeReminders()Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v3, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    if-lez v3, :cond_1

    .line 43
    .line 44
    move v3, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v3, v2

    .line 47
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setHasAlarm(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    const-string v0, "edit_event_edit_title"

    .line 63
    .line 64
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    const-string v0, "edit_event_edit_location"

    .line 80
    .line 81
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getDescription()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    const-string v0, "edit_event_edit_description"

    .line 97
    .line 98
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->U()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setTitle(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 111
    .line 112
    iget-object v3, p0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setAllDay(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/calendar/event/q1;->X:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 124
    .line 125
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 133
    .line 134
    iget-object v3, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setLocation(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 148
    .line 149
    iget-object v3, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setDescription(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    const/4 v3, 0x0

    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 176
    .line 177
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setLocation(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getDescription()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/Event;->setDescription(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/q1;->E:Lcom/miui/calendar/view/MultiRadioGroup;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/miui/calendar/view/MultiRadioGroup;->getCheckedRadioButtonId()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->N(I)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    iget-object v5, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setSelfAttendeeStatus(I)V

    .line 216
    .line 217
    .line 218
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    .line 219
    .line 220
    if-eqz v0, :cond_8

    .line 221
    .line 222
    iget-object v0, p0, Lcom/android/calendar/event/q1;->j0:Lg2/b;

    .line 223
    .line 224
    invoke-virtual {v0, v4}, Lg2/b;->b(Z)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getAttendeeList()Ljava/util/LinkedHashMap;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/android/calendar/event/q1;->O:Landroid/widget/MultiAutoCompleteTextView;

    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iget-object v5, p0, Lcom/android/calendar/event/q1;->j0:Lg2/b;

    .line 256
    .line 257
    invoke-virtual {p0, v0, v5}, Lcom/android/calendar/event/q1;->O(Ljava/lang/String;Lg2/b;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/android/calendar/event/q1;->j0:Lg2/b;

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Lg2/b;->b(Z)V

    .line 263
    .line 264
    .line 265
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-object v5, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 272
    .line 273
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 274
    .line 275
    .line 276
    move-result-wide v5

    .line 277
    invoke-virtual {v0, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarId(J)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    iget-object v5, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 287
    .line 288
    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_9

    .line 293
    .line 294
    iget-object v0, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 295
    .line 296
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 297
    .line 298
    .line 299
    move-result-wide v5

    .line 300
    iget-object v0, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 301
    .line 302
    const/4 v7, 0x2

    .line 303
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iget-object v7, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 308
    .line 309
    const-string v8, "preference_defaultCalendarId"

    .line 310
    .line 311
    invoke-static {v7, v8, v5, v6}, Lb2/a;->j(Landroid/content/Context;Ljava/lang/String;J)V

    .line 312
    .line 313
    .line 314
    iget-object v5, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 315
    .line 316
    const-string v6, "preference_defaultCalendar"

    .line 317
    .line 318
    invoke-static {v5, v6, v0}, Lb2/a;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v5, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 322
    .line 323
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v5, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setOwnerAccount(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v5, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 331
    .line 332
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    invoke-virtual {v5, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizer(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iget-object v5, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 346
    .line 347
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 348
    .line 349
    .line 350
    move-result-wide v5

    .line 351
    invoke-virtual {v0, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarId(J)V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iget-object v5, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 361
    .line 362
    const/16 v6, 0xa

    .line 363
    .line 364
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v0, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountName(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 372
    .line 373
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    iget-object v5, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 378
    .line 379
    const/16 v6, 0x9

    .line 380
    .line 381
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v0, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountType(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    iget-object v5, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 395
    .line 396
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-virtual {v0, v5}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarDisplayName(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_d

    .line 410
    .line 411
    if-eqz p1, :cond_a

    .line 412
    .line 413
    const-string v0, "UTC"

    .line 414
    .line 415
    goto :goto_1

    .line 416
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 417
    .line 418
    :goto_1
    iput-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 419
    .line 420
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 421
    .line 422
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 423
    .line 424
    .line 425
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 431
    .line 432
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 433
    .line 434
    .line 435
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 436
    .line 437
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iget-object v5, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 442
    .line 443
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 448
    .line 449
    .line 450
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    iget-object v5, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 457
    .line 458
    invoke-virtual {v5, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 459
    .line 460
    .line 461
    move-result-wide v5

    .line 462
    invoke-virtual {v0, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 463
    .line 464
    .line 465
    iget-object v0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 466
    .line 467
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 468
    .line 469
    .line 470
    iget-object v0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 471
    .line 472
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 476
    .line 477
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 478
    .line 479
    .line 480
    iget-object v0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iget-object v5, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 487
    .line 488
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 493
    .line 494
    .line 495
    const-wide/32 v5, 0x5265c00

    .line 496
    .line 497
    .line 498
    if-eqz p1, :cond_b

    .line 499
    .line 500
    iget-object p1, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 501
    .line 502
    invoke-virtual {p1, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 503
    .line 504
    .line 505
    move-result-wide v7

    .line 506
    add-long/2addr v7, v5

    .line 507
    goto :goto_2

    .line 508
    :cond_b
    iget-object p1, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 509
    .line 510
    invoke-virtual {p1, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 511
    .line 512
    .line 513
    move-result-wide v7

    .line 514
    :goto_2
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 515
    .line 516
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 521
    .line 522
    .line 523
    move-result-wide v9

    .line 524
    cmp-long p1, v7, v9

    .line 525
    .line 526
    if-gez p1, :cond_c

    .line 527
    .line 528
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 529
    .line 530
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 535
    .line 536
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 541
    .line 542
    .line 543
    move-result-wide v7

    .line 544
    add-long/2addr v7, v5

    .line 545
    invoke-virtual {p1, v7, v8}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 546
    .line 547
    .line 548
    goto :goto_3

    .line 549
    :cond_c
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 550
    .line 551
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-virtual {p1, v7, v8}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 556
    .line 557
    .line 558
    goto :goto_3

    .line 559
    :cond_d
    iget-object p1, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 560
    .line 561
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    iget-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 566
    .line 567
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 572
    .line 573
    .line 574
    iget-object p1, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 575
    .line 576
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    iget-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 581
    .line 582
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 587
    .line 588
    .line 589
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 590
    .line 591
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    iget-object v0, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 596
    .line 597
    invoke-virtual {v0, v4}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 598
    .line 599
    .line 600
    move-result-wide v5

    .line 601
    invoke-virtual {p1, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 602
    .line 603
    .line 604
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 605
    .line 606
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    iget-object v0, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 611
    .line 612
    invoke-virtual {v0, v4}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 613
    .line 614
    .line 615
    move-result-wide v5

    .line 616
    invoke-virtual {p1, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 617
    .line 618
    .line 619
    :goto_3
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 620
    .line 621
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    iget-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setTimezone(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    iget p1, p0, Lcom/android/calendar/event/q1;->E0:I

    .line 631
    .line 632
    if-ne p1, v4, :cond_e

    .line 633
    .line 634
    move p1, v2

    .line 635
    goto :goto_4

    .line 636
    :cond_e
    iget-object p1, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 637
    .line 638
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 639
    .line 640
    .line 641
    move-result p1

    .line 642
    iget-object v0, p0, Lcom/android/calendar/event/q1;->m0:Ljava/util/ArrayList;

    .line 643
    .line 644
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    check-cast p1, Ljava/lang/Integer;

    .line 649
    .line 650
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 651
    .line 652
    .line 653
    move-result p1

    .line 654
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 655
    .line 656
    iget-object v5, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 657
    .line 658
    invoke-static {v5}, Lcom/android/calendar/common/Utils;->C(Landroid/content/Context;)I

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    iget-object v6, p0, Lcom/android/calendar/event/q1;->n0:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 663
    .line 664
    iget-object v7, p0, Lcom/android/calendar/event/q1;->o0:Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 665
    .line 666
    invoke-static {p1, v0, v5, v6, v7}, Lcom/android/calendar/event/j;->z(ILcom/android/calendar/common/event/schema/Event;ILcom/miui/calendar/repeats/RepeatSchema;Lcom/miui/calendar/repeats/RepeatEndSchema;)V

    .line 667
    .line 668
    .line 669
    iget v0, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 670
    .line 671
    if-ne v0, v4, :cond_f

    .line 672
    .line 673
    invoke-direct {p0, p1}, Lcom/android/calendar/event/q1;->V(I)I

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    iget-object v3, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 682
    .line 683
    invoke-virtual {v3, v2}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 684
    .line 685
    .line 686
    move-result-wide v2

    .line 687
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 688
    .line 689
    .line 690
    iget-object v2, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 691
    .line 692
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    iget-object v3, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 697
    .line 698
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    invoke-static {v0, p1, v3}, Lcom/miui/calendar/util/b0;->d(Ljava/util/Calendar;IZ)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object p1

    .line 706
    invoke-virtual {v2, p1}, Lcom/android/calendar/common/event/schema/EventEx;->setRdate(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .line 713
    .line 714
    const-string v0, "fillModelFromUI(): rdate:"

    .line 715
    .line 716
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 720
    .line 721
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getRdate()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object p1

    .line 736
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    goto :goto_5

    .line 740
    :cond_f
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 741
    .line 742
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 743
    .line 744
    .line 745
    move-result-object p1

    .line 746
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setRdate(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    :goto_5
    iget-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 750
    .line 751
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 752
    .line 753
    .line 754
    move-result p1

    .line 755
    if-nez p1, :cond_10

    .line 756
    .line 757
    iget-object p1, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 758
    .line 759
    iget-object v0, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 760
    .line 761
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/l;->e(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    :cond_10
    iget-object p1, p0, Lcom/android/calendar/event/q1;->K0:Lcom/android/calendar/event/q1$t;

    .line 765
    .line 766
    if-eqz p1, :cond_11

    .line 767
    .line 768
    const-string p1, "key_use_parsed_time_event"

    .line 769
    .line 770
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    :cond_11
    return v4

    .line 774
    :cond_12
    :goto_6
    const-string p1, "fillModelFromUI(): model or calendarsCursor is NULL"

    .line 775
    .line 776
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    return v2
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
.end method

.method public X(Landroid/database/Cursor;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 2
    .line 3
    new-instance p1, Lcom/android/calendar/event/NewBaseEditFragment$f;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/calendar/event/q1;->H0:Landroid/database/Cursor;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1}, Lcom/android/calendar/event/NewBaseEditFragment$f;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 18
    .line 19
    const v0, 0x7f1201c3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setPromptId(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 33
    .line 34
    .line 35
    return-void
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

.method public a0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->U()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    :cond_2
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0
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

.method public c0(Landroid/database/Cursor;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    const-string v1, "Cal:D:EditEventView"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onCalendarSpinnerSelected(): model is NULL"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz p1, :cond_4

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_1
    const-string v0, "calendar_color"

    .line 24
    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v2, "_id"

    .line 34
    .line 35
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    iget-object v4, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarId()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    cmp-long v4, v2, v4

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarId(J)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarColor(I)V

    .line 74
    .line 75
    .line 76
    const-string v0, "maxReminders"

    .line 77
    .line 78
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v2, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {v2, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarMaxReminders(I)V

    .line 93
    .line 94
    .line 95
    const-string v0, "account_type"

    .line 96
    .line 97
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v2, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v2, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountType(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v0, "account_name"

    .line 115
    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget-object v2, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v2, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountName(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getAccountType()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p0, v0}, Lcom/android/calendar/event/q1;->J0(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 149
    .line 150
    iget-boolean v3, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 151
    .line 152
    invoke-static {v0, v2, v3}, Lcom/android/calendar/event/j;->m(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;Z)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/calendar/event/q1;->G0:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->l0()V

    .line 161
    .line 162
    .line 163
    const-string v0, "calendar_displayName"

    .line 164
    .line 165
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iget-object v2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v2, p1}, Lcom/android/calendar/common/Utils;->o1(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v2, "***onCalendarSpinnerSelected, calendar display name: "

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U0(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/calendar/event/q1;->l0:Lcom/android/calendar/event/q1$r;

    .line 208
    .line 209
    if-eqz v0, :cond_3

    .line 210
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_3

    .line 216
    .line 217
    iget-object v0, p0, Lcom/android/calendar/event/q1;->l0:Lcom/android/calendar/event/q1$r;

    .line 218
    .line 219
    invoke-interface {v0, p1, p2}, Lcom/android/calendar/event/q1$r;->e(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    :cond_3
    return-void

    .line 223
    :cond_4
    :goto_0
    const-string p1, "onCalendarSpinnerSelected(): Cursor not set on calendar item"

    .line 224
    .line 225
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void
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

.method public e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->q0:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/calendar/event/q1;->M0:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
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

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->c0:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/event/q1;->k0:Lcom/android/calendar/common/l;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p2, v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/android/calendar/event/q1;->B0(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->k0()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->K0()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 25
    .line 26
    .line 27
    :cond_0
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
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const p4, 0x7f0a0133

    .line 6
    .line 7
    .line 8
    if-ne p2, p4, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/database/Cursor;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p3}, Lcom/android/calendar/event/q1;->c0(Landroid/database/Cursor;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
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

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public p0(Lcom/android/calendar/event/q1$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1;->l0:Lcom/android/calendar/event/q1$r;

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

.method public q0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

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

.method public r0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1;->q0:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lcom/android/calendar/event/p1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/p1;-><init>(Lcom/android/calendar/event/q1;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public u0(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/calendar/event/q1;->w0(Lcom/android/calendar/common/event/schema/Event;ZZ)V

    .line 3
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

.method public v0(Lcom/android/calendar/common/event/schema/Event;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/calendar/event/q1;->w0(Lcom/android/calendar/common/event/schema/Event;ZZ)V

    .line 3
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

.method public w0(Lcom/android/calendar/common/event/schema/Event;ZZ)V
    .locals 10

    .line 1
    const-string v0, "Cal:D:EditEventView"

    .line 2
    .line 3
    const-string v1, "setModel()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/calendar/event/q1;->i0:Lcom/android/ex/chips/a;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    instance-of v2, p3, Lcom/android/calendar/event/m;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    check-cast p3, Lcom/android/calendar/event/m;

    .line 23
    .line 24
    invoke-virtual {p3}, Li2/a;->e()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/calendar/event/q1;->i0:Lcom/android/ex/chips/a;

    .line 28
    .line 29
    :cond_1
    const/16 p3, 0x8

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/calendar/event/q1;->e:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/calendar/event/q1;->f:Lcom/miui/calendar/view/BetterScrollView;

    .line 40
    .line 41
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->canRespond()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput-boolean v3, p0, Lcom/android/calendar/event/q1;->r0:Z

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getRdate()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v3, v4}, Lcom/miui/calendar/util/b0;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x1

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    iput v4, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iput v2, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 76
    .line 77
    :goto_0
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getEnd()J

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getTimezone()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iput-object v3, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v9, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 119
    .line 120
    invoke-virtual {v3, v5, v6}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v5, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 141
    .line 142
    .line 143
    iget-object v3, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 144
    .line 145
    invoke-virtual {v3, v7, v8}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 146
    .line 147
    .line 148
    iget-object v3, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getRrule()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/EventEx;->getRdate()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-nez v6, :cond_4

    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 176
    .line 177
    invoke-virtual {v0, v3}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->j(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-nez v3, :cond_5

    .line 186
    .line 187
    iget-object v3, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {v3, v5}, Lcom/miui/calendar/util/b0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    iput v3, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 194
    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v5, "setModel(): mDateType: "

    .line 201
    .line 202
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget v5, p0, Lcom/android/calendar/event/q1;->D0:I

    .line 206
    .line 207
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-static {v0, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getAccountType()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-nez v0, :cond_6

    .line 226
    .line 227
    iget-object v3, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 228
    .line 229
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    iget-object v5, p0, Lcom/android/calendar/event/q1;->w:Lmiuix/appcompat/widget/Spinner;

    .line 234
    .line 235
    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Landroid/database/Cursor;

    .line 240
    .line 241
    if-eqz v3, :cond_6

    .line 242
    .line 243
    const-string v0, "account_type"

    .line 244
    .line 245
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :cond_6
    iput-object v0, p0, Lcom/android/calendar/event/q1;->h0:Ljava/lang/String;

    .line 254
    .line 255
    invoke-direct {p0, v0}, Lcom/android/calendar/event/q1;->J0(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v3, p0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 259
    .line 260
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    iput-boolean v2, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 265
    .line 266
    iget-object v5, p0, Lcom/android/calendar/event/q1;->g0:Lcom/android/calendar/common/event/schema/Event;

    .line 267
    .line 268
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    iput-boolean v5, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_7

    .line 279
    .line 280
    iget-object v5, p0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 281
    .line 282
    invoke-virtual {v5, v4}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 283
    .line 284
    .line 285
    iget-object v5, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 286
    .line 287
    invoke-static {v5}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    iput-object v5, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 292
    .line 293
    iget-object v5, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 294
    .line 295
    invoke-virtual {v5}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    iget-object v6, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 306
    .line 307
    .line 308
    iget-object v5, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 309
    .line 310
    invoke-virtual {v5}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    iget-object v6, p0, Lcom/android/calendar/event/q1;->A0:Ljava/lang/String;

    .line 315
    .line 316
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 321
    .line 322
    .line 323
    iget-object v5, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 324
    .line 325
    invoke-virtual {v5, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_7
    iget-object v5, p0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 330
    .line 331
    invoke-virtual {v5, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 332
    .line 333
    .line 334
    :goto_2
    iget-object v5, p0, Lcom/android/calendar/event/q1;->X:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    invoke-virtual {v5, v6}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 341
    .line 342
    .line 343
    iget-boolean v5, p0, Lcom/android/calendar/event/q1;->C0:Z

    .line 344
    .line 345
    if-eqz v5, :cond_8

    .line 346
    .line 347
    if-eqz p2, :cond_8

    .line 348
    .line 349
    iget-object p2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 350
    .line 351
    invoke-virtual {p2, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 352
    .line 353
    .line 354
    move-result-wide v5

    .line 355
    const-wide/32 v7, 0x5265c00

    .line 356
    .line 357
    .line 358
    sub-long/2addr v5, v7

    .line 359
    invoke-virtual {p2, v5, v6}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 360
    .line 361
    .line 362
    :cond_8
    iget-wide v5, p0, Lcom/android/calendar/event/q1;->y0:J

    .line 363
    .line 364
    const-wide/16 v7, -0x1

    .line 365
    .line 366
    cmp-long p2, v5, v7

    .line 367
    .line 368
    if-nez p2, :cond_9

    .line 369
    .line 370
    iget-object p2, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 371
    .line 372
    invoke-virtual {p2, v4}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 373
    .line 374
    .line 375
    move-result-wide v5

    .line 376
    iput-wide v5, p0, Lcom/android/calendar/event/q1;->y0:J

    .line 377
    .line 378
    :cond_9
    iget-wide v5, p0, Lcom/android/calendar/event/q1;->z0:J

    .line 379
    .line 380
    cmp-long p2, v5, v7

    .line 381
    .line 382
    if-nez p2, :cond_a

    .line 383
    .line 384
    iget-object p2, p0, Lcom/android/calendar/event/q1;->t0:Lcom/miui/calendar/util/r0;

    .line 385
    .line 386
    invoke-virtual {p2, v4}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 387
    .line 388
    .line 389
    move-result-wide v5

    .line 390
    iput-wide v5, p0, Lcom/android/calendar/event/q1;->z0:J

    .line 391
    .line 392
    :cond_a
    iget-object p2, p0, Lcom/android/calendar/event/q1;->v:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 393
    .line 394
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 395
    .line 396
    .line 397
    move-result p2

    .line 398
    if-ne v3, p2, :cond_b

    .line 399
    .line 400
    invoke-direct {p0, v3}, Lcom/android/calendar/event/q1;->o0(Z)V

    .line 401
    .line 402
    .line 403
    :cond_b
    iget-object p2, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 404
    .line 405
    invoke-virtual {p2, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 406
    .line 407
    .line 408
    move-result-wide v3

    .line 409
    invoke-direct {p0, v3, v4}, Lcom/android/calendar/event/q1;->j0(J)V

    .line 410
    .line 411
    .line 412
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->l0()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p2

    .line 419
    if-eqz p2, :cond_c

    .line 420
    .line 421
    iget-object p2, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 422
    .line 423
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    iget-object p2, p0, Lcom/android/calendar/event/q1;->F:Landroid/widget/EditText;

    .line 431
    .line 432
    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 437
    .line 438
    .line 439
    :cond_c
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 440
    .line 441
    .line 442
    move-result-object p2

    .line 443
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/EventEx;->isOrganizer()Z

    .line 444
    .line 445
    .line 446
    move-result p2

    .line 447
    const v3, 0x7f0a046f

    .line 448
    .line 449
    .line 450
    if-nez p2, :cond_e

    .line 451
    .line 452
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 453
    .line 454
    .line 455
    move-result-object p2

    .line 456
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/EventEx;->getOrganizer()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 461
    .line 462
    .line 463
    move-result p2

    .line 464
    if-nez p2, :cond_e

    .line 465
    .line 466
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 467
    .line 468
    .line 469
    move-result-object p2

    .line 470
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/EventEx;->getOrganizer()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p2

    .line 474
    const-string v4, "calendar.google.com"

    .line 475
    .line 476
    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 477
    .line 478
    .line 479
    move-result p2

    .line 480
    if-eqz p2, :cond_d

    .line 481
    .line 482
    goto :goto_3

    .line 483
    :cond_d
    iget-object p2, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    .line 484
    .line 485
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 486
    .line 487
    .line 488
    move-result-object p2

    .line 489
    check-cast p2, Landroid/widget/TextView;

    .line 490
    .line 491
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getOrganizerDisplayName()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .line 501
    .line 502
    goto :goto_4

    .line 503
    :cond_e
    :goto_3
    iget-object p2, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    .line 504
    .line 505
    const v4, 0x7f0a0470

    .line 506
    .line 507
    .line 508
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 509
    .line 510
    .line 511
    move-result-object p2

    .line 512
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    iget-object p2, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    .line 516
    .line 517
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 518
    .line 519
    .line 520
    move-result-object p2

    .line 521
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 522
    .line 523
    .line 524
    iget-object p2, p0, Lcom/android/calendar/event/q1;->T:Landroid/view/View;

    .line 525
    .line 526
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 527
    .line 528
    .line 529
    :goto_4
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p2

    .line 533
    if-eqz p2, :cond_f

    .line 534
    .line 535
    iget-object p2, p0, Lcom/android/calendar/event/q1;->H:Landroid/widget/TextView;

    .line 536
    .line 537
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 542
    .line 543
    .line 544
    :cond_f
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getDescription()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object p2

    .line 548
    if-eqz p2, :cond_10

    .line 549
    .line 550
    iget-object p2, p0, Lcom/android/calendar/event/q1;->I:Landroid/widget/TextView;

    .line 551
    .line 552
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getDescription()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 557
    .line 558
    .line 559
    :cond_10
    iget-object p2, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    .line 560
    .line 561
    const v3, 0x7f0a04ec

    .line 562
    .line 563
    .line 564
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object p2

    .line 568
    iget-boolean v3, p0, Lcom/android/calendar/event/q1;->r0:Z

    .line 569
    .line 570
    if-eqz v3, :cond_11

    .line 571
    .line 572
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getSelfAttendeeStatus()I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    invoke-static {v3}, Lcom/android/calendar/common/Utils;->m(I)I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    iget-object v4, p0, Lcom/android/calendar/event/q1;->E:Lcom/miui/calendar/view/MultiRadioGroup;

    .line 585
    .line 586
    invoke-virtual {v4, v3}, Lcom/miui/calendar/view/MultiRadioGroup;->h(I)V

    .line 587
    .line 588
    .line 589
    iget-object v3, p0, Lcom/android/calendar/event/q1;->E:Lcom/miui/calendar/view/MultiRadioGroup;

    .line 590
    .line 591
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 595
    .line 596
    .line 597
    goto :goto_5

    .line 598
    :cond_11
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 599
    .line 600
    .line 601
    iget-object p2, p0, Lcom/android/calendar/event/q1;->E:Lcom/miui/calendar/view/MultiRadioGroup;

    .line 602
    .line 603
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 604
    .line 605
    .line 606
    :goto_5
    iget-object p2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 607
    .line 608
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 609
    .line 610
    .line 611
    move-result-object p2

    .line 612
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getAccountName()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarDisplayName()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarColor()I

    .line 633
    .line 634
    .line 635
    move-result v5

    .line 636
    invoke-static {p2, v3, v0, v4, v5}, Lcom/android/calendar/common/Utils;->x(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 637
    .line 638
    .line 639
    move-result p2

    .line 640
    iget-object v0, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 641
    .line 642
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    iget-object v3, p0, Lcom/android/calendar/event/q1;->f0:Landroid/view/View;

    .line 647
    .line 648
    const v4, 0x7f0a0132

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    check-cast v3, Landroid/widget/TextView;

    .line 656
    .line 657
    if-eqz v3, :cond_12

    .line 658
    .line 659
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarDisplayName()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    invoke-static {v0, v4}, Lcom/android/calendar/common/Utils;->o1(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    .line 673
    .line 674
    :cond_12
    const v4, 0x7f07021e

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 678
    .line 679
    .line 680
    move-result v4

    .line 681
    invoke-static {v0, p2, v4}, Lcom/miui/calendar/util/x0;->n(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    .line 682
    .line 683
    .line 684
    move-result-object p2

    .line 685
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 686
    .line 687
    invoke-direct {v4, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 691
    .line 692
    .line 693
    const/4 p2, -0x1

    .line 694
    invoke-static {v3, p2, p2, v2, p2}, Lcom/miui/calendar/view/d0;->a(Landroid/view/View;IIII)V

    .line 695
    .line 696
    .line 697
    iget-object p2, p0, Lcom/android/calendar/event/q1;->d0:Landroid/content/Context;

    .line 698
    .line 699
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 700
    .line 701
    .line 702
    move-result-object p2

    .line 703
    const v0, 0x7f070238

    .line 704
    .line 705
    .line 706
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 707
    .line 708
    .line 709
    move-result p2

    .line 710
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 711
    .line 712
    .line 713
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->k0()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->getAttendeeList()Ljava/util/LinkedHashMap;

    .line 721
    .line 722
    .line 723
    move-result-object p1

    .line 724
    invoke-direct {p0, p1}, Lcom/android/calendar/event/q1;->I0(Ljava/util/HashMap;)V

    .line 725
    .line 726
    .line 727
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->h0()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {p0}, Lcom/android/calendar/event/q1;->L0()V

    .line 731
    .line 732
    .line 733
    iget-object p1, p0, Lcom/android/calendar/event/q1;->f:Lcom/miui/calendar/view/BetterScrollView;

    .line 734
    .line 735
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 736
    .line 737
    .line 738
    iget-object p1, p0, Lcom/android/calendar/event/q1;->e:Landroid/widget/TextView;

    .line 739
    .line 740
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 741
    .line 742
    .line 743
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->n0()V

    .line 744
    .line 745
    .line 746
    iget-object p1, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 747
    .line 748
    iget-object p2, p0, Lcom/android/calendar/event/q1;->s0:Lcom/miui/calendar/util/r0;

    .line 749
    .line 750
    invoke-static {p1, p2}, Lcom/miui/calendar/repeats/b;->h(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;Lcom/miui/calendar/util/r0;)Z

    .line 751
    .line 752
    .line 753
    move-result p1

    .line 754
    iput-boolean p1, p0, Lcom/android/calendar/event/q1;->p0:Z

    .line 755
    .line 756
    if-eqz p1, :cond_13

    .line 757
    .line 758
    iget-object p1, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 759
    .line 760
    invoke-static {p1}, Lcom/miui/calendar/repeats/RepeatSchema;->fromEventRecurrence(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)Lcom/miui/calendar/repeats/RepeatSchema;

    .line 761
    .line 762
    .line 763
    move-result-object p1

    .line 764
    iput-object p1, p0, Lcom/android/calendar/event/q1;->n0:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 765
    .line 766
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->h0()V

    .line 767
    .line 768
    .line 769
    :cond_13
    iget-object p1, p0, Lcom/android/calendar/event/q1;->F0:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 770
    .line 771
    invoke-static {p1}, Lcom/miui/calendar/repeats/RepeatEndSchema;->fromEventRecurrence(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/q1;->y0(Lcom/miui/calendar/repeats/RepeatEndSchema;)V

    .line 776
    .line 777
    .line 778
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->F0()V

    .line 779
    .line 780
    .line 781
    return-void
.end method

.method public x0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/q1;->E0:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/calendar/event/q1;->L0()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->K0()V

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

.method public y0(Lcom/miui/calendar/repeats/RepeatEndSchema;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1;->o0:Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/calendar/event/q1;->i0()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/event/q1;->o0:Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 11
    .line 12
    iget v0, v0, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ge v0, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/event/q1;->D:Lmiuix/appcompat/widget/Spinner;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/event/q1;->o0:Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 23
    .line 24
    iget v0, v0, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 27
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

.method public z0(Lcom/miui/calendar/repeats/RepeatSchema;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/event/q1;->A0(ILcom/miui/calendar/repeats/RepeatSchema;)V

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
