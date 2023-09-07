.class public Lx9/b;
.super Ljava/lang/Object;
.source "MultiWindowModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx9/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lx9/b$a;
    .locals 3

    .line 1
    invoke-static {p0}, Lx9/a;->c(Landroid/content/Context;)Lx9/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lx9/b$a;->a:I

    .line 6
    .line 7
    const/16 v2, 0x2000

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lx9/c;->b(Landroid/content/Context;)Lx9/b$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget p0, v0, Lx9/b$a;->a:I

    .line 16
    .line 17
    const/16 v1, 0x1004

    .line 18
    .line 19
    if-ne p0, v1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    iput p0, v0, Lx9/b$a;->a:I

    .line 23
    .line 24
    :cond_0
    return-object v0
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

.method public static b(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lx9/b;->a(Landroid/content/Context;)Lx9/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Lx9/b$a;->a:I

    .line 6
    .line 7
    return p0
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
.end method

.method public static c(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
