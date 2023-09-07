.class public final Lcom/android/calendar/selectcalendars/AccountManagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "AccountManagerAdapter.kt"

# interfaces
.implements Lcom/android/calendar/syncer/CalDavService$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;,
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;,
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$c;,
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;,
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;,
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;,
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;,
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$f;,
        Lcom/android/calendar/selectcalendars/AccountManagerAdapter$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;",
        ">;",
        "Lcom/android/calendar/syncer/CalDavService$c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008&\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 )2\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u00012\u00020\u0003:\u00089=\u0015DHLPSB7\u0012\u0006\u0010;\u001a\u000208\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010?\u001a\u00020<\u0012\u0008\u0010B\u001a\u0004\u0018\u00010@\u0012\u0008\u0010F\u001a\u0004\u0018\u00010C\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0008J\u0006\u0010\u000e\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u0006J\u0010\u0010\u0012\u001a\u000c\u0012\u0008\u0012\u00060\u0011R\u00020\u00000\u0010J\u0006\u0010\u0013\u001a\u00020\u0008J\u0010\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u001c\u0010\u001a\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\nH\u0016J\u0008\u0010\u001b\u001a\u00020\nH\u0016J\u001c\u0010\u001e\u001a\u00020\u00082\n\u0010\u001c\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0006\u0010\u001f\u001a\u00020\u0008J\u0012\u0010 \u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\u0014\u0010#\u001a\u00020\u00062\n\u0010\"\u001a\u00060!R\u00020\u0000H\u0002J\u0014\u0010%\u001a\u00020\u00062\n\u0010$\u001a\u00060\u0011R\u00020\u0000H\u0002J\u001a\u0010&\u001a\u0008\u0018\u00010!R\u00020\u00002\n\u0010$\u001a\u00060\u0011R\u00020\u0000H\u0002J\u0014\u0010)\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0002J\u0016\u0010*\u001a\u00020\u00082\u000c\u0010\"\u001a\u0008\u0018\u00010!R\u00020\u0000H\u0002J\u0014\u0010+\u001a\u00020\u00082\n\u0010\"\u001a\u00060!R\u00020\u0000H\u0002J\u0008\u0010,\u001a\u00020\u0008H\u0002J\u0008\u0010-\u001a\u00020\u0008H\u0002J \u00100\u001a\u00020\u00082\u000c\u0010\"\u001a\u0008\u0018\u00010!R\u00020\u00002\u0008\u0010/\u001a\u0004\u0018\u00010.H\u0002J\u0016\u00101\u001a\u00020\u00082\u000c\u0010\"\u001a\u0008\u0018\u00010!R\u00020\u0000H\u0002J\u0014\u00102\u001a\u00020\u00082\n\u0010\"\u001a\u00060!R\u00020\u0000H\u0002J\u0008\u00103\u001a\u00020\u0008H\u0002J\u0016\u00104\u001a\u00020\u00082\u000c\u0010\"\u001a\u0008\u0018\u00010!R\u00020\u0000H\u0002J\u0008\u00105\u001a\u00020\u0008H\u0002J\u0014\u00106\u001a\u00020\u00082\n\u0010\"\u001a\u00060!R\u00020\u0000H\u0002J\u0008\u00107\u001a\u00020\u0008H\u0002R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010B\u001a\u0004\u0018\u00010@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010AR\u0016\u0010F\u001a\u0004\u0018\u00010C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0014\u0010J\u001a\u00020G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\"\u0010R\u001a\u000e\u0012\u0008\u0012\u00060!R\u00020\u0000\u0018\u00010O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0018\u0010U\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010W\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010\u001fR\u0016\u0010Y\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010\u001fR\u0016\u0010[\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010\u001fR\u0016\u0010]\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010\u001fR\u0016\u0010_\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010\u001fR\u0016\u0010`\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001fR\u0016\u0010b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010\u001fR\u0016\u0010d\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010\u001fR\u0016\u0010f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010\u001fR\u0016\u0010h\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010\u001fR\u0016\u0010j\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010\u001fR\u0016\u0010l\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010\u001fR\u0016\u0010n\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010\u001fR\u0014\u0010p\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008o\u0010\u001fR\u0014\u0010r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008q\u0010\u001fR\u0016\u0010s\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010\u001aR\u0016\u0010u\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010\u001aR\u001a\u0010x\u001a\u0008\u0012\u0004\u0012\u00020\'0v8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010wR0\u0010{\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\'\u0012\u0010\u0012\u000e\u0012\u0008\u0012\u00060\u0011R\u00020\u0000\u0018\u00010O0y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010zR\u0014\u0010~\u001a\u00020|8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u0010}R\u001f\u0010\u0082\u0001\u001a\t\u0018\u00010\u007fR\u00030\u0080\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u0081\u0001R\u0017\u0010\u0085\u0001\u001a\u00030\u0083\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0012\u0010\u0084\u0001\u00a8\u0006\u0088\u0001"
    }
    d2 = {
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$g;",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;",
        "Lcom/android/calendar/syncer/CalDavService$c;",
        "",
        "id",
        "",
        "refreshing",
        "Lkotlin/u;",
        "n",
        "",
        "b0",
        "R",
        "F",
        "M",
        "P",
        "",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;",
        "J",
        "a0",
        "Landroid/database/Cursor;",
        "c",
        "C",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "Z",
        "getItemCount",
        "holder",
        "position",
        "X",
        "I",
        "N",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;",
        "account",
        "S",
        "calendarRow",
        "Q",
        "L",
        "",
        "timestamp",
        "K",
        "g0",
        "D",
        "V",
        "T",
        "Lmiuix/appcompat/widget/Spinner;",
        "spinner",
        "c0",
        "G",
        "d0",
        "f0",
        "W",
        "U",
        "H",
        "h0",
        "Landroid/app/Activity;",
        "a",
        "Landroid/app/Activity;",
        "context",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;",
        "b",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;",
        "mDismissListener",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;",
        "mDeleteListener",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;",
        "d",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;",
        "mItemLongClickListener",
        "Landroid/view/LayoutInflater;",
        "e",
        "Landroid/view/LayoutInflater;",
        "mInflater",
        "Landroid/content/res/Resources;",
        "f",
        "Landroid/content/res/Resources;",
        "mRes",
        "",
        "g",
        "Ljava/util/List;",
        "mData",
        "h",
        "Landroid/database/Cursor;",
        "mCursor",
        "i",
        "mIdColumn",
        "j",
        "mName",
        "k",
        "mNameColumn",
        "l",
        "mColorColumn",
        "m",
        "mVisibleColumn",
        "mOwnerAccountColumn",
        "o",
        "mAccountNameColumn",
        "p",
        "mAccountTypeColumn",
        "q",
        "mCalendarSync5Column",
        "r",
        "mColorCalendarVisible",
        "v",
        "mColorCalendarHidden",
        "w",
        "mColorContainerSelected",
        "x",
        "mColorContainerNormal",
        "y",
        "mColorCalendarSecondaryVisible",
        "z",
        "mColorCalendarSecondaryHidden",
        "isMultipleMode",
        "E",
        "mDeleteEmailAccount",
        "",
        "[Ljava/lang/String;",
        "mFrequencyEntries",
        "",
        "Ljava/util/Map;",
        "mAccountGroupMap",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "mHandler",
        "Lcom/android/calendar/syncer/CalDavService$b;",
        "Lcom/android/calendar/syncer/CalDavService;",
        "Lcom/android/calendar/syncer/CalDavService$b;",
        "davService",
        "Landroid/content/ServiceConnection;",
        "Landroid/content/ServiceConnection;",
        "mServiceConnection",
        "<init>",
        "(Landroid/app/Activity;Landroid/database/Cursor;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;)V",
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
.field public static final K:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$f;

.field private static L:F


# instance fields
.field private D:Z

.field private E:Z

.field private final F:[Ljava/lang/String;

.field private G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final H:Landroid/os/Handler;

.field private volatile I:Lcom/android/calendar/syncer/CalDavService$b;

.field private final J:Landroid/content/ServiceConnection;

.field private a:Landroid/app/Activity;

.field private final b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;

.field private final c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;

.field private final d:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;

.field private final e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/res/Resources;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/database/Cursor;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private v:I

.field private w:I

.field private x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$f;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->K:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$f;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;)V
    .locals 0

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "mDismissListener"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->d:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;

    .line 21
    .line 22
    const-string p2, "layout_inflater"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p1, Landroid/view/LayoutInflater;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->e:Landroid/view/LayoutInflater;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "context.resources"

    .line 44
    .line 45
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->D(Landroid/content/Context;)[Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    .line 64
    .line 65
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    check-cast p1, [Ljava/lang/String;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->F:[Ljava/lang/String;

    .line 71
    .line 72
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->G:Ljava/util/Map;

    .line 78
    .line 79
    new-instance p1, Landroid/os/Handler;

    .line 80
    .line 81
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->H:Landroid/os/Handler;

    .line 85
    .line 86
    new-instance p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$j;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$j;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->J:Landroid/content/ServiceConnection;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 94
    .line 95
    const p2, 0x7f060090

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->y:I

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 105
    .line 106
    const p2, 0x7f06008f

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->z:I

    .line 114
    .line 115
    sget p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->L:F

    .line 116
    .line 117
    const/4 p2, 0x0

    .line 118
    cmpg-float p1, p1, p2

    .line 119
    .line 120
    if-nez p1, :cond_0

    .line 121
    .line 122
    const/4 p1, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const/4 p1, 0x0

    .line 125
    :goto_0
    if-eqz p1, :cond_1

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 134
    .line 135
    sput p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->L:F

    .line 136
    .line 137
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 138
    .line 139
    const p2, 0x7f060092

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->r:I

    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 149
    .line 150
    const p2, 0x7f06008c

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iput p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->v:I

    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 160
    .line 161
    const p2, 0x7f060097

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iput p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->x:I

    .line 169
    .line 170
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 171
    .line 172
    const p2, 0x7f060098

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iput p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->w:I

    .line 180
    .line 181
    return-void
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

.method public static final synthetic A(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

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

.method public static final synthetic B(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->h0()V

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

.method private final D(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 4
    .line 5
    new-instance v2, Landroid/accounts/Account;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "import_type"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/syncer/account/AccountHelper;->j(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->SUBSCRIPTION:Lcom/android/calendar/syncer/account/AccountHelper$ImportType;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->getType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    sget-object v0, Lcom/android/calendar/syncer/SyncWorker;->k:Lcom/android/calendar/syncer/SyncWorker$a;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, ""

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    move-object v1, v2

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v2, p1

    .line 61
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/syncer/SyncWorker$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Lcom/android/calendar/syncer/SyncWorker$a;->a(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 70
    .line 71
    const-string v1, "null cannot be cast to non-null type com.android.calendar.selectcalendars.SelectVisibleCalendarsActivity"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;

    .line 77
    .line 78
    new-instance v1, Lcom/android/calendar/selectcalendars/c;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/android/calendar/selectcalendars/c;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/v;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->IMPORT:Lcom/android/calendar/syncer/account/AccountHelper$ImportType;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->getType()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->CALDAV:Lcom/android/calendar/syncer/account/AccountHelper$ImportType;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->getType()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/4 v2, 0x0

    .line 120
    const/4 v3, 0x0

    .line 121
    new-instance v4, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;

    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    invoke-direct {v4, p0, p1, v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lkotlin/coroutines/c;)V

    .line 125
    .line 126
    .line 127
    const/4 v5, 0x3

    .line 128
    const/4 v6, 0x0

    .line 129
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 134
    .line 135
    const v0, 0x7f12003b

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_1
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
.end method

.method private static final E(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Landroidx/work/WorkInfo;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/work/WorkInfo;->a()Landroidx/work/WorkInfo$State;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$i;->a:[I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    aget p1, v0, p1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 35
    .line 36
    const p1, 0x7f12065e

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 52
    .line 53
    const v0, 0x7f12065f

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->b:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;

    .line 68
    .line 69
    invoke-interface {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;->onDismiss()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
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

.method private final G(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_EMAIL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->E:Z

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->W(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_XIAOMI:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->U()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_LOCAL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x2

    .line 61
    const/4 v3, 0x0

    .line 62
    const-string v4, "account_name_local"

    .line 63
    .line 64
    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->U()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->d0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->d0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f0()V

    .line 95
    .line 96
    .line 97
    :goto_0
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

.method private final H(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 10

    .line 1
    sget-object v9, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/16 v7, 0x38

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    move-object v0, v9

    .line 26
    invoke-static/range {v0 .. v8}, Lcom/android/calendar/syncer/account/AccountHelper;->e(Lcom/android/calendar/syncer/account/AccountHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/Object;)Landroid/accounts/Account;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-virtual {v9, v0, p1}, Lcom/android/calendar/syncer/account/AccountHelper;->k(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 35
    .line 36
    .line 37
    :cond_0
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
.end method

.method private final K(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

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
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "yyyy-MM-dd HH:mm"

    .line 17
    .line 18
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/Date;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 34
    .line 35
    const v2, 0x7f1202b2

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    new-array v3, v3, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    aput-object v0, v3, v4

    .line 47
    .line 48
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
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

.method private final L(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;)Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x2

    .line 47
    invoke-static {v3, v4, v5, v6, v1}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4, v5, v6, v1}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_2
    :goto_0
    return-object v1
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

.method private final N(Landroid/database/Cursor;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->h:Landroid/database/Cursor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->h:Landroid/database/Cursor;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->h:Landroid/database/Cursor;

    .line 22
    .line 23
    const-string v1, "_id"

    .line 24
    .line 25
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->i:I

    .line 30
    .line 31
    const-string v1, "name"

    .line 32
    .line 33
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->j:I

    .line 38
    .line 39
    const-string v1, "calendar_displayName"

    .line 40
    .line 41
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k:I

    .line 46
    .line 47
    const-string v1, "calendar_color"

    .line 48
    .line 49
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->l:I

    .line 54
    .line 55
    const-string v1, "visible"

    .line 56
    .line 57
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->m:I

    .line 62
    .line 63
    const-string v1, "ownerAccount"

    .line 64
    .line 65
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->n:I

    .line 70
    .line 71
    const-string v1, "account_name"

    .line 72
    .line 73
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->o:I

    .line 78
    .line 79
    const-string v1, "account_type"

    .line 80
    .line 81
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->p:I

    .line 86
    .line 87
    const-string v1, "cal_sync5"

    .line 88
    .line 89
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->q:I

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->G:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 98
    .line 99
    .line 100
    const/4 v1, -0x1

    .line 101
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 105
    .line 106
    if-nez v1, :cond_2

    .line 107
    .line 108
    new-instance v1, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 114
    .line 115
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 116
    .line 117
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->f()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_3

    .line 141
    .line 142
    invoke-direct {p0, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->H(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 147
    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_10

    .line 158
    .line 159
    new-instance v1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 160
    .line 161
    invoke-direct {v1, p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V

    .line 162
    .line 163
    .line 164
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->i:I

    .line 165
    .line 166
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->p(J)V

    .line 171
    .line 172
    .line 173
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k:I

    .line 174
    .line 175
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->o(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->l:I

    .line 183
    .line 184
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->n(I)V

    .line 189
    .line 190
    .line 191
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->m:I

    .line 192
    .line 193
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    const/4 v3, 0x1

    .line 198
    const/4 v4, 0x0

    .line 199
    if-eqz v2, :cond_6

    .line 200
    .line 201
    move v2, v3

    .line 202
    goto :goto_2

    .line 203
    :cond_6
    move v2, v4

    .line 204
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->t(Z)V

    .line 205
    .line 206
    .line 207
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->n:I

    .line 208
    .line 209
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->s(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->o:I

    .line 217
    .line 218
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->k(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->p:I

    .line 226
    .line 227
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->l(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->q:I

    .line 235
    .line 236
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->m(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->j:I

    .line 244
    .line 245
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->r(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->b()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    sget-object v5, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 257
    .line 258
    invoke-virtual {v5}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    const/4 v6, 0x2

    .line 263
    invoke-static {v2, v5, v4, v6, v0}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_7

    .line 268
    .line 269
    sget-object v4, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 270
    .line 271
    iget-object v5, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 272
    .line 273
    new-instance v6, Landroid/accounts/Account;

    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->a()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->b()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v7, "import_type"

    .line 287
    .line 288
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/calendar/syncer/account/AccountHelper;->j(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    sget-object v5, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->CALDAV:Lcom/android/calendar/syncer/account/AccountHelper$ImportType;

    .line 293
    .line 294
    invoke-virtual {v5}, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->getType()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    xor-int/2addr v3, v4

    .line 303
    and-int/2addr v2, v3

    .line 304
    :cond_7
    invoke-virtual {v1, v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->u(Z)V

    .line 305
    .line 306
    .line 307
    invoke-direct {p0, v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->Q(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_e

    .line 312
    .line 313
    invoke-direct {p0, v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->L(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;)Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    if-eqz v2, :cond_8

    .line 318
    .line 319
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    goto :goto_3

    .line 324
    :cond_8
    move-object v3, v0

    .line 325
    :goto_3
    if-nez v3, :cond_a

    .line 326
    .line 327
    if-nez v2, :cond_9

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->g(Ljava/util/List;)V

    .line 336
    .line 337
    .line 338
    :cond_a
    :goto_4
    if-eqz v2, :cond_b

    .line 339
    .line 340
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->d()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    goto :goto_5

    .line 345
    :cond_b
    move-object v3, v0

    .line 346
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    if-eqz v3, :cond_d

    .line 351
    .line 352
    if-nez v2, :cond_c

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_c
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->c()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->j(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :cond_d
    :goto_6
    if-eqz v2, :cond_5

    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    if-eqz v2, :cond_5

    .line 369
    .line 370
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    goto/16 :goto_1

    .line 374
    .line 375
    :cond_e
    new-instance v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 376
    .line 377
    invoke-direct {v2, p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->a()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->i(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->b()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->h(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    new-instance v3, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->g(Ljava/util/List;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    if-eqz v3, :cond_f

    .line 407
    .line 408
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    :cond_f
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->c()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->j(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->g()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v2, v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->k(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 426
    .line 427
    if-eqz v1, :cond_5

    .line 428
    .line 429
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :cond_10
    const-string p1, "Cal:D:AccountManagerAdapter"

    .line 435
    .line 436
    const-string v0, "sort start"

    .line 437
    .line 438
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 442
    .line 443
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    new-instance v1, Lcom/android/calendar/selectcalendars/a;

    .line 447
    .line 448
    invoke-direct {v1, p0}, Lcom/android/calendar/selectcalendars/a;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V

    .line 449
    .line 450
    .line 451
    invoke-static {v0, v1}, Lkotlin/collections/t;->z(Ljava/util/List;Ljava/util/Comparator;)V

    .line 452
    .line 453
    .line 454
    const-string v0, "sort end"

    .line 455
    .line 456
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    return-void
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

.method private static final O(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)I
    .locals 9

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v0, :cond_12

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v3, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_LOCAL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const-string v5, "account_name_local"

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    return v1

    .line 51
    :cond_0
    return v2

    .line 52
    :cond_1
    sget-object v4, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_XIAOMI:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    return v2

    .line 89
    :cond_2
    return v1

    .line 90
    :cond_3
    sget-object v5, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    const-string v7, "groupItem2"

    .line 101
    .line 102
    if-eqz v6, :cond_7

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    move p1, v2

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {v4}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    :goto_0
    if-eqz p1, :cond_6

    .line 129
    .line 130
    invoke-static {p2, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->S(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_5

    .line 138
    .line 139
    return v1

    .line 140
    :cond_5
    return v2

    .line 141
    :cond_6
    return v1

    .line 142
    :cond_7
    sget-object v6, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_EMAIL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-static {v0, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_c

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    move v0, v2

    .line 169
    goto :goto_1

    .line 170
    :cond_8
    invoke-virtual {v4}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    :goto_1
    if-eqz v0, :cond_9

    .line 179
    .line 180
    move p1, v2

    .line 181
    goto :goto_2

    .line 182
    :cond_9
    invoke-virtual {v5}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    :goto_2
    if-eqz p1, :cond_b

    .line 191
    .line 192
    invoke-static {p2, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->S(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    if-eqz p0, :cond_a

    .line 200
    .line 201
    return v1

    .line 202
    :cond_a
    return v2

    .line 203
    :cond_b
    return v1

    .line 204
    :cond_c
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_d

    .line 217
    .line 218
    move v1, v2

    .line 219
    goto :goto_3

    .line 220
    :cond_d
    invoke-virtual {v4}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    :goto_3
    if-eqz v1, :cond_e

    .line 229
    .line 230
    move v1, v2

    .line 231
    goto :goto_4

    .line 232
    :cond_e
    invoke-virtual {v5}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    :goto_4
    if-eqz v1, :cond_f

    .line 241
    .line 242
    move v0, v2

    .line 243
    goto :goto_5

    .line 244
    :cond_f
    invoke-virtual {v6}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    :goto_5
    if-eqz v0, :cond_11

    .line 253
    .line 254
    invoke-static {p2, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {p0, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->S(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    if-eqz p0, :cond_10

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    return p0

    .line 282
    :cond_10
    return v2

    .line 283
    :cond_11
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    return p0

    .line 302
    :cond_12
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    sget-object v3, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_18

    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    sget-object v0, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 323
    .line 324
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_13

    .line 335
    .line 336
    return v1

    .line 337
    :cond_13
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper;->g()Landroid/accounts/Account;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 342
    .line 343
    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    if-eqz p0, :cond_15

    .line 348
    .line 349
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    if-eqz p0, :cond_14

    .line 364
    .line 365
    return v2

    .line 366
    :cond_14
    return v1

    .line 367
    :cond_15
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_16

    .line 382
    .line 383
    move p0, v2

    .line 384
    goto :goto_6

    .line 385
    :cond_16
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper;->g()Landroid/accounts/Account;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 390
    .line 391
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result p0

    .line 395
    :goto_6
    if-eqz p0, :cond_17

    .line 396
    .line 397
    return v2

    .line 398
    :cond_17
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    move-result p0

    .line 416
    return p0

    .line 417
    :cond_18
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    sget-object v2, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_LOCAL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 422
    .line 423
    invoke-virtual {v2}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_1a

    .line 432
    .line 433
    const-string v0, "groupItem1"

    .line 434
    .line 435
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->S(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)Z

    .line 439
    .line 440
    .line 441
    move-result p0

    .line 442
    if-nez p0, :cond_19

    .line 443
    .line 444
    return v1

    .line 445
    :cond_19
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result p0

    .line 463
    return p0

    .line 464
    :cond_1a
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    move-result p0

    .line 482
    return p0
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

.method private final Q(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-static {v4, v5, v1, v6, v7}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v4, v2, v1, v6, v7}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    move v2, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v2, v1

    .line 63
    :goto_0
    if-eqz v2, :cond_1

    .line 64
    .line 65
    move v1, v3

    .line 66
    :cond_3
    :goto_1
    return v1
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

.method private final S(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_LOCAL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "account_name_local"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
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

.method private final T()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.settings.ACCOUNT_LIST"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string v0, "Cal:D:AccountManagerAdapter"

    .line 18
    .line 19
    const-string v1, "jumpAccountList ActivityNotFoundException"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
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

.method private final U()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.xiaomi.account"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "account_type"

    .line 12
    .line 13
    const-string v2, "com.xiaomi"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v1, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 26
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

.method private final V()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "miui.intent.action.APP_SETTINGS"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/content/ComponentName;

    .line 12
    .line 13
    const-string v2, "com.miui.cloudservice"

    .line 14
    .line 15
    const-string v3, "com.miui.cloudservice.ui.MiCloudMainActivity"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 26
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

.method private final W(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "skip_email"

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string p1, "delete_email_account"

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->E:Z

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    new-instance p1, Landroid/content/ComponentName;

    .line 27
    .line 28
    const-string v1, "com.android.email"

    .line 29
    .line 30
    const-string v2, "com.kingsoft.email.activity.setup.AccountSettings"

    .line 31
    .line 32
    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 45
    .line 46
    const v0, 0x7f12065e

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private static final Y(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;Landroid/view/View;)V
    .locals 7

    .line 1
    const-string p3, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "$groupItem"

    .line 7
    .line 8
    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p3, "$holder"

    .line 12
    .line 13
    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p3, "key_click_account_more"

    .line 17
    .line 18
    invoke-static {p3}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/miui/calendar/view/c$b;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, v1}, Lcom/miui/calendar/view/c$b;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0x7f120038

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/miui/calendar/view/c$b;->e(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$l;

    .line 49
    .line 50
    invoke-direct {v2, p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$l;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/miui/calendar/view/c$b;->d(Lcom/miui/calendar/view/c$b$a;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v5, 0x2

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static {v2, v4, v1, v5, v6}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_0

    .line 75
    .line 76
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v2, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v2, v1, v5, v6}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0, v2, v1, v5, v6}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget-object v2, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_EMAIL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v0, v2, v1, v5, v6}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    :cond_2
    new-instance v0, Lcom/miui/calendar/view/c$b;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Lcom/miui/calendar/view/c$b;-><init>(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const v2, 0x7f120037

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/c$b;->e(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$m;

    .line 149
    .line 150
    invoke-direct {v1, p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$m;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/c$b;->d(Lcom/miui/calendar/view/c$b$a;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_3
    new-instance v0, Lcom/miui/calendar/view/c$b;

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    invoke-direct {v0, v1}, Lcom/miui/calendar/view/c$b;-><init>(I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 166
    .line 167
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const v2, 0x7f12002d

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/c$b;->e(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$n;

    .line 182
    .line 183
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$n;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/c$b;->d(Lcom/miui/calendar/view/c$b$a;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    new-instance p1, Lcom/miui/calendar/view/c;

    .line 193
    .line 194
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 195
    .line 196
    invoke-direct {p1, v0, p3}, Lcom/miui/calendar/view/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    new-instance p3, Lcom/miui/calendar/view/w;

    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 202
    .line 203
    invoke-direct {p3, p0, p1}, Lcom/miui/calendar/view/w;-><init>(Landroid/content/Context;Lcom/miui/calendar/view/c;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->d()Landroid/widget/RelativeLayout;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->d()Landroid/widget/RelativeLayout;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p3, p0, p1}, Lla/e;->m(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 215
    .line 216
    .line 217
    return-void
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

.method private final c0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lmiuix/appcompat/widget/Spinner;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_EMAIL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->E:Z

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->W(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
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
.end method

.method private final d0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/card/schema/SimpleDialogSchema;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 7
    .line 8
    const v2, 0x7f1201c5

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->title:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 18
    .line 19
    const v2, 0x7f12002f

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->message:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 29
    .line 30
    const v2, 0x104000a

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonText:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Lcom/android/calendar/selectcalendars/d;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/selectcalendars/d;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 47
    .line 48
    const/high16 v1, 0x1040000

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->negativeButtonText:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->show(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private static final e0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$account"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->H(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;->b(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
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

.method public static synthetic f(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->e0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final f0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 4
    .line 5
    const v2, 0x7f120039

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public static synthetic g(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->Y(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;Landroid/view/View;)V

    return-void
.end method

.method private final g0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->D(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_XIAOMI:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->V()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_LOCAL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    const/4 v1, 0x2

    .line 58
    const/4 v2, 0x0

    .line 59
    const-string v3, "account_name_local"

    .line 60
    .line 61
    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/k;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->V()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->T()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->T()V

    .line 76
    .line 77
    .line 78
    :goto_0
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

.method public static synthetic h(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->O(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)I

    move-result p0

    return p0
.end method

.method private final h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->I:Lcom/android/calendar/syncer/CalDavService$b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->I:Lcom/android/calendar/syncer/CalDavService$b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/calendar/syncer/CalDavService$b;->b(Lcom/android/calendar/syncer/CalDavService$c;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->J:Landroid/content/ServiceConnection;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->I:Lcom/android/calendar/syncer/CalDavService$b;

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public static synthetic i(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Landroidx/work/WorkInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->E(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Landroidx/work/WorkInfo;)V

    return-void
.end method

.method public static final synthetic j(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->G(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

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

.method public static final synthetic k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

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

.method public static final synthetic l(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Lcom/android/calendar/syncer/CalDavService$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->I:Lcom/android/calendar/syncer/CalDavService$b;

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

.method public static final synthetic m(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->v:I

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

.method public static final synthetic o(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->r:I

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

.method public static final synthetic p(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->x:I

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

.method public static final synthetic q(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->w:I

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

.method public static final synthetic r(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->H:Landroid/os/Handler;

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

.method public static final synthetic s(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->e:Landroid/view/LayoutInflater;

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

.method public static final synthetic t(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->d:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;

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

.method public static final synthetic u(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/content/res/Resources;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

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

.method public static final synthetic v(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->J:Landroid/content/ServiceConnection;

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

.method public static final synthetic w(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->D:Z

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

.method public static final synthetic x(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/syncer/CalDavService$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->I:Lcom/android/calendar/syncer/CalDavService$b;

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

.method public static final synthetic y(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->D:Z

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

.method public static final synthetic z(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->c0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lmiuix/appcompat/widget/Spinner;)V

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


# virtual methods
.method public final C(Landroid/database/Cursor;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->N(Landroid/database/Cursor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move v2, v0

    .line 27
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    move v3, v0

    .line 51
    :goto_2
    add-int/2addr v2, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v2, v0

    .line 54
    :cond_3
    const/4 v1, 0x2

    .line 55
    new-array v3, v1, [Ljava/lang/String;

    .line 56
    .line 57
    const-string v4, "count"

    .line 58
    .line 59
    aput-object v4, v3, v0

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 v5, 0x1

    .line 66
    aput-object p1, v3, v5

    .line 67
    .line 68
    const-string p1, "key_account_count"

    .line 69
    .line 70
    invoke-static {p1, v3}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-array p1, v1, [Ljava/lang/String;

    .line 74
    .line 75
    aput-object v4, p1, v0

    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    aput-object v0, p1, v5

    .line 82
    .line 83
    const-string v0, "key_calendar_count"

    .line 84
    .line 85
    invoke-static {v0, p1}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

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
.end method

.method public final F()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->D:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->q(Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 53
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

.method public final I()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->h0()V

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

.method public final J()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;",
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
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_4

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->l(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    move v5, v3

    .line 43
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->j()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v6}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->i()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_0

    .line 67
    .line 68
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-ne v5, v4, :cond_3

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->l(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    return-object v0
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

.method public final M()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->j()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    return v0

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    return v0
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

.method public final P()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->j()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->i()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    return v0

    .line 60
    :cond_3
    const/4 v0, 0x1

    .line 61
    return v0
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

.method public final R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->D:Z

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

.method public X(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;I)V
    .locals 10

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->b()Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/calendar/syncer/account/AccountHelper;->g()Landroid/accounts/Account;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v4, "account_name_local"

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 42
    .line 43
    const v3, 0x7f1200b4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 64
    .line 65
    const v3, 0x7f12002c

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->f:Landroid/content/res/Resources;

    .line 80
    .line 81
    const v3, 0x7f1202fa

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->c()Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$c;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-direct {v1, p0, v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$c;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/DynamicLinearLayout;->setAdapter(Lcom/miui/calendar/view/i;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->d()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    const/16 v3, 0x8

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    if-nez v1, :cond_4

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v2}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_3

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->f()Landroid/widget/TextView;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->f()Landroid/widget/TextView;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->f()Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const v1, 0x7f030007

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "context.resources.getInt\u2026unt_sync_frequency_value)"

    .line 182
    .line 183
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 187
    .line 188
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 189
    .line 190
    const v7, 0x7f0d0152

    .line 191
    .line 192
    .line 193
    const v8, 0x1020014

    .line 194
    .line 195
    .line 196
    iget-object v9, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->F:[Ljava/lang/String;

    .line 197
    .line 198
    invoke-direct {v1, v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    const v6, 0x7f0d0150

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->e()Lmiuix/appcompat/widget/Spinner;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v6, v1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 215
    .line 216
    new-instance v6, Landroid/accounts/Account;

    .line 217
    .line 218
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v1, v6}, Lcom/android/calendar/syncer/account/AccountHelper;->h(Landroid/content/Context;Landroid/accounts/Account;)J

    .line 230
    .line 231
    .line 232
    move-result-wide v6

    .line 233
    const/16 v1, 0x3c

    .line 234
    .line 235
    int-to-long v8, v1

    .line 236
    div-long/2addr v6, v8

    .line 237
    long-to-int v1, v6

    .line 238
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->e()Lmiuix/appcompat/widget/Spinner;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-static {v0, v1}, Lkotlin/collections/j;->E([II)I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->e()Lmiuix/appcompat/widget/Spinner;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    new-instance v7, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$k;

    .line 254
    .line 255
    invoke-direct {v7, v0, v1, p0, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$k;-><init>([IILcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_LOCAL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_5

    .line 276
    .line 277
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_6

    .line 286
    .line 287
    :cond_5
    iget-boolean v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->D:Z

    .line 288
    .line 289
    if-eqz v0, :cond_7

    .line 290
    .line 291
    :cond_6
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->d()Landroid/widget/RelativeLayout;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_7
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->d()Landroid/widget/RelativeLayout;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    :goto_3
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->d()Landroid/widget/RelativeLayout;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    new-instance v1, Lcom/android/calendar/selectcalendars/b;

    .line 311
    .line 312
    invoke-direct {v1, p0, p2, p1}, Lcom/android/calendar/selectcalendars/b;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 326
    .line 327
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    const v1, 0x7f080299

    .line 336
    .line 337
    .line 338
    if-eqz v0, :cond_f

    .line 339
    .line 340
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a:Landroid/app/Activity;

    .line 341
    .line 342
    new-instance v3, Landroid/accounts/Account;

    .line 343
    .line 344
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->c()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    invoke-direct {v3, v4, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v4, "import_type"

    .line 362
    .line 363
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/calendar/syncer/account/AccountHelper;->j(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    sget-object v2, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->CALDAV:Lcom/android/calendar/syncer/account/AccountHelper$ImportType;

    .line 368
    .line 369
    invoke-virtual {v2}, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->getType()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-eqz v2, :cond_8

    .line 378
    .line 379
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->a()Landroid/widget/ImageView;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const v1, 0x7f08024f

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_8
    sget-object v2, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->SUBSCRIPTION:Lcom/android/calendar/syncer/account/AccountHelper$ImportType;

    .line 391
    .line 392
    invoke-virtual {v2}, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->getType()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_9

    .line 401
    .line 402
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->a()Landroid/widget/ImageView;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    const v1, 0x7f08029d

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_9
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->a()Landroid/widget/ImageView;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    .line 419
    .line 420
    :goto_4
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->e()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const/4 v1, 0x2

    .line 425
    const/4 v2, 0x0

    .line 426
    if-eqz v0, :cond_a

    .line 427
    .line 428
    const-string v3, "feishu"

    .line 429
    .line 430
    invoke-static {v0, v3, v5, v1, v2}, Lkotlin/text/k;->H(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    goto :goto_5

    .line 439
    :cond_a
    move-object v0, v2

    .line 440
    :goto_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-nez v0, :cond_c

    .line 448
    .line 449
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->e()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    if-eqz v0, :cond_b

    .line 454
    .line 455
    const-string v3, "f.mioffice.cn"

    .line 456
    .line 457
    invoke-static {v0, v3, v5, v1, v2}, Lkotlin/text/k;->H(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    goto :goto_6

    .line 466
    :cond_b
    move-object v0, v2

    .line 467
    :goto_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-eqz v0, :cond_d

    .line 475
    .line 476
    :cond_c
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->a()Landroid/widget/ImageView;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    const v3, 0x7f080246

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    .line 485
    .line 486
    :cond_d
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->e()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    const/4 v0, 0x1

    .line 491
    if-eqz p2, :cond_e

    .line 492
    .line 493
    const-string v3, "dingtalk"

    .line 494
    .line 495
    invoke-static {p2, v3, v5, v1, v2}, Lkotlin/text/k;->H(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result p2

    .line 499
    if-ne p2, v0, :cond_e

    .line 500
    .line 501
    move v5, v0

    .line 502
    :cond_e
    if-eqz v5, :cond_11

    .line 503
    .line 504
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->a()Landroid/widget/ImageView;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    const p2, 0x7f08022b

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_f
    invoke-virtual {p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->b()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object p2

    .line 519
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    sget-object v0, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_EMAIL:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 523
    .line 524
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result p2

    .line 532
    if-eqz p2, :cond_10

    .line 533
    .line 534
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->a()Landroid/widget/ImageView;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    const p2, 0x7f080250

    .line 539
    .line 540
    .line 541
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    .line 543
    .line 544
    goto :goto_7

    .line 545
    :cond_10
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;->a()Landroid/widget/ImageView;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 550
    .line 551
    .line 552
    :cond_11
    :goto_7
    return-void
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

.method public Z(Landroid/view/ViewGroup;I)Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;
    .locals 3

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->e:Landroid/view/LayoutInflater;

    .line 9
    .line 10
    const v1, 0x7f0d001d

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "mInflater.inflate(\n     \u2026      false\n            )"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0, p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    return-object p2
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

.method public final a0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->P()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->j()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    xor-int/lit8 v4, v0, 0x1

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->q(Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    return-void
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

.method public final b0()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->i()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return v1
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

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->g:Ljava/util/List;

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
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public n(JZ)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onDavRefreshStatusChanged id:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", refreshing:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Cal:D:AccountManagerAdapter"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-nez p3, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {p3}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    new-instance v3, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;

    .line 44
    .line 45
    const/4 p3, 0x0

    .line 46
    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;JLkotlin/coroutines/c;)V

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
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
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->X(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;I)V

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

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->Z(Landroid/view/ViewGroup;I)Lcom/android/calendar/selectcalendars/AccountManagerAdapter$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
