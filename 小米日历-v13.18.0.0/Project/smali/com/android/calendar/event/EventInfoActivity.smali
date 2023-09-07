.class public Lcom/android/calendar/event/EventInfoActivity;
.super Lcom/android/calendar/common/b;
.source "EventInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EventInfoActivity$a;,
        Lcom/android/calendar/event/EventInfoActivity$b;,
        Lcom/android/calendar/event/EventInfoActivity$EventInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0016\u0018\u0000 \u00a1\u00012\u00020\u0001:\u0005\u00a2\u0001\u00a3\u00010B\t\u00a2\u0006\u0006\u0008\u009f\u0001\u0010\u00a0\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0012\u0010\u0017\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014J\u0012\u0010\u0018\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0012\u0010\u001f\u001a\u00020\u00022\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0014J\u000e\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 J\u0010\u0010#\u001a\u00020\u00022\u0008\u0010!\u001a\u0004\u0018\u00010 J\u0006\u0010$\u001a\u00020\u0002J\u0008\u0010%\u001a\u00020\u0002H\u0014J\u0008\u0010&\u001a\u00020\u0002H\u0014J\u0008\u0010\'\u001a\u00020\u0002H\u0016J\u0008\u0010(\u001a\u00020\u0002H\u0014J\u001a\u0010+\u001a\u00020\u00022\u0008\u0010)\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010*\u001a\u00020\u0019J\"\u0010/\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0008\u0010.\u001a\u0004\u0018\u00010\u001dH\u0014R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00104\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00101R\u0016\u00106\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00101R\u0016\u00108\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00101R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0016\u0010O\u001a\u00020L8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0016\u0010Q\u001a\u00020L8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008P\u0010NR\u0016\u0010S\u001a\u00020L8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008R\u0010NR\u0016\u0010U\u001a\u00020L8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008T\u0010NR\u0016\u0010W\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008V\u0010FR(\u0010\\\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u00020 \u0018\u00010Y\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\"\u0010b\u001a\u00020\u001b8\u0016@\u0016X\u0096.\u00a2\u0006\u0012\n\u0004\u0008]\u0010F\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR \u0010f\u001a\u0008\u0012\u0004\u0012\u00020\r0X8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008c\u0010[\u001a\u0004\u0008d\u0010eR\u0016\u0010h\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010?R\u0016\u0010j\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010?R\"\u0010q\u001a\u00020\u00198\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR$\u0010x\u001a\u0004\u0018\u00010\r8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\"\u0010~\u001a\u00020\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u00101\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R\u0019\u0010\u0082\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0019\u0010\u0084\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0081\u0001R\u0018\u0010\u0085\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008;\u0010\u0081\u0001R\u0018\u0010\u0087\u0001\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010?R\u0018\u0010\u0089\u0001\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010?R#\u0010\u008c\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001b0\u008a\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00081\u0010\u008b\u0001R\u001c\u0010\u008e\u0001\u001a\t\u0012\u0005\u0012\u00030\u008d\u00010X8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010[R\u001c\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u001c\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0091\u0001R\u001c\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0091\u0001R\u001a\u0010\u009a\u0001\u001a\u00030\u0097\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u0018\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009b\u0001\u00101R\u0018\u0010\u009e\u0001\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009d\u0001\u0010?\u00a8\u0006\u00a4\u0001"
    }
    d2 = {
        "Lcom/android/calendar/event/EventInfoActivity;",
        "Lcom/android/calendar/common/b;",
        "Lkotlin/u;",
        "D0",
        "a1",
        "S0",
        "",
        "eventPosition",
        "I0",
        "Z0",
        "position",
        "Y0",
        "W0",
        "Lcom/android/calendar/event/EventInfoActivity$EventInfo;",
        "info",
        "X0",
        "j1",
        "F0",
        "K0",
        "n1",
        "V0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "h1",
        "",
        "id",
        "Landroid/view/View;",
        "U0",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "Lcom/android/calendar/common/event/schema/Event;",
        "event",
        "k1",
        "G0",
        "H0",
        "onResume",
        "onPause",
        "onBackPressed",
        "onDestroy",
        "originalEventInfo",
        "newEventId",
        "o1",
        "requestCode",
        "resultCode",
        "data",
        "onActivityResult",
        "b",
        "I",
        "cardMarginStart",
        "c",
        "cardMarginTop",
        "d",
        "cardMarginEnd",
        "e",
        "cardMarginBottom",
        "",
        "f",
        "F",
        "cardCornerRadius",
        "",
        "g",
        "Z",
        "needImageAnimation",
        "Landroid/view/ViewGroup;",
        "h",
        "Landroid/view/ViewGroup;",
        "rootView",
        "i",
        "Landroid/view/View;",
        "backgroundView",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "j",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager",
        "Landroid/widget/ImageView;",
        "k",
        "Landroid/widget/ImageView;",
        "btnEdit",
        "l",
        "btnClose",
        "m",
        "btnDelete",
        "n",
        "agendaListCardImageView",
        "o",
        "tempView",
        "",
        "Lcom/android/calendar/event/v2/BaseEventInfoFragment;",
        "p",
        "Ljava/util/List;",
        "fragmentCache",
        "q",
        "R0",
        "()Landroid/view/View;",
        "setDefaultInflateView",
        "(Landroid/view/View;)V",
        "defaultInflateView",
        "r",
        "T0",
        "()Ljava/util/List;",
        "eventInfoList",
        "v",
        "dismissOnResume",
        "w",
        "isPaused",
        "x",
        "J",
        "O0",
        "()J",
        "l1",
        "(J)V",
        "currentEventId",
        "y",
        "Lcom/android/calendar/event/EventInfoActivity$EventInfo;",
        "P0",
        "()Lcom/android/calendar/event/EventInfoActivity$EventInfo;",
        "setCurrentEventInfo",
        "(Lcom/android/calendar/event/EventInfoActivity$EventInfo;)V",
        "currentEventInfo",
        "z",
        "Q0",
        "()I",
        "m1",
        "(I)V",
        "currentEventPosition",
        "Landroid/graphics/Rect;",
        "D",
        "Landroid/graphics/Rect;",
        "initialRect",
        "E",
        "agendaCardListRect",
        "destRect",
        "G",
        "isDoingCloseAnimation",
        "H",
        "isAnimationRunning",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "mInflatedViewMap",
        "Lkotlinx/coroutines/s1;",
        "mJobList",
        "Lmiuix/animation/f;",
        "K",
        "Lmiuix/animation/f;",
        "mFolmeState",
        "L",
        "mFolmeState2",
        "M",
        "mFolmeState3",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "N",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "inflateTag",
        "O",
        "mLaunchType",
        "P",
        "mStartAnimFinished",
        "<init>",
        "()V",
        "R",
        "a",
        "EventInfo",
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
.field public static final R:Lcom/android/calendar/event/EventInfoActivity$a;


# instance fields
.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private G:Z

.field private H:Z

.field private final I:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/s1;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lmiuix/animation/f;

.field private L:Lmiuix/animation/f;

.field private M:Lmiuix/animation/f;

.field private N:Ljava/util/concurrent/atomic/AtomicInteger;

.field private O:I

.field private P:Z

.field public Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/View;

.field private j:Landroidx/viewpager2/widget/ViewPager2;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/View;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/event/v2/BaseEventInfoFragment<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field public q:Landroid/view/View;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/event/EventInfoActivity$EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:J

.field private y:Lcom/android/calendar/event/EventInfoActivity$EventInfo;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/event/EventInfoActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EventInfoActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/EventInfoActivity;->R:Lcom/android/calendar/event/EventInfoActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->Q:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoActivity;->w:Z

    .line 20
    .line 21
    const-wide/16 v1, -0x1

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/android/calendar/event/EventInfoActivity;->x:J

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->I:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->J:Ljava/util/List;

    .line 48
    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    iput v0, p0, Lcom/android/calendar/event/EventInfoActivity;->O:I

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoActivity;->P:Z

    .line 60
    .line 61
    return-void
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

.method public static final synthetic A0(Lcom/android/calendar/event/EventInfoActivity;Lmiuix/animation/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->K:Lmiuix/animation/f;

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

.method public static final synthetic B0(Lcom/android/calendar/event/EventInfoActivity;Lmiuix/animation/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->L:Lmiuix/animation/f;

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

.method public static final synthetic C0(Lcom/android/calendar/event/EventInfoActivity;Lmiuix/animation/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->M:Lmiuix/animation/f;

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

.method private final D0()V
    .locals 4

    .line 1
    const v0, 0x7f0a0507

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->h:Landroid/view/ViewGroup;

    .line 11
    .line 12
    const v0, 0x7f0a00da

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->i:Landroid/view/View;

    .line 20
    .line 21
    const v0, 0x7f0a00a6

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "findViewById(R.id.anim_card_bg)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->o:Landroid/view/View;

    .line 34
    .line 35
    const v0, 0x7f0a0321

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "findViewById(R.id.img_close)"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->l:Landroid/widget/ImageView;

    .line 50
    .line 51
    const v0, 0x7f0a0325

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "findViewById(R.id.img_edit)"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 66
    .line 67
    const v0, 0x7f0a0324

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "findViewById(R.id.img_delete)"

    .line 75
    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 82
    .line 83
    const v0, 0x7f0a0082

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "findViewById(R.id.agenda_list_card_image_view)"

    .line 91
    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->n:Landroid/widget/ImageView;

    .line 98
    .line 99
    const v0, 0x7f0a06c3

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->h:Landroid/view/ViewGroup;

    .line 111
    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    new-instance v1, Lcom/android/calendar/event/p;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/android/calendar/event/p;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 117
    .line 118
    .line 119
    const-wide/16 v2, 0x3e8

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    .line 123
    .line 124
    :cond_0
    return-void
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

.method private static final E0(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->h:Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const v1, 0x7f0a0487

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
    .line 21
    .line 22
.end method

.method private final F0(I)V
    .locals 6

    .line 1
    if-ltz p1, :cond_a

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 20
    .line 21
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventType()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x3

    .line 41
    const-string v1, "btnDelete"

    .line 42
    .line 43
    const-string v2, "btnEdit"

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eq p1, v0, :cond_7

    .line 49
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move-object p1, v4

    .line 61
    :cond_1
    const v0, 0x7f08023f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    new-array p1, v3, [Landroid/view/View;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object v0, v4

    .line 77
    :cond_2
    aput-object v0, p1, v5

    .line 78
    .line 79
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-array v0, v5, [Ld9/a;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->E([Ld9/a;)V

    .line 90
    .line 91
    .line 92
    new-array p1, v3, [Landroid/view/View;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    move-object v4, v0

    .line 103
    :goto_0
    aput-object v4, p1, v5

    .line 104
    .line 105
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-array v0, v5, [Ld9/a;

    .line 114
    .line 115
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->E([Ld9/a;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :pswitch_0
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 121
    .line 122
    if-nez p1, :cond_4

    .line 123
    .line 124
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object p1, v4

    .line 128
    :cond_4
    const v0, 0x7f080242

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    .line 133
    .line 134
    new-array p1, v3, [Landroid/view/View;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 137
    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    move-object v0, v4

    .line 144
    :cond_5
    aput-object v0, p1, v5

    .line 145
    .line 146
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-array v0, v5, [Ld9/a;

    .line 155
    .line 156
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->E([Ld9/a;)V

    .line 157
    .line 158
    .line 159
    new-array p1, v3, [Landroid/view/View;

    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 162
    .line 163
    if-nez v0, :cond_6

    .line 164
    .line 165
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    move-object v4, v0

    .line 170
    :goto_1
    aput-object v4, p1, v5

    .line 171
    .line 172
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-interface {p1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-array v0, v5, [Ld9/a;

    .line 181
    .line 182
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->E([Ld9/a;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    :pswitch_1
    new-array p1, v3, [Landroid/view/View;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 189
    .line 190
    if-nez v0, :cond_8

    .line 191
    .line 192
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    move-object v0, v4

    .line 196
    :cond_8
    aput-object v0, p1, v5

    .line 197
    .line 198
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-interface {p1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    new-array v0, v5, [Ld9/a;

    .line 207
    .line 208
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->F([Ld9/a;)V

    .line 209
    .line 210
    .line 211
    new-array p1, v3, [Landroid/view/View;

    .line 212
    .line 213
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 214
    .line 215
    if-nez v0, :cond_9

    .line 216
    .line 217
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_9
    move-object v4, v0

    .line 222
    :goto_2
    aput-object v4, p1, v5

    .line 223
    .line 224
    invoke-static {p1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-interface {p1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    new-array v0, v5, [Ld9/a;

    .line 233
    .line 234
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->E([Ld9/a;)V

    .line 235
    .line 236
    .line 237
    :cond_a
    :goto_3
    return-void

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
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

.method private final I0(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Landroidx/core/view/ViewGroupKt;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    new-instance v2, Lcom/android/calendar/common/i;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/android/calendar/common/i;-><init>()V

    .line 20
    .line 21
    .line 22
    const-wide/16 v3, 0x12c

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$l;->w(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ge p1, v1, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x1

    .line 79
    if-ge v1, v2, :cond_2

    .line 80
    .line 81
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1, v1}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    sub-int/2addr p1, v3

    .line 106
    if-ltz p1, :cond_3

    .line 107
    .line 108
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v1, p1}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/android/calendar/event/EventInfoActivity;->H:Z

    .line 132
    .line 133
    new-instance p1, Lcom/android/calendar/event/b0;

    .line 134
    .line 135
    invoke-direct {p1, p0, v0}, Lcom/android/calendar/event/b0;-><init>(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 136
    .line 137
    .line 138
    const-wide/16 v1, 0x190

    .line 139
    .line 140
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    .line 142
    .line 143
    :cond_4
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

.method private static final J0(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$vp"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoActivity;->H:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->h()V

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
.end method

.method private final K0()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Cal:D:EventInfoActivity"

    .line 4
    .line 5
    const-string v2, "doStartAnimation"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Lcom/android/calendar/event/EventInfoActivity;->P:Z

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "extra_initial_image"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    array-length v5, v3

    .line 26
    invoke-static {v3, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-eqz v3, :cond_9

    .line 33
    .line 34
    iget-object v5, v0, Lcom/android/calendar/event/EventInfoActivity;->n:Landroid/widget/ImageView;

    .line 35
    .line 36
    const-string v6, "agendaListCardImageView"

    .line 37
    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    :cond_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    iget-object v5, v0, Lcom/android/calendar/event/EventInfoActivity;->n:Landroid/widget/ImageView;

    .line 48
    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    :cond_2
    new-instance v7, Lcom/android/calendar/event/EventInfoActivity$h;

    .line 56
    .line 57
    invoke-direct {v7, v0}, Lcom/android/calendar/event/EventInfoActivity$h;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v7}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 61
    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v7, "agendaCardListRect: "

    .line 69
    .line 70
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v8, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 74
    .line 75
    const-string v9, "agendaCardListRect"

    .line 76
    .line 77
    if-nez v8, :cond_3

    .line 78
    .line 79
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    :cond_3
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v8, ", agendaListCardImageView: "

    .line 91
    .line 92
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v1, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v7, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 118
    .line 119
    if-nez v7, :cond_4

    .line 120
    .line 121
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v1, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    new-array v5, v1, [Landroid/view/View;

    .line 151
    .line 152
    iget-object v7, v0, Lcom/android/calendar/event/EventInfoActivity;->n:Landroid/widget/ImageView;

    .line 153
    .line 154
    if-nez v7, :cond_5

    .line 155
    .line 156
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    :cond_5
    aput-object v7, v5, v2

    .line 161
    .line 162
    invoke-static {v5}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-interface {v5}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const-string v6, "start"

    .line 171
    .line 172
    invoke-interface {v5, v6}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    sget-object v7, Lmiuix/animation/property/h;->m:Lmiuix/animation/property/h;

    .line 177
    .line 178
    iget-object v8, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 179
    .line 180
    if-nez v8, :cond_6

    .line 181
    .line 182
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/4 v8, 0x0

    .line 186
    :cond_6
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    invoke-interface {v5, v7, v8}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    sget-object v8, Lmiuix/animation/property/h;->l:Lmiuix/animation/property/h;

    .line 195
    .line 196
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    invoke-interface {v5, v8, v10}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    sget-object v10, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 205
    .line 206
    iget-object v11, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 207
    .line 208
    if-nez v11, :cond_7

    .line 209
    .line 210
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const/4 v11, 0x0

    .line 214
    :cond_7
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 215
    .line 216
    invoke-interface {v5, v10, v11}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    sget-object v11, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 221
    .line 222
    iget-object v12, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 223
    .line 224
    if-nez v12, :cond_8

    .line 225
    .line 226
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const/4 v12, 0x0

    .line 230
    :cond_8
    iget v9, v12, Landroid/graphics/Rect;->top:I

    .line 231
    .line 232
    invoke-interface {v5, v11, v9}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    const-string v9, "end"

    .line 237
    .line 238
    invoke-interface {v5, v9}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-static/range {p0 .. p0}, Lcom/miui/calendar/util/DeviceUtils;->w(Landroid/content/Context;)I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    iget v13, v0, Lcom/android/calendar/event/EventInfoActivity;->b:I

    .line 247
    .line 248
    sub-int/2addr v12, v13

    .line 249
    iget v13, v0, Lcom/android/calendar/event/EventInfoActivity;->d:I

    .line 250
    .line 251
    sub-int/2addr v12, v13

    .line 252
    invoke-interface {v5, v7, v12}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-static/range {p0 .. p0}, Lcom/miui/calendar/util/DeviceUtils;->u(Landroid/content/Context;)I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    iget v12, v0, Lcom/android/calendar/event/EventInfoActivity;->c:I

    .line 261
    .line 262
    sub-int/2addr v7, v12

    .line 263
    iget v12, v0, Lcom/android/calendar/event/EventInfoActivity;->e:I

    .line 264
    .line 265
    sub-int/2addr v7, v12

    .line 266
    invoke-interface {v5, v8, v7}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    iget v7, v0, Lcom/android/calendar/event/EventInfoActivity;->b:I

    .line 271
    .line 272
    invoke-interface {v5, v10, v7}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    iget v7, v0, Lcom/android/calendar/event/EventInfoActivity;->c:I

    .line 277
    .line 278
    invoke-interface {v5, v11, v7}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-interface {v5, v6}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    const/4 v6, 0x3

    .line 287
    new-array v6, v6, [Ld9/a;

    .line 288
    .line 289
    new-instance v7, Ld9/a;

    .line 290
    .line 291
    invoke-direct {v7}, Ld9/a;-><init>()V

    .line 292
    .line 293
    .line 294
    new-array v10, v2, [F

    .line 295
    .line 296
    const-wide/16 v12, 0x0

    .line 297
    .line 298
    invoke-virtual {v7, v11, v12, v13, v10}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    const-wide/16 v10, 0x64

    .line 303
    .line 304
    invoke-virtual {v7, v10, v11}, Ld9/a;->j(J)Ld9/a;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    const/4 v14, 0x2

    .line 309
    new-array v15, v14, [F

    .line 310
    .line 311
    fill-array-data v15, :array_0

    .line 312
    .line 313
    .line 314
    const/4 v4, -0x2

    .line 315
    invoke-virtual {v7, v4, v15}, Ld9/a;->k(I[F)Ld9/a;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    aput-object v7, v6, v2

    .line 320
    .line 321
    new-instance v7, Ld9/a;

    .line 322
    .line 323
    invoke-direct {v7}, Ld9/a;-><init>()V

    .line 324
    .line 325
    .line 326
    new-array v15, v2, [F

    .line 327
    .line 328
    invoke-virtual {v7, v8, v12, v13, v15}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    const-wide/16 v12, 0x96

    .line 333
    .line 334
    invoke-virtual {v7, v12, v13}, Ld9/a;->j(J)Ld9/a;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    new-array v8, v14, [F

    .line 339
    .line 340
    fill-array-data v8, :array_1

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7, v4, v8}, Ld9/a;->k(I[F)Ld9/a;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    aput-object v4, v6, v1

    .line 348
    .line 349
    new-instance v1, Ld9/a;

    .line 350
    .line 351
    invoke-direct {v1}, Ld9/a;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v10, v11}, Ld9/a;->j(J)Ld9/a;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    aput-object v1, v6, v14

    .line 359
    .line 360
    invoke-interface {v5, v9, v6}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 361
    .line 362
    .line 363
    :cond_9
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 364
    .line 365
    if-eqz v1, :cond_a

    .line 366
    .line 367
    new-instance v4, Lcom/android/calendar/event/q;

    .line 368
    .line 369
    invoke-direct {v4, v0, v1, v3}, Lcom/android/calendar/event/q;-><init>(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;Landroid/graphics/Bitmap;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 373
    .line 374
    .line 375
    :cond_a
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-nez v1, :cond_c

    .line 380
    .line 381
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->l:Landroid/widget/ImageView;

    .line 382
    .line 383
    if-nez v1, :cond_b

    .line 384
    .line 385
    const-string v1, "btnClose"

    .line 386
    .line 387
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    const/4 v4, 0x0

    .line 391
    goto :goto_1

    .line 392
    :cond_b
    move-object v4, v1

    .line 393
    :goto_1
    new-instance v1, Lcom/android/calendar/event/r;

    .line 394
    .line 395
    invoke-direct {v1, v0}, Lcom/android/calendar/event/r;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 399
    .line 400
    .line 401
    :cond_c
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 402
    .line 403
    if-eqz v1, :cond_d

    .line 404
    .line 405
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    goto :goto_2

    .line 410
    :cond_d
    const/4 v1, -0x1

    .line 411
    :goto_2
    invoke-direct {v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->F0(I)V

    .line 412
    .line 413
    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EventInfoActivity;->n1()V

    .line 415
    .line 416
    .line 417
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 418
    .line 419
    if-nez v1, :cond_e

    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_e
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 423
    .line 424
    .line 425
    :goto_3
    return-void

    .line 426
    nop

    .line 427
    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3e99999a    # 0.3f
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
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

.method private static final L0(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;Landroid/graphics/Bitmap;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "this$0"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "$vp"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget v4, v0, Lcom/android/calendar/event/EventInfoActivity;->d:I

    .line 22
    .line 23
    sub-int/2addr v3, v4

    .line 24
    iget v4, v0, Lcom/android/calendar/event/EventInfoActivity;->b:I

    .line 25
    .line 26
    sub-int/2addr v3, v4

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget v5, v0, Lcom/android/calendar/event/EventInfoActivity;->e:I

    .line 32
    .line 33
    sub-int/2addr v4, v5

    .line 34
    iget v5, v0, Lcom/android/calendar/event/EventInfoActivity;->c:I

    .line 35
    .line 36
    sub-int/2addr v4, v5

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 44
    .line 45
    const-string v3, "initialRect"

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget-object v6, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x3

    .line 64
    const/4 v8, 0x1

    .line 65
    if-gt v2, v6, :cond_2

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    xor-int/2addr v2, v8

    .line 75
    iput-boolean v2, v0, Lcom/android/calendar/event/EventInfoActivity;->g:Z

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 84
    .line 85
    iget-object v6, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    mul-int/2addr v6, v7

    .line 92
    div-int/lit8 v6, v6, 0x8

    .line 93
    .line 94
    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 97
    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    :cond_3
    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 107
    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    :cond_4
    iget-object v6, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 115
    .line 116
    if-nez v6, :cond_5

    .line 117
    .line 118
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    :cond_5
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 123
    .line 124
    iget-object v9, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    div-int/lit8 v9, v9, 0x4

    .line 131
    .line 132
    add-int/2addr v6, v9

    .line 133
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 136
    .line 137
    if-nez v2, :cond_6

    .line 138
    .line 139
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 v2, 0x0

    .line 143
    :cond_6
    iget-object v6, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 144
    .line 145
    if-nez v6, :cond_7

    .line 146
    .line 147
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    :cond_7
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 152
    .line 153
    iget-object v9, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 154
    .line 155
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    add-int/2addr v6, v9

    .line 160
    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 161
    .line 162
    iput-boolean v5, v0, Lcom/android/calendar/event/EventInfoActivity;->g:Z

    .line 163
    .line 164
    :goto_1
    invoke-static {v1, v5}, Landroidx/core/view/ViewGroupKt;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const-string v6, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    .line 169
    .line 170
    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget v6, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 180
    .line 181
    add-int/lit8 v9, v6, -0x1

    .line 182
    .line 183
    if-ltz v9, :cond_8

    .line 184
    .line 185
    if-eqz v2, :cond_8

    .line 186
    .line 187
    sub-int/2addr v6, v8

    .line 188
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$o;->findViewByPosition(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    goto :goto_2

    .line 193
    :cond_8
    const/4 v6, 0x0

    .line 194
    :goto_2
    iget v9, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 195
    .line 196
    add-int/2addr v9, v8

    .line 197
    iget-object v10, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-ge v9, v10, :cond_9

    .line 204
    .line 205
    if-eqz v2, :cond_9

    .line 206
    .line 207
    iget v9, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 208
    .line 209
    add-int/2addr v9, v8

    .line 210
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView$o;->findViewByPosition(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    goto :goto_3

    .line 215
    :cond_9
    const/4 v9, 0x0

    .line 216
    :goto_3
    if-eqz v2, :cond_a

    .line 217
    .line 218
    iget v10, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 219
    .line 220
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView$o;->findViewByPosition(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    goto :goto_4

    .line 225
    :cond_a
    const/4 v2, 0x0

    .line 226
    :goto_4
    if-nez v2, :cond_c

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v2, "currentPage is null and currentEventPosition="

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget v2, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string v2, "Cal:D:EventInfoActivity"

    .line 248
    .line 249
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 253
    .line 254
    if-nez v1, :cond_b

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_b
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    :goto_5
    iput-boolean v8, v0, Lcom/android/calendar/event/EventInfoActivity;->P:Z

    .line 261
    .line 262
    return-void

    .line 263
    :cond_c
    const v10, 0x7f0a0150

    .line 264
    .line 265
    .line 266
    if-eqz v6, :cond_d

    .line 267
    .line 268
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    if-eqz v11, :cond_d

    .line 273
    .line 274
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    :cond_d
    if-eqz v9, :cond_e

    .line 278
    .line 279
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    if-eqz v10, :cond_e

    .line 284
    .line 285
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    :cond_e
    const v10, 0x7f0a014f

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    const-wide/16 v10, 0x64

    .line 296
    .line 297
    const-string v12, "end"

    .line 298
    .line 299
    const-string v13, "start"

    .line 300
    .line 301
    if-eqz v6, :cond_f

    .line 302
    .line 303
    new-array v14, v8, [Landroid/view/View;

    .line 304
    .line 305
    aput-object v6, v14, v5

    .line 306
    .line 307
    invoke-static {v14}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    invoke-interface {v14}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    invoke-interface {v14, v13}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    sget-object v15, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 320
    .line 321
    invoke-interface {v14, v15, v5}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    invoke-interface {v14, v12}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    invoke-interface {v14, v15, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-interface {v6, v13}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    new-array v14, v8, [Ld9/a;

    .line 342
    .line 343
    new-instance v15, Ld9/a;

    .line 344
    .line 345
    invoke-direct {v15}, Ld9/a;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v15, v10, v11}, Ld9/a;->j(J)Ld9/a;

    .line 349
    .line 350
    .line 351
    move-result-object v15

    .line 352
    new-array v4, v8, [Lg9/b;

    .line 353
    .line 354
    new-instance v7, Lcom/android/calendar/event/EventInfoActivity$i;

    .line 355
    .line 356
    invoke-direct {v7, v1, v0}, Lcom/android/calendar/event/EventInfoActivity$i;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/android/calendar/event/EventInfoActivity;)V

    .line 357
    .line 358
    .line 359
    aput-object v7, v4, v5

    .line 360
    .line 361
    invoke-virtual {v15, v4}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    aput-object v4, v14, v5

    .line 366
    .line 367
    invoke-interface {v6, v12, v14}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    iput-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->K:Lmiuix/animation/f;

    .line 372
    .line 373
    :cond_f
    if-eqz v9, :cond_10

    .line 374
    .line 375
    new-array v4, v8, [Landroid/view/View;

    .line 376
    .line 377
    aput-object v9, v4, v5

    .line 378
    .line 379
    invoke-static {v4}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-interface {v4}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-interface {v4, v13}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    sget-object v6, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 392
    .line 393
    invoke-interface {v4, v6, v5}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-interface {v4, v12}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    invoke-interface {v4, v6, v7}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-interface {v4, v13}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    new-array v6, v8, [Ld9/a;

    .line 414
    .line 415
    new-instance v7, Ld9/a;

    .line 416
    .line 417
    invoke-direct {v7}, Ld9/a;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v10, v11}, Ld9/a;->j(J)Ld9/a;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    new-array v9, v8, [Lg9/b;

    .line 425
    .line 426
    new-instance v14, Lcom/android/calendar/event/EventInfoActivity$j;

    .line 427
    .line 428
    invoke-direct {v14, v1, v0}, Lcom/android/calendar/event/EventInfoActivity$j;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/android/calendar/event/EventInfoActivity;)V

    .line 429
    .line 430
    .line 431
    aput-object v14, v9, v5

    .line 432
    .line 433
    invoke-virtual {v7, v9}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    aput-object v7, v6, v5

    .line 438
    .line 439
    invoke-interface {v4, v12, v6}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    iput-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->L:Lmiuix/animation/f;

    .line 444
    .line 445
    :cond_10
    iget-boolean v4, v0, Lcom/android/calendar/event/EventInfoActivity;->g:Z

    .line 446
    .line 447
    if-eqz v4, :cond_17

    .line 448
    .line 449
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    new-instance v1, Landroid/graphics/Rect;

    .line 453
    .line 454
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 455
    .line 456
    if-nez v4, :cond_11

    .line 457
    .line 458
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const/4 v4, 0x0

    .line 462
    :cond_11
    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v8}, Landroid/view/View;->setClipToOutline(Z)V

    .line 466
    .line 467
    .line 468
    new-instance v4, Lcom/android/calendar/event/EventInfoActivity$k;

    .line 469
    .line 470
    invoke-direct {v4, v1, v0}, Lcom/android/calendar/event/EventInfoActivity$k;-><init>(Landroid/graphics/Rect;Lcom/android/calendar/event/EventInfoActivity;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 474
    .line 475
    .line 476
    new-array v4, v8, [Landroid/view/View;

    .line 477
    .line 478
    iget-object v6, v0, Lcom/android/calendar/event/EventInfoActivity;->o:Landroid/view/View;

    .line 479
    .line 480
    if-nez v6, :cond_12

    .line 481
    .line 482
    const-string v6, "tempView"

    .line 483
    .line 484
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const/4 v6, 0x0

    .line 488
    :cond_12
    aput-object v6, v4, v5

    .line 489
    .line 490
    invoke-static {v4}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-interface {v4}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-interface {v4, v13}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    sget-object v6, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 503
    .line 504
    iget-object v7, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 505
    .line 506
    if-nez v7, :cond_13

    .line 507
    .line 508
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    const/4 v7, 0x0

    .line 512
    :cond_13
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 513
    .line 514
    invoke-interface {v4, v6, v7}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    sget-object v7, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 519
    .line 520
    iget-object v9, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 521
    .line 522
    if-nez v9, :cond_14

    .line 523
    .line 524
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const/4 v9, 0x0

    .line 528
    :cond_14
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 529
    .line 530
    invoke-interface {v4, v7, v9}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    sget-object v9, Lmiuix/animation/property/h;->m:Lmiuix/animation/property/h;

    .line 535
    .line 536
    iget-object v14, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 537
    .line 538
    if-nez v14, :cond_15

    .line 539
    .line 540
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    const/4 v14, 0x0

    .line 544
    :cond_15
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 545
    .line 546
    .line 547
    move-result v14

    .line 548
    invoke-interface {v4, v9, v14}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    sget-object v14, Lmiuix/animation/property/h;->l:Lmiuix/animation/property/h;

    .line 553
    .line 554
    iget-object v15, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 555
    .line 556
    if-nez v15, :cond_16

    .line 557
    .line 558
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    const/4 v15, 0x0

    .line 562
    :cond_16
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    invoke-interface {v4, v14, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    invoke-interface {v3, v12}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 575
    .line 576
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 577
    .line 578
    invoke-interface {v3, v6, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 583
    .line 584
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 585
    .line 586
    invoke-interface {v3, v7, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 591
    .line 592
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    invoke-interface {v3, v9, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 601
    .line 602
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    invoke-interface {v3, v14, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-interface {v3, v13}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    const/4 v4, 0x3

    .line 615
    new-array v4, v4, [Ld9/a;

    .line 616
    .line 617
    new-instance v13, Ld9/a;

    .line 618
    .line 619
    invoke-direct {v13}, Ld9/a;-><init>()V

    .line 620
    .line 621
    .line 622
    new-array v15, v5, [F

    .line 623
    .line 624
    move-object/from16 p1, v9

    .line 625
    .line 626
    const-wide/16 v8, 0x0

    .line 627
    .line 628
    invoke-virtual {v13, v6, v8, v9, v15}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    new-array v13, v5, [F

    .line 633
    .line 634
    invoke-virtual {v6, v7, v8, v9, v13}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 635
    .line 636
    .line 637
    move-result-object v6

    .line 638
    invoke-virtual {v6, v10, v11}, Ld9/a;->j(J)Ld9/a;

    .line 639
    .line 640
    .line 641
    move-result-object v6

    .line 642
    const/4 v7, 0x2

    .line 643
    new-array v10, v7, [F

    .line 644
    .line 645
    fill-array-data v10, :array_0

    .line 646
    .line 647
    .line 648
    const/4 v11, -0x2

    .line 649
    invoke-virtual {v6, v11, v10}, Ld9/a;->k(I[F)Ld9/a;

    .line 650
    .line 651
    .line 652
    move-result-object v6

    .line 653
    aput-object v6, v4, v5

    .line 654
    .line 655
    new-instance v6, Ld9/a;

    .line 656
    .line 657
    invoke-direct {v6}, Ld9/a;-><init>()V

    .line 658
    .line 659
    .line 660
    new-array v10, v5, [F

    .line 661
    .line 662
    move-object/from16 v13, p1

    .line 663
    .line 664
    invoke-virtual {v6, v13, v8, v9, v10}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 665
    .line 666
    .line 667
    move-result-object v6

    .line 668
    new-array v10, v5, [F

    .line 669
    .line 670
    invoke-virtual {v6, v14, v8, v9, v10}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 671
    .line 672
    .line 673
    move-result-object v6

    .line 674
    const-wide/16 v8, 0x96

    .line 675
    .line 676
    invoke-virtual {v6, v8, v9}, Ld9/a;->j(J)Ld9/a;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    new-array v8, v7, [F

    .line 681
    .line 682
    fill-array-data v8, :array_1

    .line 683
    .line 684
    .line 685
    invoke-virtual {v6, v11, v8}, Ld9/a;->k(I[F)Ld9/a;

    .line 686
    .line 687
    .line 688
    move-result-object v6

    .line 689
    const/4 v8, 0x1

    .line 690
    aput-object v6, v4, v8

    .line 691
    .line 692
    new-instance v6, Ld9/a;

    .line 693
    .line 694
    invoke-direct {v6}, Ld9/a;-><init>()V

    .line 695
    .line 696
    .line 697
    new-array v9, v8, [Lg9/b;

    .line 698
    .line 699
    new-instance v10, Lcom/android/calendar/event/EventInfoActivity$l;

    .line 700
    .line 701
    invoke-direct {v10, v1, v2, v0}, Lcom/android/calendar/event/EventInfoActivity$l;-><init>(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V

    .line 702
    .line 703
    .line 704
    aput-object v10, v9, v5

    .line 705
    .line 706
    invoke-virtual {v6, v9}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    aput-object v1, v4, v7

    .line 711
    .line 712
    invoke-interface {v3, v12, v4}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    iput-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->M:Lmiuix/animation/f;

    .line 717
    .line 718
    iput-boolean v8, v0, Lcom/android/calendar/event/EventInfoActivity;->P:Z

    .line 719
    .line 720
    goto :goto_6

    .line 721
    :cond_17
    if-eqz v2, :cond_18

    .line 722
    .line 723
    new-instance v3, Lcom/android/calendar/event/s;

    .line 724
    .line 725
    invoke-direct {v3, v1, v2, v0}, Lcom/android/calendar/event/s;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V

    .line 726
    .line 727
    .line 728
    const-wide/16 v0, 0xc8

    .line 729
    .line 730
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 731
    .line 732
    .line 733
    :cond_18
    :goto_6
    return-void

    .line 734
    nop

    .line 735
    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3e99999a    # 0.3f
    .end array-data

    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
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

.method private static final M0(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 6

    .line 1
    const-string v0, "$vp"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    new-array p0, v1, [Landroid/view/View;

    .line 23
    .line 24
    aput-object p1, p0, v0

    .line 25
    .line 26
    invoke-static {p0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "start"

    .line 35
    .line 36
    invoke-interface {p0, p1}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v2, Lmiuix/animation/property/h;->d:Lmiuix/animation/property/h;

    .line 41
    .line 42
    const v3, 0x3f4ccccd    # 0.8f

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, v2, v3}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object v4, Lmiuix/animation/property/h;->e:Lmiuix/animation/property/h;

    .line 50
    .line 51
    invoke-interface {p0, v4, v3}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v3, "end"

    .line 56
    .line 57
    invoke-interface {p0, v3}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/high16 v5, 0x3f800000    # 1.0f

    .line 62
    .line 63
    invoke-interface {p0, v2, v5}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0, v4, v5}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0, p1}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-array p1, v1, [Ld9/a;

    .line 76
    .line 77
    new-instance v2, Ld9/a;

    .line 78
    .line 79
    invoke-direct {v2}, Ld9/a;-><init>()V

    .line 80
    .line 81
    .line 82
    aput-object v2, p1, v0

    .line 83
    .line 84
    invoke-interface {p0, v3, p1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 85
    .line 86
    .line 87
    :cond_0
    iput-boolean v1, p2, Lcom/android/calendar/event/EventInfoActivity;->P:Z

    .line 88
    .line 89
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
.end method

.method private static final N0(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Landroid/view/View;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/calendar/event/EventInfoActivity;->l:Landroid/widget/ImageView;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "btnClose"

    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    aput-object p0, v1, v2

    .line 21
    .line 22
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v1, "start"

    .line 31
    .line 32
    invoke-interface {p0, v1}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object v3, Lmiuix/animation/property/h;->d:Lmiuix/animation/property/h;

    .line 37
    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-interface {p0, v3, v4}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object v5, Lmiuix/animation/property/h;->e:Lmiuix/animation/property/h;

    .line 45
    .line 46
    invoke-interface {p0, v5, v4}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v4, "end"

    .line 51
    .line 52
    invoke-interface {p0, v4}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const v6, 0x3f4ccccd    # 0.8f

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, v3, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p0, v5, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0, v1}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-array v0, v0, [Ld9/a;

    .line 72
    .line 73
    new-instance v1, Ld9/a;

    .line 74
    .line 75
    invoke-direct {v1}, Ld9/a;-><init>()V

    .line 76
    .line 77
    .line 78
    aput-object v1, v0, v2

    .line 79
    .line 80
    invoke-interface {p0, v4, v0}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 81
    .line 82
    .line 83
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
.end method

.method private final S0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f070366

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/calendar/event/EventInfoActivity;->b:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f070367

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/calendar/event/EventInfoActivity;->c:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f070365

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/calendar/event/EventInfoActivity;->d:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const v1, 0x7f070364

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/android/calendar/event/EventInfoActivity;->e:I

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const v1, 0x7f070354

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/android/calendar/event/EventInfoActivity;->f:F

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "extra_initial_rect"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/graphics/Rect;

    .line 77
    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    new-instance v0, Landroid/graphics/Rect;

    .line 81
    .line 82
    const/high16 v1, 0x42100000    # 36.0f

    .line 83
    .line 84
    invoke-static {p0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    float-to-int v1, v1

    .line 89
    const v2, 0x44fc6000    # 2019.0f

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    float-to-int v2, v2

    .line 97
    const v3, 0x44828000    # 1044.0f

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    float-to-int v3, v3

    .line 105
    const v4, 0x450cb000    # 2251.0f

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v4}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    float-to-int v4, v4

    .line 113
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .line 115
    .line 116
    :cond_0
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 117
    .line 118
    new-instance v0, Landroid/graphics/Rect;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-nez v1, :cond_1

    .line 124
    .line 125
    const-string v1, "agendaCardListRect"

    .line 126
    .line 127
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    move-object v1, v2

    .line 131
    :cond_1
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 135
    .line 136
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 137
    .line 138
    iget v3, p0, Lcom/android/calendar/event/EventInfoActivity;->c:I

    .line 139
    .line 140
    sub-int/2addr v1, v3

    .line 141
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 144
    .line 145
    const-string v1, "initialRect"

    .line 146
    .line 147
    if-nez v0, :cond_2

    .line 148
    .line 149
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    move-object v0, v2

    .line 153
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 154
    .line 155
    iget v4, p0, Lcom/android/calendar/event/EventInfoActivity;->e:I

    .line 156
    .line 157
    sub-int/2addr v3, v4

    .line 158
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 159
    .line 160
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 161
    .line 162
    if-nez v0, :cond_3

    .line 163
    .line 164
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move-object v0, v2

    .line 168
    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 169
    .line 170
    iget v4, p0, Lcom/android/calendar/event/EventInfoActivity;->b:I

    .line 171
    .line 172
    sub-int/2addr v3, v4

    .line 173
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 176
    .line 177
    if-nez v0, :cond_4

    .line 178
    .line 179
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_4
    move-object v2, v0

    .line 184
    :goto_0
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 185
    .line 186
    iget v1, p0, Lcom/android/calendar/event/EventInfoActivity;->d:I

    .line 187
    .line 188
    sub-int/2addr v0, v1

    .line 189
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 190
    .line 191
    return-void
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

.method private final V0()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->i:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    new-array v1, v0, [Landroid/view/View;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity;->i:Landroid/view/View;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "closeStart"

    .line 35
    .line 36
    invoke-interface {v1, v2}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v4, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 41
    .line 42
    const/high16 v5, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-interface {v1, v4, v5}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v5, "closeEnd"

    .line 49
    .line 50
    invoke-interface {v1, v5}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-interface {v1, v4, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1, v2}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-array v2, v0, [Ld9/a;

    .line 64
    .line 65
    new-instance v4, Ld9/a;

    .line 66
    .line 67
    invoke-direct {v4}, Ld9/a;-><init>()V

    .line 68
    .line 69
    .line 70
    const-wide/16 v6, 0xc8

    .line 71
    .line 72
    invoke-virtual {v4, v6, v7}, Ld9/a;->n(J)Ld9/a;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    new-array v0, v0, [Lg9/b;

    .line 77
    .line 78
    new-instance v6, Lcom/android/calendar/event/EventInfoActivity$m;

    .line 79
    .line 80
    invoke-direct {v6}, Lcom/android/calendar/event/EventInfoActivity$m;-><init>()V

    .line 81
    .line 82
    .line 83
    aput-object v6, v0, v3

    .line 84
    .line 85
    invoke-virtual {v4, v0}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    aput-object v0, v2, v3

    .line 90
    .line 91
    invoke-interface {v1, v5, v2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 92
    .line 93
    .line 94
    return-void
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

.method private final W0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    new-instance v4, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {v4, p0, v0}, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;-><init>(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/coroutines/c;)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->J:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
.end method

.method private final X0(Lcom/android/calendar/event/EventInfoActivity$EventInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0d00ad

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v0, 0x7f0d00b2

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const v0, 0x7f0d00af

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const v0, 0x7f0d00b1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :pswitch_0
    const v0, 0x7f0d00b0

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->I:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/view/View;

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->R0()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->I:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->R0()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->I:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

.method public static synthetic Y(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/EventInfoActivity;->e1(Lcom/android/calendar/event/EventInfoActivity;)V

    return-void
.end method

.method private final Y0(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->X0(Lcom/android/calendar/event/EventInfoActivity$EventInfo;)V

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

.method public static synthetic Z(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/EventInfoActivity;->p1(Lcom/android/calendar/event/EventInfoActivity;)V

    return-void
.end method

.method private final declared-synchronized Z0()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    new-instance v4, Lcom/android/calendar/event/EventInfoActivity$inflateViewsAndCached$job$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v4, p0, v0}, Lcom/android/calendar/event/EventInfoActivity$inflateViewsAndCached$job$1;-><init>(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/coroutines/c;)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->J:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
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

.method public static synthetic a0(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->J0(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method private final a1()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "btnClose"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->l:Landroid/widget/ImageView;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v0, v2

    .line 18
    :cond_0
    invoke-static {v0}, Lcom/miui/calendar/util/v;->d(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->l:Landroid/widget/ImageView;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v2

    .line 29
    :cond_2
    new-instance v1, Lcom/android/calendar/event/u;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/android/calendar/event/u;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 38
    .line 39
    const-string v1, "btnEdit"

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v0, v2

    .line 47
    :cond_3
    invoke-static {v0}, Lcom/miui/calendar/util/v;->d(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v0, v2

    .line 58
    :cond_4
    new-instance v1, Lcom/android/calendar/event/v;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 67
    .line 68
    const-string v1, "btnDelete"

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move-object v0, v2

    .line 76
    :cond_5
    invoke-static {v0}, Lcom/miui/calendar/util/v;->d(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 80
    .line 81
    if-nez v0, :cond_6

    .line 82
    .line 83
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    move-object v2, v0

    .line 88
    :goto_0
    new-instance v0, Lcom/android/calendar/event/w;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/android/calendar/event/w;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/android/calendar/event/EventInfoActivity$b;

    .line 97
    .line 98
    invoke-direct {v0, p0, p0}, Lcom/android/calendar/event/EventInfoActivity$b;-><init>(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/event/EventInfoActivity;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 102
    .line 103
    if-nez v1, :cond_7

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 110
    .line 111
    if-nez v0, :cond_8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 116
    .line 117
    .line 118
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 119
    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    new-instance v1, Lcom/android/calendar/event/EventInfoActivity$n;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoActivity$n;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->g(Landroidx/viewpager2/widget/ViewPager2$i;)V

    .line 128
    .line 129
    .line 130
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 131
    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    iget v1, p0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->j(IZ)V

    .line 138
    .line 139
    .line 140
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 141
    .line 142
    if-eqz v0, :cond_b

    .line 143
    .line 144
    new-instance v1, Lcom/android/calendar/event/x;

    .line 145
    .line 146
    invoke-direct {v1, p0}, Lcom/android/calendar/event/x;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 150
    .line 151
    .line 152
    :cond_b
    invoke-static {p0}, Lcom/miui/calendar/util/x0;->N(Landroid/content/Context;)F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 157
    .line 158
    if-eqz v1, :cond_c

    .line 159
    .line 160
    new-instance v2, Lcom/android/calendar/event/y;

    .line 161
    .line 162
    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/y;-><init>(Lcom/android/calendar/event/EventInfoActivity;F)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$k;)V

    .line 166
    .line 167
    .line 168
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 169
    .line 170
    if-eqz v0, :cond_d

    .line 171
    .line 172
    new-instance v1, Lcom/android/calendar/event/z;

    .line 173
    .line 174
    invoke-direct {v1, p0}, Lcom/android/calendar/event/z;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    :cond_d
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->S0()V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 184
    .line 185
    if-nez v0, :cond_e

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_e
    const/4 v1, 0x4

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 193
    .line 194
    if-eqz v0, :cond_f

    .line 195
    .line 196
    new-instance v1, Lcom/android/calendar/event/a0;

    .line 197
    .line 198
    invoke-direct {v1, p0}, Lcom/android/calendar/event/a0;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 202
    .line 203
    .line 204
    :cond_f
    return-void
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

.method public static synthetic b0(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity;->L0(Lcom/android/calendar/event/EventInfoActivity;Landroidx/viewpager2/widget/ViewPager2;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final b1(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->H0()V

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

.method public static synthetic c0(Lcom/android/calendar/event/EventInfoActivity;FLandroid/view/View;F)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/event/EventInfoActivity;->f1(Lcom/android/calendar/event/EventInfoActivity;FLandroid/view/View;F)V

    return-void
.end method

.method private static final c1(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "2.0"

    .line 7
    .line 8
    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget v0, Lmiuix/view/f;->z:I

    .line 15
    .line 16
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget v0, Lmiuix/view/f;->f:I

    .line 21
    .line 22
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 26
    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v1, :cond_7

    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    const-string v1, "btnEdit"

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v1, v2

    .line 58
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    instance-of v1, p1, Ljava/lang/Boolean;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    move-object v2, p1

    .line 71
    check-cast v2, Ljava/lang/Boolean;

    .line 72
    .line 73
    :cond_3
    const/4 p1, 0x0

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move v1, p1

    .line 82
    :goto_1
    if-eqz v1, :cond_5

    .line 83
    .line 84
    const v0, 0x7f12003c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p0, v0, p1}, Lcom/miui/calendar/util/x0;->I0(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 105
    .line 106
    if-nez p1, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p1, "null cannot be cast to non-null type com.android.calendar.event.v2.BaseEventInfoFragment<out com.android.calendar.common.event.schema.Event>"

    .line 121
    .line 122
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object p1, p0

    .line 126
    check-cast p1, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 127
    .line 128
    :cond_6
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->x()V

    .line 129
    .line 130
    .line 131
    nop

    .line 132
    :cond_7
    :goto_2
    return-void
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

.method public static synthetic d0(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->b1(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final d1(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "2.0"

    .line 7
    .line 8
    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget v0, Lmiuix/view/f;->z:I

    .line 15
    .line 16
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget v0, Lmiuix/view/f;->f:I

    .line 21
    .line 22
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 26
    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->u0()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "null cannot be cast to non-null type com.android.calendar.event.v2.BaseEventInfoFragment<out com.android.calendar.common.event.schema.Event>"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v0, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 78
    .line 79
    :cond_2
    if-eqz v0, :cond_4

    .line 80
    .line 81
    new-instance v1, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;

    .line 82
    .line 83
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;-><init>(Lcom/android/calendar/event/EventInfoActivity;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->w(Lw7/l;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    const-string p0, "Cal:D:EventInfoActivity"

    .line 91
    .line 92
    const-string p1, "fragmentCache is empty"

    .line 93
    .line 94
    invoke-static {p0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_2
    return-void
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

.method public static synthetic e0(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->i1(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/jvm/internal/Ref$IntRef;)V

    return-void
.end method

.method private static final e1(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 9
    .line 10
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 15
    .line 16
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
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
.end method

.method public static synthetic f0(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->d1(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final f1(Lcom/android/calendar/event/EventInfoActivity;FLandroid/view/View;F)V
    .locals 19

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
    const-string v3, "this$0"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "page"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "setPageTransformer "

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, ", "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "Cal:D:EventInfoActivity"

    .line 43
    .line 44
    invoke-static {v4, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, v0, Lcom/android/calendar/event/EventInfoActivity;->H:Z

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const v0, 0x7f0a0150

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/high16 v3, -0x40800000    # -1.0f

    .line 60
    .line 61
    cmpg-float v3, v2, v3

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    const/16 v5, 0x8c

    .line 65
    .line 66
    const v6, 0x3f4ccccd    # 0.8f

    .line 67
    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const/high16 v8, 0x42c80000    # 100.0f

    .line 71
    .line 72
    const/high16 v9, 0x3f800000    # 1.0f

    .line 73
    .line 74
    if-lez v3, :cond_b

    .line 75
    .line 76
    cmpl-float v3, v2, v9

    .line 77
    .line 78
    if-ltz v3, :cond_1

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_1
    float-to-double v10, v2

    .line 83
    const-wide v12, 0x3fe999999999999aL    # 0.8

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    cmpl-double v3, v10, v12

    .line 89
    .line 90
    const/high16 v12, 0x40800000    # 4.0f

    .line 91
    .line 92
    const v13, 0x3e4ccccc    # 0.19999999f

    .line 93
    .line 94
    .line 95
    const v14, 0x3e4ccccd    # 0.2f

    .line 96
    .line 97
    .line 98
    if-ltz v3, :cond_3

    .line 99
    .line 100
    sub-float/2addr v6, v2

    .line 101
    div-float/2addr v6, v14

    .line 102
    mul-float/2addr v6, v13

    .line 103
    add-float/2addr v6, v9

    .line 104
    const/high16 v3, 0x40a00000    # 5.0f

    .line 105
    .line 106
    mul-float/2addr v2, v3

    .line 107
    sub-float/2addr v2, v12

    .line 108
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 112
    .line 113
    .line 114
    mul-float v3, p1, v8

    .line 115
    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    int-to-float v7, v7

    .line 121
    int-to-float v5, v5

    .line 122
    mul-float v5, v5, p1

    .line 123
    .line 124
    sub-float/2addr v7, v5

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    int-to-float v8, v8

    .line 130
    sub-float/2addr v8, v5

    .line 131
    mul-float/2addr v8, v6

    .line 132
    sub-float/2addr v7, v8

    .line 133
    int-to-float v4, v4

    .line 134
    div-float/2addr v7, v4

    .line 135
    add-float/2addr v3, v7

    .line 136
    neg-float v3, v3

    .line 137
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 138
    .line 139
    .line 140
    if-nez v0, :cond_2

    .line 141
    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_3
    const-wide v15, 0x3fc999999999999aL    # 0.2

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    cmpl-double v3, v10, v15

    .line 155
    .line 156
    const v15, 0x3eaaaaab

    .line 157
    .line 158
    .line 159
    const/high16 v16, -0x3f600000    # -5.0f

    .line 160
    .line 161
    if-ltz v3, :cond_5

    .line 162
    .line 163
    cmpg-float v3, v2, v6

    .line 164
    .line 165
    if-gez v3, :cond_5

    .line 166
    .line 167
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 171
    .line 172
    .line 173
    if-nez v0, :cond_4

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 177
    .line 178
    .line 179
    :goto_0
    mul-float v0, p1, v8

    .line 180
    .line 181
    mul-float v2, v2, v16

    .line 182
    .line 183
    const/high16 v3, 0x40400000    # 3.0f

    .line 184
    .line 185
    div-float/2addr v2, v3

    .line 186
    add-float/2addr v2, v15

    .line 187
    mul-float/2addr v0, v2

    .line 188
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_4

    .line 192
    .line 193
    :cond_5
    const v3, -0x41b33333    # -0.2f

    .line 194
    .line 195
    .line 196
    cmpg-float v3, v2, v3

    .line 197
    .line 198
    if-gtz v3, :cond_7

    .line 199
    .line 200
    const v3, -0x40b33333    # -0.8f

    .line 201
    .line 202
    .line 203
    cmpl-float v3, v2, v3

    .line 204
    .line 205
    if-lez v3, :cond_7

    .line 206
    .line 207
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 211
    .line 212
    .line 213
    if-nez v0, :cond_6

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_6
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 217
    .line 218
    .line 219
    :goto_1
    mul-float v0, p1, v8

    .line 220
    .line 221
    neg-float v2, v2

    .line 222
    const v3, 0x3f19999a    # 0.6f

    .line 223
    .line 224
    .line 225
    div-float/2addr v2, v3

    .line 226
    sub-float/2addr v2, v15

    .line 227
    mul-float/2addr v0, v2

    .line 228
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_4

    .line 232
    .line 233
    :cond_7
    const-wide v17, -0x4016666666666666L    # -0.8

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    cmpg-double v3, v10, v17

    .line 239
    .line 240
    if-gtz v3, :cond_9

    .line 241
    .line 242
    add-float v3, v2, v6

    .line 243
    .line 244
    div-float/2addr v3, v14

    .line 245
    mul-float/2addr v3, v13

    .line 246
    add-float/2addr v3, v9

    .line 247
    mul-float v2, v2, v16

    .line 248
    .line 249
    sub-float/2addr v2, v12

    .line 250
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 254
    .line 255
    .line 256
    mul-float v6, p1, v8

    .line 257
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    int-to-float v7, v7

    .line 263
    int-to-float v5, v5

    .line 264
    mul-float v5, v5, p1

    .line 265
    .line 266
    sub-float/2addr v7, v5

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    int-to-float v8, v8

    .line 272
    sub-float/2addr v8, v5

    .line 273
    mul-float/2addr v8, v3

    .line 274
    sub-float/2addr v7, v8

    .line 275
    int-to-float v3, v4

    .line 276
    div-float/2addr v7, v3

    .line 277
    add-float/2addr v6, v7

    .line 278
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 279
    .line 280
    .line 281
    if-nez v0, :cond_8

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_9
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 295
    .line 296
    .line 297
    if-nez v0, :cond_a

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_a
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_b
    :goto_2
    if-nez v0, :cond_c

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_c
    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 308
    .line 309
    .line 310
    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 314
    .line 315
    .line 316
    mul-float v0, p1, v8

    .line 317
    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    int-to-float v3, v3

    .line 323
    int-to-float v5, v5

    .line 324
    mul-float v5, v5, p1

    .line 325
    .line 326
    sub-float/2addr v3, v5

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    int-to-float v8, v8

    .line 332
    sub-float/2addr v8, v5

    .line 333
    mul-float/2addr v8, v6

    .line 334
    sub-float/2addr v3, v8

    .line 335
    int-to-float v4, v4

    .line 336
    div-float/2addr v3, v4

    .line 337
    add-float/2addr v0, v3

    .line 338
    cmpl-float v2, v2, v7

    .line 339
    .line 340
    if-lez v2, :cond_d

    .line 341
    .line 342
    neg-float v0, v0

    .line 343
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 344
    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_d
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 348
    .line 349
    .line 350
    :goto_4
    return-void
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
.end method

.method public static synthetic g0(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/EventInfoActivity;->g1(Lcom/android/calendar/event/EventInfoActivity;)V

    return-void
.end method

.method private static final g1(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->W0()V

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

.method public static synthetic h0(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/EventInfoActivity;->E0(Lcom/android/calendar/event/EventInfoActivity;)V

    return-void
.end method

.method public static synthetic i0(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->c1(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final i1(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$eventInList"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 12
    .line 13
    iput v0, p0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 31
    .line 32
    iget v0, p0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 39
    .line 40
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    iget v1, p0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->j(IZ)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->h()V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 73
    .line 74
    if-nez p0, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
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

.method public static synthetic j0(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/EventInfoActivity;->N0(Lcom/android/calendar/event/EventInfoActivity;)V

    return-void
.end method

.method private final j1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->e1(Landroidx/fragment/app/FragmentManager$m;Z)V

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

.method public static synthetic k0(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity;->M0(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V

    return-void
.end method

.method public static synthetic l0(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->K0()V

    return-void
.end method

.method public static final synthetic m0(Lcom/android/calendar/event/EventInfoActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->F0(I)V

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

.method public static final synthetic n0(Lcom/android/calendar/event/EventInfoActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->I0(I)V

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

.method private final n1()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->i:Landroid/view/View;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    new-array v2, v0, [Landroid/view/View;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoActivity;->i:Landroid/view/View;

    .line 21
    .line 22
    aput-object v3, v2, v1

    .line 23
    .line 24
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "start"

    .line 33
    .line 34
    invoke-interface {v2, v3}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-array v3, v0, [Ld9/a;

    .line 39
    .line 40
    new-instance v4, Ld9/a;

    .line 41
    .line 42
    invoke-direct {v4}, Ld9/a;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x3

    .line 46
    new-array v5, v5, [F

    .line 47
    .line 48
    fill-array-data v5, :array_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v1, v5}, Ld9/a;->k(I[F)Ld9/a;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-array v0, v0, [Lg9/b;

    .line 56
    .line 57
    new-instance v5, Lcom/android/calendar/event/EventInfoActivity$p;

    .line 58
    .line 59
    invoke-direct {v5}, Lcom/android/calendar/event/EventInfoActivity$p;-><init>()V

    .line 60
    .line 61
    .line 62
    aput-object v5, v0, v1

    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    aput-object v0, v3, v1

    .line 69
    .line 70
    const-string v0, "end"

    .line 71
    .line 72
    invoke-interface {v2, v0, v3}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x43c80000    # 400.0f
        0x3f7d70a4    # 0.99f
        0x3f000000    # 0.5f
    .end array-data
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
.end method

.method public static final synthetic o0(Lcom/android/calendar/event/EventInfoActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/event/EventInfoActivity;->f:F

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

.method public static final synthetic p0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

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

.method private static final p1(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->h()V

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

.method public static final synthetic q0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/EventInfoActivity;->I:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public static final synthetic r0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/EventInfoActivity;->J:Ljava/util/List;

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

.method public static final synthetic s0(Lcom/android/calendar/event/EventInfoActivity;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

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

.method public static final synthetic t0(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/event/EventInfoActivity$EventInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->X0(Lcom/android/calendar/event/EventInfoActivity$EventInfo;)V

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

.method public static final synthetic u0(Lcom/android/calendar/event/EventInfoActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->Y0(I)V

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

.method public static final synthetic v0(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->Z0()V

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

.method public static final synthetic w0(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->a1()V

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

.method public static final synthetic x0(Lcom/android/calendar/event/EventInfoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/event/EventInfoActivity;->w:Z

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

.method public static final synthetic y0(Lcom/android/calendar/event/EventInfoActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/event/EventInfoActivity;->v:Z

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

.method public static final synthetic z0(Lcom/android/calendar/event/EventInfoActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

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


# virtual methods
.method public final G0(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "changeBtnVisibility event:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "Cal:D:EventInfoActivity"

    .line 19
    .line 20
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarAccessLevel()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v3, 0x1f4

    .line 34
    .line 35
    if-ge v0, v3, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " readOnly:"

    .line 56
    .line 57
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v2, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 71
    .line 72
    const-string v1, "btnEdit"

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move-object p1, v2

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 82
    .line 83
    if-nez v3, :cond_2

    .line 84
    .line 85
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-object v3, v2

    .line 89
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 101
    .line 102
    const-string v1, "btnDelete"

    .line 103
    .line 104
    if-nez p1, :cond_3

    .line 105
    .line 106
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object p1, v2

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 111
    .line 112
    if-nez v3, :cond_4

    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    move-object v2, v3

    .line 119
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    return-void
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

.method public final H0()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/calendar/event/EventInfoActivity;->G:Z

    .line 4
    .line 5
    if-nez v1, :cond_1f

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/calendar/event/EventInfoActivity;->P:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_b

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/android/calendar/event/EventInfoActivity;->G:Z

    .line 15
    .line 16
    const-string v2, "Cal:D:EventInfoActivity"

    .line 17
    .line 18
    const-string v3, "doCloseAnimation"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v2, :cond_1b

    .line 27
    .line 28
    iget-object v5, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    xor-int/2addr v5, v1

    .line 35
    const-string v6, "null cannot be cast to non-null type com.android.calendar.application.CalendarApplication"

    .line 36
    .line 37
    const v7, 0x3f4ccccd    # 0.8f

    .line 38
    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/high16 v9, 0x3f800000    # 1.0f

    .line 42
    .line 43
    const-string v10, "closeEnd"

    .line 44
    .line 45
    const-string v11, "closeStart"

    .line 46
    .line 47
    if-eqz v5, :cond_18

    .line 48
    .line 49
    new-instance v5, Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    iget v13, v0, Lcom/android/calendar/event/EventInfoActivity;->d:I

    .line 56
    .line 57
    sub-int/2addr v12, v13

    .line 58
    iget v13, v0, Lcom/android/calendar/event/EventInfoActivity;->b:I

    .line 59
    .line 60
    sub-int/2addr v12, v13

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    iget v14, v0, Lcom/android/calendar/event/EventInfoActivity;->e:I

    .line 66
    .line 67
    sub-int/2addr v13, v14

    .line 68
    iget v14, v0, Lcom/android/calendar/event/EventInfoActivity;->c:I

    .line 69
    .line 70
    sub-int/2addr v13, v14

    .line 71
    invoke-direct {v5, v4, v4, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    .line 73
    .line 74
    iput-object v5, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-static {v2, v4}, Landroidx/core/view/ViewGroupKt;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v5, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    .line 81
    .line 82
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget v5, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 92
    .line 93
    add-int/lit8 v12, v5, -0x1

    .line 94
    .line 95
    if-ltz v12, :cond_1

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    sub-int/2addr v5, v1

    .line 100
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->findViewByPosition(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const/4 v5, 0x0

    .line 106
    :goto_0
    iget v12, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 107
    .line 108
    add-int/2addr v12, v1

    .line 109
    iget-object v13, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    if-ge v12, v13, :cond_2

    .line 116
    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    iget v12, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 120
    .line 121
    add-int/2addr v12, v1

    .line 122
    invoke-virtual {v2, v12}, Landroidx/recyclerview/widget/RecyclerView$o;->findViewByPosition(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const/4 v12, 0x0

    .line 128
    :goto_1
    if-eqz v2, :cond_3

    .line 129
    .line 130
    iget v13, v0, Lcom/android/calendar/event/EventInfoActivity;->z:I

    .line 131
    .line 132
    invoke-virtual {v2, v13}, Landroidx/recyclerview/widget/RecyclerView$o;->findViewByPosition(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    goto :goto_2

    .line 137
    :cond_3
    const/4 v2, 0x0

    .line 138
    :goto_2
    if-eqz v2, :cond_17

    .line 139
    .line 140
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    if-nez v13, :cond_17

    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    invoke-static {v13, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    check-cast v13, Lcom/android/calendar/application/CalendarApplication;

    .line 154
    .line 155
    invoke-virtual {v13}, Lcom/android/calendar/application/CalendarApplication;->d()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-ne v6, v1, :cond_4

    .line 160
    .line 161
    goto/16 :goto_6

    .line 162
    .line 163
    :cond_4
    const v6, 0x7f0a014f

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    if-eqz v5, :cond_5

    .line 171
    .line 172
    new-array v6, v1, [Landroid/view/View;

    .line 173
    .line 174
    aput-object v5, v6, v4

    .line 175
    .line 176
    invoke-static {v6}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-interface {v6}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-interface {v6, v11}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    sget-object v13, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 189
    .line 190
    invoke-interface {v6, v13, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    sget-object v14, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 195
    .line 196
    invoke-interface {v6, v14, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-interface {v6, v10}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-interface {v6, v13, v1}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-interface {v6, v14, v5}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-interface {v5, v10}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    new-array v6, v1, [Ld9/a;

    .line 221
    .line 222
    new-instance v13, Ld9/a;

    .line 223
    .line 224
    invoke-direct {v13}, Ld9/a;-><init>()V

    .line 225
    .line 226
    .line 227
    aput-object v13, v6, v4

    .line 228
    .line 229
    invoke-interface {v5, v11, v6}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 230
    .line 231
    .line 232
    :cond_5
    if-eqz v12, :cond_6

    .line 233
    .line 234
    new-array v5, v1, [Landroid/view/View;

    .line 235
    .line 236
    aput-object v12, v5, v4

    .line 237
    .line 238
    invoke-static {v5}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-interface {v5}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-interface {v5, v11}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    sget-object v6, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 251
    .line 252
    invoke-interface {v5, v6, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    sget-object v13, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 257
    .line 258
    invoke-interface {v5, v13, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-interface {v5, v10}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-interface {v5, v6, v1}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    invoke-interface {v5, v13, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-interface {v5, v10}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    new-array v6, v1, [Ld9/a;

    .line 283
    .line 284
    new-instance v12, Ld9/a;

    .line 285
    .line 286
    invoke-direct {v12}, Ld9/a;-><init>()V

    .line 287
    .line 288
    .line 289
    aput-object v12, v6, v4

    .line 290
    .line 291
    invoke-interface {v5, v11, v6}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 292
    .line 293
    .line 294
    :cond_6
    iget-boolean v5, v0, Lcom/android/calendar/event/EventInfoActivity;->g:Z

    .line 295
    .line 296
    const-string v6, "end"

    .line 297
    .line 298
    const-string v12, "start"

    .line 299
    .line 300
    if-eqz v5, :cond_14

    .line 301
    .line 302
    new-instance v5, Landroid/graphics/Rect;

    .line 303
    .line 304
    iget-object v7, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 305
    .line 306
    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 307
    .line 308
    .line 309
    if-nez v2, :cond_7

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 313
    .line 314
    .line 315
    :goto_3
    if-nez v2, :cond_8

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_8
    new-instance v7, Lcom/android/calendar/event/EventInfoActivity$c;

    .line 319
    .line 320
    invoke-direct {v7, v5, v0}, Lcom/android/calendar/event/EventInfoActivity$c;-><init>(Landroid/graphics/Rect;Lcom/android/calendar/event/EventInfoActivity;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v7}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 324
    .line 325
    .line 326
    :goto_4
    if-eqz v2, :cond_9

    .line 327
    .line 328
    const-string v7, "cardView"

    .line 329
    .line 330
    invoke-static {v2, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-array v7, v1, [Landroid/view/View;

    .line 334
    .line 335
    aput-object v2, v7, v4

    .line 336
    .line 337
    invoke-static {v7}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-interface {v7}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    invoke-interface {v7, v11}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    sget-object v13, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 350
    .line 351
    invoke-interface {v7, v13, v8}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-interface {v7, v10}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-interface {v7, v13, v9}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-interface {v7, v10}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    new-array v8, v1, [Ld9/a;

    .line 368
    .line 369
    new-instance v9, Ld9/a;

    .line 370
    .line 371
    invoke-direct {v9}, Ld9/a;-><init>()V

    .line 372
    .line 373
    .line 374
    const-wide/16 v14, 0x0

    .line 375
    .line 376
    new-array v3, v4, [F

    .line 377
    .line 378
    invoke-virtual {v9, v13, v14, v15, v3}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    const-wide/16 v13, 0x64

    .line 383
    .line 384
    invoke-virtual {v3, v13, v14}, Ld9/a;->j(J)Ld9/a;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    const/4 v9, 0x3

    .line 389
    new-array v9, v9, [F

    .line 390
    .line 391
    fill-array-data v9, :array_0

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, v4, v9}, Ld9/a;->k(I[F)Ld9/a;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    aput-object v3, v8, v4

    .line 399
    .line 400
    invoke-interface {v7, v11, v8}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 401
    .line 402
    .line 403
    :cond_9
    new-array v3, v1, [Landroid/view/View;

    .line 404
    .line 405
    iget-object v7, v0, Lcom/android/calendar/event/EventInfoActivity;->o:Landroid/view/View;

    .line 406
    .line 407
    if-nez v7, :cond_a

    .line 408
    .line 409
    const-string v7, "tempView"

    .line 410
    .line 411
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const/4 v7, 0x0

    .line 415
    :cond_a
    aput-object v7, v3, v4

    .line 416
    .line 417
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-interface {v3}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-interface {v3, v11}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    sget-object v7, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 430
    .line 431
    iget-object v8, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 432
    .line 433
    const-string v9, "initialRect"

    .line 434
    .line 435
    if-nez v8, :cond_b

    .line 436
    .line 437
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    const/4 v8, 0x0

    .line 441
    :cond_b
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 442
    .line 443
    invoke-interface {v3, v7, v8}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    sget-object v8, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 448
    .line 449
    iget-object v13, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 450
    .line 451
    if-nez v13, :cond_c

    .line 452
    .line 453
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const/4 v13, 0x0

    .line 457
    :cond_c
    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 458
    .line 459
    invoke-interface {v3, v8, v13}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    sget-object v13, Lmiuix/animation/property/h;->m:Lmiuix/animation/property/h;

    .line 464
    .line 465
    iget-object v14, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 466
    .line 467
    if-nez v14, :cond_d

    .line 468
    .line 469
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    const/4 v14, 0x0

    .line 473
    :cond_d
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 474
    .line 475
    .line 476
    move-result v14

    .line 477
    invoke-interface {v3, v13, v14}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    sget-object v14, Lmiuix/animation/property/h;->l:Lmiuix/animation/property/h;

    .line 482
    .line 483
    iget-object v15, v0, Lcom/android/calendar/event/EventInfoActivity;->D:Landroid/graphics/Rect;

    .line 484
    .line 485
    if-nez v15, :cond_e

    .line 486
    .line 487
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    const/4 v15, 0x0

    .line 491
    :cond_e
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 492
    .line 493
    .line 494
    move-result v9

    .line 495
    invoke-interface {v3, v14, v9}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-interface {v3, v10}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    iget-object v9, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 504
    .line 505
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 506
    .line 507
    invoke-interface {v3, v7, v9}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    iget-object v9, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 512
    .line 513
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 514
    .line 515
    invoke-interface {v3, v8, v9}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    iget-object v9, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 520
    .line 521
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 522
    .line 523
    .line 524
    move-result v9

    .line 525
    invoke-interface {v3, v13, v9}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    iget-object v9, v0, Lcom/android/calendar/event/EventInfoActivity;->F:Landroid/graphics/Rect;

    .line 530
    .line 531
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 532
    .line 533
    .line 534
    move-result v9

    .line 535
    invoke-interface {v3, v14, v9}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-interface {v3, v10}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    new-array v9, v1, [Ld9/a;

    .line 544
    .line 545
    new-instance v10, Ld9/a;

    .line 546
    .line 547
    invoke-direct {v10}, Ld9/a;-><init>()V

    .line 548
    .line 549
    .line 550
    new-array v15, v1, [Lg9/b;

    .line 551
    .line 552
    new-instance v1, Lcom/android/calendar/event/EventInfoActivity$d;

    .line 553
    .line 554
    invoke-direct {v1, v5, v2, v0}, Lcom/android/calendar/event/EventInfoActivity$d;-><init>(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V

    .line 555
    .line 556
    .line 557
    aput-object v1, v15, v4

    .line 558
    .line 559
    invoke-virtual {v10, v15}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    aput-object v1, v9, v4

    .line 564
    .line 565
    invoke-interface {v3, v11, v9}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 566
    .line 567
    .line 568
    const/4 v1, 0x1

    .line 569
    new-array v2, v1, [Landroid/view/View;

    .line 570
    .line 571
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->n:Landroid/widget/ImageView;

    .line 572
    .line 573
    if-nez v1, :cond_f

    .line 574
    .line 575
    const-string v1, "agendaListCardImageView"

    .line 576
    .line 577
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    const/4 v1, 0x0

    .line 581
    :cond_f
    aput-object v1, v2, v4

    .line 582
    .line 583
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-interface {v1, v12}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 596
    .line 597
    const-string v3, "agendaCardListRect"

    .line 598
    .line 599
    if-nez v2, :cond_10

    .line 600
    .line 601
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    const/4 v2, 0x0

    .line 605
    :cond_10
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    invoke-interface {v1, v13, v2}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 614
    .line 615
    if-nez v2, :cond_11

    .line 616
    .line 617
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    const/4 v2, 0x0

    .line 621
    :cond_11
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    invoke-interface {v1, v14, v2}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 630
    .line 631
    if-nez v2, :cond_12

    .line 632
    .line 633
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    const/4 v2, 0x0

    .line 637
    :cond_12
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 638
    .line 639
    invoke-interface {v1, v8, v2}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->E:Landroid/graphics/Rect;

    .line 644
    .line 645
    if-nez v2, :cond_13

    .line 646
    .line 647
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    const/4 v2, 0x0

    .line 651
    :cond_13
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 652
    .line 653
    invoke-interface {v1, v7, v2}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    sget-object v2, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 658
    .line 659
    const/4 v3, 0x1

    .line 660
    invoke-interface {v1, v2, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-interface {v1, v6}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    invoke-static/range {p0 .. p0}, Lcom/miui/calendar/util/DeviceUtils;->w(Landroid/content/Context;)I

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    iget v5, v0, Lcom/android/calendar/event/EventInfoActivity;->b:I

    .line 673
    .line 674
    sub-int/2addr v3, v5

    .line 675
    iget v5, v0, Lcom/android/calendar/event/EventInfoActivity;->d:I

    .line 676
    .line 677
    sub-int/2addr v3, v5

    .line 678
    invoke-interface {v1, v13, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    invoke-static/range {p0 .. p0}, Lcom/miui/calendar/util/DeviceUtils;->u(Landroid/content/Context;)I

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    iget v5, v0, Lcom/android/calendar/event/EventInfoActivity;->c:I

    .line 687
    .line 688
    sub-int/2addr v3, v5

    .line 689
    iget v5, v0, Lcom/android/calendar/event/EventInfoActivity;->e:I

    .line 690
    .line 691
    sub-int/2addr v3, v5

    .line 692
    invoke-interface {v1, v14, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    iget v3, v0, Lcom/android/calendar/event/EventInfoActivity;->b:I

    .line 697
    .line 698
    invoke-interface {v1, v8, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    iget v3, v0, Lcom/android/calendar/event/EventInfoActivity;->c:I

    .line 703
    .line 704
    invoke-interface {v1, v7, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-interface {v1, v2, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-interface {v1, v6}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    const/4 v2, 0x1

    .line 717
    new-array v3, v2, [Ld9/a;

    .line 718
    .line 719
    new-instance v2, Ld9/a;

    .line 720
    .line 721
    invoke-direct {v2}, Ld9/a;-><init>()V

    .line 722
    .line 723
    .line 724
    new-array v5, v4, [Lg9/b;

    .line 725
    .line 726
    invoke-virtual {v2, v5}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    aput-object v2, v3, v4

    .line 731
    .line 732
    invoke-interface {v1, v12, v3}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 733
    .line 734
    .line 735
    goto/16 :goto_5

    .line 736
    .line 737
    :cond_14
    if-nez v2, :cond_15

    .line 738
    .line 739
    return-void

    .line 740
    :cond_15
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->K()Z

    .line 741
    .line 742
    .line 743
    move-result v1

    .line 744
    if-eqz v1, :cond_16

    .line 745
    .line 746
    const/4 v1, 0x1

    .line 747
    new-array v3, v1, [Landroid/view/View;

    .line 748
    .line 749
    aput-object v2, v3, v4

    .line 750
    .line 751
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    invoke-interface {v2, v12}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    sget-object v3, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 764
    .line 765
    invoke-interface {v2, v3, v8}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    invoke-interface {v2, v6}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    invoke-interface {v2, v3, v9}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-interface {v2, v6}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    new-array v3, v1, [Ld9/a;

    .line 782
    .line 783
    new-instance v5, Ld9/a;

    .line 784
    .line 785
    invoke-direct {v5}, Ld9/a;-><init>()V

    .line 786
    .line 787
    .line 788
    new-array v6, v1, [Lg9/b;

    .line 789
    .line 790
    new-instance v7, Lcom/android/calendar/event/EventInfoActivity$e;

    .line 791
    .line 792
    invoke-direct {v7, v0}, Lcom/android/calendar/event/EventInfoActivity$e;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 793
    .line 794
    .line 795
    aput-object v7, v6, v4

    .line 796
    .line 797
    invoke-virtual {v5, v6}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 798
    .line 799
    .line 800
    move-result-object v5

    .line 801
    aput-object v5, v3, v4

    .line 802
    .line 803
    invoke-interface {v2, v12, v3}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 804
    .line 805
    .line 806
    goto :goto_5

    .line 807
    :cond_16
    const/4 v1, 0x1

    .line 808
    new-array v3, v1, [Landroid/view/View;

    .line 809
    .line 810
    aput-object v2, v3, v4

    .line 811
    .line 812
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-interface {v1, v12}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    sget-object v2, Lmiuix/animation/property/h;->d:Lmiuix/animation/property/h;

    .line 825
    .line 826
    invoke-interface {v1, v2, v7}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    sget-object v3, Lmiuix/animation/property/h;->e:Lmiuix/animation/property/h;

    .line 831
    .line 832
    invoke-interface {v1, v3, v7}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    sget-object v5, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 837
    .line 838
    invoke-interface {v1, v5, v8}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    invoke-interface {v1, v6}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    invoke-interface {v1, v2, v9}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    invoke-interface {v1, v3, v9}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-interface {v1, v5, v9}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-interface {v1, v6}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    const/4 v2, 0x1

    .line 863
    new-array v3, v2, [Ld9/a;

    .line 864
    .line 865
    new-instance v5, Ld9/a;

    .line 866
    .line 867
    invoke-direct {v5}, Ld9/a;-><init>()V

    .line 868
    .line 869
    .line 870
    new-array v6, v2, [Lg9/b;

    .line 871
    .line 872
    new-instance v2, Lcom/android/calendar/event/EventInfoActivity$f;

    .line 873
    .line 874
    invoke-direct {v2, v0}, Lcom/android/calendar/event/EventInfoActivity$f;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 875
    .line 876
    .line 877
    aput-object v2, v6, v4

    .line 878
    .line 879
    invoke-virtual {v5, v6}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    aput-object v2, v3, v4

    .line 884
    .line 885
    invoke-interface {v1, v12, v3}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 886
    .line 887
    .line 888
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EventInfoActivity;->V0()V

    .line 889
    .line 890
    .line 891
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 892
    .line 893
    goto/16 :goto_7

    .line 894
    .line 895
    :cond_17
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 896
    .line 897
    .line 898
    return-void

    .line 899
    :cond_18
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    if-nez v1, :cond_1a

    .line 904
    .line 905
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    check-cast v1, Lcom/android/calendar/application/CalendarApplication;

    .line 913
    .line 914
    invoke-virtual {v1}, Lcom/android/calendar/application/CalendarApplication;->d()I

    .line 915
    .line 916
    .line 917
    move-result v1

    .line 918
    const/4 v3, 0x1

    .line 919
    if-ne v1, v3, :cond_19

    .line 920
    .line 921
    goto :goto_8

    .line 922
    :cond_19
    new-array v1, v3, [Landroid/view/View;

    .line 923
    .line 924
    aput-object v2, v1, v4

    .line 925
    .line 926
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    const-string v2, "finish"

    .line 935
    .line 936
    invoke-interface {v1, v2}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    sget-object v3, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 941
    .line 942
    invoke-interface {v1, v3, v8}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    sget-object v5, Lmiuix/animation/property/h;->d:Lmiuix/animation/property/h;

    .line 947
    .line 948
    invoke-interface {v1, v5, v7}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    sget-object v5, Lmiuix/animation/property/h;->e:Lmiuix/animation/property/h;

    .line 953
    .line 954
    invoke-interface {v1, v5, v7}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    const/4 v5, 0x1

    .line 959
    new-array v6, v5, [Ld9/a;

    .line 960
    .line 961
    new-instance v7, Ld9/a;

    .line 962
    .line 963
    invoke-direct {v7}, Ld9/a;-><init>()V

    .line 964
    .line 965
    .line 966
    aput-object v7, v6, v4

    .line 967
    .line 968
    invoke-interface {v1, v2, v6}, Lmiuix/animation/f;->y(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 969
    .line 970
    .line 971
    new-array v1, v5, [Landroid/view/View;

    .line 972
    .line 973
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->i:Landroid/view/View;

    .line 974
    .line 975
    aput-object v2, v1, v4

    .line 976
    .line 977
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    invoke-interface {v1, v11}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    invoke-interface {v1, v3, v9}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    invoke-interface {v1, v10}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    invoke-interface {v1, v3, v8}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    invoke-interface {v1, v11}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    new-array v2, v5, [Ld9/a;

    .line 1006
    .line 1007
    new-instance v3, Ld9/a;

    .line 1008
    .line 1009
    invoke-direct {v3}, Ld9/a;-><init>()V

    .line 1010
    .line 1011
    .line 1012
    const-wide/16 v6, 0xc8

    .line 1013
    .line 1014
    invoke-virtual {v3, v6, v7}, Ld9/a;->n(J)Ld9/a;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    new-array v6, v5, [Lg9/b;

    .line 1019
    .line 1020
    new-instance v5, Lcom/android/calendar/event/EventInfoActivity$g;

    .line 1021
    .line 1022
    invoke-direct {v5, v0}, Lcom/android/calendar/event/EventInfoActivity$g;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 1023
    .line 1024
    .line 1025
    aput-object v5, v6, v4

    .line 1026
    .line 1027
    invoke-virtual {v3, v6}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v3

    .line 1031
    aput-object v3, v2, v4

    .line 1032
    .line 1033
    invoke-interface {v1, v10, v2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 1034
    .line 1035
    .line 1036
    :goto_7
    const/4 v1, 0x1

    .line 1037
    goto :goto_9

    .line 1038
    :cond_1a
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 1039
    .line 1040
    .line 1041
    return-void

    .line 1042
    :cond_1b
    :goto_9
    new-array v2, v1, [Landroid/view/View;

    .line 1043
    .line 1044
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->l:Landroid/widget/ImageView;

    .line 1045
    .line 1046
    if-nez v1, :cond_1c

    .line 1047
    .line 1048
    const-string v1, "btnClose"

    .line 1049
    .line 1050
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    const/4 v1, 0x0

    .line 1054
    :cond_1c
    aput-object v1, v2, v4

    .line 1055
    .line 1056
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    invoke-interface {v1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    new-array v2, v4, [Ld9/a;

    .line 1065
    .line 1066
    invoke-interface {v1, v2}, Lmiuix/animation/IVisibleStyle;->F([Ld9/a;)V

    .line 1067
    .line 1068
    .line 1069
    const/4 v1, 0x1

    .line 1070
    new-array v2, v1, [Landroid/view/View;

    .line 1071
    .line 1072
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->k:Landroid/widget/ImageView;

    .line 1073
    .line 1074
    if-nez v1, :cond_1d

    .line 1075
    .line 1076
    const-string v1, "btnEdit"

    .line 1077
    .line 1078
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    const/4 v1, 0x0

    .line 1082
    :cond_1d
    aput-object v1, v2, v4

    .line 1083
    .line 1084
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v1

    .line 1088
    invoke-interface {v1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    new-array v2, v4, [Ld9/a;

    .line 1093
    .line 1094
    invoke-interface {v1, v2}, Lmiuix/animation/IVisibleStyle;->F([Ld9/a;)V

    .line 1095
    .line 1096
    .line 1097
    const/4 v1, 0x1

    .line 1098
    new-array v1, v1, [Landroid/view/View;

    .line 1099
    .line 1100
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->m:Landroid/widget/ImageView;

    .line 1101
    .line 1102
    if-nez v2, :cond_1e

    .line 1103
    .line 1104
    const-string v2, "btnDelete"

    .line 1105
    .line 1106
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    const/4 v3, 0x0

    .line 1110
    goto :goto_a

    .line 1111
    :cond_1e
    move-object v3, v2

    .line 1112
    :goto_a
    aput-object v3, v1, v4

    .line 1113
    .line 1114
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v1

    .line 1118
    invoke-interface {v1}, Lmiuix/animation/d;->b()Lmiuix/animation/IVisibleStyle;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    new-array v2, v4, [Ld9/a;

    .line 1123
    .line 1124
    invoke-interface {v1, v2}, Lmiuix/animation/IVisibleStyle;->F([Ld9/a;)V

    .line 1125
    .line 1126
    .line 1127
    :cond_1f
    :goto_b
    return-void

    .line 1128
    nop

    .line 1129
    :array_0
    .array-data 4
        0x43c80000    # 400.0f
        0x3f7d70a4    # 0.99f
        0x3e4ccccd    # 0.2f
    .end array-data
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

.method protected final O0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/event/EventInfoActivity;->x:J

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

.method protected final P0()Lcom/android/calendar/event/EventInfoActivity$EventInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->y:Lcom/android/calendar/event/EventInfoActivity$EventInfo;

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

.method protected final Q0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/event/EventInfoActivity;->z:I

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

.method public R0()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->q:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "defaultInflateView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
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

.method protected final T0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/calendar/event/EventInfoActivity$EventInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

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

.method public U0(J)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->I:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/View;

    .line 12
    .line 13
    return-object p1
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

.method protected h1(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "initEventInfoList"

    .line 6
    .line 7
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "extra_key_event_type"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    const-string v2, "extra_key_event_info"

    .line 22
    .line 23
    const-string v3, "extra_key_event_id"

    .line 24
    .line 25
    const-string v5, "EXTRA_EVENT_INFO_LIST"

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    iput-wide v9, v0, Lcom/android/calendar/event/EventInfoActivity;->x:J

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 46
    .line 47
    iput-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->y:Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 48
    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    const-string v2, "key_event_id"

    .line 52
    .line 53
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const-string v5, "key_start_millis"

    .line 58
    .line 59
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    const-string v5, "key_end_millis"

    .line 64
    .line 65
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v11

    .line 69
    const-string v5, "key_attendee_response"

    .line 70
    .line 71
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 76
    .line 77
    new-instance v4, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    const/16 v15, 0x20

    .line 81
    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    move-object v5, v4

    .line 85
    move-wide v6, v2

    .line 86
    invoke-direct/range {v5 .. v16}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;-><init>(JIJJILjava/util/Calendar;ILkotlin/jvm/internal/o;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_1

    .line 128
    .line 129
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const-wide/16 v9, -0x1

    .line 159
    .line 160
    invoke-virtual {v5, v3, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v9

    .line 164
    iput-wide v9, v0, Lcom/android/calendar/event/EventInfoActivity;->x:J

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 175
    .line 176
    iput-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->y:Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 177
    .line 178
    if-nez v1, :cond_4

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v2, "beginTime"

    .line 185
    .line 186
    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 187
    .line 188
    .line 189
    move-result-wide v9

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const-string v2, "endTime"

    .line 195
    .line 196
    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 197
    .line 198
    .line 199
    move-result-wide v11

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v2, "attendeeStatus"

    .line 205
    .line 206
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_3

    .line 219
    .line 220
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-eqz v1, :cond_3

    .line 225
    .line 226
    const-string v2, "lastPathSegment"

    .line 227
    .line 228
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 232
    .line 233
    .line 234
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    move-wide v6, v1

    .line 236
    goto :goto_1

    .line 237
    :catch_0
    const-string v1, "Cal:D:EventInfoActivity"

    .line 238
    .line 239
    const-string v2, "No event id"

    .line 240
    .line 241
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 245
    .line 246
    new-instance v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 247
    .line 248
    const/4 v14, 0x0

    .line 249
    const/16 v15, 0x20

    .line 250
    .line 251
    const/16 v16, 0x0

    .line 252
    .line 253
    move-object v5, v2

    .line 254
    invoke-direct/range {v5 .. v16}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;-><init>(JIJJILjava/util/Calendar;ILkotlin/jvm/internal/o;)V

    .line 255
    .line 256
    .line 257
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    .line 262
    .line 263
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_6

    .line 275
    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 283
    .line 284
    .line 285
    move-result-wide v4

    .line 286
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-nez v4, :cond_5

    .line 295
    .line 296
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 297
    .line 298
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_6
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 314
    .line 315
    .line 316
    return-void
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

.method public final k1(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 6

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, -0x1

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 30
    :goto_2
    if-nez v1, :cond_5

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    add-int/lit8 v1, v0, -0x1

    .line 37
    .line 38
    if-gez v1, :cond_3

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-lt v0, v1, :cond_4

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "setCurrentEvent event:"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " currentEventInfo:"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity;->y:Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "Cal:D:EventInfoActivity"

    .line 82
    .line 83
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v4, "setCurrentEvent currentId:"

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v4, " eventId:"

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {v2, v3}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    cmp-long v0, v0, v2

    .line 135
    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->G0(Lcom/android/calendar/common/event/schema/Event;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_3
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

.method protected final l1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/calendar/event/EventInfoActivity;->x:J

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

.method protected final m1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/EventInfoActivity;->z:I

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

.method public final o1(Lcom/android/calendar/event/EventInfoActivity$EventInfo;J)V
    .locals 8

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, p2, v0

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    add-int/lit8 v3, v1, 0x1

    .line 28
    .line 29
    if-gez v1, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lkotlin/collections/t;->t()V

    .line 32
    .line 33
    .line 34
    :cond_1
    check-cast v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    cmp-long v4, v4, v6

    .line 45
    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2, p2, p3}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->setEventId(J)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    new-instance v2, Lcom/android/calendar/event/t;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/android/calendar/event/t;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_3
    move v1, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    :goto_1
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/android/calendar/event/EventInfoActivity$o;

    .line 5
    .line 6
    invoke-direct {p3, p0}, Lcom/android/calendar/event/EventInfoActivity$o;-><init>(Lcom/android/calendar/event/EventInfoActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, p2, p3}, Lcom/miui/calendar/util/z0;->r(Landroid/content/Context;IILcom/miui/calendar/util/z0$h;)Z

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
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:EventInfoActivity"

    .line 2
    .line 3
    const-string v1, "onBackPressed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->H0()V

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "Cal:D:EventInfoActivity"

    .line 2
    .line 3
    const-string v1, "onCreate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/EventInfoActivity;->setDefaultInflateView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v5, Lcom/android/calendar/event/EventInfoActivity$onCreate$job$1;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v5, p0, p1, v1}, Lcom/android/calendar/event/EventInfoActivity$onCreate$job$1;-><init>(Lcom/android/calendar/event/EventInfoActivity;Landroid/os/Bundle;Lkotlin/coroutines/c;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v6, 0x3

    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity;->J:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "extra_launch_from"

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, p0, Lcom/android/calendar/event/EventInfoActivity;->O:I

    .line 58
    .line 59
    const v1, 0x7f0d002f

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->D0()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->Z0()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->j1()V

    .line 72
    .line 73
    .line 74
    if-nez p1, :cond_0

    .line 75
    .line 76
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->l(Landroid/app/Activity;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    invoke-static {}, Lcom/miui/calendar/util/z0;->m()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_0

    .line 87
    .line 88
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_0

    .line 93
    .line 94
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->B(Landroid/app/Activity;)Z

    .line 95
    .line 96
    .line 97
    :cond_0
    const-string p1, "onCreate finished."

    .line 98
    .line 99
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
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

.method protected onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->I:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->J:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lkotlinx/coroutines/s1;

    .line 36
    .line 37
    invoke-interface {v1}, Lkotlinx/coroutines/s1;->isCancelled()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/s1$a;->a(Lkotlinx/coroutines/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->K:Lmiuix/animation/f;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    instance-of v1, v0, Le9/b;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    check-cast v0, Le9/b;

    .line 58
    .line 59
    invoke-virtual {v0}, Le9/b;->getTarget()Lmiuix/animation/b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lmiuix/animation/b;->getNotifier()Lg9/a;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lg9/a;->l()V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->L:Lmiuix/animation/f;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    instance-of v1, v0, Le9/b;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    check-cast v0, Le9/b;

    .line 79
    .line 80
    invoke-virtual {v0}, Le9/b;->getTarget()Lmiuix/animation/b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lmiuix/animation/b;->getNotifier()Lg9/a;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lg9/a;->l()V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->M:Lmiuix/animation/f;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    instance-of v1, v0, Le9/b;

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    check-cast v0, Le9/b;

    .line 100
    .line 101
    invoke-virtual {v0}, Le9/b;->getTarget()Lmiuix/animation/b;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lmiuix/animation/b;->getNotifier()Lg9/a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lg9/a;->l()V

    .line 110
    .line 111
    .line 112
    :cond_4
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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    if-eqz v1, :cond_8

    .line 9
    .line 10
    const-string v2, "extra_key_event_type"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const-string v2, "EXTRA_EVENT_INFO_LIST"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_8

    .line 24
    .line 25
    const-string v2, "beginTime"

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    const-string v2, "endTime"

    .line 34
    .line 35
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v10

    .line 39
    const-string v2, "attendeeStatus"

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-wide/16 v13, -0x1

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    const-string v2, "lastPathSegment"

    .line 60
    .line 61
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    move-wide v13, v1

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    const-string v1, "Cal:D:EventInfoActivity"

    .line 71
    .line 72
    const-string v2, "No event id"

    .line 73
    .line 74
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    cmp-long v1, v13, v4

    .line 78
    .line 79
    if-gez v1, :cond_1

    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/16 v16, 0x1

    .line 93
    .line 94
    const/4 v15, 0x0

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    move-object v4, v2

    .line 102
    check-cast v4, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    cmp-long v4, v4, v13

    .line 109
    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    move/from16 v4, v16

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    move v4, v3

    .line 116
    :goto_1
    if-eqz v4, :cond_2

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move-object v2, v15

    .line 120
    :goto_2
    check-cast v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 121
    .line 122
    if-nez v2, :cond_5

    .line 123
    .line 124
    new-instance v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    const/16 v3, 0x20

    .line 128
    .line 129
    const/16 v17, 0x0

    .line 130
    .line 131
    move-object v4, v2

    .line 132
    move-wide v5, v13

    .line 133
    move-object v13, v1

    .line 134
    move v14, v3

    .line 135
    move-object v1, v15

    .line 136
    move-object/from16 v15, v17

    .line 137
    .line 138
    invoke-direct/range {v4 .. v15}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;-><init>(JIJJILjava/util/Calendar;ILkotlin/jvm/internal/o;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move-object v1, v15

    .line 143
    :goto_3
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 144
    .line 145
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 155
    .line 156
    if-gez v4, :cond_7

    .line 157
    .line 158
    iget-object v4, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Lcom/android/calendar/event/EventInfoActivity;->p:Ljava/util/List;

    .line 164
    .line 165
    if-eqz v2, :cond_6

    .line 166
    .line 167
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_6
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->r:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    add-int/lit8 v1, v1, -0x1

    .line 177
    .line 178
    iput v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 179
    .line 180
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 181
    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-eqz v1, :cond_7

    .line 189
    .line 190
    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    .line 193
    .line 194
    .line 195
    :cond_7
    iget-object v1, v0, Lcom/android/calendar/event/EventInfoActivity;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 196
    .line 197
    if-eqz v1, :cond_8

    .line 198
    .line 199
    new-instance v2, Lcom/android/calendar/event/o;

    .line 200
    .line 201
    invoke-direct {v2, v0, v3}, Lcom/android/calendar/event/o;-><init>(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 205
    .line 206
    .line 207
    :cond_8
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
.end method

.method protected onPause()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoActivity;->w:Z

    .line 3
    .line 4
    const-string v0, "Cal:D:EventInfoActivity"

    .line 5
    .line 6
    const-string v1, "onPause"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

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

.method protected onResume()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoActivity;->w:Z

    .line 3
    .line 4
    const-string v0, "Cal:D:EventInfoActivity"

    .line 5
    .line 6
    const-string v1, "onResume"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/android/calendar/common/b;->onResume()V

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

.method public setDefaultInflateView(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity;->q:Landroid/view/View;

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
