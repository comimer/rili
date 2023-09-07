.class public Lorg/apache/commons/collections4/functors/ChainedClosure;
.super Ljava/lang/Object;
.source "ChainedClosure.java"

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
.field private static final serialVersionUID:J = -0x30dbf54892a4d5f8L


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


# direct methods
.method private varargs constructor <init>(Z[Lhc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lhc/d<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/a;->b([Lhc/d;)[Lhc/d;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lhc/d;

    return-void
.end method

.method public varargs constructor <init>([Lhc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhc/d<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>(Z[Lhc/d;)V

    return-void
.end method

.method public static chainedClosure(Ljava/util/Collection;)Lhc/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lhc/d<",
            "-TE;>;>;)",
            "Lhc/d<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lhc/d;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lhc/d;

    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhc/d;

    add-int/lit8 v4, v2, 0x1

    .line 9
    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections4/functors/a;->e([Lhc/d;)V

    .line 11
    new-instance p0, Lorg/apache/commons/collections4/functors/ChainedClosure;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>(Z[Lhc/d;)V

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Closure collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs chainedClosure([Lhc/d;)Lhc/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lhc/d<",
            "-TE;>;)",
            "Lhc/d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/a;->e([Lhc/d;)V

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lhc/d;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/ChainedClosure;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>([Lhc/d;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lhc/d;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3, p1}, Lhc/d;->execute(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

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
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lhc/d;

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
