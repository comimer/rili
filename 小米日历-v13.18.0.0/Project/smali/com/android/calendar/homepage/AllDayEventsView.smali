.class public final Lcom/android/calendar/homepage/AllDayEventsView;
.super Landroid/widget/LinearLayout;
.source "AllDayEventsView.kt"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/homepage/AllDayEventsView$a;,
        Lcom/android/calendar/homepage/AllDayEventsView$d;,
        Lcom/android/calendar/homepage/AllDayEventsView$c;,
        Lcom/android/calendar/homepage/AllDayEventsView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 }2\u00020\u00012\u00020\u0002:\u0004&*.1B/\u0012\u0006\u0010z\u001a\u00020y\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u00100\u001a\u00020-\u00a2\u0006\u0004\u0008{\u0010|J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u001a\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J(\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001e\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006J\u0006\u0010\u0019\u001a\u00020\u0006J\u0006\u0010\u001a\u001a\u00020\u0003J\u0006\u0010\u001b\u001a\u00020\u0003J\u0006\u0010\u001c\u001a\u00020\u0003J*\u0010\"\u001a\u00020\u00032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0006H\u0016J\u001a\u0010$\u001a\u00020\u00032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010#\u001a\u00020\u0006H\u0016R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00103\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0014\u00105\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00102R\u0014\u00107\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00102R\u0014\u00109\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00102R\u0014\u0010<\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u001a\u0010H\u001a\u00060ER\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0016\u0010P\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001c\u0010T\u001a\u0008\u0018\u00010QR\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR$\u0010^\u001a\u0012\u0012\u0004\u0012\u00020Z0Yj\u0008\u0012\u0004\u0012\u00020Z`[8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R$\u0010`\u001a\u0012\u0012\u0004\u0012\u00020Z0Yj\u0008\u0012\u0004\u0012\u00020Z`[8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008_\u0010]R\u0016\u0010d\u001a\u00020a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0014\u0010h\u001a\u00020e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0016\u0010j\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u00102R\u0016\u0010k\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u00102R\u0016\u0010m\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010lR\u0016\u0010n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u00102R\u0014\u0010p\u001a\u00020o8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001bR\u0016\u0010q\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u00102R\u0016\u0010r\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u00102R\u0016\u0010s\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u00102R\u0014\u0010t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u00102R\u0016\u0010u\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00102R\u0016\u0010v\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u00102R\u0016\u0010x\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u00102\u00a8\u0006~"
    }
    d2 = {
        "Lcom/android/calendar/homepage/AllDayEventsView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lkotlin/u;",
        "C",
        "F",
        "",
        "toState",
        "",
        "userClicked",
        "x",
        "from",
        "to",
        "targetState",
        "A",
        "deltaY",
        "H",
        "",
        "getFooterText",
        "listSize",
        "y",
        "selectedDay",
        "pagerDay",
        "today",
        "E",
        "getPageDay",
        "z",
        "D",
        "G",
        "Landroid/widget/AbsListView;",
        "view",
        "firstVisibleItem",
        "visibleItemCount",
        "totalItemCount",
        "onScroll",
        "scrollState",
        "onScrollStateChanged",
        "Lcom/android/calendar/homepage/AllDayViewPager;",
        "a",
        "Lcom/android/calendar/homepage/AllDayViewPager;",
        "mAllDayViewPager",
        "Landroid/widget/ViewSwitcher;",
        "b",
        "Landroid/widget/ViewSwitcher;",
        "mDayViewSwitcher",
        "Landroid/view/View;",
        "c",
        "Landroid/view/View;",
        "mBottomShadowView",
        "d",
        "I",
        "ALL_DAY_LIST_PADDING_TOP",
        "e",
        "ALL_DAY_LIST_PADDING_BOTTOM",
        "f",
        "ALL_DAY_EVENT_ITEM_HEIGHT",
        "g",
        "ALL_DAY_EVENT_DIVIDER_HEIGHT",
        "h",
        "Ljava/lang/String;",
        "NO_TITLE_TEXT",
        "Landroid/content/res/ColorStateList;",
        "i",
        "Landroid/content/res/ColorStateList;",
        "mMoreTextColor",
        "Landroid/widget/ListView;",
        "j",
        "Landroid/widget/ListView;",
        "mAllDayList",
        "Lcom/android/calendar/homepage/AllDayEventsView$a;",
        "k",
        "Lcom/android/calendar/homepage/AllDayEventsView$a;",
        "mAdapter",
        "Landroid/widget/FrameLayout;",
        "l",
        "Landroid/widget/FrameLayout;",
        "mExpandSection",
        "Landroid/widget/ImageView;",
        "m",
        "Landroid/widget/ImageView;",
        "mImgArrow",
        "Lcom/android/calendar/homepage/AllDayEventsView$c;",
        "n",
        "Lcom/android/calendar/homepage/AllDayEventsView$c;",
        "mHScrollInterpolator",
        "Lcom/miui/calendar/util/r0;",
        "o",
        "Lcom/miui/calendar/util/r0;",
        "mBaseDate",
        "Ljava/util/ArrayList;",
        "Lcom/android/calendar/homepage/l0$l;",
        "Lkotlin/collections/ArrayList;",
        "p",
        "Ljava/util/ArrayList;",
        "mAllDayEvents",
        "q",
        "allDayEvents",
        "",
        "r",
        "J",
        "mLastReloadMillis",
        "Landroid/animation/ValueAnimator;",
        "v",
        "Landroid/animation/ValueAnimator;",
        "mPagerHeightChangeAnimator",
        "w",
        "mFromHeight",
        "mToHeight",
        "Z",
        "mOverSize",
        "mCurState",
        "",
        "mMaxPagerHeight",
        "mCollapsePagerHeight",
        "mExpandPagerHeight",
        "mCurrentPagerHeight",
        "mScreenHeight",
        "mPageDay",
        "mSelectedDay",
        "K",
        "mToday",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;ILcom/android/calendar/homepage/AllDayViewPager;Landroid/widget/ViewSwitcher;Landroid/view/View;)V",
        "N",
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
.field public static final N:Lcom/android/calendar/homepage/AllDayEventsView$b;


# instance fields
.field private final D:D

.field private E:I

.field private F:I

.field private G:I

.field private final H:I

.field private I:I

.field private J:I

.field private K:I

.field private final L:Lw7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/r<",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation
.end field

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

.field private final a:Lcom/android/calendar/homepage/AllDayViewPager;

.field private final b:Landroid/widget/ViewSwitcher;

.field private final c:Landroid/view/View;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Landroid/content/res/ColorStateList;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/android/calendar/homepage/AllDayEventsView$a;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/android/calendar/homepage/AllDayEventsView$c;

.field private final o:Lcom/miui/calendar/util/r0;

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;"
        }
    .end annotation
.end field

.field private r:J

.field private final v:Landroid/animation/ValueAnimator;

.field private w:I

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/homepage/AllDayEventsView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/homepage/AllDayEventsView$b;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/homepage/AllDayEventsView;->N:Lcom/android/calendar/homepage/AllDayEventsView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/calendar/homepage/AllDayViewPager;Landroid/widget/ViewSwitcher;Landroid/view/View;)V
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mAllDayViewPager"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mDayViewSwitcher"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "mBottomShadowView"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->M:Ljava/util/Map;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object p3, p0, Lcom/android/calendar/homepage/AllDayEventsView;->a:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/android/calendar/homepage/AllDayEventsView;->b:Landroid/widget/ViewSwitcher;

    .line 34
    .line 35
    iput-object p5, p0, Lcom/android/calendar/homepage/AllDayEventsView;->c:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const p4, 0x7f0702ad

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    iput p3, p0, Lcom/android/calendar/homepage/AllDayEventsView;->d:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p5

    .line 54
    invoke-virtual {p5, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    .line 56
    .line 57
    move-result p4

    .line 58
    iput p4, p0, Lcom/android/calendar/homepage/AllDayEventsView;->e:I

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p5

    .line 64
    const v0, 0x7f0702a3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    .line 69
    .line 70
    move-result p5

    .line 71
    iput p5, p0, Lcom/android/calendar/homepage/AllDayEventsView;->f:I

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const v1, 0x7f0702a6

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->g:I

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const v2, 0x7f1203c4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "context.resources.getStr\u2026(R.string.no_title_label)"

    .line 98
    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->h:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const v2, 0x7f060050

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "context.resources.getCol\u2026y_event_expand_tip_color)"

    .line 116
    .line 117
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->i:Landroid/content/res/ColorStateList;

    .line 121
    .line 122
    new-instance v1, Lcom/miui/calendar/util/r0;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-direct {v1, v2}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p2}, Lcom/miui/calendar/util/r0;->G(I)J

    .line 136
    .line 137
    .line 138
    const/4 v2, 0x1

    .line 139
    invoke-virtual {v1, v2}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 140
    .line 141
    .line 142
    iput-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->o:Lcom/miui/calendar/util/r0;

    .line 143
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->p:Ljava/util/ArrayList;

    .line 150
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->q:Ljava/util/ArrayList;

    .line 157
    .line 158
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 159
    .line 160
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 161
    .line 162
    .line 163
    const-wide/16 v2, 0x12c

    .line 164
    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 166
    .line 167
    .line 168
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 169
    .line 170
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    .line 175
    .line 176
    iput-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 177
    .line 178
    int-to-double v1, p5

    .line 179
    const-wide/high16 v3, 0x4025000000000000L    # 10.5

    .line 180
    .line 181
    mul-double/2addr v1, v3

    .line 182
    mul-int/lit8 v0, v0, 0xa

    .line 183
    .line 184
    int-to-double v3, v0

    .line 185
    add-double/2addr v1, v3

    .line 186
    int-to-double v3, p3

    .line 187
    add-double/2addr v1, v3

    .line 188
    int-to-double p3, p4

    .line 189
    add-double/2addr v1, p3

    .line 190
    iput-wide v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->D:D

    .line 191
    .line 192
    const/4 p3, -0x1

    .line 193
    iput p3, p0, Lcom/android/calendar/homepage/AllDayEventsView;->E:I

    .line 194
    .line 195
    iput p3, p0, Lcom/android/calendar/homepage/AllDayEventsView;->F:I

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 206
    .line 207
    iput p3, p0, Lcom/android/calendar/homepage/AllDayEventsView;->H:I

    .line 208
    .line 209
    iput p2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

    .line 210
    .line 211
    iput p2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->J:I

    .line 212
    .line 213
    iput p2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->K:I

    .line 214
    .line 215
    new-instance p2, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;

    .line 216
    .line 217
    invoke-direct {p2, p0}, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;-><init>(Lcom/android/calendar/homepage/AllDayEventsView;)V

    .line 218
    .line 219
    .line 220
    iput-object p2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->L:Lw7/r;

    .line 221
    .line 222
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    const p3, 0x7f0d0047

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    const p1, 0x7f0a0098

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string p3, "findViewById(R.id.all_day_list)"

    .line 240
    .line 241
    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    check-cast p1, Landroid/widget/ListView;

    .line 245
    .line 246
    iput-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->j:Landroid/widget/ListView;

    .line 247
    .line 248
    new-instance p1, Lcom/android/calendar/homepage/AllDayEventsView$a;

    .line 249
    .line 250
    invoke-direct {p1, p0}, Lcom/android/calendar/homepage/AllDayEventsView$a;-><init>(Lcom/android/calendar/homepage/AllDayEventsView;)V

    .line 251
    .line 252
    .line 253
    iput-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->k:Lcom/android/calendar/homepage/AllDayEventsView$a;

    .line 254
    .line 255
    iget-object p3, p0, Lcom/android/calendar/homepage/AllDayEventsView;->j:Landroid/widget/ListView;

    .line 256
    .line 257
    invoke-virtual {p3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->j:Landroid/widget/ListView;

    .line 261
    .line 262
    new-instance p3, Lcom/android/calendar/homepage/h;

    .line 263
    .line 264
    invoke-direct {p3, p2}, Lcom/android/calendar/homepage/h;-><init>(Lw7/r;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->j:Landroid/widget/ListView;

    .line 271
    .line 272
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 273
    .line 274
    .line 275
    const p1, 0x7f0a0288

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    const-string p2, "findViewById(R.id.expand_section)"

    .line 283
    .line 284
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    check-cast p1, Landroid/widget/FrameLayout;

    .line 288
    .line 289
    iput-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->l:Landroid/widget/FrameLayout;

    .line 290
    .line 291
    const p1, 0x7f0a0668

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    check-cast p1, Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-static {}, Lcom/miui/calendar/util/x0;->D()Landroid/graphics/Typeface;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    .line 306
    .line 307
    const p1, 0x7f0a0094

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    const-string p2, "findViewById<ImageView>(R.id.all_day_arrow_img)"

    .line 315
    .line 316
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    check-cast p1, Landroid/widget/ImageView;

    .line 320
    .line 321
    iput-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->m:Landroid/widget/ImageView;

    .line 322
    .line 323
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->l:Landroid/widget/FrameLayout;

    .line 324
    .line 325
    new-instance p2, Lcom/android/calendar/homepage/i;

    .line 326
    .line 327
    invoke-direct {p2, p0}, Lcom/android/calendar/homepage/i;-><init>(Lcom/android/calendar/homepage/AllDayEventsView;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    .line 332
    .line 333
    new-instance p1, Lcom/android/calendar/homepage/AllDayEventsView$c;

    .line 334
    .line 335
    invoke-direct {p1, p0}, Lcom/android/calendar/homepage/AllDayEventsView$c;-><init>(Lcom/android/calendar/homepage/AllDayEventsView;)V

    .line 336
    .line 337
    .line 338
    iput-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->n:Lcom/android/calendar/homepage/AllDayEventsView$c;

    .line 339
    .line 340
    return-void
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

.method private final A(IIIZ)V
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    move v7, p1

    .line 3
    move v8, p2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "doHeightChangeAnimation old:["

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v1, v6, Lcom/android/calendar/homepage/AllDayEventsView;->w:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, v6, Lcom/android/calendar/homepage/AllDayEventsView;->x:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "] new:["

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "] oversize:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, v6, Lcom/android/calendar/homepage/AllDayEventsView;->y:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "Cal:D:AllDayEventsView"

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->w:I

    .line 71
    .line 72
    if-ne v7, v0, :cond_0

    .line 73
    .line 74
    iget v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->x:I

    .line 75
    .line 76
    if-ne v0, v8, :cond_0

    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    iget-object v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 82
    .line 83
    .line 84
    :cond_1
    const-string v0, "doHeightChangeAnimation start."

    .line 85
    .line 86
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput v7, v6, Lcom/android/calendar/homepage/AllDayEventsView;->w:I

    .line 90
    .line 91
    iput v8, v6, Lcom/android/calendar/homepage/AllDayEventsView;->x:I

    .line 92
    .line 93
    iget-object v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    const/4 v1, 0x2

    .line 96
    new-array v1, v1, [I

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    aput v7, v1, v2

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    aput v8, v1, v2

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 110
    .line 111
    .line 112
    iget-object v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 115
    .line 116
    .line 117
    iget v9, v6, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 118
    .line 119
    iget-object v10, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    new-instance v11, Lcom/android/calendar/homepage/AllDayEventsView$g;

    .line 122
    .line 123
    move-object v0, v11

    .line 124
    move v1, p1

    .line 125
    move v2, p2

    .line 126
    move-object v3, p0

    .line 127
    move/from16 v4, p3

    .line 128
    .line 129
    move/from16 v5, p4

    .line 130
    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/homepage/AllDayEventsView$g;-><init>(IILcom/android/calendar/homepage/AllDayEventsView;IZ)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    new-instance v1, Lcom/android/calendar/homepage/g;

    .line 140
    .line 141
    move/from16 v10, p4

    .line 142
    .line 143
    invoke-direct {v1, p0, v10}, Lcom/android/calendar/homepage/g;-><init>(Lcom/android/calendar/homepage/AllDayEventsView;Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 147
    .line 148
    .line 149
    iget-object v11, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 150
    .line 151
    new-instance v12, Lcom/android/calendar/homepage/AllDayEventsView$e;

    .line 152
    .line 153
    move-object v0, v12

    .line 154
    move v1, p1

    .line 155
    move v5, v9

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/homepage/AllDayEventsView$e;-><init>(IILcom/android/calendar/homepage/AllDayEventsView;II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    .line 161
    .line 162
    iget-object v9, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    new-instance v11, Lcom/android/calendar/homepage/AllDayEventsView$f;

    .line 165
    .line 166
    move-object v0, v11

    .line 167
    move-object v1, p0

    .line 168
    move/from16 v2, p3

    .line 169
    .line 170
    move/from16 v3, p4

    .line 171
    .line 172
    move v4, p2

    .line 173
    move v5, p1

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/homepage/AllDayEventsView$f;-><init>(Lcom/android/calendar/homepage/AllDayEventsView;IZII)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, v6, Lcom/android/calendar/homepage/AllDayEventsView;->v:Landroid/animation/ValueAnimator;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method private static final B(Lcom/android/calendar/homepage/AllDayEventsView;ZLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "animation"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "doOnUpdate mCurState:"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " value:"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " userClicked:"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, " hashCode:"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "Cal:D:AllDayEventsView"

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->G:I

    .line 79
    .line 80
    sub-int p1, p2, p1

    .line 81
    .line 82
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 83
    .line 84
    const/4 v1, 0x4

    .line 85
    if-ne v0, v1, :cond_0

    .line 86
    .line 87
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllDayEventsView;->H(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->b:Landroid/widget/ViewSwitcher;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView"

    .line 98
    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    check-cast p1, Lcom/android/calendar/homepage/f0;

    .line 103
    .line 104
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 105
    .line 106
    invoke-virtual {p1, p2, v1}, Lcom/android/calendar/homepage/l0;->z0(II)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->b:Landroid/widget/ViewSwitcher;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    check-cast p1, Lcom/android/calendar/homepage/f0;

    .line 119
    .line 120
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 121
    .line 122
    invoke-virtual {p1, p2, v0}, Lcom/android/calendar/homepage/l0;->z0(II)V

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->a:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->a:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 136
    .line 137
    .line 138
    return-void
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

.method private final C()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->m:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v2, 0x7f0800cd

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->m:Landroid/widget/ImageView;

    .line 23
    .line 24
    const v2, 0x7f0800d0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->l:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->y:Z

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->m:Landroid/widget/ImageView;

    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->y:Z

    .line 40
    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    move v2, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v2, v3

    .line 49
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

    .line 53
    .line 54
    iget v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->J:I

    .line 55
    .line 56
    if-ne v0, v2, :cond_6

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->j:Landroid/widget/ListView;

    .line 59
    .line 60
    iget v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v1, v4

    .line 66
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->c:Landroid/view/View;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->p:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-lez v1, :cond_5

    .line 78
    .line 79
    move v3, v4

    .line 80
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :cond_6
    return-void
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

.method private final F()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "Cal:D:AllDayEventsView"

    .line 10
    .line 11
    const-string v1, "toggleAllDayView isAnimating."

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    const/4 v1, 0x0

    .line 21
    :goto_1
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v1, v0}, Lcom/android/calendar/homepage/AllDayEventsView;->x(IZ)V

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

.method private final H(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->b:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 13
    .line 14
    iget v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 15
    .line 16
    invoke-virtual {v0, p1, v2}, Lcom/android/calendar/homepage/l0;->i2(II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->b:Landroid/widget/ViewSwitcher;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 29
    .line 30
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/homepage/l0;->i2(II)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, v0, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
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
.end method

.method public static synthetic a(Lcom/android/calendar/homepage/AllDayEventsView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/homepage/AllDayEventsView;->B(Lcom/android/calendar/homepage/AllDayEventsView;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/calendar/homepage/AllDayEventsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/homepage/AllDayEventsView;->e(Lcom/android/calendar/homepage/AllDayEventsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lw7/r;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/calendar/homepage/AllDayEventsView;->d(Lw7/r;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private static final d(Lw7/r;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 1
    const-string v0, "$tmp0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    invoke-interface {p0, p1, p2, p3, p4}, Lw7/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
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

.method private static final e(Lcom/android/calendar/homepage/AllDayEventsView;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllDayEventsView;->F()V

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

.method public static final synthetic f(Lcom/android/calendar/homepage/AllDayEventsView;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/AllDayEventsView;->x(IZ)V

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

.method public static final synthetic g(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->q:Ljava/util/ArrayList;

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

.method private final getFooterText()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const v0, 0x7f120386

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "resources.getString(R.string.more_events, over)"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0
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

.method public static final synthetic h(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllDayEventsView;->getFooterText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method public static final synthetic i(Lcom/android/calendar/homepage/AllDayEventsView;)Lcom/android/calendar/homepage/AllDayEventsView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->k:Lcom/android/calendar/homepage/AllDayEventsView$a;

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

.method public static final synthetic j(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->p:Ljava/util/ArrayList;

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

.method public static final synthetic k(Lcom/android/calendar/homepage/AllDayEventsView;)Lcom/android/calendar/homepage/AllDayViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->a:Lcom/android/calendar/homepage/AllDayViewPager;

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

.method public static final synthetic l(Lcom/android/calendar/homepage/AllDayEventsView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

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

.method public static final synthetic m(Lcom/android/calendar/homepage/AllDayEventsView;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->b:Landroid/widget/ViewSwitcher;

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

.method public static final synthetic n(Lcom/android/calendar/homepage/AllDayEventsView;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->i:Landroid/content/res/ColorStateList;

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

.method public static final synthetic o(Lcom/android/calendar/homepage/AllDayEventsView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->y:Z

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

.method public static final synthetic p(Lcom/android/calendar/homepage/AllDayEventsView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

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

.method public static final synthetic q(Lcom/android/calendar/homepage/AllDayEventsView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->K:I

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

.method public static final synthetic r(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->h:Ljava/lang/String;

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

.method public static final synthetic s(Lcom/android/calendar/homepage/AllDayEventsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllDayEventsView;->C()V

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

.method public static final synthetic t(Lcom/android/calendar/homepage/AllDayEventsView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

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

.method public static final synthetic u(Lcom/android/calendar/homepage/AllDayEventsView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->G:I

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

.method public static final synthetic v(Lcom/android/calendar/homepage/AllDayEventsView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->y:Z

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

.method public static final synthetic w(Lcom/android/calendar/homepage/AllDayEventsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllDayEventsView;->F()V

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

.method private final x(IZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "adjustPagerHeightIfNeed:["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->J:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->K:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "],["

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "] eventsSize:"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->p:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "Cal:D:AllDayEventsView"

    .line 69
    .line 70
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

    .line 74
    .line 75
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->J:I

    .line 76
    .line 77
    if-eq v0, v1, :cond_0

    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->a:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->E:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->F:I

    .line 92
    .line 93
    :goto_0
    if-ltz v1, :cond_2

    .line 94
    .line 95
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    .line 97
    if-eq v0, v1, :cond_2

    .line 98
    .line 99
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/calendar/homepage/AllDayEventsView;->A(IIIZ)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iput p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/android/calendar/homepage/AllDayEventsView;->C()V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->k:Lcom/android/calendar/homepage/AllDayEventsView$a;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void
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

.method private final y(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->d:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->e:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->f:I

    .line 7
    .line 8
    mul-int/2addr v1, p1

    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->g:I

    .line 11
    .line 12
    add-int/lit8 p1, p1, -0x1

    .line 13
    .line 14
    mul-int/2addr v1, p1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public final D()V
    .locals 7

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
    iget-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->o:Lcom/miui/calendar/util/r0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget-wide v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->r:J

    .line 35
    .line 36
    cmp-long v2, v0, v2

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iput-wide v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->r:J

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "reloadEvents mPageDay:"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "Cal:D:AllDayEventsView"

    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    new-instance v4, Lcom/android/calendar/homepage/AllDayEventsView$reloadEvents$1;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-direct {v4, p0, v0}, Lcom/android/calendar/homepage/AllDayEventsView$reloadEvents$1;-><init>(Lcom/android/calendar/homepage/AllDayEventsView;Lkotlin/coroutines/c;)V

    .line 81
    .line 82
    .line 83
    const/4 v5, 0x3

    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 86
    .line 87
    .line 88
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

.method public final E(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->J:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/calendar/homepage/AllDayEventsView;->K:I

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

.method public final G()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->J:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->p:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->E:I

    .line 18
    .line 19
    iput v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->F:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->y:Z

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/AllDayEventsView;->y(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->E:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->F:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v1, 0x3

    .line 36
    invoke-direct {p0, v1}, Lcom/android/calendar/homepage/AllDayEventsView;->y(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->E:I

    .line 41
    .line 42
    const/16 v1, 0xa

    .line 43
    .line 44
    if-le v0, v1, :cond_3

    .line 45
    .line 46
    iget-wide v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->D:D

    .line 47
    .line 48
    double-to-int v0, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/AllDayEventsView;->y(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_0
    iput v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->F:I

    .line 55
    .line 56
    :goto_1
    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [I

    .line 58
    .line 59
    fill-array-data v0, :array_0

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->a:Lcom/android/calendar/homepage/AllDayViewPager;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lcom/android/calendar/homepage/AllDayEventsView;->E:I

    .line 68
    .line 69
    iget v2, p0, Lcom/android/calendar/homepage/AllDayEventsView;->F:I

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    aget v0, v0, v3

    .line 73
    .line 74
    add-int v3, v0, v1

    .line 75
    .line 76
    iget v4, p0, Lcom/android/calendar/homepage/AllDayEventsView;->H:I

    .line 77
    .line 78
    if-le v3, v4, :cond_4

    .line 79
    .line 80
    sub-int v1, v4, v0

    .line 81
    .line 82
    :cond_4
    add-int v3, v0, v2

    .line 83
    .line 84
    if-le v3, v4, :cond_5

    .line 85
    .line 86
    sub-int v2, v4, v0

    .line 87
    .line 88
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->b:Landroid/widget/ViewSwitcher;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v3, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView"

    .line 95
    .line 96
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 100
    .line 101
    iget v4, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/calendar/homepage/l0;->c2(III)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->b:Landroid/widget/ViewSwitcher;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    check-cast v0, Lcom/android/calendar/homepage/f0;

    .line 116
    .line 117
    iget v3, p0, Lcom/android/calendar/homepage/AllDayEventsView;->z:I

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/homepage/l0;->c2(III)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
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

.method public final getPageDay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->I:I

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

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/calendar/homepage/AllDayEventsView;->r:J

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
