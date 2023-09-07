.class public final Lcom/android/calendar/homepage/i0;
.super Lcom/android/calendar/homepage/ListLayout;
.source "DayListLayout.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/homepage/i0$a;,
        Lcom/android/calendar/homepage/i0$c;,
        Lcom/android/calendar/homepage/i0$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00b5\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0008\u000b*\u0001x\u0008\u0007\u0018\u0000 \u007f2\u00020\u00012\u00020\u0002:\u0005&\u0080\u0001\u0081\u0001B\u000f\u0012\u0006\u0010|\u001a\u00020:\u00a2\u0006\u0004\u0008}\u0010~J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0007H\u0002J\u0008\u0010\u001b\u001a\u00020\tH\u0002J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0018H\u0002J\u0008\u0010\u001e\u001a\u00020\u0007H\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0008\u0010!\u001a\u00020\u0007H\u0016J\u0008\u0010\"\u001a\u00020\u0007H\u0016J\u0008\u0010#\u001a\u00020\u0007H\u0016J\u0008\u0010$\u001a\u00020\u0007H\u0016J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020%H\u0016J\u0008\u0010\'\u001a\u00020\u0007H\u0016J \u0010*\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\tH\u0016J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0010\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\tH\u0016J0\u00104\u001a\u0002032\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\t2\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\tH\u0016J\u0008\u00105\u001a\u00020\tH\u0016J\u0008\u00106\u001a\u00020\u001fH\u0016J\u0010\u00109\u001a\u00020\u00072\u0006\u00108\u001a\u000207H\u0016R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u001a\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00000>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010?R\u0014\u0010C\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010BR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u0010ER\u0016\u0010I\u001a\u00020G8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00080\u0010HR\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u001c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u00180N8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0014\u0010S\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010RR\u0016\u0010T\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0008R\u0016\u0010V\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010UR\u0016\u0010Y\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010XR\u0016\u0010Z\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010XR\u0016\u0010[\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010XR\u0016\u0010\\\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010XR\u0018\u0010_\u001a\u00060]R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010^R\u0016\u0010`\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0017R\u0016\u0010c\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010d\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010bR\u0014\u0010g\u001a\u00020e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010fR\u0016\u0010i\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010\u0008R\u0016\u0010k\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010\u0008R\u0016\u0010m\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010\u0008R\u0016\u0010o\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010bR\u0016\u0010q\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010\u0017R\u0016\u0010s\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010\u0008R\u0016\u0010u\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010\u0008R\u0016\u0010w\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010bR\u0014\u0010{\u001a\u00020x8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008y\u0010z\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lcom/android/calendar/homepage/i0;",
        "Lcom/android/calendar/homepage/ListLayout;",
        "Landroidx/viewpager/widget/ViewPager$j;",
        "Lcom/miui/calendar/util/r0;",
        "getToDateTime",
        "Landroid/view/View;",
        "v",
        "Lkotlin/u;",
        "I",
        "",
        "deltaPosition",
        "J",
        "Lcom/miui/calendar/util/g$a0;",
        "event",
        "H",
        "O",
        "K",
        "position",
        "P",
        "",
        "gotoTimeInMills",
        "G",
        "realPosition",
        "F",
        "Lcom/android/calendar/homepage/AllDayEventsView;",
        "getAllDayEventView",
        "M",
        "getCurrentJulianDay",
        "allDayEventsView",
        "L",
        "E",
        "",
        "translationY",
        "w",
        "s",
        "q",
        "p",
        "Lcom/miui/calendar/util/g$j;",
        "a",
        "o",
        "positionOffset",
        "positionOffsetPixels",
        "onPageScrolled",
        "onPageSelected",
        "state",
        "onPageScrollStateChanged",
        "view",
        "x",
        "y",
        "startX",
        "startY",
        "",
        "f",
        "getViewType",
        "getDefPosition",
        "Lcom/miui/calendar/util/b1;",
        "verticalMotionUtil",
        "setVerticalMotionUtil",
        "Landroid/content/Context;",
        "r",
        "Landroid/content/Context;",
        "mContext",
        "Ljava/lang/ref/WeakReference;",
        "Ljava/lang/ref/WeakReference;",
        "outerClass",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "mHandler",
        "Landroid/widget/ViewSwitcher;",
        "Landroid/widget/ViewSwitcher;",
        "mDayViewSwitcher",
        "Lcom/android/calendar/homepage/AllDayViewPager;",
        "Lcom/android/calendar/homepage/AllDayViewPager;",
        "mAllDayViewPager",
        "Lcom/miui/calendar/view/k;",
        "z",
        "Lcom/miui/calendar/view/k;",
        "mAllDayPagerAdapter",
        "",
        "D",
        "[Lcom/android/calendar/homepage/AllDayEventsView;",
        "mAllDayViews",
        "Landroid/view/View;",
        "mBottomShadowView",
        "mIndicatorLayoutHeight",
        "Lcom/miui/calendar/util/r0;",
        "mTime",
        "Landroid/view/animation/Animation;",
        "Landroid/view/animation/Animation;",
        "mInAnimationForward",
        "mOutAnimationForward",
        "mInAnimationBackward",
        "mOutAnimationBackward",
        "Lcom/android/calendar/homepage/i0$c;",
        "Lcom/android/calendar/homepage/i0$c;",
        "mHScrollInterpolator",
        "mAnimationDistance",
        "N",
        "Z",
        "mViewPagerInit",
        "mHasDayChanged",
        "Landroid/widget/ViewSwitcher$ViewFactory;",
        "Landroid/widget/ViewSwitcher$ViewFactory;",
        "mDayViewFactory",
        "Q",
        "mRealPosition",
        "R",
        "mVirtualPosition",
        "S",
        "mDeltaPosition",
        "T",
        "mForward",
        "U",
        "mCurrentOffset",
        "V",
        "mCurrentOffsetPixels",
        "W",
        "mCurrentScrollState",
        "a0",
        "mHasPageSelected",
        "com/android/calendar/homepage/i0$d",
        "b0",
        "Lcom/android/calendar/homepage/i0$d;",
        "mTranslateListener",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "d0",
        "b",
        "c",
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
.field public static final d0:Lcom/android/calendar/homepage/i0$a;

.field private static final e0:Ljava/lang/String;


# instance fields
.field private D:[Lcom/android/calendar/homepage/AllDayEventsView;

.field private final E:Landroid/view/View;

.field private F:I

.field private G:Lcom/miui/calendar/util/r0;

.field private H:Landroid/view/animation/Animation;

.field private I:Landroid/view/animation/Animation;

.field private J:Landroid/view/animation/Animation;

.field private K:Landroid/view/animation/Animation;

.field private final L:Lcom/android/calendar/homepage/i0$c;

.field private M:F

.field private N:Z

.field private O:Z

.field private final P:Landroid/widget/ViewSwitcher$ViewFactory;

.field private Q:I

.field private R:I

.field private S:I

.field private T:Z

.field private U:F

.field private V:I

.field private W:I

.field private a0:Z

.field private final b0:Lcom/android/calendar/homepage/i0$d;

.field public c0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/content/Context;

.field private final v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/homepage/i0;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Landroid/os/Handler;

.field private x:Landroid/widget/ViewSwitcher;

.field private y:Lcom/android/calendar/homepage/AllDayViewPager;

.field private z:Lcom/miui/calendar/view/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/homepage/i0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/calendar/homepage/i0$a;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/calendar/homepage/i0;->d0:Lcom/android/calendar/homepage/i0$a;

    .line 8
    .line 9
    const-string v0, "Cal:D:DayListLayout"

    .line 10
    .line 11
    sput-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/calendar/homepage/i0;->c0:Ljava/util/Map;

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/ListLayout;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/calendar/homepage/i0;->r:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/calendar/homepage/i0;->v:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    new-instance v1, Lcom/android/calendar/homepage/i0$b;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/android/calendar/homepage/i0$b;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/calendar/homepage/i0;->w:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/calendar/homepage/i0;->G:Lcom/miui/calendar/util/r0;

    .line 46
    .line 47
    const v0, 0x7f010051

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "loadAnimation(context, R.anim.slide_left_in)"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/calendar/homepage/i0;->H:Landroid/view/animation/Animation;

    .line 60
    .line 61
    const v0, 0x7f010052

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "loadAnimation(context, R.anim.slide_left_out)"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/calendar/homepage/i0;->I:Landroid/view/animation/Animation;

    .line 74
    .line 75
    const v0, 0x7f010053

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "loadAnimation(context, R.anim.slide_right_in)"

    .line 83
    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/android/calendar/homepage/i0;->J:Landroid/view/animation/Animation;

    .line 88
    .line 89
    const v0, 0x7f010054

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "loadAnimation(context, R.anim.slide_right_out)"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/calendar/homepage/i0;->K:Landroid/view/animation/Animation;

    .line 102
    .line 103
    new-instance p1, Lcom/android/calendar/homepage/i0$c;

    .line 104
    .line 105
    invoke-direct {p1, p0}, Lcom/android/calendar/homepage/i0$c;-><init>(Lcom/android/calendar/homepage/i0;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lcom/android/calendar/homepage/i0;->L:Lcom/android/calendar/homepage/i0$c;

    .line 109
    .line 110
    new-instance p1, Lcom/android/calendar/homepage/h0;

    .line 111
    .line 112
    invoke-direct {p1, p0}, Lcom/android/calendar/homepage/h0;-><init>(Lcom/android/calendar/homepage/i0;)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lcom/android/calendar/homepage/i0;->P:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMInflater()Landroid/view/LayoutInflater;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const v1, 0x7f0d00fb

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const v1, 0x7f0a0101

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v2, "v.findViewById(R.id.bottom_shadow_view)"

    .line 136
    .line 137
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput-object v1, p0, Lcom/android/calendar/homepage/i0;->E:Landroid/view/View;

    .line 141
    .line 142
    const v1, 0x7f0a020d

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "null cannot be cast to non-null type android.widget.ViewSwitcher"

    .line 150
    .line 151
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    check-cast v1, Landroid/widget/ViewSwitcher;

    .line 155
    .line 156
    iput-object v1, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    const-string v3, "mDayViewSwitcher"

    .line 160
    .line 161
    if-nez v1, :cond_0

    .line 162
    .line 163
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move-object v1, v2

    .line 167
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 171
    .line 172
    if-nez p1, :cond_1

    .line 173
    .line 174
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_1
    move-object v2, p1

    .line 179
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 184
    .line 185
    .line 186
    const-string p1, "v"

    .line 187
    .line 188
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/i0;->I(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    new-instance p1, Lcom/android/calendar/homepage/i0$d;

    .line 195
    .line 196
    invoke-direct {p1, p0}, Lcom/android/calendar/homepage/i0$d;-><init>(Lcom/android/calendar/homepage/i0;)V

    .line 197
    .line 198
    .line 199
    iput-object p1, p0, Lcom/android/calendar/homepage/i0;->b0:Lcom/android/calendar/homepage/i0$d;

    .line 200
    .line 201
    return-void
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
.end method

.method public static synthetic A(Lcom/android/calendar/homepage/i0;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/homepage/i0;->N(Lcom/android/calendar/homepage/i0;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic B(Lcom/android/calendar/homepage/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/i0;->E()V

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

.method public static final synthetic C(Lcom/android/calendar/homepage/i0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/i0;->M:F

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

.method public static final synthetic D(Lcom/android/calendar/homepage/i0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/i0;->w:Landroid/os/Handler;

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

.method private final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mDayViewSwitcher"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 28
    .line 29
    .line 30
    :cond_2
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
.end method

.method private final F(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/i0;->S:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/miui/calendar/util/h0;->a(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    neg-int p1, p1

    .line 14
    :cond_0
    return p1
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private final G(J)I
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->r:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->l()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {p1, p2, v0, v1}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMTodayJulianDay()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    sub-int/2addr p1, p2

    .line 36
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    neg-int p1, p1

    .line 43
    :cond_0
    return p1
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

.method private final H(Lcom/miui/calendar/util/g$a0;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/i0;->getAllDayEventView()Lcom/android/calendar/homepage/AllDayEventsView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "onEventMainThread(GoToDateEvent): adapter not ready, return"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p1, Lcom/miui/calendar/util/g$a0;->a:Ljava/util/Calendar;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "null cannot be cast to non-null type java.util.Calendar"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Ljava/util/Calendar;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/calendar/common/k;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "constrainTimeInValidRange(goToTime)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v1, p1, Lcom/miui/calendar/util/g$a0;->d:I

    .line 38
    .line 39
    int-to-float v1, v1

    .line 40
    iget-wide v2, p1, Lcom/miui/calendar/util/g$a0;->b:J

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    cmp-long v4, v2, v4

    .line 45
    .line 46
    if-ltz v4, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-wide/16 v2, 0x190

    .line 50
    .line 51
    :goto_0
    iget-object v4, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 52
    .line 53
    const-string v5, "mDayViewSwitcher"

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v4, v6

    .line 62
    :cond_2
    invoke-virtual {v4}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v7, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView"

    .line 67
    .line 68
    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast v4, Lcom/android/calendar/homepage/f0;

    .line 72
    .line 73
    new-instance v8, Lcom/miui/calendar/util/r0;

    .line 74
    .line 75
    invoke-direct {v8}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v9

    .line 82
    invoke-virtual {v8, v9, v10}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v8}, Lcom/android/calendar/homepage/l0;->E0(Lcom/miui/calendar/util/r0;)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    const/4 v10, 0x0

    .line 90
    cmpl-float v10, v1, v10

    .line 91
    .line 92
    if-lez v10, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 96
    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move-object v1, v6

    .line 103
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    int-to-float v1, v1

    .line 108
    :goto_1
    iput v1, p0, Lcom/android/calendar/homepage/i0;->M:F

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->H:Landroid/view/animation/Animation;

    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->I:Landroid/view/animation/Animation;

    .line 116
    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->J:Landroid/view/animation/Animation;

    .line 121
    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->K:Landroid/view/animation/Animation;

    .line 126
    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->H:Landroid/view/animation/Animation;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->L:Lcom/android/calendar/homepage/i0$c;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->I:Landroid/view/animation/Animation;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->L:Lcom/android/calendar/homepage/i0$c;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->J:Landroid/view/animation/Animation;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->L:Lcom/android/calendar/homepage/i0$c;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->K:Landroid/view/animation/Animation;

    .line 152
    .line 153
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->L:Lcom/android/calendar/homepage/i0$c;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->I:Landroid/view/animation/Animation;

    .line 159
    .line 160
    new-instance v2, Lcom/android/calendar/homepage/l0$n;

    .line 161
    .line 162
    iget-wide v10, p1, Lcom/miui/calendar/util/g$a0;->b:J

    .line 163
    .line 164
    iget-object v3, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 165
    .line 166
    if-nez v3, :cond_5

    .line 167
    .line 168
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object v3, v6

    .line 172
    :cond_5
    invoke-direct {v2, v8, v10, v11, v3}, Lcom/android/calendar/homepage/l0$n;-><init>(Lcom/miui/calendar/util/r0;JLandroid/widget/ViewSwitcher;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->K:Landroid/view/animation/Animation;

    .line 179
    .line 180
    new-instance v2, Lcom/android/calendar/homepage/l0$n;

    .line 181
    .line 182
    iget-wide v10, p1, Lcom/miui/calendar/util/g$a0;->b:J

    .line 183
    .line 184
    iget-object v3, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 185
    .line 186
    if-nez v3, :cond_6

    .line 187
    .line 188
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move-object v3, v6

    .line 192
    :cond_6
    invoke-direct {v2, v8, v10, v11, v3}, Lcom/android/calendar/homepage/l0$n;-><init>(Lcom/miui/calendar/util/r0;JLandroid/widget/ViewSwitcher;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    .line 197
    .line 198
    if-nez v9, :cond_7

    .line 199
    .line 200
    invoke-virtual {v4, v8}, Lcom/android/calendar/homepage/l0;->setSelected(Lcom/miui/calendar/util/r0;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :cond_7
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_c

    .line 210
    .line 211
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 212
    .line 213
    if-nez v1, :cond_8

    .line 214
    .line 215
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    move-object v1, v6

    .line 219
    :cond_8
    if-gez v9, :cond_9

    .line 220
    .line 221
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->H:Landroid/view/animation/Animation;

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->J:Landroid/view/animation/Animation;

    .line 225
    .line 226
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 230
    .line 231
    if-nez v1, :cond_a

    .line 232
    .line 233
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    move-object v1, v6

    .line 237
    :cond_a
    if-gez v9, :cond_b

    .line 238
    .line 239
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->I:Landroid/view/animation/Animation;

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_b
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->K:Landroid/view/animation/Animation;

    .line 243
    .line 244
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_c
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 249
    .line 250
    if-nez v1, :cond_d

    .line 251
    .line 252
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    move-object v1, v6

    .line 256
    :cond_d
    if-lez v9, :cond_e

    .line 257
    .line 258
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->H:Landroid/view/animation/Animation;

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_e
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->J:Landroid/view/animation/Animation;

    .line 262
    .line 263
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 267
    .line 268
    if-nez v1, :cond_f

    .line 269
    .line 270
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    move-object v1, v6

    .line 274
    :cond_f
    if-lez v9, :cond_10

    .line 275
    .line 276
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->I:Landroid/view/animation/Animation;

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_10
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->K:Landroid/view/animation/Animation;

    .line 280
    .line 281
    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 282
    .line 283
    .line 284
    :goto_6
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 285
    .line 286
    if-nez v1, :cond_11

    .line 287
    .line 288
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    move-object v1, v6

    .line 292
    :cond_11
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    check-cast v1, Lcom/android/calendar/homepage/f0;

    .line 300
    .line 301
    iget v2, v4, Lcom/android/calendar/homepage/l0;->p1:I

    .line 302
    .line 303
    invoke-virtual {v4}, Lcom/android/calendar/homepage/l0;->getFirstVisibleHourOffset()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/homepage/l0;->U1(II)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v8}, Lcom/android/calendar/homepage/l0;->setSelected(Lcom/miui/calendar/util/r0;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/android/calendar/homepage/l0;->L1()V

    .line 314
    .line 315
    .line 316
    iget-object v2, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 317
    .line 318
    if-nez v2, :cond_12

    .line 319
    .line 320
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    move-object v2, v6

    .line 324
    :cond_12
    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->showNext()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Lcom/android/calendar/homepage/l0;->Q1()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 334
    .line 335
    .line 336
    :goto_7
    iget v1, p0, Lcom/android/calendar/homepage/i0;->S:I

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 339
    .line 340
    .line 341
    move-result-wide v2

    .line 342
    invoke-direct {p0, v2, v3}, Lcom/android/calendar/homepage/i0;->G(J)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    const/4 v2, 0x0

    .line 347
    const/4 v3, 0x1

    .line 348
    if-eq v1, v0, :cond_13

    .line 349
    .line 350
    move v4, v3

    .line 351
    goto :goto_8

    .line 352
    :cond_13
    move v4, v2

    .line 353
    :goto_8
    iput-boolean v4, p0, Lcom/android/calendar/homepage/i0;->O:Z

    .line 354
    .line 355
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    if-eqz v4, :cond_15

    .line 360
    .line 361
    neg-int v4, v0

    .line 362
    if-eq v1, v4, :cond_14

    .line 363
    .line 364
    move v2, v3

    .line 365
    :cond_14
    iput-boolean v2, p0, Lcom/android/calendar/homepage/i0;->O:Z

    .line 366
    .line 367
    :cond_15
    sget-object v2, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 368
    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v5, "goTo(): deltaPosition from "

    .line 375
    .line 376
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v5, " to "

    .line 383
    .line 384
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v5, " mCurrentScrollState:"

    .line 391
    .line 392
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    iget v5, p0, Lcom/android/calendar/homepage/i0;->W:I

    .line 396
    .line 397
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-static {v2, v4}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-boolean v2, p0, Lcom/android/calendar/homepage/i0;->O:Z

    .line 408
    .line 409
    if-eqz v2, :cond_18

    .line 410
    .line 411
    sub-int/2addr v1, v0

    .line 412
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-ne v1, v3, :cond_17

    .line 417
    .line 418
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 419
    .line 420
    if-nez v1, :cond_16

    .line 421
    .line 422
    const-string v1, "mAllDayViewPager"

    .line 423
    .line 424
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    goto :goto_9

    .line 428
    :cond_16
    move-object v6, v1

    .line 429
    :goto_9
    iget-boolean p1, p1, Lcom/miui/calendar/util/g$a0;->c:Z

    .line 430
    .line 431
    invoke-virtual {v6, v0, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->U(IZ)V

    .line 432
    .line 433
    .line 434
    goto :goto_a

    .line 435
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/i0;->J(I)V

    .line 436
    .line 437
    .line 438
    :cond_18
    :goto_a
    invoke-direct {p0}, Lcom/android/calendar/homepage/i0;->O()V

    .line 439
    .line 440
    .line 441
    return-void
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

.method private final I(Landroid/view/View;)V
    .locals 2

    .line 1
    const v0, 0x7f0a009a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "v.findViewById(R.id.all_day_view_pager)"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast p1, Lcom/android/calendar/homepage/AllDayViewPager;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-string p1, "mAllDayViewPager"

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/homepage/i0;->G(J)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/i0;->J(I)V

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
.end method

.method private final J(I)V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "initViewPager(): deltaPosition = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " mDeltaPosition:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/calendar/homepage/i0;->S:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/calendar/homepage/i0;->N:Z

    .line 34
    .line 35
    const-string v1, "mAllDayViewPager"

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-nez v0, :cond_7

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/calendar/homepage/i0;->N:Z

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    const/4 v3, 0x3

    .line 45
    new-array v4, v3, [Lcom/android/calendar/homepage/AllDayEventsView;

    .line 46
    .line 47
    :goto_0
    if-ge v0, v3, :cond_2

    .line 48
    .line 49
    new-instance v11, Lcom/android/calendar/homepage/AllDayEventsView;

    .line 50
    .line 51
    iget-object v6, p0, Lcom/android/calendar/homepage/i0;->r:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMTodayJulianDay()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/i0;->F(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    add-int/2addr v7, v5

    .line 62
    iget-object v5, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 63
    .line 64
    if-nez v5, :cond_0

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move-object v8, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    move-object v8, v5

    .line 72
    :goto_1
    iget-object v5, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 73
    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    const-string v5, "mDayViewSwitcher"

    .line 77
    .line 78
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v9, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    move-object v9, v5

    .line 84
    :goto_2
    iget-object v10, p0, Lcom/android/calendar/homepage/i0;->E:Landroid/view/View;

    .line 85
    .line 86
    move-object v5, v11

    .line 87
    invoke-direct/range {v5 .. v10}, Lcom/android/calendar/homepage/AllDayEventsView;-><init>(Landroid/content/Context;ILcom/android/calendar/homepage/AllDayViewPager;Landroid/widget/ViewSwitcher;Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    aput-object v11, v4, v0

    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iput-object v4, p0, Lcom/android/calendar/homepage/i0;->D:[Lcom/android/calendar/homepage/AllDayEventsView;

    .line 96
    .line 97
    new-instance v0, Lcom/android/calendar/homepage/j;

    .line 98
    .line 99
    new-instance v3, Lcom/miui/calendar/view/f;

    .line 100
    .line 101
    iget-object v5, p0, Lcom/android/calendar/homepage/i0;->r:Landroid/content/Context;

    .line 102
    .line 103
    invoke-direct {v3, v5, v4}, Lcom/miui/calendar/view/f;-><init>(Landroid/content/Context;[Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v3}, Lcom/android/calendar/homepage/j;-><init>(Landroidx/viewpager/widget/b;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/android/calendar/homepage/i0;->z:Lcom/miui/calendar/view/k;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 112
    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move-object v0, v2

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/homepage/i0;->z:Lcom/miui/calendar/view/k;

    .line 120
    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    const-string v3, "mAllDayPagerAdapter"

    .line 124
    .line 125
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object v3, v2

    .line 129
    :cond_4
    iget v4, p0, Lcom/android/calendar/homepage/i0;->S:I

    .line 130
    .line 131
    invoke-virtual {v0, v3, v4}, Lcom/miui/calendar/view/InfiniteViewPager;->T(Landroidx/viewpager/widget/b;I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 135
    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    move-object v0, v2

    .line 142
    :cond_5
    invoke-static {v0}, Lcom/miui/calendar/util/h0;->b(Landroidx/viewpager/widget/ViewPager;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 146
    .line 147
    if-nez v0, :cond_6

    .line 148
    .line 149
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    move-object v2, v0

    .line 154
    :goto_3
    invoke-virtual {v2, p0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 159
    .line 160
    if-nez v0, :cond_8

    .line 161
    .line 162
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_8
    move-object v2, v0

    .line 167
    :goto_4
    invoke-virtual {v2, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->setCurrentItemInfinite(I)V

    .line 168
    .line 169
    .line 170
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/i0;->K(I)V

    .line 171
    .line 172
    .line 173
    return-void
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
.end method

.method private final K(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mAllDayViewPager"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/homepage/AllDayViewPager;->getOffsetAmount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/2addr v0, p1

    .line 17
    iput v0, p0, Lcom/android/calendar/homepage/i0;->R:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v1, v0

    .line 28
    :goto_0
    iget v0, p0, Lcom/android/calendar/homepage/i0;->R:I

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/miui/calendar/view/InfiniteViewPager;->S(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/calendar/homepage/i0;->Q:I

    .line 35
    .line 36
    iput p1, p0, Lcom/android/calendar/homepage/i0;->S:I

    .line 37
    .line 38
    sget-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "initViewPosition(): deltaPosition = "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private final L(Lcom/android/calendar/homepage/AllDayEventsView;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "loadAllDayEvents julianDay:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/calendar/homepage/AllDayEventsView;->getPageDay()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/calendar/homepage/AllDayEventsView;->z()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/calendar/homepage/AllDayEventsView;->D()V

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

.method private final M()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/i0;->O()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "mDayViewSwitcher"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView"

    .line 20
    .line 21
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->C0()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->L1()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v1, v0

    .line 41
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->C0()V

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
.end method

.method private static final N(Lcom/android/calendar/homepage/i0;)Landroid/view/View;
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/calendar/homepage/f0;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "getContext()"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const-string p0, "mDayViewSwitcher"

    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    :cond_0
    invoke-direct {v0, v1, p0}, Lcom/android/calendar/homepage/f0;-><init>(Landroid/content/Context;Landroid/widget/ViewSwitcher;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x2

    .line 31
    invoke-virtual {v0, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    .line 39
    .line 40
    .line 41
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Lcom/miui/calendar/util/r0;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {p0, v1, v2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/android/calendar/homepage/l0;->setSelected(Lcom/miui/calendar/util/r0;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method private final O()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 2
    .line 3
    const-string v1, "mAllDayViewPager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "refreshAllDayEventViews julianDay:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMTodayJulianDay()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " mDeltaPosition:"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v3, p0, Lcom/android/calendar/homepage/i0;->S:I

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, " selectedPage:"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v3, v4

    .line 53
    :cond_1
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    :goto_0
    const/4 v1, 0x3

    .line 69
    if-ge v0, v1, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->D:[Lcom/android/calendar/homepage/AllDayEventsView;

    .line 72
    .line 73
    const-string v2, "mAllDayViews"

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move-object v1, v4

    .line 81
    :cond_2
    aget-object v1, v1, v0

    .line 82
    .line 83
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    invoke-virtual {p0, v5, v6}, Lcom/android/calendar/homepage/ListLayout;->l(J)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMTodayJulianDay()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/i0;->F(I)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    add-int/2addr v5, v6

    .line 100
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMTodayJulianDay()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v1, v3, v5, v6}, Lcom/android/calendar/homepage/AllDayEventsView;->E(III)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/calendar/homepage/i0;->D:[Lcom/android/calendar/homepage/AllDayEventsView;

    .line 108
    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v1, v4

    .line 115
    :cond_3
    aget-object v1, v1, v0

    .line 116
    .line 117
    invoke-direct {p0, v1}, Lcom/android/calendar/homepage/i0;->L(Lcom/android/calendar/homepage/AllDayEventsView;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
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

.method private final P(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/i0;->R:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "mAllDayViewPager"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v0, v1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->S(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/calendar/homepage/i0;->Q:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, v0

    .line 29
    :goto_0
    invoke-virtual {v1}, Lcom/android/calendar/homepage/AllDayViewPager;->getOffsetAmount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-int/2addr p1, v0

    .line 34
    iput p1, p0, Lcom/android/calendar/homepage/i0;->S:I

    .line 35
    .line 36
    sget-object p1, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "updateViewPosition(): mVirtualPosition = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/calendar/homepage/i0;->R:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " mRealPosition = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/calendar/homepage/i0;->Q:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " mDeltaPosition = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/android/calendar/homepage/i0;->S:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
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

.method private final getAllDayEventView()Lcom/android/calendar/homepage/AllDayEventsView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->D:[Lcom/android/calendar/homepage/AllDayEventsView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mAllDayViews"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    iget v1, p0, Lcom/android/calendar/homepage/i0;->Q:I

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    return-object v0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private final getCurrentJulianDay()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/homepage/ListLayout;->l(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
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

.method private final getToDateTime()Lcom/miui/calendar/util/r0;
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 23
    .line 24
    .line 25
    return-object v0
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
.end method


# virtual methods
.method public a(Lcom/miui/calendar/util/g$j;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/miui/calendar/util/g$u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/homepage/i0;->M()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, Lcom/miui/calendar/util/g$a0;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/miui/calendar/util/g$a0;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/i0;->H(Lcom/miui/calendar/util/g$a0;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
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

.method public f(Landroid/view/View;IIII)Z
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMContainer()Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lcom/android/calendar/homepage/i0;->F:I

    .line 15
    .line 16
    add-int/2addr p1, p2

    .line 17
    if-gt p5, p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    return p1
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

.method public getDefPosition()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMVerticalMotionUtil()Lcom/miui/calendar/util/b1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/calendar/util/b1;->h()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    return v0
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

.method public getViewType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/i0;->getAllDayEventView()Lcom/android/calendar/homepage/AllDayEventsView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->G()V

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

.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onPageScrollStateChanged state:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " mHasPageSelected:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/android/calendar/homepage/i0;->a0:Z

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput p1, p0, Lcom/android/calendar/homepage/i0;->W:I

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/android/calendar/homepage/i0;->a0:Z

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/calendar/homepage/i0;->a0:Z

    .line 43
    .line 44
    :cond_0
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

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/calendar/homepage/i0;->W:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_2

    .line 5
    .line 6
    iget p1, p0, Lcom/android/calendar/homepage/i0;->U:F

    .line 7
    .line 8
    cmpl-float v1, p2, p1

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/calendar/homepage/i0;->T:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    cmpg-float p1, p2, p1

    .line 16
    .line 17
    if-gez p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/calendar/homepage/i0;->T:Z

    .line 21
    .line 22
    :cond_1
    :goto_0
    iput p3, p0, Lcom/android/calendar/homepage/i0;->V:I

    .line 23
    .line 24
    iput p2, p0, Lcom/android/calendar/homepage/i0;->U:F

    .line 25
    .line 26
    :cond_2
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

.method public onPageSelected(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onPageSelected position:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " mVirtualPosition:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/calendar/homepage/i0;->R:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " mHasDayChanged:"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/calendar/homepage/i0;->O:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/android/calendar/homepage/i0;->R:I

    .line 44
    .line 45
    if-ne p1, v1, :cond_0

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "onPageSelected(): same position = "

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/android/calendar/homepage/i0;->a0:Z

    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/android/calendar/homepage/i0;->a0:Z

    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/i0;->P(I)V

    .line 75
    .line 76
    .line 77
    return-void
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

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->y:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mAllDayViewPager"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->J(Landroidx/viewpager/widget/ViewPager$j;)V

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

.method public q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/homepage/ListLayout;->q()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "onActivityPause()"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const-string v2, "mDayViewSwitcher"

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->B0()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->Z1()V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move-object v1, v0

    .line 52
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->B0()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->Q1()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->Z1()V

    .line 67
    .line 68
    .line 69
    :cond_4
    return-void
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public s()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/calendar/homepage/ListLayout;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "mDayViewSwitcher"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->Q1()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v0, v1

    .line 34
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->Q1()V

    .line 43
    .line 44
    .line 45
    :cond_3
    sget-object v0, Lcom/android/calendar/homepage/i0;->e0:Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "onActivityResume()"

    .line 48
    .line 49
    invoke-static {v0, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v3, "context"

    .line 57
    .line 58
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->A(Landroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/android/calendar/homepage/i0;->F:I

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMContainer()Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/i0;->v(F)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/android/calendar/homepage/i0;->getToDateTime()Lcom/miui/calendar/util/r0;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v3, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 83
    .line 84
    if-nez v3, :cond_4

    .line 85
    .line 86
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v3, v1

    .line 90
    :cond_4
    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const-string v4, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView"

    .line 95
    .line 96
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    check-cast v3, Lcom/android/calendar/homepage/f0;

    .line 100
    .line 101
    invoke-virtual {v3, v0}, Lcom/android/calendar/homepage/l0;->setSelected(Lcom/miui/calendar/util/r0;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/android/calendar/homepage/l0;->s1()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/android/calendar/homepage/l0;->Q1()V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 111
    .line 112
    if-nez v3, :cond_5

    .line 113
    .line 114
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    move-object v1, v3

    .line 119
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    check-cast v1, Lcom/android/calendar/homepage/f0;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Lcom/android/calendar/homepage/l0;->setSelected(Lcom/miui/calendar/util/r0;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/android/calendar/homepage/l0;->s1()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/android/calendar/homepage/l0;->Q1()V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/homepage/i0;->G(J)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/i0;->J(I)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lcom/android/calendar/homepage/i0;->M()V

    .line 149
    .line 150
    .line 151
    return-void
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

.method public setVerticalMotionUtil(Lcom/miui/calendar/util/b1;)V
    .locals 1

    .line 1
    const-string v0, "verticalMotionUtil"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/android/calendar/homepage/ListLayout;->setVerticalMotionUtil(Lcom/miui/calendar/util/b1;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMVerticalMotionUtil()Lcom/miui/calendar/util/b1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->b0:Lcom/android/calendar/homepage/i0$d;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/b1;->m(Lcom/miui/calendar/view/b$a;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public v(F)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/homepage/ListLayout;->v(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "mDayViewSwitcher"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView"

    .line 20
    .line 21
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 25
    .line 26
    float-to-int p1, p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/android/calendar/homepage/f0;->n2(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/calendar/homepage/i0;->x:Landroid/widget/ViewSwitcher;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v1, v0

    .line 39
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/android/calendar/homepage/f0;->n2(I)V

    .line 49
    .line 50
    .line 51
    return-void
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
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/calendar/homepage/ListLayout;->w()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/homepage/ListLayout;->getMIndicatorShadowView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    new-instance v0, Lcom/miui/calendar/util/g$k;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, v1, v1, v2}, Lcom/miui/calendar/util/g$k;-><init>(IZZ)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

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
