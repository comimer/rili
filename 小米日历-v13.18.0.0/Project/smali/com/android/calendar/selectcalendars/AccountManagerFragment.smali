.class public final Lcom/android/calendar/selectcalendars/AccountManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "AccountManagerFragment.kt"

# interfaces
.implements Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;
.implements Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/AccountManagerFragment$b;,
        Lcom/android/calendar/selectcalendars/AccountManagerFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 Z2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u000250B\t\u0008\u0016\u00a2\u0006\u0004\u0008V\u0010WB\u0011\u0008\u0017\u0012\u0006\u0010X\u001a\u00020\u001f\u00a2\u0006\u0004\u0008V\u0010YJ\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eJ&\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016J!\u0010\u001d\u001a\u00020\u00062\u0010\u0010\u001c\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u001b\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000e\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fJ\u0006\u0010\"\u001a\u00020\u0006J\u0006\u0010#\u001a\u00020\u001fJ\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020\u0006J\u0006\u0010\'\u001a\u00020$J\u0012\u0010(\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010)\u001a\u00020\u0006H\u0016J\u0008\u0010*\u001a\u00020\u0006H\u0016J\u0008\u0010+\u001a\u00020\u0006H\u0016J\u0008\u0010,\u001a\u00020\u0006H\u0016J\u0016\u00100\u001a\u00020\u00062\u000c\u0010/\u001a\u0008\u0018\u00010-R\u00020.H\u0016J\u0012\u00101\u001a\u00020\u00062\u0008\u0010\'\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0007R\u0018\u00107\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010:\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u001c\u0010D\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010K\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u001b\u0010U\u001a\u00020P8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010T\u00a8\u0006["
    }
    d2 = {
        "Lcom/android/calendar/selectcalendars/AccountManagerFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/accounts/OnAccountsUpdateListener;",
        "Lkotlin/u;",
        "r",
        "x",
        "q",
        "Landroid/app/Activity;",
        "activity",
        "onAttach",
        "onDetach",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;",
        "listener",
        "z",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "onDestroyView",
        "",
        "Landroid/accounts/Account;",
        "accounts",
        "onAccountsUpdated",
        "([Landroid/accounts/Account;)V",
        "",
        "visibility",
        "o",
        "y",
        "t",
        "",
        "u",
        "p",
        "v",
        "onActivityCreated",
        "onResume",
        "onPause",
        "onDestroy",
        "onDismiss",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;",
        "account",
        "b",
        "onClick",
        "Lcom/miui/calendar/util/g$p;",
        "dateSetEvent",
        "receiveDateSetMsg",
        "a",
        "Landroid/view/View;",
        "mView",
        "Lmiuix/recyclerview/widget/RecyclerView;",
        "Lmiuix/recyclerview/widget/RecyclerView;",
        "mAccountGroupRv",
        "c",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;",
        "mAdapter",
        "d",
        "Landroid/app/Activity;",
        "mContext",
        "Lcom/android/calendar/common/a;",
        "e",
        "Lcom/android/calendar/common/a;",
        "mService",
        "Landroid/database/Cursor;",
        "f",
        "Landroid/database/Cursor;",
        "mCursor",
        "g",
        "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;",
        "mAccountItemLongClickListener",
        "Landroid/widget/LinearLayout;",
        "h",
        "Landroid/widget/LinearLayout;",
        "mDeleteContainer",
        "Landroid/database/ContentObserver;",
        "i",
        "Lkotlin/f;",
        "s",
        "()Landroid/database/ContentObserver;",
        "mCalendarObserver",
        "<init>",
        "()V",
        "itemLayout",
        "(I)V",
        "k",
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
.field public static final k:Lcom/android/calendar/selectcalendars/AccountManagerFragment$a;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static n:I

.field private static o:I


# instance fields
.field private a:Landroid/view/View;

.field private b:Lmiuix/recyclerview/widget/RecyclerView;

.field private c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

.field private d:Landroid/app/Activity;

.field private e:Lcom/android/calendar/common/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/common/a<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Landroid/database/Cursor;

.field private g:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;

.field private h:Landroid/widget/LinearLayout;

.field private final i:Lkotlin/f;

.field public j:Ljava/util/Map;
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
    .locals 11

    .line 1
    new-instance v0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$a;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->k:Lcom/android/calendar/selectcalendars/AccountManagerFragment$a;

    .line 8
    .line 9
    const-string v0, "1"

    .line 10
    .line 11
    const-string v1, "LOCAL"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->l:[Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "_id"

    .line 20
    .line 21
    const-string v2, "name"

    .line 22
    .line 23
    const-string v3, "account_name"

    .line 24
    .line 25
    const-string v4, "account_type"

    .line 26
    .line 27
    const-string v5, "ownerAccount"

    .line 28
    .line 29
    const-string v6, "calendar_displayName"

    .line 30
    .line 31
    const-string v7, "calendar_color"

    .line 32
    .line 33
    const-string v8, "visible"

    .line 34
    .line 35
    const-string v9, "sync_events"

    .line 36
    .line 37
    const-string v10, "cal_sync5"

    .line 38
    .line 39
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->m:[Ljava/lang/String;

    .line 44
    .line 45
    const v0, 0x7f0d005f

    .line 46
    .line 47
    .line 48
    sput v0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->o:I

    .line 49
    .line 50
    return-void
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

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->j:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)V

    invoke-static {v0}, Lkotlin/g;->b(Lw7/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->i:Lkotlin/f;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->j:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    new-instance v0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)V

    invoke-static {v0}, Lkotlin/g;->b(Lw7/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->i:Lkotlin/f;

    .line 5
    sput p1, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->o:I

    return-void
.end method

.method public static synthetic i(Lcom/android/calendar/selectcalendars/AccountManagerFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->w(Lcom/android/calendar/selectcalendars/AccountManagerFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic k(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->r()V

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

.method public static final synthetic l(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)Lcom/android/calendar/selectcalendars/AccountManagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

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

.method public static final synthetic m(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

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

.method public static final synthetic n(Lcom/android/calendar/selectcalendars/AccountManagerFragment;Landroid/database/Cursor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->f:Landroid/database/Cursor;

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

.method private final q()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->J()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    iget-object v10, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->e:Lcom/android/calendar/common/a;

    .line 13
    .line 14
    if-eqz v10, :cond_5

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_5

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v11, v2

    .line 34
    check-cast v11, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 35
    .line 36
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 37
    .line 38
    invoke-virtual {v11}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->f()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v2, "withAppendedId(Calendars.CONTENT_URI, account.id)"

    .line 47
    .line 48
    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10}, Lcom/android/calendar/common/a;->g()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const-wide/16 v8, 0x0

    .line 59
    .line 60
    move-object v2, v10

    .line 61
    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/common/a;->n(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v11}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->g()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x1

    .line 69
    const/4 v4, 0x0

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move v2, v4

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :goto_2
    move v2, v3

    .line 82
    :goto_3
    if-nez v2, :cond_1

    .line 83
    .line 84
    invoke-virtual {v11}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->g()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    const/4 v5, 0x2

    .line 91
    const-string v6, "file://"

    .line 92
    .line 93
    invoke-static {v2, v6, v4, v5, v1}, Lkotlin/text/k;->C(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-ne v2, v3, :cond_4

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    move v3, v4

    .line 101
    :goto_4
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/4 v4, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    new-instance v6, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;

    .line 114
    .line 115
    invoke-direct {v6, v11, p0, v1}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;Lcom/android/calendar/selectcalendars/AccountManagerFragment;Lkotlin/coroutines/c;)V

    .line 116
    .line 117
    .line 118
    const/4 v7, 0x3

    .line 119
    const/4 v8, 0x0

    .line 120
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->x()V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 128
    .line 129
    const-string v1, "null cannot be cast to non-null type com.android.calendar.selectcalendars.SelectVisibleCalendarsActivity"

    .line 130
    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    check-cast v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->a0()V

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

.method private final r()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->e:Lcom/android/calendar/common/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->n:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/a;->f(I)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/calendar/common/a;->g()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sput v1, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->n:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    .line 19
    sget-object v4, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->m:[Ljava/lang/String;

    .line 20
    .line 21
    sget-object v6, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->l:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v5, "sync_events=? OR account_type=?"

    .line 24
    .line 25
    const-string v7, "account_name"

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/common/a;->p(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
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

.method private final s()Landroid/database/ContentObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->i:Lkotlin/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/database/ContentObserver;

    .line 8
    .line 9
    return-object v0
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

.method private static final w(Lcom/android/calendar/selectcalendars/AccountManagerFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->q()V

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

.method private final x()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->e:Lcom/android/calendar/common/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/calendar/common/a;->g()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sput v1, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->n:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 13
    .line 14
    sget-object v4, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->m:[Ljava/lang/String;

    .line 15
    .line 16
    sget-object v6, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->l:[Ljava/lang/String;

    .line 17
    .line 18
    const-string v5, "sync_events=? OR account_type=?"

    .line 19
    .line 20
    const-string v7, "account_name"

    .line 21
    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/common/a;->p(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
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


# virtual methods
.method public b(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->e:Lcom/android/calendar/common/a;

    .line 14
    .line 15
    if-eqz v1, :cond_6

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    const/4 v11, 0x0

    .line 29
    move v12, v11

    .line 30
    :goto_1
    if-ge v12, v10, :cond_6

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;->a()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move-object v13, v2

    .line 44
    check-cast v13, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 45
    .line 46
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    .line 48
    invoke-virtual {v13}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->f()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v2, "withAppendedId(Calendars.CONTENT_URI, calendar.id)"

    .line 57
    .line 58
    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/android/calendar/common/a;->g()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    const-wide/16 v8, 0x0

    .line 69
    .line 70
    move-object v2, v1

    .line 71
    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/common/a;->n(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->g()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v3, 0x1

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    move v2, v11

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    move v2, v3

    .line 91
    :goto_3
    if-nez v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {v13}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->g()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    const/4 v4, 0x2

    .line 100
    const-string v5, "file://"

    .line 101
    .line 102
    invoke-static {v2, v5, v11, v4, v0}, Lkotlin/text/k;->C(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-ne v2, v3, :cond_4

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    move v3, v11

    .line 110
    :goto_4
    if-eqz v3, :cond_5

    .line 111
    .line 112
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    new-instance v6, Lcom/android/calendar/selectcalendars/AccountManagerFragment$onDelete$1;

    .line 123
    .line 124
    invoke-direct {v6, v13, p0, v0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$onDelete$1;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;Lcom/android/calendar/selectcalendars/AccountManagerFragment;Lkotlin/coroutines/c;)V

    .line 125
    .line 126
    .line 127
    const/4 v7, 0x3

    .line 128
    const/4 v8, 0x0

    .line 129
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    .line 130
    .line 131
    .line 132
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->x()V

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
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :goto_0
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

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAccountsUpdated accounts:"

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
    const-string v1, "Cal:D:AccountManagerFragment"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    array-length v2, p1

    .line 27
    :goto_0
    if-ge v0, v2, :cond_0

    .line 28
    .line 29
    aget-object v3, p1, v0

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v5, "account:["

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, ", "

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v3, 0x5d

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v1, v3}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->g:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    move-object v0, p1

    .line 15
    move-object v3, p0

    .line 16
    move-object v4, p0

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$h;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$g;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

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

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 10
    .line 11
    new-instance p1, Lcom/android/calendar/selectcalendars/AccountManagerFragment$b;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-direct {p1, v0, p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$b;-><init>(Landroid/content/Context;Lcom/android/calendar/selectcalendars/AccountManagerFragment;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->e:Lcom/android/calendar/common/a;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0a0216

    .line 9
    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/miui/calendar/card/schema/SimpleDialogSchema;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/miui/calendar/card/schema/SimpleDialogSchema;-><init>()V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f1201c5

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->title:Ljava/lang/String;

    .line 26
    .line 27
    const v0, 0x7f12002e

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p1, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->message:Ljava/lang/String;

    .line 35
    .line 36
    const v0, 0x104000a

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p1, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonText:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v0, Lcom/android/calendar/selectcalendars/h;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/calendar/selectcalendars/h;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p1, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    .line 52
    const/high16 v0, 0x1040000

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p1, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->negativeButtonText:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->show(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    const p2, 0x7f0d020e

    .line 10
    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->a:Landroid/view/View;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const p2, 0x7f0a0381

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, p3

    .line 30
    :goto_0
    const-string p2, "null cannot be cast to non-null type miuix.recyclerview.widget.RecyclerView"

    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->a:Landroid/view/View;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const p2, 0x7f0a0216

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object p1, p3

    .line 54
    :goto_1
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->h:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 62
    .line 63
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p2, 0x0

    .line 68
    invoke-virtual {p1, p0, p3, p2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-direct {p3, v0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, p0}, Lpc/c;->o(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->a:Landroid/view/View;

    .line 95
    .line 96
    return-object p1
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

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->I()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lpc/c;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->j()V

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

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->f:Landroid/database/Cursor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->C(Landroid/database/Cursor;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->f:Landroid/database/Cursor;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->f:Landroid/database/Cursor;

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

.method public onDismiss()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->x()V

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

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->s()Landroid/database/ContentObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
    .line 22
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->d:Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->s()Landroid/database/ContentObserver;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->x()V

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

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->F()V

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

.method public final receiveDateSetMsg(Lcom/miui/calendar/util/g$p;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "dateSetEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->onDismiss()V

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

.method public final t()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->b0()I

    .line 7
    .line 8
    .line 9
    move-result v0

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

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->P()Z

    .line 7
    .line 8
    .line 9
    move-result v0

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

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->R()Z

    .line 7
    .line 8
    .line 9
    move-result v0

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

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->c:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->a0()V

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

.method public final z(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->g:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$d;

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
