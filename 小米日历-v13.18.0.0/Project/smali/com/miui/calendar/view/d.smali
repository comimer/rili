.class public Lcom/miui/calendar/view/d;
.super Landroid/widget/ViewSwitcher;
.source "AutoScrollViewSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/view/d$b;,
        Lcom/miui/calendar/view/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field private c:Lcom/miui/calendar/view/d$b;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/miui/calendar/view/d;->b:I

    .line 6
    .line 7
    const-wide/16 p1, 0x1388

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/miui/calendar/view/d;->d:J

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/miui/calendar/view/d;->b()V

    .line 12
    .line 13
    .line 14
    return-void
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

.method static synthetic a(Lcom/miui/calendar/view/d;)Lcom/miui/calendar/view/e;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
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

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/view/d$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/miui/calendar/view/d$a;-><init>(Lcom/miui/calendar/view/d;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/calendar/view/d;->a:Landroid/os/Handler;

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
.end method


# virtual methods
.method public getCurrentViewIndex()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/d;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :cond_0
    return v0
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

.method public setOnViewScrollListener(Lcom/miui/calendar/view/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/d;->c:Lcom/miui/calendar/view/d$b;

    .line 2
    .line 3
    return-void
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
