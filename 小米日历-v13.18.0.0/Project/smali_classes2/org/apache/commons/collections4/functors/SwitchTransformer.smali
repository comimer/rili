.class public Lorg/apache/commons/collections4/functors/SwitchTransformer;
.super Ljava/lang/Object;
.source "SwitchTransformer.java"

# interfaces
.implements Lhc/d0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhc/d0<",
        "TI;TO;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x58e1373f7c2edd14L


# instance fields
.field private final iDefault:Lhc/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhc/d0<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field

.field private final iPredicates:[Lhc/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhc/x<",
            "-TI;>;"
        }
    .end annotation
.end field

.field private final iTransformers:[Lhc/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhc/d0<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z[Lhc/x;[Lhc/d0;Lhc/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lhc/x<",
            "-TI;>;[",
            "Lhc/d0<",
            "-TI;+TO;>;",
            "Lhc/d0<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/a;->c([Lhc/x;)[Lhc/x;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lhc/x;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p3}, Lorg/apache/commons/collections4/functors/a;->d([Lhc/d0;)[Lhc/d0;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lhc/d0;

    if-nez p4, :cond_2

    .line 4
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lhc/d0;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lhc/d0;

    return-void
.end method

.method public constructor <init>([Lhc/x;[Lhc/d0;Lhc/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhc/x<",
            "-TI;>;[",
            "Lhc/d0<",
            "-TI;+TO;>;",
            "Lhc/d0<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>(Z[Lhc/x;[Lhc/d0;Lhc/d0;)V

    return-void
.end method

.method public static switchTransformer(Ljava/util/Map;)Lhc/d0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+",
            "Lhc/x<",
            "-TI;>;+",
            "Lhc/d0<",
            "-TI;+TO;>;>;)",
            "Lhc/d0<",
            "TI;TO;>;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 8
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lhc/d0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/d0;

    .line 11
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    .line 12
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lhc/d0;

    move-result-object v0

    :cond_1
    return-object v0

    .line 13
    :cond_2
    new-array v2, v1, [Lhc/d0;

    .line 14
    new-array v1, v1, [Lhc/x;

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhc/x;

    aput-object v6, v1, v4

    .line 17
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/d0;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_3
    new-instance p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;

    invoke-direct {p0, v3, v1, v2, v0}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>(Z[Lhc/x;[Lhc/d0;Lhc/d0;)V

    return-object p0

    .line 19
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The predicate and transformer map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static switchTransformer([Lhc/x;[Lhc/d0;Lhc/d0;)Lhc/d0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">([",
            "Lhc/x<",
            "-TI;>;[",
            "Lhc/d0<",
            "-TI;+TO;>;",
            "Lhc/d0<",
            "-TI;+TO;>;)",
            "Lhc/d0<",
            "TI;TO;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/a;->f([Lhc/x;)V

    .line 2
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/a;->g([Lhc/d0;)V

    .line 3
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 4
    array-length v0, p0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lhc/d0;

    move-result-object p2

    :cond_0
    return-object p2

    .line 6
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/SwitchTransformer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>([Lhc/x;[Lhc/d0;Lhc/d0;)V

    return-object v0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The predicate and transformer arrays must be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDefaultTransformer()Lhc/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhc/d0<",
            "-TI;+TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lhc/d0;

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
            "-TI;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lhc/x;

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

.method public getTransformers()[Lhc/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lhc/d0<",
            "-TI;+TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lhc/d0;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lhc/x;

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
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lhc/d0;

    .line 17
    .line 18
    aget-object v0, v1, v0

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lhc/d0;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lhc/d0;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lhc/d0;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method
