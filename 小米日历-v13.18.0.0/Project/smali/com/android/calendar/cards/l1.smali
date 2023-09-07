.class public Lcom/android/calendar/cards/l1;
.super Lcom/android/calendar/cards/b;
.source "MenstruationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/l1$b;,
        Lcom/android/calendar/cards/l1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/android/calendar/cards/l1$a;",
        ">;"
    }
.end annotation


# instance fields
.field f:Landroid/content/Context;

.field private g:Z

.field private h:Lcom/android/calendar/cards/l1$a;


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/calendar/cards/l1;->f:Landroid/content/Context;

    .line 9
    .line 10
    return-void
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

.method public static synthetic k(Lcom/android/calendar/cards/l1;Lf4/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/cards/l1;->o(Lf4/a;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/l1;->f:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/android/calendar/cards/k1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/calendar/cards/k1;-><init>(Lcom/android/calendar/cards/l1;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lf4/b;->c(Landroid/content/Context;Lcom/android/calendar/cards/l1$b;)V

    .line 9
    .line 10
    .line 11
    return-void
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

.method private synthetic o(Lf4/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/l1;->h:Lcom/android/calendar/cards/l1$a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/cards/l1$a;->b:Lf4/a;

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lcom/android/calendar/cards/l1$a;->b:Lf4/a;

    .line 8
    .line 9
    :cond_0
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
    invoke-virtual {p0}, Lcom/android/calendar/cards/l1;->l()Lcom/android/calendar/cards/j1;

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

    const/16 v0, 0x39

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/l1;->m()Lcom/android/calendar/cards/l1$a;

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
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->v(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/cards/l1;->h:Lcom/android/calendar/cards/l1$a;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/calendar/cards/l1$a;->b:Lf4/a;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
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

.method h()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/calendar/cards/l1$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/cards/l1$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/cards/l1;->h:Lcom/android/calendar/cards/l1$a;

    .line 7
    .line 8
    sget-object v0, Lcom/android/calendar/cards/CardHelper;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 25
    .line 26
    iget v2, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->showType:I

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x14

    .line 29
    .line 30
    const/16 v3, 0x39

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/calendar/cards/l1;->h:Lcom/android/calendar/cards/l1$a;

    .line 35
    .line 36
    iput-object v1, v2, Lcom/android/calendar/cards/l1$a;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/cards/l1;->f:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0}, Lf4/b;->d(Landroid/content/Context;)Lf4/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/calendar/cards/l1;->g:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/calendar/cards/l1;->f:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Lf4/b;->b(Landroid/content/Context;)Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/android/calendar/cards/l1;->g:Z

    .line 59
    .line 60
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/cards/l1;->h:Lcom/android/calendar/cards/l1$a;

    .line 61
    .line 62
    iput-object v0, v1, Lcom/android/calendar/cards/l1$a;->b:Lf4/a;

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/android/calendar/cards/l1;->n()V

    .line 65
    .line 66
    .line 67
    return-void
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method l()Lcom/android/calendar/cards/j1;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/cards/j1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/j1;-><init>(Ljava/util/Calendar;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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

.method m()Lcom/android/calendar/cards/l1$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/l1;->h:Lcom/android/calendar/cards/l1$a;

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
