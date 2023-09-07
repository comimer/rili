.class public Lorg/apache/commons/collections4/list/NodeCachingLinkedList;
.super Lorg/apache/commons/collections4/list/a;
.source "NodeCachingLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/a<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAXIMUM_CACHE_SIZE:I = 0x14

.field private static final serialVersionUID:J = 0x5fb9deb63bbc3f09L


# instance fields
.field private transient cacheSize:I

.field private transient firstCachedNode:Lorg/apache/commons/collections4/list/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;"
        }
    .end annotation
.end field

.field private maximumCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/a;-><init>()V

    .line 5
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/a;-><init>(Ljava/util/Collection;)V

    const/16 p1, 0x14

    .line 3
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/a;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 5
    .line 6
    .line 7
    return-void
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

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/a;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 5
    .line 6
    .line 7
    return-void
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
.method protected addNodeToCache(Lorg/apache/commons/collections4/list/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->isCacheFull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/a$d;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p1, Lorg/apache/commons/collections4/list/a$d;->a:Lorg/apache/commons/collections4/list/a$d;

    .line 12
    .line 13
    iput-object v0, p1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/list/a$d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/a$d;

    .line 19
    .line 20
    iget p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 25
    .line 26
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections4/list/a$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/a;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/a$d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/a$d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0
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

.method protected getMaximumCacheSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 2
    .line 3
    return v0
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

.method protected getNodeFromCache()Lorg/apache/commons/collections4/list/a$d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/a$d;

    .line 8
    .line 9
    iget-object v3, v2, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 10
    .line 11
    iput-object v3, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/a$d;

    .line 12
    .line 13
    iput-object v1, v2, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    iput v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 18
    .line 19
    return-object v2
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method protected isCacheFull()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
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

.method protected removeAllNodes()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/list/a;->size:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 4
    .line 5
    iget v2, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a;->header:Lorg/apache/commons/collections4/list/a$d;

    .line 13
    .line 14
    iget-object v1, v1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    iget-object v3, v1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections4/list/a$d;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    move-object v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/collections4/list/a;->removeAllNodes()V

    .line 29
    .line 30
    .line 31
    return-void
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
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method protected removeNode(Lorg/apache/commons/collections4/list/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/a;->removeNode(Lorg/apache/commons/collections4/list/a$d;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections4/list/a$d;)V

    .line 5
    .line 6
    .line 7
    return-void
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

.method protected setMaximumCacheSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->shrinkCacheToMaximumSize()V

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

.method protected shrinkCacheToMaximumSize()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections4/list/a$d;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void
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
