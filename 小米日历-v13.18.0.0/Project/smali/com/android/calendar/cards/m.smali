.class public Lcom/android/calendar/cards/m;
.super Lcom/android/calendar/cards/b;
.source "AdPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/m$b;,
        Lcom/android/calendar/cards/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/android/calendar/cards/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field f:Landroid/content/Context;

.field private g:Lcom/android/calendar/cards/m$b;

.field protected h:Z


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/calendar/cards/m;->h:Z

    .line 6
    .line 7
    new-instance p1, Lcom/android/calendar/cards/m$b;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/android/calendar/cards/m$b;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/calendar/cards/m;->g:Lcom/android/calendar/cards/m$b;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/calendar/cards/m;->f:Landroid/content/Context;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public static synthetic k(Lcom/android/calendar/cards/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/cards/m;->p()V

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/m;->g:Lcom/android/calendar/cards/m$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/cards/m$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->ads:Lcom/miui/calendar/ad/AdSchema;

    .line 6
    .line 7
    iget-wide v0, v0, Lcom/miui/calendar/ad/AdSchema;->id:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "is_ad_closed_today"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lv3/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
    .line 20
    .line 21
    .line 22
.end method

.method private synthetic p()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/cards/m;->h:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/calendar/cards/m;->f:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/cards/m;->q(Landroid/content/Context;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 10
    .line 11
    .line 12
    return-void
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
.method bridge synthetic b()Lcom/android/calendar/cards/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/m;->l()Lcom/android/calendar/cards/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method c()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/m;->n()Lcom/android/calendar/cards/m$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/cards/m;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/cards/m;->g:Lcom/android/calendar/cards/m$b;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/calendar/cards/m$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/m;->g:Lcom/android/calendar/cards/m$b;

    .line 2
    .line 3
    invoke-static {}, Lcom/miui/calendar/ad/b;->e()Lcom/miui/calendar/ad/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/miui/calendar/util/e0;->d(Ljava/util/Calendar;Ljava/util/Calendar;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/miui/calendar/ad/b;->d(I)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/android/calendar/cards/m$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/calendar/cards/m;->g:Lcom/android/calendar/cards/m$b;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/calendar/cards/m$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v2, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->ads:Lcom/miui/calendar/ad/AdSchema;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/android/calendar/cards/m$b;->b:Lcom/miui/calendar/ad/AdSchema;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->extra:Lcom/google/gson/JsonObject;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-class v2, Lcom/android/calendar/cards/m$a;

    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/calendar/cards/m$a;

    .line 46
    .line 47
    iput-object v1, v0, Lcom/android/calendar/cards/m$b;->c:Lcom/android/calendar/cards/m$a;

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/cards/m;->f:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/android/calendar/cards/m;->o(Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput-boolean v0, p0, Lcom/android/calendar/cards/m;->h:Z

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 58
    .line 59
    .line 60
    return-void
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

.method l()Lcom/android/calendar/cards/j;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/calendar/cards/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    new-instance v2, Lcom/android/calendar/cards/l;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/android/calendar/cards/l;-><init>(Lcom/android/calendar/cards/m;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/calendar/cards/j;-><init>(Ljava/util/Calendar;Lcom/android/calendar/cards/j$d;)V

    .line 11
    .line 12
    .line 13
    return-object v0
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

.method n()Lcom/android/calendar/cards/m$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/m;->g:Lcom/android/calendar/cards/m$b;

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

.method protected o(Landroid/content/Context;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/android/calendar/cards/m;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lv3/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/miui/calendar/util/q;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
    .line 20
    .line 21
    .line 22
.end method

.method protected q(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/cards/m;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lv3/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1, v0, p2}, Lcom/miui/calendar/util/q;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
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
