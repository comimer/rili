.class Lmiuix/animation/controller/b$a;
.super Ljava/lang/Object;
.source "FolmeBlink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/b;
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
    iput-object p1, p0, Lmiuix/animation/controller/b$a;->a:Lmiuix/animation/controller/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/b$a;->a:Lmiuix/animation/controller/b;

    .line 2
    .line 3
    iget-object v0, v0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 4
    .line 5
    sget-object v1, Lmiuix/animation/IBlinkStyle$BlinkType;->HIGHLIGHT:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ld9/a;

    .line 13
    .line 14
    iget-object v3, p0, Lmiuix/animation/controller/b$a;->a:Lmiuix/animation/controller/b;

    .line 15
    .line 16
    invoke-static {v3}, Lmiuix/animation/controller/b;->S(Lmiuix/animation/controller/b;)Ld9/a;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v3, v2, v4

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 24
    .line 25
    .line 26
    return-void
    .line 27
.end method
