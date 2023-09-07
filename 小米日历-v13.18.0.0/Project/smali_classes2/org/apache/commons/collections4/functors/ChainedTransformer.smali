.class public Lorg/apache/commons/collections4/functors/ChainedTransformer;
.super Ljava/lang/Object;
.source "ChainedTransformer.java"

# interfaces
.implements Lhc/d0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhc/d0<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30c797ec287a9704L


# instance fields
.field private final iTransformers:[Lhc/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhc/d0<",
            "-TT;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z[Lhc/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lhc/d0<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/a;->d([Lhc/d0;)[Lhc/d0;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/ChainedTransformer;->iTransformers:[Lhc/d0;

    return-void
.end method

.method public varargs constructor <init>([Lhc/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhc/d0<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/functors/ChainedTransformer;-><init>(Z[Lhc/d0;)V

    return-void
.end method

.method public static chainedTransformer(Ljava/util/Collection;)Lhc/d0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lhc/d0<",
            "-TT;+TT;>;>;)",
            "Lhc/d0<",
            "TT;TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPTransformer;->nopTransformer()Lhc/d0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lhc/d0;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lhc/d0;

    .line 8
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/a;->g([Lhc/d0;)V

    .line 9
    new-instance v0, Lorg/apache/commons/collections4/functors/ChainedTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/functors/ChainedTransformer;-><init>(Z[Lhc/d0;)V

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Transformer collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs chainedTransformer([Lhc/d0;)Lhc/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhc/d0<",
            "-TT;+TT;>;)",
            "Lhc/d0<",
            "TT;TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/a;->g([Lhc/d0;)V

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPTransformer;->nopTransformer()Lhc/d0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/ChainedTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ChainedTransformer;-><init>([Lhc/d0;)V

    return-object v0
.end method


# virtual methods
.method public getTransformers()[Lhc/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lhc/d0<",
            "-TT;+TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedTransformer;->iTransformers:[Lhc/d0;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/collections4/functors/a;->d([Lhc/d0;)[Lhc/d0;

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

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedTransformer;->iTransformers:[Lhc/d0;

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
    invoke-interface {v3, p1}, Lhc/d0;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object p1
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
