.class Ls9/a;
.super Lla/f;
.source "ContextMenuAdapter.java"


# instance fields
.field private d:Landroid/view/MenuItem;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lla/f;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    .line 2
    .line 3
    .line 4
    return-void
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
.end method


# virtual methods
.method protected b(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lla/f;->b(Landroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/high16 v2, 0x20000

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Ls9/a;->d:Landroid/view/MenuItem;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput-object p1, p0, Ls9/a;->d:Landroid/view/MenuItem;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "Only one menu item is allowed to have CATEGORY_SYSTEM order!"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    return v0
    .line 32
    .line 33
.end method

.method e()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Ls9/a;->d:Landroid/view/MenuItem;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
