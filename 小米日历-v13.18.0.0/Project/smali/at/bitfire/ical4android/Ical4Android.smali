.class public final Lat/bitfire/ical4android/Ical4Android;
.super Ljava/lang/Object;
.source "Ical4Android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lat/bitfire/ical4android/Ical4Android;",
        "",
        "Lkotlin/u;",
        "checkThreadContextClassLoader",
        "Ljava/util/logging/Logger;",
        "log",
        "Ljava/util/logging/Logger;",
        "getLog",
        "()Ljava/util/logging/Logger;",
        "",
        "ical4jVersion",
        "Ljava/lang/String;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lat/bitfire/ical4android/Ical4Android;

.field public static final ical4jVersion:Ljava/lang/String; = "3.0.19"

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lat/bitfire/ical4android/Ical4Android;

    .line 2
    .line 3
    invoke-direct {v0}, Lat/bitfire/ical4android/Ical4Android;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 7
    .line 8
    const-string v0, "ical4android"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "getLogger(\"ical4android\")"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lat/bitfire/ical4android/Ical4Android;->log:Ljava/util/logging/Logger;

    .line 20
    .line 21
    return-void
    .line 22
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkThreadContextClassLoader()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "Thread.currentThread().contextClassLoader must be set"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
    .line 20
    .line 21
    .line 22
.end method

.method public final getLog()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/ical4android/Ical4Android;->log:Ljava/util/logging/Logger;

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
