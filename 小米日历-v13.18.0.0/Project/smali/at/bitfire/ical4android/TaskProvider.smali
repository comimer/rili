.class public final Lat/bitfire/ical4android/TaskProvider;
.super Ljava/lang/Object;
.source "TaskProvider.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/ical4android/TaskProvider$ProviderName;,
        Lat/bitfire/ical4android/TaskProvider$Companion;,
        Lat/bitfire/ical4android/TaskProvider$ProviderTooOldException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u00172\u00020\u0001:\u0003\u0017\u0018\u0019B\u0019\u0008\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\u0008\u001a\u00020\u0002J\u0008\u0010\n\u001a\u00020\tH\u0016R\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lat/bitfire/ical4android/TaskProvider;",
        "Ljava/io/Closeable;",
        "Landroid/net/Uri;",
        "taskListsUri",
        "syncStateUri",
        "tasksUri",
        "propertiesUri",
        "alarmsUri",
        "categoriesUri",
        "Lkotlin/u;",
        "close",
        "Lat/bitfire/ical4android/TaskProvider$ProviderName;",
        "name",
        "Lat/bitfire/ical4android/TaskProvider$ProviderName;",
        "getName",
        "()Lat/bitfire/ical4android/TaskProvider$ProviderName;",
        "Landroid/content/ContentProviderClient;",
        "client",
        "Landroid/content/ContentProviderClient;",
        "getClient",
        "()Landroid/content/ContentProviderClient;",
        "<init>",
        "(Lat/bitfire/ical4android/TaskProvider$ProviderName;Landroid/content/ContentProviderClient;)V",
        "Companion",
        "ProviderName",
        "ProviderTooOldException",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lat/bitfire/ical4android/TaskProvider$Companion;

.field public static final PERMISSION_READ_TASKS:Ljava/lang/String; = "org.dmfs.permission.READ_TASKS"

.field public static final PERMISSION_WRITE_TASKS:Ljava/lang/String; = "org.dmfs.permission.WRITE_TASKS"


# instance fields
.field private final client:Landroid/content/ContentProviderClient;

.field private final name:Lat/bitfire/ical4android/TaskProvider$ProviderName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lat/bitfire/ical4android/TaskProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/bitfire/ical4android/TaskProvider$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lat/bitfire/ical4android/TaskProvider;->Companion:Lat/bitfire/ical4android/TaskProvider$Companion;

    return-void
.end method

.method private constructor <init>(Lat/bitfire/ical4android/TaskProvider$ProviderName;Landroid/content/ContentProviderClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lat/bitfire/ical4android/TaskProvider;->name:Lat/bitfire/ical4android/TaskProvider$ProviderName;

    .line 5
    .line 6
    iput-object p2, p0, Lat/bitfire/ical4android/TaskProvider;->client:Landroid/content/ContentProviderClient;

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

.method public synthetic constructor <init>(Lat/bitfire/ical4android/TaskProvider$ProviderName;Landroid/content/ContentProviderClient;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lat/bitfire/ical4android/TaskProvider;-><init>(Lat/bitfire/ical4android/TaskProvider$ProviderName;Landroid/content/ContentProviderClient;)V

    return-void
.end method


# virtual methods
.method public final alarmsUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/TaskProvider;->name:Lat/bitfire/ical4android/TaskProvider$ProviderName;

    .line 2
    .line 3
    invoke-virtual {v0}, Lat/bitfire/ical4android/TaskProvider$ProviderName;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Loc/a$a;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final categoriesUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/TaskProvider;->name:Lat/bitfire/ical4android/TaskProvider$ProviderName;

    .line 2
    .line 3
    invoke-virtual {v0}, Lat/bitfire/ical4android/TaskProvider$ProviderName;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Loc/a$b;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public close()V
    .locals 2

    .line 1
    sget-object v0, Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;->INSTANCE:Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lat/bitfire/ical4android/TaskProvider;->client:Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;->closeCompat(Landroid/content/ContentProviderClient;)V

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

.method public final getClient()Landroid/content/ContentProviderClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/TaskProvider;->client:Landroid/content/ContentProviderClient;

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

.method public final getName()Lat/bitfire/ical4android/TaskProvider$ProviderName;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/TaskProvider;->name:Lat/bitfire/ical4android/TaskProvider$ProviderName;

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

.method public final propertiesUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/TaskProvider;->name:Lat/bitfire/ical4android/TaskProvider$ProviderName;

    .line 2
    .line 3
    invoke-virtual {v0}, Lat/bitfire/ical4android/TaskProvider$ProviderName;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Loc/a$c;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final syncStateUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/TaskProvider;->name:Lat/bitfire/ical4android/TaskProvider$ProviderName;

    .line 2
    .line 3
    invoke-virtual {v0}, Lat/bitfire/ical4android/TaskProvider$ProviderName;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Loc/a$d;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final taskListsUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/TaskProvider;->name:Lat/bitfire/ical4android/TaskProvider$ProviderName;

    .line 2
    .line 3
    invoke-virtual {v0}, Lat/bitfire/ical4android/TaskProvider$ProviderName;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Loc/a$f;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final tasksUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/TaskProvider;->name:Lat/bitfire/ical4android/TaskProvider$ProviderName;

    .line 2
    .line 3
    invoke-virtual {v0}, Lat/bitfire/ical4android/TaskProvider$ProviderName;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Loc/a$g;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
