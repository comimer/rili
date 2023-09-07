.class public Lorg/apache/commons/collections4/functors/SwitchClosure;
.super Ljava/lang/Object;
.source "SwitchClosure.java"

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
.field private final iClosures:[Lhc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhc/d<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iDefault:Lhc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhc/d<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iPredicates:[Lhc/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhc/x<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z[Lhc/x;[Lhc/d;Lhc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lhc/x<",
            "-TE;>;[",
            "Lhc/d<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/a;->c([Lhc/x;)[Lhc/x;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lhc/x;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p3}, Lorg/apache/commons/collections4/functors/a;->b([Lhc/d;)[Lhc/d;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lhc/d;

    if-nez p4, :cond_2

    .line 4
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lhc/d;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lhc/d;

    return-void
.end method

.method public constructor <init>([Lhc/x;[Lhc/d;Lhc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhc/x<",
            "-TE;>;[",
            "Lhc/d<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>(Z[Lhc/x;[Lhc/d;Lhc/d;)V

    return-void
.end method

.method public static switchClosure(Ljava/util/Map;)Lhc/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lhc/x<",
            "TE;>;",
            "Lhc/d<",
            "TE;>;>;)",
            "Lhc/d<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/d;

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lhc/d;

    move-result-object v0

    :cond_0
    return-object v0

    .line 11
    :cond_1
    new-array v2, v1, [Lhc/d;

    .line 12
    new-array v1, v1, [Lhc/x;

    .line 13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhc/x;

    aput-object v6, v1, v4

    .line 15
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/d;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_2
    new-instance p0, Lorg/apache/commons/collections4/functors/SwitchClosure;

    invoke-direct {p0, v3, v1, v2, v0}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>(Z[Lhc/x;[Lhc/d;Lhc/d;)V

    return-object p0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The predicate and closure map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static switchClosure([Lhc/x;[Lhc/d;Lhc/d;)Lhc/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lhc/x<",
            "-TE;>;[",
            "Lhc/d<",
            "-TE;>;",
            "Lhc/d<",
            "-TE;>;)",
            "Lhc/d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/a;->f([Lhc/x;)V

    .line 2
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/a;->e([Lhc/d;)V

    .line 3
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 4
    array-length v0, p0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lhc/d;

    move-result-object p2

    :cond_0
    return-object p2

    .line 6
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/SwitchClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>([Lhc/x;[Lhc/d;Lhc/d;)V

    return-object v0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The predicate and closure arrays must be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lhc/x;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lhc/x;->evaluate(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lhc/d;

    .line 17
    .line 18
    aget-object v0, v1, v0

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lhc/d;->execute(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lhc/d;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lhc/d;->execute(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
    .line 33
.end method

.method public getClosures()[Lhc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lhc/d<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lhc/d;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/collections4/functors/a;->b([Lhc/d;)[Lhc/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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

.method public getDefaultClosure()Lhc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhc/d<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lhc/d;

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

.method public getPredicates()[Lhc/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lhc/x<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lhc/x;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/collections4/functors/a;->c([Lhc/x;)[Lhc/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
