.class public Lorg/apache/commons/collections4/functors/IfClosure;
.super Ljava/lang/Object;
.source "IfClosure.java"

# interfaces
.implements Lhc/d;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhc/d<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30d42478696adb72L


# instance fields
.field private final iFalseClosure:Lhc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhc/d<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iPredicate:Lhc/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhc/x<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iTrueClosure:Lhc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhc/d<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhc/x;Lhc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/x<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lhc/d;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/functors/IfClosure;-><init>(Lhc/x;Lhc/d;Lhc/d;)V

    return-void
.end method

.method public constructor <init>(Lhc/x;Lhc/d;Lhc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/x<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iPredicate:Lhc/x;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iTrueClosure:Lhc/d;

    .line 5
    iput-object p3, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iFalseClosure:Lhc/d;

    return-void
.end method

.method public static ifClosure(Lhc/x;Lhc/d;)Lhc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lhc/x<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;)",
            "Lhc/d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lhc/d;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/IfClosure;->ifClosure(Lhc/x;Lhc/d;Lhc/d;)Lhc/d;

    move-result-object p0

    return-object p0
.end method

.method public static ifClosure(Lhc/x;Lhc/d;Lhc/d;)Lhc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lhc/x<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;)",
            "Lhc/d<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/collections4/functors/IfClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/IfClosure;-><init>(Lhc/x;Lhc/d;Lhc/d;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Closures must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iPredicate:Lhc/x;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lhc/x;->evaluate(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iTrueClosure:Lhc/d;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lhc/d;->execute(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iFalseClosure:Lhc/d;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lhc/d;->execute(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
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

.method public getFalseClosure()Lhc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhc/d<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iFalseClosure:Lhc/d;

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

.method public getPredicate()Lhc/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhc/x<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iPredicate:Lhc/x;

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

.method public getTrueClosure()Lhc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhc/d<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/IfClosure;->iTrueClosure:Lhc/d;

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
