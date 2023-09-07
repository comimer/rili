.class public final Lcom/android/calendar/syncer/model/AppDatabase$Companion;
.super Lcom/android/calendar/syncer/a;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/syncer/model/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/syncer/a<",
        "Lcom/android/calendar/syncer/model/AppDatabase;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/AppDatabase$Companion;",
        "Lcom/android/calendar/syncer/a;",
        "Lcom/android/calendar/syncer/model/AppDatabase;",
        "Landroid/content/Context;",
        "context",
        "createInstance",
        "",
        "TAG",
        "Ljava/lang/String;",
        "<init>",
        "()V",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/syncer/a;-><init>()V

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

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/syncer/model/AppDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Landroid/content/Context;)Lcom/android/calendar/syncer/model/AppDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/calendar/syncer/model/AppDatabase;

    const-string v1, "calendar_service.db"

    invoke-static {p1, v0, v1}, Landroidx/room/j;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    .line 3
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$a;->g(Landroidx/room/RoomDatabase$JournalMode;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v0, "databaseBuilder(context.\u2026                 .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/calendar/syncer/model/AppDatabase;

    return-object p1
.end method

.method public bridge synthetic createInstance(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/model/AppDatabase$Companion;->createInstance(Landroid/content/Context;)Lcom/android/calendar/syncer/model/AppDatabase;

    move-result-object p1

    return-object p1
.end method
