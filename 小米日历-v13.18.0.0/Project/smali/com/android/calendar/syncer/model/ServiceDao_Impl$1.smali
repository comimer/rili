.class Lcom/android/calendar/syncer/model/ServiceDao_Impl$1;
.super Landroidx/room/d;
.source "ServiceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/model/ServiceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/d<",
        "Lcom/android/calendar/syncer/model/Service;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/syncer/model/ServiceDao_Impl;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/model/ServiceDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/ServiceDao_Impl$1;->this$0:Lcom/android/calendar/syncer/model/ServiceDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/d;-><init>(Landroidx/room/RoomDatabase;)V

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
.method public bind(Ll0/f;Lcom/android/calendar/syncer/model/Service;)V
    .locals 3

    .line 2
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Service;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ll0/d;->B(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Service;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Service;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Service;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Service;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/ServiceDao_Impl$1;->this$0:Lcom/android/calendar/syncer/model/ServiceDao_Impl;

    invoke-static {v0}, Lcom/android/calendar/syncer/model/ServiceDao_Impl;->access$000(Lcom/android/calendar/syncer/model/ServiceDao_Impl;)Lcom/android/calendar/syncer/model/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Service;->getPrincipal()Lokhttp3/t;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/calendar/syncer/model/Converters;->httpUrlToString(Lokhttp3/t;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    if-nez p2, :cond_2

    .line 10
    invoke-interface {p1, v0}, Ll0/d;->X(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p1, v0, p2}, Ll0/d;->l(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic bind(Ll0/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/calendar/syncer/model/Service;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/model/ServiceDao_Impl$1;->bind(Ll0/f;Lcom/android/calendar/syncer/model/Service;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `service` (`id`,`accountName`,`type`,`principal`) VALUES (nullif(?, 0),?,?,?)"

    return-object v0
.end method
