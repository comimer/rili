.class public final Lcom/android/calendar/event/m1;
.super Lcom/android/calendar/event/NewBaseEditFragment;
.source "NewEditCountdownFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/m1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 S2\u00020\u0001:\u0001TB\u0011\u0012\u0008\u0010P\u001a\u0004\u0018\u00010O\u00a2\u0006\u0004\u0008Q\u0010RJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010\u000c\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u0002J&\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0018\u001a\u00020\u0015H\u0014J\u0008\u0010\u0019\u001a\u00020\u0015H\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J\u0008\u0010\u001c\u001a\u00020\u0015H\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0015H\u0016J\u0008\u0010\u001f\u001a\u00020\u0002H\u0014R\u0018\u0010\"\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010!R\u0018\u0010+\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010!R\u0018\u0010.\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010*R\u0018\u00100\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010!R\u0018\u00102\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010*R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010C\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010BR\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u001c\u0010K\u001a\u0008\u0012\u0004\u0012\u00020I0H8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008B\u0010JR\u0014\u0010N\u001a\u00020I8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010M\u00a8\u0006U"
    }
    d2 = {
        "Lcom/android/calendar/event/m1;",
        "Lcom/android/calendar/event/NewBaseEditFragment;",
        "Lkotlin/u;",
        "p0",
        "q0",
        "y0",
        "w0",
        "o0",
        "Ljava/util/Calendar;",
        "date",
        "r0",
        "reminderTime",
        "t0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "B",
        "",
        "restoreModel",
        "O",
        "F",
        "D",
        "Lcom/android/calendar/common/event/schema/Event;",
        "H",
        "X",
        "forSave",
        "x",
        "M",
        "J",
        "Landroid/view/View;",
        "mContentView",
        "Landroid/widget/EditText;",
        "K",
        "Landroid/widget/EditText;",
        "mTitleTextView",
        "L",
        "mDateRow",
        "Landroid/widget/TextView;",
        "Landroid/widget/TextView;",
        "mDateView",
        "N",
        "mReminderTimeRow",
        "mReminderTimeView",
        "P",
        "mRepeatRow",
        "Q",
        "mRepeatTextView",
        "Landroid/widget/LinearLayout;",
        "R",
        "Landroid/widget/LinearLayout;",
        "mAlarmRow",
        "Lmiuix/slidingwidget/widget/SlidingButton;",
        "S",
        "Lmiuix/slidingwidget/widget/SlidingButton;",
        "mAlarmCheckBox",
        "Lmiuix/appcompat/app/l;",
        "V",
        "Lmiuix/appcompat/app/l;",
        "mRepeatDialog",
        "W",
        "Ljava/util/Calendar;",
        "mCountdown",
        "Z",
        "mRemindBefore3Day",
        "",
        "Y",
        "I",
        "mRepeatType",
        "",
        "",
        "[Ljava/lang/String;",
        "mRepeatTypeStrings",
        "n0",
        "()Ljava/lang/String;",
        "reminderText",
        "Landroid/content/Intent;",
        "intent",
        "<init>",
        "(Landroid/content/Intent;)V",
        "b0",
        "a",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final b0:Lcom/android/calendar/event/m1$a;


# instance fields
.field private J:Landroid/view/View;

.field private K:Landroid/widget/EditText;

.field private L:Landroid/view/View;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/view/View;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/view/View;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/LinearLayout;

.field private S:Lmiuix/slidingwidget/widget/SlidingButton;

.field private T:Lh4/c;

.field private U:Lh4/g;

.field private V:Lmiuix/appcompat/app/l;

.field private W:Ljava/util/Calendar;

.field private X:Z

.field private Y:I

.field private Z:[Ljava/lang/String;

.field public a0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/event/m1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/m1$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/m1;->b0:Lcom/android/calendar/event/m1$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/event/m1;->a0:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;-><init>(Landroid/content/Intent;)V

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

.method private static final A0(Lcom/android/calendar/event/m1;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->o0()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/calendar/event/i1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/calendar/event/i1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0xc8

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    const-string p0, "key_edit_countdown_date_clicked"

    .line 20
    .line 21
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

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
.end method

.method private static final B0(Lcom/android/calendar/event/m1;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/android/calendar/event/m1;->r0(Ljava/util/Calendar;)V

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

.method private static final C0(Lcom/android/calendar/event/m1;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->o0()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/calendar/event/j1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/calendar/event/j1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0xc8

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    const-string p0, "key_edit_countdown_reminder_clicked"

    .line 20
    .line 21
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

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
.end method

.method private static final D0(Lcom/android/calendar/event/m1;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/android/calendar/event/m1;->t0(Ljava/util/Calendar;)V

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

.method private static final E0(Lcom/android/calendar/event/m1;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->o0()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/calendar/event/h1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/calendar/event/h1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0xc8

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    const-string p0, "key_edit_countdown_repeat_clicked"

    .line 20
    .line 21
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

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
.end method

.method private static final F0(Lcom/android/calendar/event/m1;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->w0()V

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

.method private static final G0(Lcom/android/calendar/event/m1;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/m1;->S:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/calendar/event/m1;->S:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    xor-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

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
.end method

.method public static synthetic Y(Lcom/android/calendar/event/m1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/m1;->A0(Lcom/android/calendar/event/m1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/android/calendar/event/m1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/m1;->F0(Lcom/android/calendar/event/m1;)V

    return-void
.end method

.method public static synthetic a0(Lcom/android/calendar/event/m1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/m1;->B0(Lcom/android/calendar/event/m1;)V

    return-void
.end method

.method public static synthetic b0(Lcom/android/calendar/event/m1;Lh4/g;IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/calendar/event/m1;->u0(Lcom/android/calendar/event/m1;Lh4/g;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c0(Lcom/android/calendar/event/m1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/m1;->G0(Lcom/android/calendar/event/m1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/android/calendar/event/m1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/m1;->E0(Lcom/android/calendar/event/m1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/android/calendar/event/m1;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/m1;->v0(Lcom/android/calendar/event/m1;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic f0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/m1;->z0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/android/calendar/event/m1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/m1;->C0(Lcom/android/calendar/event/m1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/android/calendar/event/m1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/m1;->D0(Lcom/android/calendar/event/m1;)V

    return-void
.end method

.method public static synthetic i0(Lcom/android/calendar/event/m1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/m1;->x0(Lcom/android/calendar/event/m1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j0(Lcom/android/calendar/event/m1;Lh4/c;IZIIILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/calendar/event/m1;->s0(Lcom/android/calendar/event/m1;Lh4/c;IZIIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic l0(Lcom/android/calendar/event/m1;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

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

.method public static final synthetic m0(Lcom/android/calendar/event/m1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/event/m1;->X:Z

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

.method private final n0()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0xb

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/16 v3, 0xc

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v0, v1, v2}, Lcom/miui/calendar/util/s0;->o(Landroid/content/Context;II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-boolean v1, p0, Lcom/android/calendar/event/m1;->X:Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const v1, 0x7f1201a3

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x2

    .line 41
    new-array v4, v4, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object v0, v4, v2

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    aput-object v0, v4, v3

    .line 51
    .line 52
    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "{\n                getStr\u2026derTime, 3)\n            }"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const v1, 0x7f1201a2

    .line 63
    .line 64
    .line 65
    new-array v3, v3, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object v0, v3, v2

    .line 68
    .line 69
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "{\n                getStr\u2026minderTime)\n            }"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-object v0
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

.method private final o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/miui/calendar/util/x0;->l0(Landroid/content/Context;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
    .line 22
.end method

.method private final p0()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v2, 0xb

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0xd

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0xe

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/calendar/event/m1;->X:Z

    .line 34
    .line 35
    iput v1, p0, Lcom/android/calendar/event/m1;->Y:I

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

.method private final q0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0a062d

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/widget/EditText;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 26
    .line 27
    const-string v2, "mContext"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x64

    .line 33
    .line 34
    const v3, 0x7f12066d

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2, v3}, Lcom/miui/calendar/util/x0;->i(Landroid/content/Context;II)[Landroid/text/InputFilter;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f0a01d9

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/android/calendar/event/m1;->L:Landroid/view/View;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const v1, 0x7f0a01dd

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/calendar/event/m1;->M:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const v2, 0x7f0a04d8

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/android/calendar/event/m1;->N:Landroid/view/View;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const v2, 0x7f0a04d6

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/android/calendar/event/m1;->O:Landroid/widget/TextView;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const v2, 0x7f0a04e4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/android/calendar/event/m1;->P:Landroid/view/View;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 127
    .line 128
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    const v2, 0x7f0a04e1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    check-cast v0, Landroid/widget/TextView;

    .line 142
    .line 143
    iput-object v0, p0, Lcom/android/calendar/event/m1;->Q:Landroid/widget/TextView;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 146
    .line 147
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const v1, 0x7f0a008d

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/android/calendar/event/m1;->R:Landroid/widget/LinearLayout;

    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 162
    .line 163
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    const v1, 0x7f0a0345

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/android/calendar/event/m1;->S:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 176
    .line 177
    return-void
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

.method private final r0(Ljava/util/Calendar;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->T:Lh4/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance v0, Lh4/c;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Lcom/android/calendar/event/c1;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/android/calendar/event/c1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v12, 0x1

    .line 34
    invoke-virtual {p1, v12}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v8

    .line 56
    invoke-static {}, Lcom/android/calendar/common/k;->c()J

    .line 57
    .line 58
    .line 59
    move-result-wide v10

    .line 60
    move-object v1, v0

    .line 61
    invoke-direct/range {v1 .. v11}, Lh4/c;-><init>(Landroid/content/Context;Lh4/c$d;IIIIJJ)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/calendar/event/m1;->T:Lh4/c;

    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const p1, 0x7f120197

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lh4/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/calendar/event/m1;->T:Lh4/c;

    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v12}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/calendar/event/m1;->T:Lh4/c;

    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lh4/c;->show()V

    .line 93
    .line 94
    .line 95
    return-void
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

.method private static final s0(Lcom/android/calendar/event/m1;Lh4/c;IZIIILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p4, p5, p6}, Ljava/util/Calendar;->set(III)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/calendar/event/m1;->M:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/calendar/event/m1;->T:Lh4/c;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
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

.method private final t0(Ljava/util/Calendar;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->U:Lh4/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance v0, Lh4/g;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 21
    .line 22
    new-instance v2, Lcom/android/calendar/event/l1;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/android/calendar/event/l1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/16 v3, 0xb

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v4, 0xc

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {v0, v1, v2, v3, p1}, Lh4/g;-><init>(Landroid/content/Context;Lh4/g$c;II)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/calendar/event/m1;->U:Lh4/g;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f1201a5

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Lh4/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/calendar/event/m1;->U:Lh4/g;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const v0, 0x7f1201a1

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    new-array v2, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x3

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    aput-object v4, v2, v3

    .line 78
    .line 79
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-boolean v2, p0, Lcom/android/calendar/event/m1;->X:Z

    .line 84
    .line 85
    new-instance v3, Lcom/android/calendar/event/b1;

    .line 86
    .line 87
    invoke-direct {v3, p0}, Lcom/android/calendar/event/b1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0, v2, v3}, Lh4/g;->u(Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/calendar/event/m1;->U:Lh4/g;

    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lcom/android/calendar/event/m1$b;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/android/calendar/event/m1$b;-><init>(Lcom/android/calendar/event/m1;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lh4/g;->w(Lh4/g$d;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/calendar/event/m1;->U:Lh4/g;

    .line 107
    .line 108
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/calendar/event/m1;->U:Lh4/g;

    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lh4/g;->show()V

    .line 120
    .line 121
    .line 122
    return-void
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

.method private static final u0(Lcom/android/calendar/event/m1;Lh4/g;IILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p4, 0xb

    .line 12
    .line 13
    invoke-virtual {p1, p4, p2}, Ljava/util/Calendar;->set(II)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0xc

    .line 22
    .line 23
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/calendar/event/m1;->O:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->n0()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void
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

.method private static final v0(Lcom/android/calendar/event/m1;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/calendar/event/m1;->X:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/calendar/event/m1;->U:Lh4/g;

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lh4/g;->x()V

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

.method private final w0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->V:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/m1;->V:Lmiuix/appcompat/app/l;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/calendar/event/m1;->V:Lmiuix/appcompat/app/l;

    .line 24
    .line 25
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/l$b;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f120520

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f03004a

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/android/calendar/event/m1;->Y:I

    .line 43
    .line 44
    new-instance v3, Lcom/android/calendar/event/k1;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lcom/android/calendar/event/k1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/l$b;->B(IILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->a()Lmiuix/appcompat/app/l;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/calendar/event/m1;->V:Lmiuix/appcompat/app/l;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->V:Lmiuix/appcompat/app/l;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 71
    .line 72
    .line 73
    return-void
    .line 74
    .line 75
.end method

.method private static final x0(Lcom/android/calendar/event/m1;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/m1;->Z:[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "mRepeatTypeStrings"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :cond_0
    array-length v0, v0

    .line 18
    if-ge p2, v0, :cond_2

    .line 19
    .line 20
    iput p2, p0, Lcom/android/calendar/event/m1;->Y:I

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/calendar/event/m1;->Q:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/m1;->Z:[Ljava/lang/String;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v0

    .line 36
    :goto_0
    iget p0, p0, Lcom/android/calendar/event/m1;->Y:I

    .line 37
    .line 38
    aget-object p0, v1, p0

    .line 39
    .line 40
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    .line 45
    .line 46
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

.method private final y0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/calendar/event/a1;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/android/calendar/event/a1;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/m1;->L:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/android/calendar/event/d1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/android/calendar/event/d1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/m1;->L:Landroid/view/View;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v0, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v0, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v6, 0x1

    .line 67
    const/4 v7, 0x1

    .line 68
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/common/Utils;->Q(Landroid/content/Context;IIIZZ)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/calendar/event/m1;->M:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/calendar/event/m1;->N:Landroid/view/View;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/android/calendar/event/e1;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/android/calendar/event/e1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/calendar/event/m1;->N:Landroid/view/View;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/m1;->O:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->n0()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v1, 0x7f03004a

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "resources.getStringArray(R.array.repeat_countdown)"

    .line 122
    .line 123
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/android/calendar/event/m1;->Z:[Ljava/lang/String;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/calendar/event/m1;->Q:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/calendar/event/m1;->Z:[Ljava/lang/String;

    .line 134
    .line 135
    if-nez v1, :cond_0

    .line 136
    .line 137
    const-string v1, "mRepeatTypeStrings"

    .line 138
    .line 139
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    :cond_0
    iget v2, p0, Lcom/android/calendar/event/m1;->Y:I

    .line 144
    .line 145
    aget-object v1, v1, v2

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/calendar/event/m1;->P:Landroid/view/View;

    .line 151
    .line 152
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Lcom/android/calendar/event/f1;

    .line 156
    .line 157
    invoke-direct {v1, p0}, Lcom/android/calendar/event/f1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/android/calendar/event/m1;->P:Landroid/view/View;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/calendar/event/m1;->R:Landroid/widget/LinearLayout;

    .line 169
    .line 170
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    new-instance v1, Lcom/android/calendar/event/g1;

    .line 174
    .line 175
    invoke-direct {v1, p0}, Lcom/android/calendar/event/g1;-><init>(Lcom/android/calendar/event/m1;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/calendar/event/m1;->R:Landroid/widget/LinearLayout;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/miui/calendar/util/v;->j(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    return-void
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

.method private static final z0(Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p0, "key_edit_countdown_title_clicked"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

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


# virtual methods
.method protected B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "Cal:D:EditCountdownFragment"

    .line 2
    .line 3
    const-string v0, "initFragment()"

    .line 4
    .line 5
    invoke-static {p3, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 9
    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const p3, 0x7f0d00b7

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iput-object p1, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->p0()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->q0()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/calendar/event/m1;->J:Landroid/view/View;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object p1
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

.method public D()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "mContext.applicationContext"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f120199

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v0, v1, v3, v2, v3}, Lcom/miui/calendar/util/t0;->b(Landroid/content/Context;I[Ljava/lang/Object;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    return v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    return v0
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

.method protected F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
    .line 22
.end method

.method public H()Lcom/android/calendar/common/event/schema/Event;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/CountdownEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method protected M()V
    .locals 1

    .line 1
    const-string v0, "key_edit_countdown_save"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Ll3/b;->a(Landroid/content/Context;)V

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

.method public O(Z)V
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onModelReady(): mModel.mId = "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "Cal:D:EditCountdownFragment"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-ltz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 43
    .line 44
    const-string v1, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CountdownEvent"

    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast p1, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getContent()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/16 v1, 0x64

    .line 80
    .line 81
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->isReminderBefore3Day()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput-boolean v0, p0, Lcom/android/calendar/event/m1;->X:Z

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalStart(J)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getRepeatType()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    iput p1, p0, Lcom/android/calendar/event/m1;->Y:I

    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/calendar/event/m1;->S:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 164
    .line 165
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 179
    .line 180
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 190
    .line 191
    .line 192
    move-result-wide v1

    .line 193
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v1}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-ge p1, v1, :cond_2

    .line 211
    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 217
    .line 218
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 219
    .line 220
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    const/16 v1, 0xb

    .line 224
    .line 225
    const/16 v2, 0xa

    .line 226
    .line 227
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 231
    .line 232
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    const/16 v1, 0xc

    .line 236
    .line 237
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 241
    .line 242
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    const/16 v1, 0xd

    .line 246
    .line 247
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 251
    .line 252
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    const/16 v1, 0xe

    .line 256
    .line 257
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 258
    .line 259
    .line 260
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/event/m1;->y0()V

    .line 261
    .line 262
    .line 263
    return-void
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

.method public X()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k0()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/m1;->a0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/m1;->k0()V

    return-void
.end method

.method public x(Z)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/calendar/event/m1;->S:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CountdownEvent"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v1, p1

    .line 23
    check-cast v1, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/calendar/event/m1;->K:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-boolean v4, p0, Lcom/android/calendar/event/m1;->X:Z

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/calendar/event/m1;->W:Ljava/util/Calendar;

    .line 43
    .line 44
    iget v6, p0, Lcom/android/calendar/event/m1;->Y:I

    .line 45
    .line 46
    invoke-static/range {v1 .. v6}, Lw1/b;->c(Lcom/android/calendar/common/event/schema/CountdownEvent;Landroid/content/Context;Ljava/lang/String;ZLjava/util/Calendar;I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
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
