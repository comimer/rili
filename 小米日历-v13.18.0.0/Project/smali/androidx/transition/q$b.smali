.class Landroidx/transition/q$b;
.super Landroidx/transition/n;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/transition/q;


# direct methods
.method constructor <init>(Landroidx/transition/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/transition/q$b;->a:Landroidx/transition/q;

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


# virtual methods
.method public onTransitionEnd(Landroidx/transition/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/transition/q$b;->a:Landroidx/transition/q;

    .line 2
    .line 3
    iget v1, v0, Landroidx/transition/q;->c:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, v0, Landroidx/transition/q;->c:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Landroidx/transition/q;->d:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/transition/m;->end()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/m;->removeListener(Landroidx/transition/m$g;)Landroidx/transition/m;

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public onTransitionStart(Landroidx/transition/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/q$b;->a:Landroidx/transition/q;

    .line 2
    .line 3
    iget-boolean v0, p1, Landroidx/transition/q;->d:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/transition/m;->start()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/transition/q$b;->a:Landroidx/transition/q;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Landroidx/transition/q;->d:Z

    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
