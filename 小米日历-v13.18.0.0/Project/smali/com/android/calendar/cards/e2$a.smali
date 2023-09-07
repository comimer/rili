.class Lcom/android/calendar/cards/e2$a;
.super Landroid/database/ContentObserver;
.source "TodoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/cards/e2;-><init>(Lcom/android/calendar/cards/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/cards/e2;


# direct methods
.method constructor <init>(Lcom/android/calendar/cards/e2;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/e2$a;->a:Lcom/android/calendar/cards/e2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

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
.method public onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/android/calendar/cards/CardHelper;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/cards/e2$a;->a:Lcom/android/calendar/cards/e2;

    .line 7
    .line 8
    new-instance v1, Lcom/android/calendar/cards/d2;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/android/calendar/cards/d2;-><init>(Lcom/android/calendar/cards/e2;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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
.end method
