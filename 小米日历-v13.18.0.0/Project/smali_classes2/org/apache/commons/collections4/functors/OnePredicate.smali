.class public final Lorg/apache/commons/collections4/functors/OnePredicate;
.super Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;
.source "OnePredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x70c32e53becc8a39L


# direct methods
.method public varargs constructor <init>([Lhc/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhc/x<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;-><init>([Lhc/x;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public static onePredicate(Ljava/util/Collection;)Lhc/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lhc/x<",
            "-TT;>;>;)",
            "Lhc/x<",
            "TT;>;"
        }
    .end annotation

    .line 7
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/a;->h(Ljava/util/Collection;)[Lhc/x;

    move-result-object p0

    .line 8
    new-instance v0, Lorg/apache/commons/collections4/functors/OnePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/OnePredicate;-><init>([Lhc/x;)V

    return-object v0
.end method

.method public static varargs onePredicate([Lhc/x;)Lhc/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhc/x<",
            "-TT;>;)",
            "Lhc/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/a;->f([Lhc/x;)V

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/apache/commons/collections4/functors/FalsePredicate;->falsePredicate()Lhc/x;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/OnePredicate;

    invoke-static {p0}, Lorg/apache/commons/collections4/functors/a;->c([Lhc/x;)[Lhc/x;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/OnePredicate;-><init>([Lhc/x;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;->iPredicates:[Lhc/x;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    move v4, v3

    .line 7
    :goto_0
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    aget-object v5, v0, v3

    .line 10
    .line 11
    invoke-interface {v5, p1}, Lhc/x;->evaluate(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    const/4 v4, 0x1

    .line 21
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return v4
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
