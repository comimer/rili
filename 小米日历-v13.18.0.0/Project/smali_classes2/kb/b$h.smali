.class Lkb/b$h;
.super Lkb/d;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lkb/b;


# direct methods
.method private constructor <init>(Lkb/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb/b$h;->a:Lkb/b;

    invoke-direct {p0}, Lkb/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkb/b;Lkb/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lkb/b$h;-><init>(Lkb/b;)V

    return-void
.end method


# virtual methods
.method a(II)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lkb/b$h;->a:Lkb/b;

    .line 4
    .line 5
    iget-object p2, p1, Lkb/b;->O:Lkb/b$i;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lkb/b;->U0(Lkb/d;)V

    .line 8
    .line 9
    .line 10
    :cond_0
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

.method b(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lkb/b$h;->a:Lkb/b;

    .line 2
    .line 3
    invoke-static {p1}, Lkb/b;->J(Lkb/b;)Lkb/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lkb/b$h;->a:Lkb/b;

    .line 10
    .line 11
    invoke-static {p1}, Lkb/b;->J(Lkb/b;)Lkb/a$a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of p1, p1, Lkb/a$d;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lkb/b$h;->a:Lkb/b;

    .line 20
    .line 21
    iget p2, p1, Lkb/b;->A:I

    .line 22
    .line 23
    invoke-static {p1}, Lkb/b;->J(Lkb/b;)Lkb/a$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Lkb/a$a;->a:I

    .line 28
    .line 29
    if-ge p2, p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lkb/b$h;->a:Lkb/b;

    .line 32
    .line 33
    invoke-static {p1}, Lkb/b;->z(Lkb/b;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 p2, 0x1

    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lkb/b$h;->a:Lkb/b;

    .line 41
    .line 42
    const/4 p2, -0x1

    .line 43
    invoke-static {p1, p2}, Lkb/b;->E(Lkb/b;I)I

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lkb/b$h;->a:Lkb/b;

    .line 47
    .line 48
    iget-object p2, p1, Lkb/b;->P:Lkb/b$l;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lkb/b;->U0(Lkb/d;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
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
