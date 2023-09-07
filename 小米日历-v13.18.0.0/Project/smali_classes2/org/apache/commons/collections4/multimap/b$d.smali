.class Lorg/apache/commons/collections4/multimap/b$d;
.super Lorg/apache/commons/collections4/multiset/b;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multimap/b$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/multiset/b<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/commons/collections4/multimap/b;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/multimap/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/b$d;->a:Lorg/apache/commons/collections4/multimap/b;

    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/multimap/b;Lorg/apache/commons/collections4/multimap/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/b$d;-><init>(Lorg/apache/commons/collections4/multimap/b;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/b$d;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/b;->getMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
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

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lhc/r$a<",
            "TK;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/collections4/multimap/b$d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/multimap/b$d$a;-><init>(Lorg/apache/commons/collections4/multimap/b$d;Lorg/apache/commons/collections4/multimap/b$a;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/b$d;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/apache/commons/collections4/multimap/b;->access$300(Lorg/apache/commons/collections4/multimap/b;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, v0}, Lhc/m;->e(Ljava/util/Iterator;Lhc/d0;)Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
    .line 26
    .line 27
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/b$d;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/b;->getMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
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

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/b$d;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/b;->getMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
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

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/b$d;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/b;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method protected uniqueElements()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/b$d;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/b;->getMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
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
