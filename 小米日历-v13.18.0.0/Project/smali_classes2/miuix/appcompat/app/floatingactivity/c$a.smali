.class Lmiuix/appcompat/app/floatingactivity/c$a;
.super Lg9/b;
.source "FloatingSwitcherAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/c;->l(ILjava/lang/Runnable;)Ld9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ld9/a;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ld9/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/c$a;->a:Ljava/lang/Runnable;

    .line 2
    .line 3
    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/c$a;->b:Ld9/a;

    .line 4
    .line 5
    invoke-direct {p0}, Lg9/b;-><init>()V

    .line 6
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
.method public onCancel(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lg9/b;->onCancel(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/c$a;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/c$a;->b:Ld9/a;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Lg9/b;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p0, v0, v1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ld9/a;->i([Lg9/b;)Ld9/a;

    .line 20
    .line 21
    .line 22
    return-void
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

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lg9/b;->onComplete(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/c$a;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/c$a;->b:Ld9/a;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Lg9/b;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p0, v0, v1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ld9/a;->i([Lg9/b;)Ld9/a;

    .line 20
    .line 21
    .line 22
    return-void
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
