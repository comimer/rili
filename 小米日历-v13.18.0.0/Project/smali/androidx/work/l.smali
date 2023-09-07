.class public final Landroidx/work/l;
.super Landroidx/work/s;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/l$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/l$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/work/s$a;->b:Ljava/util/UUID;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/work/s$a;->c:Lx0/p;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/work/s$a;->d:Ljava/util/Set;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, p1}, Landroidx/work/s;-><init>(Ljava/util/UUID;Lx0/p;Ljava/util/Set;)V

    .line 8
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

.method public static e(Ljava/lang/Class;)Landroidx/work/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)",
            "Landroidx/work/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/l$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/l$a;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/work/s$a;->b()Landroidx/work/s;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroidx/work/l;

    .line 11
    .line 12
    return-object p0
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
