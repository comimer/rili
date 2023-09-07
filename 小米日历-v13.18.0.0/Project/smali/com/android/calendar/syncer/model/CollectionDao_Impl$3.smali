.class Lcom/android/calendar/syncer/model/CollectionDao_Impl$3;
.super Landroidx/room/c;
.source "CollectionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/model/CollectionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lcom/android/calendar/syncer/model/Collection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/syncer/model/CollectionDao_Impl;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$3;->this$0:Lcom/android/calendar/syncer/model/CollectionDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/RoomDatabase;)V

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


# virtual methods
.method public bind(Ll0/f;Lcom/android/calendar/syncer/model/Collection;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getId()J

    move-result-wide v0

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Ll0/d;->B(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Ll0/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/calendar/syncer/model/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$3;->bind(Ll0/f;Lcom/android/calendar/syncer/model/Collection;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `collection` WHERE `id` = ?"

    return-object v0
.end method
