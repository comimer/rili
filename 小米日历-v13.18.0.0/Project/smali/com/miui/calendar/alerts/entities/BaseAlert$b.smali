.class public Lcom/miui/calendar/alerts/entities/BaseAlert$b;
.super Ljava/lang/Object;
.source "BaseAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/alerts/entities/BaseAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/ContentValues;

.field private b:Landroid/net/Uri;

.field private c:Lcom/miui/calendar/alerts/entities/BaseAlert;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/calendar/alerts/entities/BaseAlert<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/calendar/alerts/entities/BaseAlert;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/alerts/entities/BaseAlert<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAlertId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->b:Landroid/net/Uri;

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 5
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->c:Lcom/miui/calendar/alerts/entities/BaseAlert;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/calendar/alerts/entities/BaseAlert;Lcom/miui/calendar/alerts/entities/BaseAlert$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert$b;-><init>(Lcom/miui/calendar/alerts/entities/BaseAlert;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/calendar/alerts/entities/BaseAlert$b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->d(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic d(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->b:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
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

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "state"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->c:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setEventState(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
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


# virtual methods
.method public b()Lcom/miui/calendar/alerts/entities/BaseAlert$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "state"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    .line 12
    .line 13
    return-object p0
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

.method public c()Lcom/miui/calendar/alerts/entities/BaseAlert$b;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v4, "state"

    .line 13
    .line 14
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "notifyTime"

    .line 24
    .line 25
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "receivedTime"

    .line 35
    .line 36
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    .line 38
    .line 39
    return-object p0
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

.method public e(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "processQuery(): update CalendarAlerts table,uri:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->b:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", values:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->a:Landroid/content/ContentValues;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "Cal:D:BaseAlert"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/Thread;

    .line 47
    .line 48
    new-instance v1, Lcom/miui/calendar/alerts/entities/a;

    .line 49
    .line 50
    invoke-direct {v1, p0, p1}, Lcom/miui/calendar/alerts/entities/a;-><init>(Lcom/miui/calendar/alerts/entities/BaseAlert$b;Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert$b;->f()V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
    .line 63
    .line 64
    .line 65
.end method
