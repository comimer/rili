.class public Ll3/b;
.super Ljava/lang/Object;
.source "CalendarAlarmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/b$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance p0, Ll3/b$b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Ll3/b$b;-><init>(Ll3/b$a;)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

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
