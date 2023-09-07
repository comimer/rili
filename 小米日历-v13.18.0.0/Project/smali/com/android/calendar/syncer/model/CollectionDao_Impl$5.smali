.class Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;
.super Landroidx/paging/b$b;
.source "CollectionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/model/CollectionDao_Impl;->pageByServiceAndType(JLjava/lang/String;)Landroidx/paging/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/b$b<",
        "Ljava/lang/Integer;",
        "Lcom/android/calendar/syncer/model/Collection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/syncer/model/CollectionDao_Impl;

.field final synthetic val$_statement:Landroidx/room/m;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl;Landroidx/room/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;->this$0:Lcom/android/calendar/syncer/model/CollectionDao_Impl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;->val$_statement:Landroidx/room/m;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/paging/b$b;-><init>()V

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
.method public bridge synthetic create()Landroidx/paging/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;->create()Landroidx/room/paging/a;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroidx/room/paging/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/paging/a<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5$1;

    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;->this$0:Lcom/android/calendar/syncer/model/CollectionDao_Impl;

    invoke-static {v0}, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->access$100(Lcom/android/calendar/syncer/model/CollectionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;->val$_statement:Landroidx/room/m;

    const-string v0, "collection"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5$1;-><init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;Landroidx/room/RoomDatabase;Landroidx/room/m;Z[Ljava/lang/String;)V

    return-object v6
.end method
