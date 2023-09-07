.class public abstract Lcom/android/calendar/syncer/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/SyncManager$SyncAlgorithm;,
        Lcom/android/calendar/syncer/SyncManager$a;,
        Lcom/android/calendar/syncer/SyncManager$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResourceType::",
        "Lcom/android/calendar/syncer/resource/d<",
        "*>;CollectionType::",
        "Lcom/android/calendar/syncer/resource/b<",
        "+TResourceType;>;RemoteType:",
        "Lat/bitfire/dav4jvm/DavCollection;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000 \u0096\u0001*\u000c\u0008\u0000\u0010\u0002*\u0006\u0012\u0002\u0008\u00030\u0001*\u0010\u0008\u0001\u0010\u0004 \u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0003*\u0008\u0008\u0002\u0010\u0006*\u00020\u00052\u00020\u0007:\u0003G\u0097\u0001BC\u0012\u0006\u0010K\u001a\u00020F\u0012\u0006\u0010Q\u001a\u00020L\u0012\u0008\u0010\u0090\u0001\u001a\u00030\u008f\u0001\u0012\u0006\u0010W\u001a\u00020R\u0012\u0006\u0010\\\u001a\u00020X\u0012\u0006\u0010b\u001a\u00020]\u0012\u0006\u0010g\u001a\u00028\u0001\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0095\u0001J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J:\u0010\u0016\u001a\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00122\"\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u000f0\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u000fH\u0016J\u0006\u0010\u0018\u001a\u00020\u000fJ\u0008\u0010\u001a\u001a\u00020\u0019H$J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0008H$J\u0008\u0010\u001c\u001a\u00020\u0019H\u0014J\u0008\u0010\u001d\u001a\u00020\u0019H\u0014J\u0017\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00028\u0000H$\u00a2\u0006\u0004\u0008\"\u0010#J\u0012\u0010%\u001a\u00020\u00192\u0008\u0010$\u001a\u0004\u0018\u00010\u0008H\u0014J\u0008\u0010\'\u001a\u00020&H$J\u0008\u0010(\u001a\u00020\u000fH\u0014J2\u0010/\u001a\u00020\u000f2(\u0010.\u001a$\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u000f0*j\u0002`-\u0012\u0004\u0012\u00020\u000f0)H\u0014J&\u00101\u001a\u00020\u000f2\u001c\u00100\u001a\u0018\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u000f0*j\u0002`-H$J<\u00105\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0019032\u0008\u00102\u001a\u0004\u0018\u00010\u00082\u001c\u00100\u001a\u0018\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u000f0*j\u0002`-H\u0014J\u0016\u00108\u001a\u00020\u000f2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\r06H$J\u0008\u0010\u000b\u001a\u00020\u000fH\u0014J\u0012\u0010:\u001a\u0004\u0018\u00010\u00082\u0006\u00109\u001a\u00020+H\u0004J=\u0010=\u001a\u00028\u0004\"\n\u0008\u0003\u0010;*\u0004\u0018\u00018\u0000\"\u0004\u0008\u0004\u0010<2\u0006\u0010\u000c\u001a\u00028\u00032\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00040)H\u0004\u00a2\u0006\u0004\u0008=\u0010>J;\u0010@\u001a\u00028\u0004\"\u0008\u0008\u0003\u0010;*\u00020?\"\u0004\u0008\u0004\u0010<2\u0006\u0010\u000e\u001a\u00028\u00032\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00040)H\u0004\u00a2\u0006\u0004\u0008@\u0010AJ1\u0010B\u001a\u00028\u0003\"\u0004\u0008\u0003\u0010;2\u0006\u0010\u000e\u001a\u00020+2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00028\u00030)H\u0004\u00a2\u0006\u0004\u0008B\u0010CJ)\u0010D\u001a\u00028\u0003\"\u0004\u0008\u0003\u0010<2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030)H\u0004\u00a2\u0006\u0004\u0008D\u0010ER\u0017\u0010K\u001a\u00020F8\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JR\u0017\u0010Q\u001a\u00020L8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010PR\u0017\u0010W\u001a\u00020R8\u0006\u00a2\u0006\u000c\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010VR\u0017\u0010\\\u001a\u00020X8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010Y\u001a\u0004\u0008Z\u0010[R\u0017\u0010b\u001a\u00020]8\u0006\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010aR\u0017\u0010g\u001a\u00028\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010fR\u0014\u0010k\u001a\u00020h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0014\u0010m\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010NR\u001a\u0010r\u001a\u00020n8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00088\u0010o\u001a\u0004\u0008p\u0010qR\u001a\u0010u\u001a\u00020X8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008s\u0010Y\u001a\u0004\u0008t\u0010[R\u001a\u0010{\u001a\u00020v8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008w\u0010x\u001a\u0004\u0008y\u0010zR$\u0010\u0081\u0001\u001a\u00020\r8\u0004@\u0004X\u0084.\u00a2\u0006\u0013\n\u0004\u0008\"\u0010|\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R)\u0010\u0088\u0001\u001a\u00028\u00028\u0004@\u0004X\u0084.\u00a2\u0006\u0018\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R(\u0010\u008e\u0001\u001a\u00020\u00198\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0089\u0001\u00105\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u001d\u0010\u0090\u0001\u001a\u00030\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u00a8\u0006\u0098\u0001"
    }
    d2 = {
        "Lcom/android/calendar/syncer/SyncManager;",
        "Lcom/android/calendar/syncer/resource/d;",
        "ResourceType",
        "Lcom/android/calendar/syncer/resource/b;",
        "CollectionType",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "RemoteType",
        "Ljava/lang/AutoCloseable;",
        "Lcom/android/calendar/syncer/model/SyncState;",
        "p0",
        "",
        "e",
        "local",
        "Lokhttp3/t;",
        "remote",
        "Lkotlin/u;",
        "c0",
        "(Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V",
        "Lkotlin/Function0;",
        "body",
        "Lkotlin/Function3;",
        "handler",
        "B0",
        "close",
        "d0",
        "",
        "h0",
        "l0",
        "i0",
        "D0",
        "C0",
        "(Lcom/android/calendar/syncer/resource/d;)V",
        "resource",
        "Lokhttp3/z;",
        "m",
        "(Lcom/android/calendar/syncer/resource/d;)Lokhttp3/z;",
        "state",
        "z0",
        "Lcom/android/calendar/syncer/SyncManager$SyncAlgorithm;",
        "x0",
        "s0",
        "Lkotlin/Function1;",
        "Lkotlin/Function2;",
        "Lat/bitfire/dav4jvm/Response;",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "Lat/bitfire/dav4jvm/DavResponseCallback;",
        "listRemote",
        "y0",
        "callback",
        "W",
        "syncState",
        "Lkotlin/Pair;",
        "Lat/bitfire/dav4jvm/property/SyncToken;",
        "Z",
        "",
        "bunch",
        "j",
        "dav",
        "A0",
        "T",
        "R",
        "a0",
        "(Lcom/android/calendar/syncer/resource/d;Lw7/l;)Ljava/lang/Object;",
        "Lat/bitfire/dav4jvm/DavResource;",
        "q0",
        "(Lat/bitfire/dav4jvm/DavResource;Lw7/l;)Ljava/lang/Object;",
        "t0",
        "(Lat/bitfire/dav4jvm/Response;Lw7/l;)Ljava/lang/Object;",
        "r0",
        "(Lw7/l;)Ljava/lang/Object;",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "Landroid/accounts/Account;",
        "b",
        "Landroid/accounts/Account;",
        "getAccount",
        "()Landroid/accounts/Account;",
        "account",
        "Landroid/os/Bundle;",
        "d",
        "Landroid/os/Bundle;",
        "getExtras",
        "()Landroid/os/Bundle;",
        "extras",
        "",
        "Ljava/lang/String;",
        "getAuthority",
        "()Ljava/lang/String;",
        "authority",
        "Landroid/content/SyncResult;",
        "f",
        "Landroid/content/SyncResult;",
        "V",
        "()Landroid/content/SyncResult;",
        "syncResult",
        "g",
        "Lcom/android/calendar/syncer/resource/b;",
        "H",
        "()Lcom/android/calendar/syncer/resource/b;",
        "localCollection",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "h",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "workDispatcher",
        "i",
        "mainAccount",
        "Landroidx/core/app/v;",
        "Landroidx/core/app/v;",
        "getNotificationManager",
        "()Landroidx/core/app/v;",
        "notificationManager",
        "k",
        "getNotificationTag",
        "notificationTag",
        "Lcom/android/calendar/syncer/net/CalDavHttpClient;",
        "l",
        "Lcom/android/calendar/syncer/net/CalDavHttpClient;",
        "E",
        "()Lcom/android/calendar/syncer/net/CalDavHttpClient;",
        "httpClient",
        "Lokhttp3/t;",
        "s",
        "()Lokhttp3/t;",
        "u0",
        "(Lokhttp3/t;)V",
        "collectionURL",
        "n",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "x",
        "()Lat/bitfire/dav4jvm/DavCollection;",
        "v0",
        "(Lat/bitfire/dav4jvm/DavCollection;)V",
        "davCollection",
        "o",
        "z",
        "()Z",
        "w0",
        "(Z)V",
        "hasCollectionSync",
        "Ld2/a;",
        "accountSettings",
        "Ld2/a;",
        "q",
        "()Ld2/a;",
        "<init>",
        "(Landroid/content/Context;Landroid/accounts/Account;Ld2/a;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;Lcom/android/calendar/syncer/resource/b;)V",
        "p",
        "SyncAlgorithm",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final p:Lcom/android/calendar/syncer/SyncManager$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/accounts/Account;

.field private final c:Ld2/a;

.field private final d:Landroid/os/Bundle;

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/SyncResult;

.field private final g:Lcom/android/calendar/syncer/resource/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCollectionType;"
        }
    .end annotation
.end field

.field private final h:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

.field private final i:Landroid/accounts/Account;

.field private final j:Landroidx/core/app/v;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/android/calendar/syncer/net/CalDavHttpClient;

.field protected m:Lokhttp3/t;

.field protected n:Lat/bitfire/dav4jvm/DavCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRemoteType;"
        }
    .end annotation
.end field

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/syncer/SyncManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/SyncManager$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/syncer/SyncManager;->p:Lcom/android/calendar/syncer/SyncManager$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ld2/a;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;Lcom/android/calendar/syncer/resource/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ld2/a;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/content/SyncResult;",
            "TCollectionType;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "account"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "accountSettings"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "extras"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "authority"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "syncResult"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "localCollection"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->a:Landroid/content/Context;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager;->b:Landroid/accounts/Account;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/android/calendar/syncer/SyncManager;->c:Ld2/a;

    .line 44
    .line 45
    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager;->d:Landroid/os/Bundle;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/android/calendar/syncer/SyncManager;->e:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p6, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 50
    .line 51
    iput-object p7, p0, Lcom/android/calendar/syncer/SyncManager;->g:Lcom/android/calendar/syncer/resource/b;

    .line 52
    .line 53
    sget-object p4, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 54
    .line 55
    invoke-virtual {p4}, Lat/bitfire/ical4android/Ical4Android;->checkThreadContextClassLoader()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    invoke-virtual {p4}, Ljava/lang/Runtime;->availableProcessors()I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    const/4 p5, 0x4

    .line 67
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    invoke-static {p4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    const-string p5, "newFixedThreadPool(\n    \u2026ssors(), 4)\n            )"

    .line 76
    .line 77
    invoke-static {p4, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p4}, Lkotlinx/coroutines/j1;->b(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    iput-object p4, p0, Lcom/android/calendar/syncer/SyncManager;->h:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 85
    .line 86
    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager;->i:Landroid/accounts/Account;

    .line 87
    .line 88
    invoke-static {p1}, Landroidx/core/app/v;->c(Landroid/content/Context;)Landroidx/core/app/v;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const-string p4, "from(context)"

    .line 93
    .line 94
    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager;->j:Landroidx/core/app/v;

    .line 98
    .line 99
    invoke-interface {p7}, Lcom/android/calendar/syncer/resource/b;->a()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iput-object p2, p0, Lcom/android/calendar/syncer/SyncManager;->k:Ljava/lang/String;

    .line 104
    .line 105
    new-instance p2, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;

    .line 106
    .line 107
    invoke-direct {p2, p1, p3}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;-><init>(Landroid/content/Context;Ld2/a;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->b()Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->l:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 115
    .line 116
    return-void
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

.method private final B0(Lw7/a;Lw7/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/a<",
            "Lkotlin/u;",
            ">;",
            "Lw7/q<",
            "-",
            "Ljava/lang/Throwable;",
            "-TResourceType;-",
            "Lokhttp3/t;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lw7/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    move-object p1, v0

    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :goto_0
    instance-of v1, p1, Lorg/apache/commons/lang3/exception/ContextedException;

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    check-cast p1, Lorg/apache/commons/lang3/exception/ContextedException;

    .line 13
    .line 14
    const-string v1, "localResource"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lorg/apache/commons/lang3/exception/ContextedException;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lcom/android/calendar/syncer/resource/d;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v1, Lcom/android/calendar/syncer/resource/d;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move-object v1, v0

    .line 28
    :goto_1
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    move-object v1, v0

    .line 32
    :goto_2
    const-string v2, "remoteResource"

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lorg/apache/commons/lang3/exception/ContextedException;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    instance-of v3, v2, Lokhttp3/t;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    check-cast v2, Lokhttp3/t;

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    move-object v2, v0

    .line 46
    :goto_3
    if-eqz v2, :cond_3

    .line 47
    .line 48
    move-object v0, v2

    .line 49
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    move-object v4, v1

    .line 54
    move-object v1, v0

    .line 55
    move-object v0, v4

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    move-object v1, v0

    .line 58
    :goto_4
    if-eqz p1, :cond_5

    .line 59
    .line 60
    invoke-interface {p2, p1, v0, v1}, Lw7/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_5
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

.method public static final synthetic c(Lcom/android/calendar/syncer/SyncManager;Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/syncer/SyncManager;->c0(Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V

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

.method private final c0(Ljava/lang/Throwable;Lcom/android/calendar/syncer/resource/d;Lokhttp3/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TResourceType;",
            "Lokhttp3/t;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of p2, p1, Ljava/io/IOException;

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move p2, p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of p2, p1, Ljava/io/InterruptedIOException;

    .line 9
    .line 10
    :goto_0
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    const-string v2, "CalSync:D:SyncManager"

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-string p2, "I/O error"

    .line 17
    .line 18
    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 22
    .line 23
    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 24
    .line 25
    iget-wide p2, p1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 26
    .line 27
    add-long/2addr p2, v0

    .line 28
    iput-wide p2, p1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_1
    instance-of p2, p1, Lat/bitfire/dav4jvm/exception/UnauthorizedException;

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    const-string p2, "Not authorized anymore"

    .line 36
    .line 37
    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 41
    .line 42
    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 43
    .line 44
    iget-wide p2, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 45
    .line 46
    add-long/2addr p2, v0

    .line 47
    iput-wide p2, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    instance-of p2, p1, Lat/bitfire/dav4jvm/exception/HttpException;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    move p2, p3

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    instance-of p2, p1, Lat/bitfire/dav4jvm/exception/DavException;

    .line 57
    .line 58
    :goto_1
    if-eqz p2, :cond_4

    .line 59
    .line 60
    const-string p2, "HTTP/DAV exception"

    .line 61
    .line 62
    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 66
    .line 67
    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 68
    .line 69
    iget-wide p2, p1, Landroid/content/SyncStats;->numParseExceptions:J

    .line 70
    .line 71
    add-long/2addr p2, v0

    .line 72
    iput-wide p2, p1, Landroid/content/SyncStats;->numParseExceptions:J

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    instance-of p2, p1, Lat/bitfire/ical4android/CalendarStorageException;

    .line 76
    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    move p2, p3

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    instance-of p2, p1, Landroid/os/RemoteException;

    .line 82
    .line 83
    :goto_2
    if-eqz p2, :cond_6

    .line 84
    .line 85
    const-string p2, "Couldn\'t access local storage"

    .line 86
    .line 87
    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 91
    .line 92
    iput-boolean p3, p1, Landroid/content/SyncResult;->databaseError:Z

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    const-string p2, "Unclassified sync error"

    .line 96
    .line 97
    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    if-nez p2, :cond_7

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string p2, "e::class.java.simpleName"

    .line 115
    .line 116
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 120
    .line 121
    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 122
    .line 123
    iget-wide p2, p1, Landroid/content/SyncStats;->numParseExceptions:J

    .line 124
    .line 125
    add-long/2addr p2, v0

    .line 126
    iput-wide p2, p1, Landroid/content/SyncStats;->numParseExceptions:J

    .line 127
    .line 128
    :goto_3
    return-void
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

.method public static final synthetic d(Lcom/android/calendar/syncer/SyncManager;)Lcom/android/calendar/syncer/model/SyncState;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/syncer/SyncManager;->p0()Lcom/android/calendar/syncer/model/SyncState;

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

.method private final p0()Lcom/android/calendar/syncer/model/SyncState;
    .locals 6

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/syncer/SyncManager;->x()Lat/bitfire/dav4jvm/DavCollection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x2

    .line 11
    new-array v2, v2, [Lat/bitfire/dav4jvm/Property$Name;

    .line 12
    .line 13
    sget-object v3, Lat/bitfire/dav4jvm/property/GetCTag;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 17
    .line 18
    sget-object v3, Lat/bitfire/dav4jvm/property/SyncToken;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 22
    .line 23
    new-instance v3, Lcom/android/calendar/syncer/SyncManager$querySyncState$1;

    .line 24
    .line 25
    invoke-direct {v3, v0, p0}, Lcom/android/calendar/syncer/SyncManager$querySyncState$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/calendar/syncer/SyncManager;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4, v2, v3}, Lat/bitfire/dav4jvm/DavResource;->propfind(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/android/calendar/syncer/model/SyncState;

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


# virtual methods
.method protected final A0(Lat/bitfire/dav4jvm/Response;)Lcom/android/calendar/syncer/model/SyncState;
    .locals 7

    .line 1
    const-string v0, "dav"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lat/bitfire/dav4jvm/property/SyncToken;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lat/bitfire/dav4jvm/property/SyncToken;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/SyncToken;->getToken()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    new-instance p1, Lcom/android/calendar/syncer/model/SyncState;

    .line 23
    .line 24
    sget-object v2, Lcom/android/calendar/syncer/model/SyncState$Type;->SYNC_TOKEN:Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, p1

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/syncer/model/SyncState;-><init>(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/o;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-class v0, Lat/bitfire/dav4jvm/property/GetCTag;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lat/bitfire/dav4jvm/property/GetCTag;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/property/GetCTag;->getCTag()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    new-instance p1, Lcom/android/calendar/syncer/model/SyncState;

    .line 51
    .line 52
    sget-object v1, Lcom/android/calendar/syncer/model/SyncState$Type;->CTAG:Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x4

    .line 56
    const/4 v5, 0x0

    .line 57
    move-object v0, p1

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/syncer/model/SyncState;-><init>(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/o;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    :goto_0
    return-object p1
    .line 64
    .line 65
.end method

.method protected final C0(Lcom/android/calendar/syncer/resource/d;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResourceType;)V"
        }
    .end annotation

    .line 1
    const-string v0, "local"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/android/calendar/syncer/resource/d;->getFileName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lcom/android/calendar/syncer/SyncManager$uploadDirty$readTagsFromResponse$1;

    .line 26
    .line 27
    invoke-direct {v4, v2, v3}, Lcom/android/calendar/syncer/SyncManager$uploadDirty$readTagsFromResponse$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 28
    .line 29
    .line 30
    const-string v5, "CalSync:D:SyncManager"

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/android/calendar/syncer/resource/d;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/syncer/SyncManager;->s()Lokhttp3/t;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lokhttp3/t;->j()Lokhttp3/t$a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v6, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v6}, Lokhttp3/t$a;->b(Ljava/lang/String;)Lokhttp3/t$a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lokhttp3/t$a;->d()Lokhttp3/t;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    new-instance v0, Lat/bitfire/dav4jvm/DavResource;

    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/calendar/syncer/SyncManager;->l:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d()Lokhttp3/x;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x4

    .line 70
    const/4 v11, 0x0

    .line 71
    move-object v6, v0

    .line 72
    invoke-direct/range {v6 .. v11}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    .line 73
    .line 74
    .line 75
    new-instance v6, Lcom/android/calendar/syncer/SyncManager$uploadDirty$2;

    .line 76
    .line 77
    invoke-direct {v6, p1, v1, p0, v4}, Lcom/android/calendar/syncer/SyncManager$uploadDirty$2;-><init>(Lcom/android/calendar/syncer/resource/d;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/calendar/syncer/SyncManager;Lw7/l;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0, v6}, Lcom/android/calendar/syncer/SyncManager;->q0(Lat/bitfire/dav4jvm/DavResource;Lw7/l;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1}, Lcom/android/calendar/syncer/resource/d;->e()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/syncer/SyncManager;->s()Lokhttp3/t;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v6}, Lokhttp3/t;->j()Lokhttp3/t$a;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6, v0}, Lokhttp3/t$a;->b(Ljava/lang/String;)Lokhttp3/t$a;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6}, Lokhttp3/t$a;->d()Lokhttp3/t;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    new-instance v6, Lat/bitfire/dav4jvm/DavResource;

    .line 104
    .line 105
    iget-object v7, p0, Lcom/android/calendar/syncer/SyncManager;->l:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d()Lokhttp3/x;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x4

    .line 113
    const/4 v12, 0x0

    .line 114
    move-object v7, v6

    .line 115
    invoke-direct/range {v7 .. v12}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    .line 116
    .line 117
    .line 118
    new-instance v7, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;

    .line 119
    .line 120
    invoke-direct {v7, p1, v0, p0, v4}, Lcom/android/calendar/syncer/SyncManager$uploadDirty$3;-><init>(Lcom/android/calendar/syncer/resource/d;Ljava/lang/String;Lcom/android/calendar/syncer/SyncManager;Lw7/l;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v6, v7}, Lcom/android/calendar/syncer/SyncManager;->q0(Lat/bitfire/dav4jvm/DavResource;Lw7/l;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/commons/lang3/exception/ContextedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    instance-of v6, v4, Lat/bitfire/dav4jvm/exception/ForbiddenException;

    .line 133
    .line 134
    if-eqz v6, :cond_2

    .line 135
    .line 136
    move-object v6, v4

    .line 137
    check-cast v6, Lat/bitfire/dav4jvm/exception/ForbiddenException;

    .line 138
    .line 139
    invoke-virtual {v6}, Lat/bitfire/dav4jvm/exception/DavException;->getErrors()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    sget-object v7, Lat/bitfire/dav4jvm/Error;->Companion:Lat/bitfire/dav4jvm/Error$Companion;

    .line 144
    .line 145
    invoke-virtual {v7}, Lat/bitfire/dav4jvm/Error$Companion;->getNEED_PRIVILEGES()Lat/bitfire/dav4jvm/Error;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_1

    .line 154
    .line 155
    const-string v0, "Couldn\'t upload because of missing permissions, ignoring"

    .line 156
    .line 157
    invoke-static {v5, v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_1
    throw v0

    .line 162
    :cond_2
    instance-of v6, v4, Lat/bitfire/dav4jvm/exception/ConflictException;

    .line 163
    .line 164
    if-eqz v6, :cond_3

    .line 165
    .line 166
    const-string v0, "Edit conflict, ignoring"

    .line 167
    .line 168
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_3
    instance-of v4, v4, Lat/bitfire/dav4jvm/exception/PreconditionFailedException;

    .line 173
    .line 174
    if-eqz v4, :cond_5

    .line 175
    .line 176
    const-string v0, "Resource has been modified on the server before upload, ignoring"

    .line 177
    .line 178
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :goto_0
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 182
    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v4, "Received new ETag="

    .line 191
    .line 192
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v4, Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v4, " after uploading"

    .line 203
    .line 204
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_4
    const-string v0, "Didn\'t receive new ETag after uploading, setting to null"

    .line 216
    .line 217
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :goto_1
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Ljava/lang/String;

    .line 223
    .line 224
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v1, Ljava/lang/String;

    .line 227
    .line 228
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v2, Ljava/lang/String;

    .line 231
    .line 232
    invoke-interface {p1, v0, v1, v2}, Lcom/android/calendar/syncer/resource/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_5
    throw v0
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

.method protected D0()Z
    .locals 6

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager;->h:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 7
    .line 8
    new-instance v2, Lcom/android/calendar/syncer/SyncManager$uploadDirty$1;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, p0, v0, v3}, Lcom/android/calendar/syncer/SyncManager$uploadDirty$1;-><init>(Lcom/android/calendar/syncer/SyncManager;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/c;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlinx/coroutines/h;->e(Lkotlin/coroutines/CoroutineContext;Lw7/p;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 20
    .line 21
    iget-wide v2, v1, Landroid/content/SyncStats;->numEntries:J

    .line 22
    .line 23
    iget v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 24
    .line 25
    int-to-long v4, v4

    .line 26
    add-long/2addr v2, v4

    .line 27
    iput-wide v2, v1, Landroid/content/SyncStats;->numEntries:J

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "Sent "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " record(s) to server"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "CalSync:D:SyncManager"

    .line 54
    .line 55
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 59
    .line 60
    if-lez v0, :cond_0

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0
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

.method protected final E()Lcom/android/calendar/syncer/net/CalDavHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->l:Lcom/android/calendar/syncer/net/CalDavHttpClient;

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

.method public final H()Lcom/android/calendar/syncer/resource/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCollectionType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->g:Lcom/android/calendar/syncer/resource/b;

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

.method public final V()Landroid/content/SyncResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

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

.method protected abstract W(Lw7/p;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation
.end method

.method protected Z(Lcom/android/calendar/syncer/model/SyncState;Lw7/p;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/syncer/model/SyncState;",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)",
            "Lkotlin/Pair<",
            "Lat/bitfire/dav4jvm/property/SyncToken;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/calendar/syncer/SyncManager;->x()Lat/bitfire/dav4jvm/DavCollection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/SyncState;->getType()Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget-object v5, Lcom/android/calendar/syncer/model/SyncState$Type;->SYNC_TOKEN:Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 25
    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    .line 28
    move v4, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v4, v2

    .line 31
    :goto_0
    if-eqz v4, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object p1, v7

    .line 35
    :goto_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/SyncState;->getValue()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object p1, v7

    .line 43
    :goto_2
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    new-array v6, v3, [Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    sget-object v3, Lat/bitfire/dav4jvm/property/GetETag;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 48
    .line 49
    aput-object v3, v6, v2

    .line 50
    .line 51
    new-instance v8, Lcom/android/calendar/syncer/SyncManager$listRemoteChanges$report$2;

    .line 52
    .line 53
    invoke-direct {v8, v0, p2}, Lcom/android/calendar/syncer/SyncManager$listRemoteChanges$report$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lw7/p;)V

    .line 54
    .line 55
    .line 56
    move-object v2, p1

    .line 57
    move v3, v4

    .line 58
    move-object v4, v5

    .line 59
    move-object v5, v6

    .line 60
    move-object v6, v8

    .line 61
    invoke-virtual/range {v1 .. v6}, Lat/bitfire/dav4jvm/DavCollection;->reportChanges(Ljava/lang/String;ZLjava/lang/Integer;[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-class p2, Lat/bitfire/dav4jvm/property/SyncToken;

    .line 66
    .line 67
    invoke-static {p1, p2}, Lkotlin/collections/t;->N(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lkotlin/collections/t;->a0(Ljava/util/List;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lat/bitfire/dav4jvm/property/SyncToken;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    move-object v7, p1

    .line 80
    :cond_3
    if-eqz v7, :cond_4

    .line 81
    .line 82
    new-instance p1, Lkotlin/Pair;

    .line 83
    .line 84
    iget-boolean p2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 85
    .line 86
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p1, v7, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_4
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x6

    .line 99
    const/4 v5, 0x0

    .line 100
    const-string v1, "Received sync-collection response without sync-token"

    .line 101
    .line 102
    move-object v0, p1

    .line 103
    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    .line 104
    .line 105
    .line 106
    throw p1
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

.method protected final a0(Lcom/android/calendar/syncer/resource/d;Lw7/l;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::TResourceType;R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lw7/l<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "localResource"

    .line 2
    .line 3
    const-string v1, "body"

    .line 4
    .line 5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-interface {p2, p1}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/lang3/exception/ContextedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p2

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lorg/apache/commons/lang3/exception/ContextedException;

    .line 17
    .line 18
    invoke-direct {v1, p2}, Lorg/apache/commons/lang3/exception/ContextedException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0, p1}, Lorg/apache/commons/lang3/exception/ContextedException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "ContextedException(e).se\u2026XT_LOCAL_RESOURCE, local)"

    .line 26
    .line 27
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_0
    throw p2

    .line 32
    :catch_0
    move-exception p2

    .line 33
    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/lang3/exception/ContextedException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    .line 34
    .line 35
    .line 36
    throw p2
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

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->l:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->close()V

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

.method public final d0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/syncer/SyncManager$performSync$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/calendar/syncer/SyncManager$performSync$1;-><init>(Lcom/android/calendar/syncer/SyncManager;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/calendar/syncer/SyncManager$performSync$2;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/android/calendar/syncer/SyncManager$performSync$2;-><init>(Lcom/android/calendar/syncer/SyncManager;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/syncer/SyncManager;->B0(Lw7/a;Lw7/q;)V

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

.method protected e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->g:Lcom/android/calendar/syncer/resource/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/android/calendar/syncer/resource/b;->i(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Removed "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " local resources which are not present on the server anymore"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "CalSync:D:SyncManager"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 36
    .line 37
    iget-object v1, v1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 38
    .line 39
    iget-wide v2, v1, Landroid/content/SyncStats;->numDeletes:J

    .line 40
    .line 41
    int-to-long v4, v0

    .line 42
    add-long/2addr v2, v4

    .line 43
    iput-wide v2, v1, Landroid/content/SyncStats;->numDeletes:J

    .line 44
    .line 45
    return-void
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

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->d:Landroid/os/Bundle;

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

.method protected abstract h0()Z
.end method

.method protected i0()Z
    .locals 4

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/syncer/SyncManager;->g:Lcom/android/calendar/syncer/resource/b;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/android/calendar/syncer/resource/b;->g()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/calendar/syncer/resource/d;

    .line 27
    .line 28
    new-instance v3, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;

    .line 29
    .line 30
    invoke-direct {v3, v2, p0, v0}, Lcom/android/calendar/syncer/SyncManager$processLocallyDeleted$1;-><init>(Lcom/android/calendar/syncer/resource/d;Lcom/android/calendar/syncer/SyncManager;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/syncer/SyncManager;->a0(Lcom/android/calendar/syncer/resource/d;Lw7/l;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "Removed "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " record(s) from server"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "CalSync:D:SyncManager"

    .line 62
    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 67
    .line 68
    if-lez v0, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    :goto_1
    return v0
    .line 74
    .line 75
.end method

.method protected abstract j(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/t;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract l0()Lcom/android/calendar/syncer/model/SyncState;
.end method

.method protected abstract m(Lcom/android/calendar/syncer/resource/d;)Lokhttp3/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResourceType;)",
            "Lokhttp3/z;"
        }
    .end annotation
.end method

.method public final q()Ld2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->c:Ld2/a;

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

.method protected final q0(Lat/bitfire/dav4jvm/DavResource;Lw7/l;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lat/bitfire/dav4jvm/DavResource;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lw7/l<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "remoteResource"

    .line 2
    .line 3
    const-string v1, "remote"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "body"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-interface {p2, p1}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/lang3/exception/ContextedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p2

    .line 19
    new-instance v1, Lorg/apache/commons/lang3/exception/ContextedException;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Lorg/apache/commons/lang3/exception/ContextedException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/DavResource;->getLocation()Lokhttp3/t;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, v0, p1}, Lorg/apache/commons/lang3/exception/ContextedException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "ContextedException(e).se\u2026ESOURCE, remote.location)"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :catch_0
    move-exception p2

    .line 39
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/DavResource;->getLocation()Lokhttp3/t;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/lang3/exception/ContextedException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    .line 44
    .line 45
    .line 46
    throw p2
    .line 47
.end method

.method protected final r0(Lw7/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/l<",
            "-TRemoteType;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/syncer/SyncManager;->x()Lat/bitfire/dav4jvm/DavCollection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/syncer/SyncManager;->q0(Lat/bitfire/dav4jvm/DavResource;Lw7/l;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected final s()Lokhttp3/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->m:Lokhttp3/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "collectionURL"

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

.method protected s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->g:Lcom/android/calendar/syncer/resource/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/android/calendar/syncer/resource/b;->h(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Number of local non-dirty entries: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "CalSync:D:SyncManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
.end method

.method protected final t0(Lat/bitfire/dav4jvm/Response;Lw7/l;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lat/bitfire/dav4jvm/Response;",
            "Lw7/l<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "remoteResource"

    .line 2
    .line 3
    const-string v1, "remote"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "body"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-interface {p2, p1}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/lang3/exception/ContextedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p2

    .line 19
    new-instance v1, Lorg/apache/commons/lang3/exception/ContextedException;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Lorg/apache/commons/lang3/exception/ContextedException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, v0, p1}, Lorg/apache/commons/lang3/exception/ContextedException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "ContextedException(e).se\u2026TE_RESOURCE, remote.href)"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :catch_0
    move-exception p2

    .line 39
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/lang3/exception/ContextedException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ContextedException;

    .line 44
    .line 45
    .line 46
    throw p2
    .line 47
.end method

.method protected final u0(Lokhttp3/t;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->m:Lokhttp3/t;

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

.method protected final v0(Lat/bitfire/dav4jvm/DavCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRemoteType;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->n:Lat/bitfire/dav4jvm/DavCollection;

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

.method protected final w0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/syncer/SyncManager;->o:Z

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

.method protected final x()Lat/bitfire/dav4jvm/DavCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRemoteType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->n:Lat/bitfire/dav4jvm/DavCollection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "davCollection"

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

.method protected abstract x0()Lcom/android/calendar/syncer/SyncManager$SyncAlgorithm;
.end method

.method protected y0(Lw7/l;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l<",
            "-",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listRemote"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v12, p0, Lcom/android/calendar/syncer/SyncManager;->h:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 27
    .line 28
    new-instance v13, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    move-object v1, v13

    .line 32
    move-object v2, p1

    .line 33
    move-object v3, p0

    .line 34
    move-object v4, v0

    .line 35
    move-object v5, v11

    .line 36
    move-object v6, v9

    .line 37
    move-object v7, v10

    .line 38
    invoke-direct/range {v1 .. v8}, Lcom/android/calendar/syncer/SyncManager$syncRemote$1;-><init>(Lw7/l;Lcom/android/calendar/syncer/SyncManager;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/c;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v12, v13}, Lkotlinx/coroutines/h;->e(Lkotlin/coroutines/CoroutineContext;Lw7/p;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/calendar/syncer/SyncManager;->f:Landroid/content/SyncResult;

    .line 45
    .line 46
    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 47
    .line 48
    iget-wide v1, p1, Landroid/content/SyncStats;->numInserts:J

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    int-to-long v3, v0

    .line 55
    add-long/2addr v1, v3

    .line 56
    iput-wide v1, p1, Landroid/content/SyncStats;->numInserts:J

    .line 57
    .line 58
    iget-wide v0, p1, Landroid/content/SyncStats;->numUpdates:J

    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    int-to-long v2, v2

    .line 65
    add-long/2addr v0, v2

    .line 66
    iput-wide v0, p1, Landroid/content/SyncStats;->numUpdates:J

    .line 67
    .line 68
    iget-wide v0, p1, Landroid/content/SyncStats;->numDeletes:J

    .line 69
    .line 70
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    int-to-long v2, v2

    .line 75
    add-long/2addr v0, v2

    .line 76
    iput-wide v0, p1, Landroid/content/SyncStats;->numDeletes:J

    .line 77
    .line 78
    iget-wide v0, p1, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 79
    .line 80
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    int-to-long v2, v2

    .line 85
    add-long/2addr v0, v2

    .line 86
    iput-wide v0, p1, Landroid/content/SyncStats;->numSkippedEntries:J

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

.method protected final z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/syncer/SyncManager;->o:Z

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

.method protected z0(Lcom/android/calendar/syncer/model/SyncState;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->d:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "resync"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_d

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->d:Landroid/os/Bundle;

    .line 13
    .line 14
    const-string v2, "full_resync"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/syncer/SyncManager;->g:Lcom/android/calendar/syncer/resource/b;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/android/calendar/syncer/resource/b;->b()Lcom/android/calendar/syncer/model/SyncState;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "Local sync state = "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, ", remote sync state = "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "CalSync:D:SyncManager"

    .line 56
    .line 57
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/SyncState;->getType()Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move-object v3, v2

    .line 69
    :goto_0
    if-nez v3, :cond_2

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    sget-object v4, Lcom/android/calendar/syncer/SyncManager$b;->a:[I

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    aget v3, v4, v3

    .line 80
    .line 81
    :goto_1
    const/4 v4, 0x0

    .line 82
    if-eq v3, v1, :cond_8

    .line 83
    .line 84
    const/4 v5, 0x2

    .line 85
    if-eq v3, v5, :cond_3

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_3
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/SyncState;->getType()Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-object v5, Lcom/android/calendar/syncer/model/SyncState$Type;->CTAG:Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 95
    .line 96
    if-ne v3, v5, :cond_4

    .line 97
    .line 98
    move v3, v1

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    move v3, v4

    .line 101
    :goto_2
    if-eqz v3, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move-object v0, v2

    .line 105
    :goto_3
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/SyncState;->getValue()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :cond_6
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/SyncState;->getValue()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_7

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_7
    move v1, v4

    .line 123
    goto :goto_7

    .line 124
    :cond_8
    if-eqz v0, :cond_9

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/SyncState;->getType()Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    goto :goto_4

    .line 131
    :cond_9
    move-object v3, v2

    .line 132
    :goto_4
    sget-object v5, Lcom/android/calendar/syncer/model/SyncState$Type;->SYNC_TOKEN:Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 133
    .line 134
    if-ne v3, v5, :cond_a

    .line 135
    .line 136
    move v3, v1

    .line 137
    goto :goto_5

    .line 138
    :cond_a
    move v3, v4

    .line 139
    :goto_5
    if-eqz v3, :cond_b

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_b
    move-object v0, v2

    .line 143
    :goto_6
    if-eqz v0, :cond_c

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/SyncState;->getValue()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    :cond_c
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/SyncState;->getValue()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_7

    .line 158
    .line 159
    :cond_d
    :goto_7
    return v1
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method
