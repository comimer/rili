.class public abstract Lcom/android/calendar/syncer/model/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/model/AppDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "collectionDao",
        "Lcom/android/calendar/syncer/model/CollectionDao;",
        "homeSetDao",
        "Lcom/android/calendar/syncer/model/HomeSetDao;",
        "serviceDao",
        "Lcom/android/calendar/syncer/model/ServiceDao;",
        "Companion",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/android/calendar/syncer/model/AppDatabase$Companion;

.field public static final TAG:Ljava/lang/String; = "CalSync:D:AppDatabase"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/syncer/model/AppDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/model/AppDatabase$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/syncer/model/AppDatabase;->Companion:Lcom/android/calendar/syncer/model/AppDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

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


# virtual methods
.method public abstract collectionDao()Lcom/android/calendar/syncer/model/CollectionDao;
.end method

.method public abstract homeSetDao()Lcom/android/calendar/syncer/model/HomeSetDao;
.end method

.method public abstract serviceDao()Lcom/android/calendar/syncer/model/ServiceDao;
.end method
