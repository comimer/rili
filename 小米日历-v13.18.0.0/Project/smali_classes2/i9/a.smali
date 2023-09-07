.class public Li9/a;
.super Li9/b;
.source "ForegroundColorStyle.java"


# direct methods
.method public static j(Lmiuix/animation/b;Lg9/c;)V
    .locals 2

    .line 1
    invoke-static {p0}, Li9/a;->k(Lmiuix/animation/b;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Li9/a;->l(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Li9/c;->h(Landroid/view/View;)Li9/c;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p1, p1, Lg9/c;->f:Lf9/c;

    .line 17
    .line 18
    iget-wide v0, p1, Lf9/c;->i:D

    .line 19
    .line 20
    double-to-int p1, v0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Li9/c;->u()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
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

.method private static k(Lmiuix/animation/b;)Landroid/view/View;
    .locals 1

    .line 1
    instance-of v0, p0, Lmiuix/animation/ViewTarget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lmiuix/animation/ViewTarget;

    .line 6
    .line 7
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->e()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
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
.end method

.method private static l(Landroid/view/View;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static m(Lmiuix/animation/b;Lg9/c;)V
    .locals 2

    .line 1
    invoke-static {p0}, Li9/a;->k(Lmiuix/animation/b;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Li9/a;->l(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Lg9/c;->f:Lf9/c;

    .line 13
    .line 14
    iget p1, p1, Lf9/c;->f:I

    .line 15
    .line 16
    invoke-static {p0}, Li9/c;->v(Landroid/view/View;)Li9/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Lmiuix/animation/i;->e:I

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    instance-of v1, p0, Ljava/lang/Float;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    instance-of v1, p0, Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    :cond_1
    check-cast p0, Ljava/lang/Float;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0, p0}, Li9/c;->y(F)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {}, Lj9/b;->i()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 v1, -0x1

    .line 48
    if-nez p0, :cond_3

    .line 49
    .line 50
    if-ne p1, v1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-ne p1, v1, :cond_4

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    :cond_4
    :goto_0
    and-int/lit8 p0, p1, 0x3

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Li9/c;->p(I)V

    .line 60
    .line 61
    .line 62
    return-void
    .line 63
    .line 64
.end method
