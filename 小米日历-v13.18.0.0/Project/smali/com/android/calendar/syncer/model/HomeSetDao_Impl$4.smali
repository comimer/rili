.class Lcom/android/calendar/syncer/model/HomeSetDao_Impl$4;
.super Landroidx/room/c;
.source "HomeSetDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/model/HomeSetDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lcom/android/calendar/syncer/model/HomeSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/syncer/model/HomeSetDao_Impl;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/model/HomeSetDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$4;->this$0:Lcom/android/calendar/syncer/model/HomeSetDao_Impl;

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
.method public bind(Ll0/f;Lcom/android/calendar/syncer/model/HomeSet;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/HomeSet;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ll0/d;->B(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/HomeSet;->getServiceId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Ll0/d;->B(IJ)V

    .line 4
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$4;->this$0:Lcom/android/calendar/syncer/model/HomeSetDao_Impl;

    invoke-static {v0}, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->access$000(Lcom/android/calendar/syncer/model/HomeSetDao_Impl;)Lcom/android/calendar/syncer/model/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/HomeSet;->getUrl()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/syncer/model/Converters;->httpUrlToString(Lokhttp3/t;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/HomeSet;->getPrivBind()Z

    move-result v0

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 8
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 9
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/HomeSet;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 10
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/HomeSet;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x6

    .line 12
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/HomeSet;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Ll0/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/calendar/syncer/model/HomeSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$4;->bind(Ll0/f;Lcom/android/calendar/syncer/model/HomeSet;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `homeset` SET `id` = ?,`serviceId` = ?,`url` = ?,`privBind` = ?,`displayName` = ? WHERE `id` = ?"

    return-object v0
.end method
