.class public final Lcom/miui/calendar/sync/ics/IcsFileImportActivity;
.super Lcom/miui/calendar/sync/ics/a;
.source "IcsFileImportActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/sync/ics/IcsFileImportActivity$a;,
        Lcom/miui/calendar/sync/ics/IcsFileImportActivity$c;,
        Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;,
        Lcom/miui/calendar/sync/ics/IcsFileImportActivity$d;,
        Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u0000 E2\u00020\u0001:\u0005FGHIJB\u0007\u00a2\u0006\u0004\u0008C\u0010DJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0012\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0012\u0010\u000b\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\r\u001a\u00020\u000cH\u0016J/\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000c2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0018\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016R\u0014\u0010\u001c\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0014\u0010 \u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001bR\u0014\u0010\"\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001bR\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001a\u0010*\u001a\u00060\'R\u00020\u00008\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u00102\u001a\u00020/8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u001a\u0010;\u001a\u0008\u0012\u0004\u0012\u000208078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010@\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008?\u0010\u001bR\u001a\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010=\u00a8\u0006K"
    }
    d2 = {
        "Lcom/miui/calendar/sync/ics/IcsFileImportActivity;",
        "Lcom/miui/calendar/sync/ics/a;",
        "Lkotlin/u;",
        "C0",
        "B0",
        "Landroid/net/Uri;",
        "file",
        "x0",
        "w0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "",
        "e0",
        "requestCode",
        "",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "A0",
        "k",
        "Ljava/lang/String;",
        "INTENT_PERM_EDITOR",
        "l",
        "INTENT_MANAGE_STORAGE",
        "m",
        "EXTRA_PKGNAME",
        "n",
        "AUTHORITY",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "o",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mRV",
        "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;",
        "p",
        "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;",
        "mFileAdapter",
        "Lcom/miui/calendar/view/LoadingLayout;",
        "q",
        "Lcom/miui/calendar/view/LoadingLayout;",
        "mLoadingView",
        "Landroid/widget/TextView;",
        "r",
        "Landroid/widget/TextView;",
        "mBtnImport",
        "Lcom/miui/calendar/widget/EmptyView;",
        "v",
        "Lcom/miui/calendar/widget/EmptyView;",
        "mEmptyView",
        "",
        "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;",
        "w",
        "Ljava/util/List;",
        "mFileList",
        "x",
        "[Ljava/lang/String;",
        "projection",
        "y",
        "selection",
        "z",
        "selectionArgs",
        "<init>",
        "()V",
        "E",
        "a",
        "b",
        "c",
        "d",
        "e",
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
.field public static final E:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$a;


# instance fields
.field public D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Landroidx/recyclerview/widget/RecyclerView;

.field private p:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;

.field private q:Lcom/miui/calendar/view/LoadingLayout;

.field private r:Landroid/widget/TextView;

.field private v:Lcom/miui/calendar/widget/EmptyView;

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;",
            ">;"
        }
    .end annotation
.end field

.field private final x:[Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->E:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->D:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/miui/calendar/sync/ics/a;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "miui.intent.action.APP_PERM_EDITOR"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->k:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->l:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "extra_pkgname"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->m:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "com.android.calendar"

    .line 24
    .line 25
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->n:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->w:Ljava/util/List;

    .line 34
    .line 35
    const-string v0, "_id"

    .line 36
    .line 37
    const-string v1, "title"

    .line 38
    .line 39
    const-string v2, "_data"

    .line 40
    .line 41
    const-string v3, "_size"

    .line 42
    .line 43
    const-string v4, "mime_type"

    .line 44
    .line 45
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->x:[Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "_data LIKE \'%\' || ? || \'%\'"

    .line 52
    .line 53
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->y:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, ".ics"

    .line 56
    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->z:[Ljava/lang/String;

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

.method private final B0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/z0;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->x0(Landroid/net/Uri;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v0, 0x400

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p0, p0, v0, v1}, Lcom/miui/calendar/util/z0;->J(Landroid/content/Context;Landroid/app/Activity;ILcom/miui/calendar/util/z0$i;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lcom/miui/calendar/sync/ics/b;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->x0(Landroid/net/Uri;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->l:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 63
    .line 64
    .line 65
    :goto_0
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

.method private final C0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->m:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->n:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic l0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->y0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->z0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic n0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->w0(Landroid/net/Uri;)V

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

.method public static final synthetic o0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->r:Landroid/widget/TextView;

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

.method public static final synthetic p0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Lcom/miui/calendar/widget/EmptyView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->v:Lcom/miui/calendar/widget/EmptyView;

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

.method public static final synthetic q0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->p:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;

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

.method public static final synthetic r0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->w:Ljava/util/List;

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

.method public static final synthetic s0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Lcom/miui/calendar/view/LoadingLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->q:Lcom/miui/calendar/view/LoadingLayout;

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

.method public static final synthetic t0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->x:[Ljava/lang/String;

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

.method public static final synthetic u0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->y:Ljava/lang/String;

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

.method public static final synthetic v0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->z:[Ljava/lang/String;

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

.method private final w0(Landroid/net/Uri;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v3, ".ics"

    .line 10
    .line 11
    invoke-static {v0, v3, v1}, Lkotlin/text/k;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v3, "file.toString()"

    .line 27
    .line 28
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/miui/calendar/util/DeviceUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v1, v2

    .line 43
    :goto_1
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-static {p0}, Lb2/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    :goto_2
    move v8, v2

    .line 55
    new-instance v0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v9, 0x4

    .line 59
    const/4 v10, 0x0

    .line 60
    move-object v4, v0

    .line 61
    move-object v5, p1

    .line 62
    invoke-direct/range {v4 .. v10}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;-><init>(Landroid/net/Uri;Ljava/lang/String;ZZILkotlin/jvm/internal/o;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "icsFileItem: "

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v1, "IcsFileImportFragment"

    .line 83
    .line 84
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->w:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
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

.method private final x0(Landroid/net/Uri;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->q:Lcom/miui/calendar/view/LoadingLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mLoadingView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/miui/calendar/view/LoadingLayout;->d()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    new-instance v5, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;

    .line 26
    .line 27
    invoke-direct {v5, p0, p1, v1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;-><init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/net/Uri;Lkotlin/coroutines/c;)V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x3

    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

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

.method private static final y0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->A0()V

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

.method private static final z0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/miui/calendar/sync/NewEventImportActivity;->r:Lcom/miui/calendar/sync/NewEventImportActivity$b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/miui/calendar/sync/NewEventImportActivity$b;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p0, p1}, Lcom/miui/calendar/web/d;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "key_click_import_help"

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


# virtual methods
.method public A0()V
    .locals 9

    .line 1
    const-string v0, "key_click_import_by_local_file_btn"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v5, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->IMPORT:Lcom/android/calendar/syncer/account/AccountHelper$ImportType;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->getType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "import_type"

    .line 18
    .line 19
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "IMPORT_ACCOUNT.name"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper;->f()Landroid/accounts/Account;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "IMPORT_ACCOUNT.type"

    .line 42
    .line 43
    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v6, 0x1

    .line 48
    const/16 v7, 0x8

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    move-object v1, p0

    .line 52
    invoke-static/range {v0 .. v8}, Lcom/android/calendar/syncer/account/AccountHelper;->e(Lcom/android/calendar/syncer/account/AccountHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/Object;)Landroid/accounts/Account;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->w:Ljava/util/List;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x1

    .line 75
    const/4 v5, 0x0

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    move-object v6, v3

    .line 83
    check-cast v6, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;->e()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_2

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;->a()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    invoke-virtual {v6}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;->b()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_2

    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;->d()Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {p0, v6}, Lcom/miui/calendar/sync/ics/a;->k0(Landroid/net/Uri;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    if-eqz v6, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v4, v5

    .line 115
    :goto_1
    if-eqz v4, :cond_1

    .line 116
    .line 117
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    xor-int/2addr v0, v4

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    mul-int/lit8 v0, v0, 0x64

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    mul-int/lit8 v3, v3, 0x2

    .line 139
    .line 140
    const/16 v4, 0x1e

    .line 141
    .line 142
    invoke-virtual {p0, v0, v3, v4}, Lcom/miui/calendar/sync/ics/a;->j0(III)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;->d()Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {p0, v3}, Lcom/miui/calendar/sync/ics/a;->k0(Landroid/net/Uri;)Landroid/net/Uri;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const/4 v4, 0x0

    .line 163
    new-instance v5, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$c;

    .line 164
    .line 165
    invoke-direct {v5, p0, v1, v0, v2}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$c;-><init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Ljava/util/List;Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;Landroid/accounts/Account;)V

    .line 166
    .line 167
    .line 168
    const/4 v6, 0x4

    .line 169
    const/4 v7, 0x0

    .line 170
    move-object v0, p0

    .line 171
    move-object v1, v3

    .line 172
    move v3, v4

    .line 173
    move-object v4, v5

    .line 174
    move v5, v6

    .line 175
    move-object v6, v7

    .line 176
    invoke-static/range {v0 .. v6}, Lcom/miui/calendar/sync/ics/a;->g0(Lcom/miui/calendar/sync/ics/a;Landroid/net/Uri;Landroid/accounts/Account;ZLcom/miui/calendar/sync/ics/a$b;ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    return-void
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

.method public e0()I
    .locals 1

    const v0, 0x7f12028c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/calendar/sync/ics/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0031

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a0292

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "findViewById<RecyclerView>(R.id.file_list)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    new-instance p1, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;-><init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->p:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    const-string v0, "mRV"

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object p1, v1

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->p:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    const-string v2, "mFileAdapter"

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v2, v1

    .line 54
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object p1, v1

    .line 65
    :cond_2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 71
    .line 72
    .line 73
    const p1, 0x7f0a038f

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "findViewById<LoadingLayout>(R.id.loading)"

    .line 81
    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    check-cast p1, Lcom/miui/calendar/view/LoadingLayout;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->q:Lcom/miui/calendar/view/LoadingLayout;

    .line 88
    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    const-string p1, "mLoadingView"

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move-object p1, v1

    .line 97
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    const v2, 0x7f1202f4

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    :cond_4
    const-string v0, ""

    .line 113
    .line 114
    :cond_5
    invoke-virtual {p1, v0}, Lcom/miui/calendar/view/LoadingLayout;->setLoadingText(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const p1, 0x7f0a032c

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v0, "findViewById<TextView>(R.id.import_btn)"

    .line 125
    .line 126
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    check-cast p1, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->r:Landroid/widget/TextView;

    .line 132
    .line 133
    const p1, 0x7f0a0266

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v0, "findViewById<EmptyView>(R.id.empty_view)"

    .line 141
    .line 142
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    check-cast p1, Lcom/miui/calendar/widget/EmptyView;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->v:Lcom/miui/calendar/widget/EmptyView;

    .line 148
    .line 149
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->r:Landroid/widget/TextView;

    .line 150
    .line 151
    const-string v0, "mBtnImport"

    .line 152
    .line 153
    if-nez p1, :cond_6

    .line 154
    .line 155
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object p1, v1

    .line 159
    :cond_6
    new-instance v2, Lcom/miui/calendar/sync/ics/c;

    .line 160
    .line 161
    invoke-direct {v2, p0}, Lcom/miui/calendar/sync/ics/c;-><init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->r:Landroid/widget/TextView;

    .line 168
    .line 169
    if-nez p1, :cond_7

    .line 170
    .line 171
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    move-object p1, v1

    .line 175
    :cond_7
    const/4 v2, 0x4

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->r:Landroid/widget/TextView;

    .line 180
    .line 181
    if-nez p1, :cond_8

    .line 182
    .line 183
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    move-object p1, v1

    .line 187
    :cond_8
    const v2, 0x7f120293

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->r:Landroid/widget/TextView;

    .line 194
    .line 195
    if-nez p1, :cond_9

    .line 196
    .line 197
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    move-object p1, v1

    .line 201
    :cond_9
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->r:Landroid/widget/TextView;

    .line 206
    .line 207
    if-nez p1, :cond_a

    .line 208
    .line 209
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_a
    move-object v1, p1

    .line 214
    :goto_0
    invoke-static {v1}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 215
    .line 216
    .line 217
    const p1, 0x7f0a032f

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Landroid/widget/TextView;

    .line 225
    .line 226
    invoke-static {}, Lcom/miui/calendar/util/i;->g()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_b

    .line 231
    .line 232
    const/16 v0, 0x8

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    :cond_b
    new-instance v0, Lcom/miui/calendar/sync/ics/d;

    .line 238
    .line 239
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/ics/d;-><init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {p0}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->B0()V

    .line 246
    .line 247
    .line 248
    return-void
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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->x0(Landroid/net/Uri;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
    .line 22
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x400

    .line 15
    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    invoke-static {p0, p3}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->x0(Landroid/net/Uri;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string p1, "IcsFileImportFragment"

    .line 61
    .line 62
    const-string p2, "onRequestPermissionsResult not allowed."

    .line 63
    .line 64
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->C0()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 75
    .line 76
    .line 77
    :goto_1
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
.end method
