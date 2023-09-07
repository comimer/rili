.class Lmiuix/animation/controller/b$e;
.super Lg9/b;
.source "FolmeBlink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/b;-><init>([Lmiuix/animation/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/animation/controller/b;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/b$e;->a:Lmiuix/animation/controller/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lg9/b;-><init>()V

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
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lg9/b;->onComplete(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lmiuix/animation/controller/b$e;->a:Lmiuix/animation/controller/b;

    .line 5
    .line 6
    iget-object p1, p1, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 7
    .line 8
    sget-object v0, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Ld9/a;

    .line 16
    .line 17
    iget-object v2, p0, Lmiuix/animation/controller/b$e;->a:Lmiuix/animation/controller/b;

    .line 18
    .line 19
    invoke-static {v2}, Lmiuix/animation/controller/b;->T(Lmiuix/animation/controller/b;)Ld9/a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 27
    .line 28
    .line 29
    return-void
    .line 30
    .line 31
    .line 32
    .line 33
.end method
