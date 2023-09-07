.class Lcom/android/calendar/syncer/model/CollectionDao_Impl$2;
.super Landroidx/room/d;
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
        "Landroidx/room/d<",
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
    iput-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$2;->this$0:Lcom/android/calendar/syncer/model/CollectionDao_Impl;

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
.method public bind(Ll0/f;Lcom/android/calendar/syncer/model/Collection;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ll0/d;->B(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getServiceId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Ll0/d;->B(IJ)V

    .line 4
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$2;->this$0:Lcom/android/calendar/syncer/model/CollectionDao_Impl;

    invoke-static {v0}, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->access$000(Lcom/android/calendar/syncer/model/CollectionDao_Impl;)Lcom/android/calendar/syncer/model/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getUrl()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/syncer/model/Converters;->httpUrlToString(Lokhttp3/t;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 10
    :goto_1
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getPrivWriteContent()Z

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 11
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 12
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getPrivUnbind()Z

    move-result v0

    const/4 v1, 0x6

    int-to-long v2, v0

    .line 13
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 14
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getForceReadOnly()Z

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 15
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 16
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 17
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 19
    :goto_2
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_3

    .line 20
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_3

    .line 21
    :cond_3
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 22
    :goto_3
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getColor()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_4

    .line 23
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_4

    .line 24
    :cond_4
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 25
    :goto_4
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getTimezone()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_5

    .line 26
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_5

    .line 27
    :cond_5
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 28
    :goto_5
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getSupportsVEVENT()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getSupportsVEVENT()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    const/16 v1, 0xc

    if-nez v0, :cond_7

    .line 29
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_7

    .line 30
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 31
    :goto_7
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$2;->this$0:Lcom/android/calendar/syncer/model/CollectionDao_Impl;

    invoke-static {v0}, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->access$000(Lcom/android/calendar/syncer/model/CollectionDao_Impl;)Lcom/android/calendar/syncer/model/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getSource()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/syncer/model/Converters;->httpUrlToString(Lokhttp3/t;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_8

    .line 32
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    goto :goto_8

    .line 33
    :cond_8
    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 34
    :goto_8
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getSync()Z

    move-result p2

    const/16 v0, 0xe

    int-to-long v1, p2

    .line 35
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Ll0/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/calendar/syncer/model/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$2;->bind(Ll0/f;Lcom/android/calendar/syncer/model/Collection;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `collection` (`id`,`serviceId`,`type`,`url`,`privWriteContent`,`privUnbind`,`forceReadOnly`,`displayName`,`description`,`color`,`timezone`,`supportsVEVENT`,`source`,`sync`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
