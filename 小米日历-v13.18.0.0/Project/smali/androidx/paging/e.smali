.class Landroidx/paging/e;
.super Landroidx/paging/d;
.source "WrapperPositionalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/d<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/paging/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/d<",
            "TA;>;"
        }
    .end annotation
.end field

.field final b:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/d;Lk/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/d<",
            "TA;>;",
            "Lk/a<",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/List<",
            "TB;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/paging/d;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/e;->a:Landroidx/paging/d;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/e;->b:Lk/a;

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
.method public addInvalidatedCallback(Landroidx/paging/b$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/e;->a:Landroidx/paging/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/paging/b;->addInvalidatedCallback(Landroidx/paging/b$c;)V

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

.method public invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/e;->a:Landroidx/paging/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/paging/b;->invalidate()V

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

.method public isInvalid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/e;->a:Landroidx/paging/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/paging/b;->isInvalid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
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

.method public loadInitial(Landroidx/paging/d$d;Landroidx/paging/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/d$d;",
            "Landroidx/paging/d$b<",
            "TB;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/e;->a:Landroidx/paging/d;

    .line 2
    .line 3
    new-instance v1, Landroidx/paging/e$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2}, Landroidx/paging/e$a;-><init>(Landroidx/paging/e;Landroidx/paging/d$b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Landroidx/paging/d;->loadInitial(Landroidx/paging/d$d;Landroidx/paging/d$b;)V

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

.method public loadRange(Landroidx/paging/d$g;Landroidx/paging/d$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/d$g;",
            "Landroidx/paging/d$e<",
            "TB;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/e;->a:Landroidx/paging/d;

    .line 2
    .line 3
    new-instance v1, Landroidx/paging/e$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2}, Landroidx/paging/e$b;-><init>(Landroidx/paging/e;Landroidx/paging/d$e;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Landroidx/paging/d;->loadRange(Landroidx/paging/d$g;Landroidx/paging/d$e;)V

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

.method public removeInvalidatedCallback(Landroidx/paging/b$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/e;->a:Landroidx/paging/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/paging/b;->removeInvalidatedCallback(Landroidx/paging/b$c;)V

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
