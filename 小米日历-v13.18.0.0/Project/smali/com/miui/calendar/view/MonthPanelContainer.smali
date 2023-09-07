.class public final Lcom/miui/calendar/view/MonthPanelContainer;
.super Landroid/widget/FrameLayout;
.source "MonthPanelContainer.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;
.implements Lcom/android/calendar/homepage/v0;
.implements Lcom/android/calendar/homepage/u0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/view/MonthPanelContainer$a;,
        Lcom/miui/calendar/view/MonthPanelContainer$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 $2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002KXB.\u0008\u0007\u0012\u0008\u0010\u009d\u0001\u001a\u00030\u009c\u0001\u0012\u000c\u0008\u0002\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009e\u0001\u0012\t\u0008\u0002\u0010\u00a0\u0001\u001a\u00020\u000e\u00a2\u0006\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u0005H\u0002J \u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000eH\u0002J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\nH\u0002J\u0010\u0010 \u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000eH\u0002J\u0008\u0010!\u001a\u00020\u0005H\u0002J\u0008\u0010\"\u001a\u00020\u0005H\u0002J\u0008\u0010#\u001a\u00020\u0005H\u0002J\u0008\u0010$\u001a\u00020\u0005H\u0002J\u0010\u0010\'\u001a\u00020\u00052\u0006\u0010&\u001a\u00020%H\u0002J\u0008\u0010(\u001a\u00020\u0005H\u0002J\u0008\u0010)\u001a\u00020\u000eH\u0002J\u0008\u0010*\u001a\u00020\u000eH\u0002J\u0010\u0010+\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0008\u0010,\u001a\u00020\u0005H\u0002J\u0010\u0010-\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000eH\u0002J\u0008\u0010.\u001a\u00020\u0005H\u0002J\u0008\u0010/\u001a\u00020\u0005H\u0002J\u0008\u00100\u001a\u00020\u0005H\u0002J\u0008\u00101\u001a\u00020\u0005H\u0002J\u0010\u00104\u001a\u00020\u000e2\u0006\u00103\u001a\u000202H\u0002J\u000e\u00107\u001a\u00020\u00052\u0006\u00106\u001a\u000205J\u0008\u00109\u001a\u0004\u0018\u000108J\u0008\u0010:\u001a\u00020\u0005H\u0014J\u0006\u0010<\u001a\u00020;J\u0018\u0010?\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020\u000eH\u0014J\u0016\u0010B\u001a\u00020\u00052\u0006\u0010@\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020%J\u0010\u0010D\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u000eH\u0016J \u0010H\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020\u000eH\u0016J\u0010\u0010I\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0010\u0010K\u001a\u00020\u00052\u0006\u00103\u001a\u00020JH\u0016J\u000e\u0010M\u001a\u00020\u00052\u0006\u00103\u001a\u00020LJ\u0006\u0010N\u001a\u00020\u0005J\u0008\u0010O\u001a\u00020\u0005H\u0016J\u0008\u0010P\u001a\u00020\u0005H\u0016J\u0008\u0010Q\u001a\u00020\u0005H\u0016J\u0010\u0010S\u001a\u00020%2\u0006\u0010R\u001a\u000202H\u0016J\u0010\u0010T\u001a\u00020%2\u0006\u00103\u001a\u000202H\u0016J\u0010\u0010V\u001a\u00020\u00052\u0006\u0010U\u001a\u00020EH\u0016R\u0016\u0010W\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010OR\u0016\u0010Y\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010OR\u0016\u0010[\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010OR\u0016\u0010]\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010OR\u0016\u0010_\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010OR\u0016\u0010a\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010OR\u0016\u0010c\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010OR\u0016\u0010e\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010OR\u0016\u0010h\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0016\u0010j\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010gR\u0014\u0010l\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010gR\u001c\u0010p\u001a\u0008\u0012\u0004\u0012\u00020n0m8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010oR\u0016\u0010r\u001a\u0002058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008B\u0010qR\u0014\u0010u\u001a\u00020s8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010tR\u0016\u0010x\u001a\u00020v8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00084\u0010wR\u0016\u0010z\u001a\u00020;8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010yR\u0016\u0010}\u001a\u00020{8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010|R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010\u007fR\u001a\u0010\u0082\u0001\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0010\u0010\u0081\u0001R\u0017\u0010\u0083\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010gR\u0017\u0010\u0084\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010gR\u0017\u0010\u0085\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010gR\u0017\u0010\u0086\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010gR\u0018\u0010\u0088\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008Q\u0010\u0087\u0001R\u0018\u0010\u0089\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008P\u0010\u0087\u0001R\u0018\u0010\u008a\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008O\u0010\u0087\u0001R\u0016\u0010\u008c\u0001\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010gR\u0016\u0010\u008e\u0001\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u008d\u0001\u0010gR\u001f\u0010\u0091\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u008f\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008g\u0010\u0090\u0001R\u0017\u0010\u0092\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010gR\u001b\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\'\u0010\u0094\u0001R\u0017\u0010\u0098\u0001\u001a\u00030\u0096\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008(\u0010\u0097\u0001R\u0017\u0010\u009b\u0001\u001a\u00020%8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001\u00a8\u0006\u00a3\u0001"
    }
    d2 = {
        "Lcom/miui/calendar/view/MonthPanelContainer;",
        "Landroid/widget/FrameLayout;",
        "Landroidx/viewpager/widget/ViewPager$j;",
        "Lcom/android/calendar/homepage/v0;",
        "Lcom/android/calendar/homepage/u0;",
        "Lkotlin/u;",
        "y",
        "x",
        "R",
        "P",
        "",
        "duration",
        "u",
        "z",
        "",
        "deltaPosition",
        "v",
        "w",
        "position",
        "B",
        "l",
        "year",
        "",
        "month",
        "day",
        "s",
        "Lcom/android/calendar/homepage/h1;",
        "getMonthView",
        "realPosition",
        "p",
        "gotoTimeInMills",
        "q",
        "X",
        "S",
        "W",
        "M",
        "N",
        "",
        "force",
        "K",
        "L",
        "getFirstJulianDay",
        "getMonthNumDays",
        "r",
        "J",
        "V",
        "T",
        "U",
        "n",
        "Q",
        "Landroid/view/MotionEvent;",
        "event",
        "o",
        "Lcom/miui/calendar/util/b1;",
        "verticalMotionUtil",
        "setVerticalMotionUtil",
        "Landroid/view/View;",
        "getSelectDayView",
        "onFinishInflate",
        "Landroid/widget/ViewSwitcher;",
        "getWeekSwitcher",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "backgroundState",
        "slowlyChange",
        "m",
        "state",
        "onPageScrollStateChanged",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "onPageScrolled",
        "onPageSelected",
        "Lcom/miui/calendar/util/g$j;",
        "a",
        "Lcom/miui/calendar/util/g$a0;",
        "t",
        "O",
        "F",
        "E",
        "D",
        "ev",
        "onInterceptTouchEvent",
        "onTouchEvent",
        "translationY",
        "setTranslationY",
        "mStartX1",
        "b",
        "mStartY1",
        "c",
        "mStartX2",
        "d",
        "mStartY2",
        "e",
        "mLastX1",
        "f",
        "mLastY1",
        "g",
        "mLastX2",
        "h",
        "mLastY2",
        "i",
        "I",
        "mLastDistance",
        "j",
        "mStartDistance",
        "k",
        "mTouchSlop",
        "",
        "Lcom/android/calendar/common/event/schema/Event;",
        "Ljava/util/List;",
        "mMonthEvents",
        "Lcom/miui/calendar/util/b1;",
        "mVerticalMotionUtil",
        "Lcom/android/calendar/common/e;",
        "Lcom/android/calendar/common/e;",
        "mAnimationController",
        "Landroid/view/ViewGroup;",
        "Landroid/view/ViewGroup;",
        "mContainer",
        "Landroid/widget/ViewSwitcher;",
        "mWeekViewSwitcher",
        "Lcom/miui/calendar/view/InfiniteViewPager;",
        "Lcom/miui/calendar/view/InfiniteViewPager;",
        "mViewPager",
        "Lcom/android/calendar/homepage/j1;",
        "Lcom/android/calendar/homepage/j1;",
        "mWeekView",
        "Landroid/view/View;",
        "mSelectDay",
        "mRealPosition",
        "mVirtualPosition",
        "mDeltaPosition",
        "mViewPageState",
        "Z",
        "mHasMonthChanged",
        "mHasPageSelected",
        "mViewPagerInit",
        "G",
        "mMotionContainerColor",
        "H",
        "mCardBgColor",
        "",
        "[Lcom/android/calendar/homepage/h1;",
        "mMonthViews",
        "mCurrentBgColor",
        "Lkotlinx/coroutines/s1;",
        "Lkotlinx/coroutines/s1;",
        "mJob",
        "Landroid/view/accessibility/AccessibilityManager;",
        "Landroid/view/accessibility/AccessibilityManager;",
        "accessibilityManager",
        "C",
        "()Z",
        "isValidAngle",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.field public static final N:Lcom/miui/calendar/view/MonthPanelContainer$a;


# instance fields
.field private D:Z

.field private E:Z

.field private F:Z

.field private final G:I

.field private final H:I

.field private final I:[Lcom/android/calendar/homepage/h1;

.field private J:I

.field private K:Lkotlinx/coroutines/s1;

.field private final L:Landroid/view/accessibility/AccessibilityManager;

.field public M:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private final k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/miui/calendar/util/b1;

.field private final n:Lcom/android/calendar/common/e;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/widget/ViewSwitcher;

.field private q:Lcom/miui/calendar/view/InfiniteViewPager;

.field private r:Lcom/android/calendar/homepage/j1;

.field private v:Landroid/view/View;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/view/MonthPanelContainer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/view/MonthPanelContainer$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/view/MonthPanelContainer;->N:Lcom/miui/calendar/view/MonthPanelContainer$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/calendar/view/MonthPanelContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->M:Ljava/util/Map;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 3
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->a:F

    .line 4
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->b:F

    .line 5
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->c:F

    .line 6
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->d:F

    .line 7
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->e:F

    .line 8
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->f:F

    .line 9
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->g:F

    .line 10
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->h:F

    const/4 p2, -0x1

    .line 11
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->i:I

    .line 12
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->j:I

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->l:Ljava/util/List;

    .line 14
    invoke-static {p1}, Lcom/android/calendar/common/e;->g(Landroid/content/Context;)Lcom/android/calendar/common/e;

    move-result-object p2

    const-string p3, "getInstance(context)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->n:Lcom/android/calendar/common/e;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06041b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->G:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060096

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->H:I

    const/4 p3, 0x3

    new-array p3, p3, [Lcom/android/calendar/homepage/h1;

    .line 17
    iput-object p3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 18
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->J:I

    const-string p2, "accessibility"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->L:Landroid/view/accessibility/AccessibilityManager;

    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->k:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/calendar/view/MonthPanelContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final A(Lcom/miui/calendar/view/MonthPanelContainer;)Landroid/view/View;
    .locals 5

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, v0}, Lcom/miui/calendar/util/e0;->s(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/android/calendar/homepage/j1;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "context"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v4, "weekFirstDay"

    .line 37
    .line 38
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v4, "selectedDay"

    .line 42
    .line 43
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 47
    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    const-string v4, "mWeekViewSwitcher"

    .line 51
    .line 52
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    :cond_0
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/android/calendar/homepage/j1;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/widget/ViewSwitcher;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    const/4 v1, -0x1

    .line 62
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/miui/calendar/view/MonthPanelContainer$b;

    .line 69
    .line 70
    invoke-direct {v0, p0, v2}, Lcom/miui/calendar/view/MonthPanelContainer$b;-><init>(Lcom/miui/calendar/view/MonthPanelContainer;Lcom/android/calendar/homepage/j1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    .line 75
    .line 76
    return-object v2
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

.method private final B(I)V
    .locals 5

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_5

    .line 10
    .line 11
    iget-object v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    const-string v3, "mViewPager"

    .line 16
    .line 17
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :cond_1
    invoke-virtual {v3, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->S(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eq v2, v3, :cond_3

    .line 26
    .line 27
    iget-object v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 28
    .line 29
    aget-object v3, v3, v2

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/16 v4, 0x8

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    iget-object v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 41
    .line 42
    aget-object v3, v3, v2

    .line 43
    .line 44
    if-nez v3, :cond_4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
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
.end method

.method private final C()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->e:F

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->a:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->f:F

    .line 7
    .line 8
    iget v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->b:F

    .line 9
    .line 10
    sub-float/2addr v1, v2

    .line 11
    iget v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->g:F

    .line 12
    .line 13
    iget v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->c:F

    .line 14
    .line 15
    sub-float/2addr v2, v3

    .line 16
    iget v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->h:F

    .line 17
    .line 18
    iget v4, p0, Lcom/miui/calendar/view/MonthPanelContainer;->d:F

    .line 19
    .line 20
    sub-float/2addr v3, v4

    .line 21
    mul-float v4, v0, v2

    .line 22
    .line 23
    mul-float v5, v1, v3

    .line 24
    .line 25
    add-float/2addr v4, v5

    .line 26
    float-to-double v4, v4

    .line 27
    mul-float/2addr v0, v0

    .line 28
    float-to-double v6, v0

    .line 29
    float-to-double v0, v1

    .line 30
    mul-double/2addr v0, v0

    .line 31
    add-double/2addr v6, v0

    .line 32
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    mul-float/2addr v2, v2

    .line 37
    float-to-double v6, v2

    .line 38
    float-to-double v2, v3

    .line 39
    mul-double/2addr v2, v2

    .line 40
    add-double/2addr v6, v2

    .line 41
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    mul-double/2addr v0, v2

    .line 46
    div-double/2addr v4, v0

    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    cmpg-double v0, v4, v0

    .line 50
    .line 51
    if-gez v0, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0
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

.method private static final G(Lcom/miui/calendar/view/MonthPanelContainer;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/miui/calendar/util/g$a0;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/g$a0;->c(I)Lcom/miui/calendar/util/g$a0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/g$a0;->a(Z)Lcom/miui/calendar/util/g$a0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "GoToDateEvent(Utils.getT\u2026on(-1).doAnimation(false)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/calendar/view/MonthPanelContainer;->t(Lcom/miui/calendar/util/g$a0;)V

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

.method private static final I(Lcom/miui/calendar/view/MonthPanelContainer;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->y()V

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

.method private final J()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->z:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->getMonthView()Lcom/android/calendar/homepage/h1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->l:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/h1;->setEvents(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/calendar/homepage/h1;->l()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method private final K(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->getMonthView()Lcom/android/calendar/homepage/h1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/calendar/homepage/h1;->m(Z)V

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

.method private final L()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->getMonthView()Lcom/android/calendar/homepage/h1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/homepage/h1;->n()V

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

.method private final M()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/util/Date;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/calendar/common/Utils;->Y()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/miui/calendar/view/MonthPanelContainer;->p(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v2, v3}, Lcom/miui/calendar/util/e0;->g(Ljava/util/Date;I)Ljava/util/Calendar;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/calendar/homepage/h1;->setFirstDay(Ljava/util/Calendar;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/calendar/homepage/h1;->setSelectedDay(Ljava/util/Calendar;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/calendar/homepage/h1;->l()V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
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

.method private final N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mWeekViewSwitcher"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/calendar/homepage/j1;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "getToDate()"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/j1;->setSelectedDay(Ljava/util/Calendar;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/calendar/homepage/j1;->J()V

    .line 32
    .line 33
    .line 34
    :cond_1
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
.end method

.method private final P()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mWeekViewSwitcher"

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
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v3, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView"

    .line 17
    .line 18
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Lcom/android/calendar/homepage/j1;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/calendar/homepage/j1;->z()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/calendar/homepage/j1;->K()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v1, v0

    .line 38
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lcom/android/calendar/homepage/j1;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/calendar/homepage/j1;->z()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/calendar/homepage/j1;->K()V

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

.method private final Q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->a:F

    .line 3
    .line 4
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->b:F

    .line 5
    .line 6
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->c:F

    .line 7
    .line 8
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->d:F

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

.method private final R()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mWeekViewSwitcher"

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
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x6

    .line 25
    const-string v5, "context"

    .line 26
    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lcom/miui/calendar/util/x0;->i0(Landroid/content/Context;)F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Lcom/miui/calendar/util/x0;->h0(Landroid/content/Context;)F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :goto_0
    float-to-int v3, v3

    .line 53
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    .line 55
    if-eq v4, v3, :cond_3

    .line 56
    .line 57
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    .line 59
    iget-object v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 60
    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object v1, v3

    .line 68
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private final S()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->L:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/calendar/common/k;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    add-int/2addr v5, v2

    .line 32
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v6, 0x5

    .line 37
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {}, Lcom/miui/calendar/util/y;->g()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const v7, 0x7f030033

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v7, "context.resources.getStr\u2026ray.months_English_array)"

    .line 63
    .line 64
    invoke-static {v5, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    aget-object v5, v5, v7

    .line 72
    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {v7}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v9, 0x0

    .line 83
    const-string v10, "mContainer"

    .line 84
    .line 85
    const/4 v11, 0x3

    .line 86
    if-eq v7, v4, :cond_5

    .line 87
    .line 88
    if-eq v7, v11, :cond_3

    .line 89
    .line 90
    if-eq v7, v1, :cond_1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->o:Landroid/view/ViewGroup;

    .line 94
    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    invoke-static {v10}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    move-object v9, v0

    .line 102
    :goto_0
    invoke-direct {p0, v3, v5, v6}, Lcom/miui/calendar/view/MonthPanelContainer;->s(ILjava/lang/String;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v9, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    iget-object v5, p0, Lcom/miui/calendar/view/MonthPanelContainer;->o:Landroid/view/ViewGroup;

    .line 111
    .line 112
    if-nez v5, :cond_4

    .line 113
    .line 114
    invoke-static {v10}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    move-object v9, v5

    .line 119
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const v6, 0x7f120028

    .line 124
    .line 125
    .line 126
    new-array v4, v4, [Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    aput-object v3, v4, v8

    .line 133
    .line 134
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    aput-object v0, v4, v2

    .line 143
    .line 144
    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v9, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->o:Landroid/view/ViewGroup;

    .line 153
    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    invoke-static {v10}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    move-object v9, v0

    .line 161
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const v7, 0x7f120021

    .line 166
    .line 167
    .line 168
    new-array v10, v11, [Ljava/lang/Object;

    .line 169
    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    aput-object v3, v10, v8

    .line 175
    .line 176
    aput-object v5, v10, v2

    .line 177
    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    aput-object v2, v10, v4

    .line 183
    .line 184
    invoke-virtual {v0, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v9, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 192
    .line 193
    .line 194
    :cond_7
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

.method private final T()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    const/4 v3, 0x1

    .line 7
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    iget-object v4, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 10
    .line 11
    aget-object v4, v4, v2

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    iget v5, p0, Lcom/miui/calendar/view/MonthPanelContainer;->w:I

    .line 16
    .line 17
    if-eq v5, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Lcom/android/calendar/homepage/h1;->setPageSelects(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/calendar/homepage/h1;->k()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/calendar/homepage/h1;->setPageSelects(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/android/calendar/homepage/h1;->p()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    const-string v0, "mWeekViewSwitcher"

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/calendar/homepage/j1;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Lcom/android/calendar/homepage/j1;->setPageSelect(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/calendar/homepage/j1;->M()V

    .line 57
    .line 58
    .line 59
    :cond_4
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
.end method

.method private final U()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {v4}, Lcom/android/calendar/homepage/h1;->k()V

    .line 13
    .line 14
    .line 15
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const-string v0, "mWeekViewSwitcher"

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/calendar/homepage/j1;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/android/calendar/homepage/j1;->setPageSelect(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/calendar/homepage/j1;->H()V

    .line 40
    .line 41
    .line 42
    :cond_3
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

.method private final V(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/calendar/homepage/h1;->c()V

    .line 12
    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/calendar/homepage/h1;->q()V

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method private final W()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "context"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-static {v0, v2, v3}, Lcom/miui/calendar/util/x0;->Q(Landroid/content/Context;J)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const-string v4, "mVerticalMotionUtil"

    .line 28
    .line 29
    const/4 v5, 0x6

    .line 30
    if-ne v2, v5, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->m:Lcom/miui/calendar/util/b1;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v3, v2

    .line 41
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v2, v4}, Lcom/miui/calendar/util/e0;->r(Landroid/content/Context;Ljava/util/Calendar;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-float v2, v2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Lcom/miui/calendar/util/x0;->j0(Landroid/content/Context;)F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v5, v0}, Lcom/miui/calendar/util/x0;->Y(Landroid/content/Context;I)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-float/2addr v4, v0

    .line 77
    mul-float/2addr v2, v4

    .line 78
    neg-float v0, v2

    .line 79
    float-to-int v0, v0

    .line 80
    invoke-virtual {v3, v0}, Lcom/miui/calendar/util/b1;->o(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->m:Lcom/miui/calendar/util/b1;

    .line 85
    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v3, v2

    .line 93
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v2, v4}, Lcom/miui/calendar/util/e0;->r(Landroid/content/Context;Ljava/util/Calendar;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    int-to-float v2, v2

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v4}, Lcom/miui/calendar/util/x0;->j0(Landroid/content/Context;)F

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v5, v0}, Lcom/miui/calendar/util/x0;->Z(Landroid/content/Context;I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    int-to-float v0, v0

    .line 129
    add-float/2addr v4, v0

    .line 130
    mul-float/2addr v2, v4

    .line 131
    neg-float v0, v2

    .line 132
    float-to-int v0, v0

    .line 133
    invoke-virtual {v3, v0}, Lcom/miui/calendar/util/b1;->o(I)V

    .line 134
    .line 135
    .line 136
    :goto_2
    return-void
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

.method private final X(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->x:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "mViewPager"

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
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->w:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

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
    invoke-virtual {v1}, Lcom/miui/calendar/view/InfiniteViewPager;->getOffsetAmount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-int/2addr p1, v0

    .line 34
    iput p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->y:I

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v0, "updateViewPosition(): mVirtualPosition = "

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->x:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, " mRealPosition = "

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->w:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " mDeltaPositon = "

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->y:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "Cal:D:MonthPanelContainer"

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

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

.method public static synthetic b(Lcom/miui/calendar/view/MonthPanelContainer;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->I(Lcom/miui/calendar/view/MonthPanelContainer;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/calendar/view/MonthPanelContainer;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->G(Lcom/miui/calendar/view/MonthPanelContainer;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/calendar/view/MonthPanelContainer;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->A(Lcom/miui/calendar/view/MonthPanelContainer;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/miui/calendar/view/MonthPanelContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->T()V

    return-void
.end method

.method public static final synthetic f(Lcom/miui/calendar/view/MonthPanelContainer;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->getFirstJulianDay()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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

.method public static final synthetic g(Lcom/miui/calendar/view/MonthPanelContainer;)Lcom/android/calendar/homepage/j1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->r:Lcom/android/calendar/homepage/j1;

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

.method private final getFirstJulianDay()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/calendar/common/Utils;->X()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->w:I

    .line 10
    .line 11
    invoke-direct {p0, v2}, Lcom/miui/calendar/view/MonthPanelContainer;->p(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v0, v1, v2}, Lcom/miui/calendar/util/e0;->c(Landroid/content/Context;Ljava/util/Calendar;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
    .line 20
    .line 21
    .line 22
.end method

.method private final getMonthNumDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->w:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/miui/calendar/view/MonthPanelContainer;->r(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x7

    .line 8
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

.method private final getMonthView()Lcom/android/calendar/homepage/h1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->w:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    return-object v0
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

.method public static final synthetic h(Lcom/miui/calendar/view/MonthPanelContainer;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->getMonthNumDays()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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

.method public static final synthetic i(Lcom/miui/calendar/view/MonthPanelContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->J()V

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

.method public static final synthetic j(Lcom/miui/calendar/view/MonthPanelContainer;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->l:Ljava/util/List;

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

.method public static final synthetic k(Lcom/miui/calendar/view/MonthPanelContainer;Lcom/android/calendar/homepage/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->r:Lcom/android/calendar/homepage/j1;

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

.method private final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mViewPager"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, ">> afterPagerStateIdled() << "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "Cal:D:MonthPanelContainer"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/android/calendar/common/k;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->getMonthView()Lcom/android/calendar/homepage/h1;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/android/calendar/homepage/h1;->j(Ljava/util/Calendar;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    new-instance v0, Lcom/miui/calendar/util/g$w0;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/miui/calendar/util/g$w0;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 71
    .line 72
    .line 73
    return-void
    .line 74
    .line 75
.end method

.method private final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/calendar/homepage/h1;->d()V

    .line 14
    .line 15
    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const-string v0, "mWeekViewSwitcher"

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/calendar/homepage/j1;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/calendar/homepage/j1;->A()V

    .line 38
    .line 39
    .line 40
    :cond_3
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

.method private final o(Landroid/view/MotionEvent;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sub-float/2addr v1, v3

    .line 12
    float-to-double v3, v1

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sub-float/2addr v0, p1

    .line 22
    float-to-double v0, v0

    .line 23
    mul-double/2addr v3, v3

    .line 24
    mul-double/2addr v0, v0

    .line 25
    add-double/2addr v3, v0

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    double-to-int p1, v0

    .line 31
    return p1
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

.method private final p(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->y:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/miui/calendar/util/h0;->a(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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

.method private final q(J)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/calendar/common/Utils;->Y()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/miui/calendar/util/e0;->m(JJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
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

.method private final r(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/calendar/homepage/h1;->getWeekNum()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x5

    .line 13
    :goto_0
    return p1
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

.method private final s(ILjava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x5

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object p2, v2, v3

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v3, 0x2

    .line 30
    aput-object p1, v2, v3

    .line 31
    .line 32
    const/4 p1, 0x3

    .line 33
    aput-object p2, v2, p1

    .line 34
    .line 35
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x4

    .line 40
    aput-object p1, v2, p2

    .line 41
    .line 42
    const p1, 0x7f120022

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const p2, 0xff0c

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-static {p3, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-static {p3}, La4/d;->g(Ljava/util/Calendar;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {p1, p2}, Lz3/b;->f(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string p2, "desc.toString()"

    .line 140
    .line 141
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object p1
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
.end method

.method private final u(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mWeekViewSwitcher"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/calendar/homepage/j1;

    .line 16
    .line 17
    const-string v1, "Cal:D:MonthPanelContainer"

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    long-to-int p1, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-virtual {v0, v2, p1}, Lcom/android/calendar/homepage/j1;->D(Ljava/util/Calendar;I)V

    .line 35
    .line 36
    .line 37
    const-string p1, "gotoWeekView()"

    .line 38
    .line 39
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const-string p1, "gotoWeekView(): week view is null!"

    .line 44
    .line 45
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

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

.method private final v(I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "initViewPager(): deltaPosition = "

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
    const-string v1, " mViewPagerInit:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->F:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Cal:D:MonthPanelContainer"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->F:Z

    .line 34
    .line 35
    const-string v2, "null cannot be cast to non-null type java.util.Calendar"

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const-string v6, "mViewPager"

    .line 41
    .line 42
    if-nez v0, :cond_6

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->F:Z

    .line 46
    .line 47
    :goto_0
    if-ge v4, v3, :cond_0

    .line 48
    .line 49
    new-instance v0, Ljava/util/Date;

    .line 50
    .line 51
    invoke-static {}, Lcom/android/calendar/common/Utils;->Y()J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v4}, Lcom/miui/calendar/view/MonthPanelContainer;->p(I)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-static {v0, v7}, Lcom/miui/calendar/util/e0;->g(Ljava/util/Date;I)Ljava/util/Calendar;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v7, Lcom/android/calendar/homepage/h1;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v9}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-static {v9, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    check-cast v9, Ljava/util/Calendar;

    .line 84
    .line 85
    invoke-direct {v7, v8, v0, v9}, Lcom/android/calendar/homepage/h1;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 89
    .line 90
    aput-object v7, v0, v4

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "real initViewPager"

    .line 96
    .line 97
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->getMonthView()Lcom/android/calendar/homepage/h1;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/android/calendar/homepage/h1;->l()V

    .line 107
    .line 108
    .line 109
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 110
    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object v0, v5

    .line 117
    :cond_2
    new-instance v1, Lcom/miui/calendar/view/k;

    .line 118
    .line 119
    new-instance v2, Lcom/miui/calendar/view/f;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-object v4, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 126
    .line 127
    invoke-direct {v2, v3, v4}, Lcom/miui/calendar/view/f;-><init>(Landroid/content/Context;[Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v2}, Lcom/miui/calendar/view/k;-><init>(Landroidx/viewpager/widget/b;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->T(Landroidx/viewpager/widget/b;I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 137
    .line 138
    if-nez v0, :cond_3

    .line 139
    .line 140
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    move-object v0, v5

    .line 144
    :cond_3
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_5

    .line 152
    .line 153
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 154
    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    move-object v5, v0

    .line 162
    :goto_1
    invoke-static {v5}, Lcom/miui/calendar/util/h0;->b(Landroidx/viewpager/widget/ViewPager;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->B(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_6
    :goto_2
    if-ge v4, v3, :cond_7

    .line 170
    .line 171
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 172
    .line 173
    aget-object v0, v0, v4

    .line 174
    .line 175
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    check-cast v1, Ljava/util/Calendar;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/h1;->setSelectedDay(Ljava/util/Calendar;)V

    .line 192
    .line 193
    .line 194
    add-int/lit8 v4, v4, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 198
    .line 199
    if-nez v0, :cond_8

    .line 200
    .line 201
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_8
    move-object v5, v0

    .line 206
    :goto_3
    invoke-virtual {v5, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->setCurrentItemInfinite(I)V

    .line 207
    .line 208
    .line 209
    :goto_4
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->w(I)V

    .line 210
    .line 211
    .line 212
    return-void
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

.method private final w(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mViewPager"

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
    invoke-virtual {v0}, Lcom/miui/calendar/view/InfiniteViewPager;->getOffsetAmount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/2addr v0, p1

    .line 17
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->x:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

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
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->x:I

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/miui/calendar/view/InfiniteViewPager;->S(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->w:I

    .line 35
    .line 36
    iput p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->y:I

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "initViewPosition(): deltaPosition = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "Cal:D:MonthPanelContainer"

    .line 56
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

.method private final x()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 2
    .line 3
    const-string v1, "mViewPager"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "context"

    .line 21
    .line 22
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Lcom/miui/calendar/util/x0;->J(Landroid/content/Context;)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    float-to-int v3, v3

    .line 30
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    iget-object v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v3, v2

    .line 40
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 44
    .line 45
    const-string v1, "mWeekViewSwitcher"

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v0, v2

    .line 53
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v5, 0x6

    .line 66
    if-ne v3, v5, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lcom/miui/calendar/util/x0;->i0(Landroid/content/Context;)F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Lcom/miui/calendar/util/x0;->h0(Landroid/content/Context;)F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    :goto_0
    float-to-int v3, v3

    .line 92
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    .line 94
    iget-object v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 95
    .line 96
    if-nez v3, :cond_4

    .line 97
    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move-object v2, v3

    .line 103
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    return-void
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

.method private final y()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->z()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Lcom/miui/calendar/view/MonthPanelContainer;->u(J)V

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

.method private final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mWeekViewSwitcher"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    new-instance v1, Lcom/miui/calendar/view/q;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/miui/calendar/view/q;-><init>(Lcom/miui/calendar/view/MonthPanelContainer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->K:Lkotlinx/coroutines/s1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/s1$a;->a(Lkotlinx/coroutines/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

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

.method public E()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->U()V

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

.method public F()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/view/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/miui/calendar/view/r;-><init>(Lcom/miui/calendar/view/MonthPanelContainer;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->O()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/miui/calendar/view/s;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/miui/calendar/view/s;-><init>(Lcom/miui/calendar/view/MonthPanelContainer;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public H()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/calendar/homepage/u0$a;->c(Lcom/android/calendar/homepage/u0;)V

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

.method public final O()V
    .locals 7

    .line 1
    const-string v0, "Cal:D:MonthPanelContainer"

    .line 2
    .line 3
    const-string v1, "reloadMonthEvents"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p0, v0}, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;-><init>(Lcom/miui/calendar/view/MonthPanelContainer;Lkotlin/coroutines/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v5, 0x3

    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->K:Lkotlinx/coroutines/s1;

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

.method public a(Lcom/miui/calendar/util/g$j;)V
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/miui/calendar/util/g$f;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p1, Lcom/miui/calendar/util/g$y;

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/miui/calendar/util/g$w0;

    .line 20
    .line 21
    :goto_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->O()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->M()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->N()V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_2
    instance-of v0, p1, Lcom/miui/calendar/util/g$u;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-static {}, Lcom/miui/calendar/util/x0;->w0()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->L()V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->O()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->P()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_4
    instance-of v0, p1, Lcom/miui/calendar/util/g$o;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->M()V

    .line 60
    .line 61
    .line 62
    const-wide/16 v0, 0x0

    .line 63
    .line 64
    invoke-direct {p0, v0, v1}, Lcom/miui/calendar/view/MonthPanelContainer;->u(J)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_5
    instance-of v0, p1, Lcom/miui/calendar/util/g$l0;

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->O()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->M()V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_6
    instance-of v0, p1, Lcom/miui/calendar/util/g$j0;

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->M()V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->N()V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_7
    instance-of v0, p1, Lcom/miui/calendar/util/g$m;

    .line 94
    .line 95
    if-eqz v0, :cond_c

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v2, "current: "

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, ", event: "

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    check-cast p1, Lcom/miui/calendar/util/g$m;

    .line 124
    .line 125
    iget p1, p1, Lcom/miui/calendar/util/g$m;->b:I

    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v0, "Cal:D:MonthPanelContainer"

    .line 135
    .line 136
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->S()V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 143
    .line 144
    const/4 v0, 0x0

    .line 145
    const-string v2, "mWeekViewSwitcher"

    .line 146
    .line 147
    if-nez p1, :cond_8

    .line 148
    .line 149
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    move-object p1, v0

    .line 153
    :cond_8
    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/android/calendar/homepage/j1;

    .line 158
    .line 159
    if-eqz p1, :cond_9

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Lcom/android/calendar/homepage/j1;->O(Z)V

    .line 162
    .line 163
    .line 164
    :cond_9
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 165
    .line 166
    if-nez p1, :cond_a

    .line 167
    .line 168
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_a
    move-object v0, p1

    .line 173
    :goto_2
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lcom/android/calendar/homepage/j1;

    .line 178
    .line 179
    if-eqz p1, :cond_b

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Lcom/android/calendar/homepage/j1;->O(Z)V

    .line 182
    .line 183
    .line 184
    :cond_b
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->R()V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->W()V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_c
    instance-of v0, p1, Lcom/miui/calendar/util/g$a0;

    .line 192
    .line 193
    if-eqz v0, :cond_d

    .line 194
    .line 195
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->S()V

    .line 196
    .line 197
    .line 198
    check-cast p1, Lcom/miui/calendar/util/g$a0;

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->t(Lcom/miui/calendar/util/g$a0;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_d
    instance-of v0, p1, Lcom/miui/calendar/util/g$e;

    .line 205
    .line 206
    if-eqz v0, :cond_e

    .line 207
    .line 208
    check-cast p1, Lcom/miui/calendar/util/g$e;

    .line 209
    .line 210
    iget-boolean p1, p1, Lcom/miui/calendar/util/g$e;->a:Z

    .line 211
    .line 212
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->K(Z)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_e
    instance-of v0, p1, Lcom/miui/calendar/util/g$d;

    .line 217
    .line 218
    if-eqz v0, :cond_f

    .line 219
    .line 220
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->L()V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_f
    instance-of p1, p1, Lcom/miui/calendar/util/g$g0;

    .line 225
    .line 226
    if-eqz p1, :cond_10

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->O()V

    .line 229
    .line 230
    .line 231
    :cond_10
    :goto_3
    return-void
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

.method public final getSelectDayView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->v:Landroid/view/View;

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

.method public final getWeekSwitcher()Landroid/widget/ViewSwitcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mWeekViewSwitcher"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
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

.method public final m(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->J:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->G:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->H:I

    .line 9
    .line 10
    :goto_0
    if-ne v0, p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "mContainer"

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1, v0, p1}, Lcom/android/calendar/homepage/t0;->G(II)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->o:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v2, p2

    .line 38
    :goto_1
    invoke-virtual {v1, v2, v0, p1}, Lcom/android/calendar/homepage/t0;->H(Landroid/view/View;II)V

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {v1, p2, p1}, Lcom/android/calendar/homepage/t0;->L(II)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->o:Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-nez p2, :cond_4

    .line 56
    .line 57
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    move-object v2, p2

    .line 62
    :goto_2
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    :goto_3
    iput p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->J:I

    .line 66
    .line 67
    return-void
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

.method protected onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a03f3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "findViewById(R.id.month_container)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->o:Landroid/view/ViewGroup;

    .line 19
    .line 20
    const v0, 0x7f0a06e3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "findViewById(R.id.week_switcher)"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->p:Landroid/widget/ViewSwitcher;

    .line 35
    .line 36
    const v0, 0x7f0a06c3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "findViewById(R.id.view_pager)"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast v0, Lcom/miui/calendar/view/InfiniteViewPager;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 51
    .line 52
    const v0, 0x7f0a0541

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->v:Landroid/view/View;

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->x()V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/miui/calendar/view/MonthPanelContainer;->q(J)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-direct {p0, v0}, Lcom/miui/calendar/view/MonthPanelContainer;->v(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x4

    .line 84
    if-ne v0, v1, :cond_0

    .line 85
    .line 86
    new-instance v0, Lcom/miui/calendar/view/p;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/miui/calendar/view/p;-><init>(Lcom/miui/calendar/view/MonthPanelContainer;)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v1, 0xc8

    .line 92
    .line 93
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->y()V

    .line 98
    .line 99
    .line 100
    :goto_0
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

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "ev"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    return p1
    .line 20
    .line 21
    .line 22
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

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

.method public onPageScrollStateChanged(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->I:[Lcom/android/calendar/homepage/h1;

    .line 12
    .line 13
    aget-object v3, v3, v2

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->z:I

    .line 25
    .line 26
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->N0(I)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->E:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->l()V

    .line 36
    .line 37
    .line 38
    :cond_2
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
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lcom/android/calendar/common/Utils;->Y()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v2, "mViewPager"

    .line 21
    .line 22
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :cond_0
    invoke-virtual {v2, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->S(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->p(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->n:Lcom/android/calendar/common/e;

    .line 50
    .line 51
    iput p3, p1, Lcom/android/calendar/common/e;->s:I

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p1, p3, v0, p2}, Lcom/android/calendar/homepage/t0;->P(IIF)V

    .line 70
    .line 71
    .line 72
    return-void
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
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->B(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, ">> onPageSelected() << "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "Cal:D:MonthPanelContainer"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->x:I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "onPageSelected(): same position = "

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-boolean v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->E:Z

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->E:Z

    .line 56
    .line 57
    iget-object v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    const-string v1, "mViewPager"

    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    :cond_1
    invoke-virtual {v1, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->S(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-direct {p0, v1}, Lcom/miui/calendar/view/MonthPanelContainer;->V(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v3, "null cannot be cast to non-null type java.util.Calendar"

    .line 83
    .line 84
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    check-cast v1, Ljava/util/Calendar;

    .line 88
    .line 89
    iget-boolean v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->D:Z

    .line 90
    .line 91
    if-nez v3, :cond_4

    .line 92
    .line 93
    iget v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->x:I

    .line 94
    .line 95
    if-le p1, v3, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, -0x1

    .line 99
    :goto_0
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    neg-int v0, v0

    .line 106
    :cond_3
    const/4 v3, 0x2

    .line 107
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 108
    .line 109
    .line 110
    :cond_4
    iput-boolean v2, p0, Lcom/miui/calendar/view/MonthPanelContainer;->D:Z

    .line 111
    .line 112
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->X(I)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/miui/calendar/util/x0;->w0()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_5

    .line 120
    .line 121
    new-instance p1, Lcom/miui/calendar/util/g$d;

    .line 122
    .line 123
    invoke-direct {p1}, Lcom/miui/calendar/util/g$d;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Lcom/miui/calendar/util/g$g0;

    .line 130
    .line 131
    invoke-direct {p1}, Lcom/miui/calendar/util/g$g0;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    new-instance p1, Lcom/miui/calendar/util/g$a0;

    .line 138
    .line 139
    invoke-direct {p1, v1}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 143
    .line 144
    .line 145
    return-void
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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v0, v4, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    if-eq v0, v4, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x5

    .line 26
    if-eq v0, v4, :cond_4

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-le v0, v2, :cond_5

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->o(Landroid/view/MotionEvent;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v4, p0, Lcom/miui/calendar/view/MonthPanelContainer;->j:I

    .line 44
    .line 45
    if-ne v4, v3, :cond_1

    .line 46
    .line 47
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->j:I

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->a:F

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iput v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->b:F

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iput v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->c:F

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->d:F

    .line 72
    .line 73
    :cond_1
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->i:I

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->e:F

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->f:F

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->g:F

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->h:F

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->j:I

    .line 101
    .line 102
    iget v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->i:I

    .line 103
    .line 104
    sub-int/2addr v0, v1

    .line 105
    iget v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->k:I

    .line 106
    .line 107
    if-le v0, v1, :cond_3

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->C()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    const-string v0, "Cal:D:MonthPanelContainer"

    .line 116
    .line 117
    const-string v1, "GoToYearModeEvent"

    .line 118
    .line 119
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lcom/miui/calendar/util/g$b0;

    .line 127
    .line 128
    invoke-direct {v1}, Lcom/miui/calendar/util/g$b0;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    iput v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->i:I

    .line 135
    .line 136
    iput v3, p0, Lcom/miui/calendar/view/MonthPanelContainer;->j:I

    .line 137
    .line 138
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->Q()V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-le v0, v2, :cond_5

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->o(Landroid/view/MotionEvent;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->i:I

    .line 153
    .line 154
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->j:I

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->a:F

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->b:F

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->c:F

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iput v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->d:F

    .line 179
    .line 180
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    return p1
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

.method public setTranslationY(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer;->n:Lcom/android/calendar/common/e;

    .line 5
    .line 6
    iput p1, v0, Lcom/android/calendar/common/e;->u:F

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

.method public final setVerticalMotionUtil(Lcom/miui/calendar/util/b1;)V
    .locals 1

    .line 1
    const-string v0, "verticalMotionUtil"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->m:Lcom/miui/calendar/util/b1;

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

.method public final t(Lcom/miui/calendar/util/g$a0;)V
    .locals 7

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Cal:D:MonthPanelContainer"

    .line 7
    .line 8
    const-string v1, "timecost----- goTo receive GoToDateEvent ----start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->y:I

    .line 14
    .line 15
    iget-object v2, p1, Lcom/miui/calendar/util/g$a0;->a:Ljava/util/Calendar;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-direct {p0, v2, v3}, Lcom/miui/calendar/view/MonthPanelContainer;->q(J)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v5, v3

    .line 32
    :goto_0
    iput-boolean v5, p0, Lcom/miui/calendar/view/MonthPanelContainer;->D:Z

    .line 33
    .line 34
    if-eqz v5, :cond_4

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v6, "goTo(): deltaPosition from "

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v6, " to "

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v0, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sub-int/2addr v1, v2

    .line 65
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v1, v4, :cond_3

    .line 70
    .line 71
    iget-object v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->q:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 72
    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    const-string v1, "mViewPager"

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v5}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const/4 v6, 0x3

    .line 90
    if-eq v5, v6, :cond_2

    .line 91
    .line 92
    invoke-static {}, Lcom/miui/calendar/util/x0;->u0()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_2

    .line 97
    .line 98
    move v3, v4

    .line 99
    :cond_2
    invoke-virtual {v1, v2, v3}, Lcom/miui/calendar/view/InfiniteViewPager;->U(IZ)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-direct {p0, v2}, Lcom/miui/calendar/view/MonthPanelContainer;->v(I)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_1
    iget-boolean v1, p1, Lcom/miui/calendar/util/g$a0;->g:Z

    .line 107
    .line 108
    if-nez v1, :cond_5

    .line 109
    .line 110
    iget v1, p0, Lcom/miui/calendar/view/MonthPanelContainer;->z:I

    .line 111
    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->M()V

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-direct {p0}, Lcom/miui/calendar/view/MonthPanelContainer;->W()V

    .line 118
    .line 119
    .line 120
    iget-wide v1, p1, Lcom/miui/calendar/util/g$a0;->b:J

    .line 121
    .line 122
    const-wide/16 v3, 0x0

    .line 123
    .line 124
    cmp-long p1, v1, v3

    .line 125
    .line 126
    if-ltz p1, :cond_6

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    const-wide/16 v1, 0x190

    .line 130
    .line 131
    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/miui/calendar/view/MonthPanelContainer;->u(J)V

    .line 132
    .line 133
    .line 134
    const-string p1, "timecost----- goTo receive GoToDateEvent ----end"

    .line 135
    .line 136
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void
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
