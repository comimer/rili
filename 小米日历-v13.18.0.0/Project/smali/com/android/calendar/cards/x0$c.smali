.class Lcom/android/calendar/cards/x0$c;
.super Ljava/lang/Object;
.source "HolidayPresenter.java"

# interfaces
.implements Lz3/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz3/g$d<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/miui/calendar/holiday/model/HolidayBriefSchema;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/cards/x0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/calendar/cards/x0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/cards/x0$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/cards/x0;Lcom/android/calendar/cards/x0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/x0$c;-><init>(Lcom/android/calendar/cards/x0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/x0$c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/calendar/cards/x0;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "Cal:D:HolidayPresenter"

    .line 13
    .line 14
    const-string v2, "query holiday brief failed"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/calendar/cards/x0;->j:Lcom/android/calendar/cards/x0$b;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/calendar/cards/x0;->f:Ljava/util/List;

    .line 22
    .line 23
    iput-object v2, v1, Lcom/android/calendar/cards/x0$b;->a:Ljava/util/List;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/calendar/cards/x0;->g:Ljava/util/Map;

    .line 26
    .line 27
    iput-object v2, v1, Lcom/android/calendar/cards/x0$b;->b:Ljava/util/Map;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    iput-boolean v2, v1, Lcom/android/calendar/cards/x0$b;->c:Z

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/calendar/cards/b;->g()V

    .line 33
    .line 34
    .line 35
    return-void
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

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/cards/x0$c;->c(Ljava/util/Map;)V

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
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/calendar/holiday/model/HolidayBriefSchema;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/x0$c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/calendar/cards/x0;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iput-object p1, v0, Lcom/android/calendar/cards/x0;->g:Ljava/util/Map;

    .line 21
    .line 22
    :cond_1
    iget-object p1, v0, Lcom/android/calendar/cards/x0;->j:Lcom/android/calendar/cards/x0$b;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/calendar/cards/x0;->f:Ljava/util/List;

    .line 25
    .line 26
    iput-object v1, p1, Lcom/android/calendar/cards/x0$b;->a:Ljava/util/List;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/calendar/cards/x0;->g:Ljava/util/Map;

    .line 29
    .line 30
    iput-object v1, p1, Lcom/android/calendar/cards/x0$b;->b:Ljava/util/Map;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p1, Lcom/android/calendar/cards/x0$b;->c:Z

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/calendar/cards/b;->g()V

    .line 36
    .line 37
    .line 38
    return-void
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
.end method
